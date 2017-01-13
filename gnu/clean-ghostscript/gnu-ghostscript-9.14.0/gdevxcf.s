	.text
	.file	"gdevxcf.bc"
	.align	16, 0x90
	.type	xcf_print_page,@function
xcf_print_page:                         # @xcf_print_page
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
	subq	$328, %rsp              # imm = 0x148
.Ltmp6:
	.cfi_def_cfa_offset 384
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
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movq	%rbx, 264(%rsp)
	movl	$0, 272(%rsp)
	movl	$3, 284(%rsp)
	movl	18496(%r14), %r15d
	movl	%r15d, 288(%rsp)
	movl	832(%r14), %ebp
	movl	%ebp, 276(%rsp)
	movl	836(%r14), %eax
	movl	%eax, 280(%rsp)
	leal	63(%rbp), %ecx
	sarl	$31, %ecx
	shrl	$26, %ecx
	leal	63(%rbp,%rcx), %ecx
	sarl	$6, %ecx
	movl	%ecx, 292(%rsp)
	leal	63(%rax), %edx
	sarl	$31, %edx
	shrl	$26, %edx
	leal	63(%rax,%rdx), %edx
	sarl	$6, %edx
	movl	%edx, 296(%rsp)
	imull	%ecx, %edx
	movl	%edx, 300(%rsp)
	movl	$1, %ecx
	cmpl	$65, %ebp
	movl	$1, %edx
	jl	.LBB0_3
# BB#1:
	movl	$1, %edx
	movl	%ebp, %esi
	.align	16, 0x90
.LBB0_2:                                # %while.body.i.i
                                        # =>This Inner Loop Header: Depth=1
	sarl	%esi
	incl	%edx
	cmpl	$64, %esi
	jg	.LBB0_2
.LBB0_3:                                # %xcf_calc_levels.exit.i
	cmpl	$65, %eax
	jl	.LBB0_6
# BB#4:
	movl	%eax, %esi
	.align	16, 0x90
.LBB0_5:                                # %while.body.i.25.i
                                        # =>This Inner Loop Header: Depth=1
	sarl	%esi
	incl	%ecx
	cmpl	$64, %esi
	jg	.LBB0_5
.LBB0_6:                                # %xcf_calc_levels.exit27.i
	cmpl	%ecx, %edx
	jle	.LBB0_10
# BB#7:                                 # %cond.true.i
	movl	$1, %ecx
	cmpl	$65, %ebp
	jl	.LBB0_12
# BB#8:
	movl	%ebp, %eax
	.align	16, 0x90
.LBB0_9:                                # %while.body.i.16.i
                                        # =>This Inner Loop Header: Depth=1
	sarl	%eax
	incl	%ecx
	cmpl	$64, %eax
	jg	.LBB0_9
	jmp	.LBB0_12
.LBB0_10:                               # %cond.false.i
	movl	$1, %ecx
	cmpl	$65, %eax
	jl	.LBB0_12
	.align	16, 0x90
.LBB0_11:                               # %while.body.i.7.i
                                        # =>This Inner Loop Header: Depth=1
	sarl	%eax
	incl	%ecx
	cmpl	$64, %eax
	jg	.LBB0_11
.LBB0_12:                               # %xcf_setup_tiles.exit
	movl	%ecx, 304(%rsp)
	movl	$.L.str.27, %edi
	movl	$1, %esi
	movl	$14, %edx
	movq	%rbx, %rcx
	callq	fwrite
	testl	%eax, %eax
	js	.LBB0_14
# BB#13:                                # %if.end.i.i.22
	movl	%eax, 272(%rsp)
.LBB0_14:                               # %xcf_write.exit.i.28
	bswapl	%ebp
	movl	%ebp, 320(%rsp)
	leaq	320(%rsp), %rdi
	movl	$1, %esi
	movl	$4, %edx
	movq	%rbx, %rcx
	callq	fwrite
	testl	%eax, %eax
	js	.LBB0_16
# BB#15:                                # %if.end.i.i.i.30
	addl	%eax, 272(%rsp)
.LBB0_16:                               # %xcf_write_32.exit.i.36
	movl	280(%rsp), %eax
	bswapl	%eax
	movl	%eax, 320(%rsp)
	movq	264(%rsp), %rcx
	leaq	320(%rsp), %rdi
	movl	$1, %esi
	movl	$4, %edx
	callq	fwrite
	testl	%eax, %eax
	js	.LBB0_18
# BB#17:                                # %if.end.i.i.9.i.38
	addl	%eax, 272(%rsp)
.LBB0_18:                               # %xcf_write_32.exit10.i.39
	movl	$0, 320(%rsp)
	movq	264(%rsp), %rcx
	leaq	320(%rsp), %rdi
	movl	$1, %esi
	movl	$4, %edx
	callq	fwrite
	testl	%eax, %eax
	js	.LBB0_20
# BB#19:                                # %if.end.i.i.18.i
	addl	%eax, 272(%rsp)
.LBB0_20:                               # %xcf_write_32.exit19.i
	movl	$0, 320(%rsp)
	movq	264(%rsp), %rcx
	leaq	320(%rsp), %rdi
	movl	$1, %esi
	movl	$4, %edx
	callq	fwrite
	testl	%eax, %eax
	js	.LBB0_22
# BB#21:                                # %if.end.i.i.i.i
	addl	%eax, 272(%rsp)
.LBB0_22:                               # %xcf_write_32.exit.i.i
	movl	$0, 320(%rsp)
	movq	264(%rsp), %rcx
	leaq	320(%rsp), %rdi
	movl	$1, %esi
	movl	$4, %edx
	callq	fwrite
	testl	%eax, %eax
	movl	272(%rsp), %ecx
	js	.LBB0_24
# BB#23:                                # %if.end.i.i.8.i.i
	addl	%eax, %ecx
	movl	%ecx, 272(%rsp)
.LBB0_24:                               # %xcf_write_image_props.exit.i
	leal	12(%rcx,%r15,4), %eax
	bswapl	%eax
	movl	%eax, 320(%rsp)
	movq	264(%rsp), %rcx
	leaq	320(%rsp), %rdi
	movl	$1, %esi
	movl	$4, %edx
	callq	fwrite
	testl	%eax, %eax
	js	.LBB0_26
# BB#25:                                # %if.end.i.i.28.i
	addl	%eax, 272(%rsp)
.LBB0_26:                               # %xcf_write_32.exit29.i
	movl	$0, 320(%rsp)
	movq	264(%rsp), %rcx
	leaq	320(%rsp), %rdi
	movl	$1, %esi
	movl	$4, %edx
	callq	fwrite
	testl	%eax, %eax
	js	.LBB0_28
# BB#27:                                # %if.end.i.i.37.i
	addl	%eax, 272(%rsp)
.LBB0_28:                               # %xcf_write_32.exit38.i
	testl	%r15d, %r15d
	movq	%r15, 256(%rsp)         # 8-byte Spill
	jle	.LBB0_33
# BB#29:                                # %for.body.lr.ph.i.44
	movq	256(%rsp), %r12         # 8-byte Reload
	leal	(,%r12,4), %eax
	movq	272(%rsp), %rbx
	movl	%ebx, %ebp
	addl	%eax, %ebp
	movl	$.L.str.26, %edi
	callq	strlen
	movl	304(%rsp), %ecx
	shll	$4, %ecx
	addl	%eax, %ecx
	movl	284(%rsp), %eax
	movl	300(%rsp), %edx
	leal	(%rcx,%rdx,4), %ecx
	shrq	$32, %rbx
	addl	288(%rsp), %eax
	imull	%ebx, %eax
	imull	280(%rsp), %eax
	addl	%ecx, %eax
	leal	53(%rbp,%rax), %ebx
	leaq	18504(%r14), %rbp
	leaq	320(%rsp), %r15
	.align	16, 0x90
.LBB0_30:                               # %for.body.i.47
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rbp), %r13
	movq	24(%r14), %rdi
	movl	$.L.str.15, %esi
	movl	$1196, %edx             # imm = 0x4AC
	callq	dmprintf_file_and_line
	movq	24(%r14), %rdi
	movl	$.L.str.28, %esi
	xorl	%eax, %eax
	movl	%ebx, %edx
	callq	errprintf
	movl	%ebx, %eax
	bswapl	%eax
	movl	%eax, 320(%rsp)
	movq	264(%rsp), %rcx
	movl	$1, %esi
	movl	$4, %edx
	movq	%r15, %rdi
	callq	fwrite
	testl	%eax, %eax
	js	.LBB0_32
# BB#31:                                # %if.end.i.i.49.i
                                        #   in Loop: Header=BB0_30 Depth=1
	addl	%eax, 272(%rsp)
.LBB0_32:                               # %xcf_write_32.exit50.i
                                        #   in Loop: Header=BB0_30 Depth=1
	movl	300(%rsp), %eax
	movl	304(%rsp), %ecx
	shll	$4, %ecx
	addl	8(%r13), %ebx
	addl	%ecx, %ebx
	leal	41(%rbx,%rax,4), %ebx
	addq	$8, %rbp
	decl	%r12d
	jne	.LBB0_30
.LBB0_33:                               # %for.end.i.51
	movl	$0, 320(%rsp)
	movq	264(%rsp), %rcx
	leaq	320(%rsp), %rdi
	movl	$1, %esi
	movl	$4, %edx
	callq	fwrite
	testl	%eax, %eax
	js	.LBB0_34
# BB#35:                                # %if.end.i.i.62.i
	movq	272(%rsp), %rcx
	leal	(%rax,%rcx), %eax
	movl	%eax, 272(%rsp)
	shrq	$32, %rcx
	jmp	.LBB0_36
.LBB0_34:                               # %for.end.i.51.xcf_write_32.exit63.i_crit_edge
	movl	276(%rsp), %ecx
.LBB0_36:                               # %xcf_write_32.exit63.i
	bswapl	%ecx
	movl	%ecx, 320(%rsp)
	movq	264(%rsp), %rcx
	leaq	320(%rsp), %rdi
	movl	$1, %esi
	movl	$4, %edx
	callq	fwrite
	testl	%eax, %eax
	movq	256(%rsp), %r13         # 8-byte Reload
	js	.LBB0_38
# BB#37:                                # %if.end.i.i.72.i
	addl	%eax, 272(%rsp)
.LBB0_38:                               # %xcf_write_32.exit73.i
	movl	280(%rsp), %eax
	bswapl	%eax
	movl	%eax, 320(%rsp)
	movq	264(%rsp), %rcx
	leaq	320(%rsp), %rdi
	movl	$1, %esi
	movl	$4, %edx
	callq	fwrite
	testl	%eax, %eax
	js	.LBB0_40
# BB#39:                                # %if.end.i.i.82.i
	addl	%eax, 272(%rsp)
.LBB0_40:                               # %xcf_write_32.exit83.i
	movl	$0, 320(%rsp)
	movq	264(%rsp), %rcx
	leaq	320(%rsp), %rdi
	movl	$1, %esi
	movl	$4, %edx
	callq	fwrite
	testl	%eax, %eax
	js	.LBB0_42
# BB#41:                                # %if.end.i.i.91.i
	addl	%eax, 272(%rsp)
.LBB0_42:                               # %xcf_write_32.exit92.i
	movl	$.L.str.26, %edi
	callq	strlen
	incl	%eax
	bswapl	%eax
	movl	%eax, 320(%rsp)
	movq	264(%rsp), %rcx
	leaq	320(%rsp), %rdi
	movl	$1, %esi
	movl	$4, %edx
	callq	fwrite
	testl	%eax, %eax
	js	.LBB0_44
# BB#43:                                # %if.end.i.i.101.i
	addl	%eax, 272(%rsp)
.LBB0_44:                               # %xcf_write_32.exit102.i
	movl	$4294967295, %ebx       # imm = 0xFFFFFFFF
	movl	$.L.str.26, %edi
	callq	strlen
	shlq	$32, %rax
	leaq	(%rax,%rbx), %rdx
	incq	%rdx
	sarq	$32, %rdx
	movq	264(%rsp), %rcx
	movl	$.L.str.26, %edi
	movl	$1, %esi
	callq	fwrite
	testl	%eax, %eax
	js	.LBB0_46
# BB#45:                                # %if.end.i.109.i
	addl	%eax, 272(%rsp)
.LBB0_46:                               # %xcf_write.exit110.i
	movl	$0, 320(%rsp)
	movq	264(%rsp), %rcx
	leaq	320(%rsp), %rdi
	movl	$1, %esi
	movl	$4, %edx
	callq	fwrite
	testl	%eax, %eax
	js	.LBB0_48
# BB#47:                                # %if.end.i.i.118.i
	addl	%eax, 272(%rsp)
.LBB0_48:                               # %xcf_write_32.exit119.i
	movl	$0, 320(%rsp)
	movq	264(%rsp), %rcx
	leaq	320(%rsp), %rdi
	movl	$1, %esi
	movl	$4, %edx
	callq	fwrite
	testl	%eax, %eax
	movl	272(%rsp), %ecx
	js	.LBB0_50
# BB#49:                                # %if.end.i.i.127.i
	addl	%eax, %ecx
	movl	%ecx, 272(%rsp)
.LBB0_50:                               # %xcf_write_32.exit128.i
	addl	$8, %ecx
	bswapl	%ecx
	movl	%ecx, 320(%rsp)
	movq	264(%rsp), %rcx
	leaq	320(%rsp), %rdi
	movl	$1, %esi
	movl	$4, %edx
	callq	fwrite
	testl	%eax, %eax
	js	.LBB0_52
# BB#51:                                # %if.end.i.i.137.i
	addl	%eax, 272(%rsp)
.LBB0_52:                               # %xcf_write_32.exit138.i
	movl	$0, 320(%rsp)
	movq	264(%rsp), %rcx
	leaq	320(%rsp), %rdi
	movl	$1, %esi
	movl	$4, %edx
	callq	fwrite
	testl	%eax, %eax
	js	.LBB0_53
# BB#54:                                # %if.end.i.i.146.i
	movq	272(%rsp), %rcx
	leal	(%rax,%rcx), %eax
	movl	%eax, 272(%rsp)
	shrq	$32, %rcx
	jmp	.LBB0_55
.LBB0_53:                               # %xcf_write_32.exit138.i.xcf_write_32.exit147.i_crit_edge
	movl	276(%rsp), %ecx
.LBB0_55:                               # %xcf_write_32.exit147.i
	bswapl	%ecx
	movl	%ecx, 320(%rsp)
	movq	264(%rsp), %rcx
	leaq	320(%rsp), %rdi
	movl	$1, %esi
	movl	$4, %edx
	callq	fwrite
	testl	%eax, %eax
	js	.LBB0_57
# BB#56:                                # %if.end.i.i.156.i
	addl	%eax, 272(%rsp)
.LBB0_57:                               # %xcf_write_32.exit157.i
	movl	280(%rsp), %eax
	bswapl	%eax
	movl	%eax, 320(%rsp)
	movq	264(%rsp), %rcx
	leaq	320(%rsp), %rdi
	movl	$1, %esi
	movl	$4, %edx
	callq	fwrite
	testl	%eax, %eax
	js	.LBB0_59
# BB#58:                                # %if.end.i.i.166.i
	addl	%eax, 272(%rsp)
.LBB0_59:                               # %xcf_write_32.exit167.i
	movl	284(%rsp), %eax
	bswapl	%eax
	movl	%eax, 320(%rsp)
	movq	264(%rsp), %rcx
	leaq	320(%rsp), %rdi
	movl	$1, %esi
	movl	$4, %edx
	callq	fwrite
	testl	%eax, %eax
	movl	272(%rsp), %ecx
	js	.LBB0_61
# BB#60:                                # %if.end.i.i.176.i
	addl	%eax, %ecx
	movl	%ecx, 272(%rsp)
.LBB0_61:                               # %xcf_write_32.exit177.i
	movl	304(%rsp), %eax
	leal	4(%rcx,%rax,4), %eax
	bswapl	%eax
	movl	%eax, 320(%rsp)
	movq	264(%rsp), %rcx
	leaq	320(%rsp), %rdi
	movl	$1, %esi
	movl	$4, %edx
	callq	fwrite
	testl	%eax, %eax
	js	.LBB0_63
# BB#62:                                # %if.end.i.i.186.i
	addl	%eax, 272(%rsp)
.LBB0_63:                               # %xcf_write_32.exit187.i
	addl	$3, %r13d
	cmpl	$2, 304(%rsp)
	jl	.LBB0_68
# BB#64:                                # %for.body.64.lr.ph.i
	movl	276(%rsp), %eax
	movl	300(%rsp), %ecx
	imull	280(%rsp), %eax
	imull	%r13d, %eax
	addl	272(%rsp), %eax
	leal	12(%rax,%rcx,4), %ebp
	movl	$1, %ebx
	leaq	320(%rsp), %r15
	.align	16, 0x90
.LBB0_65:                               # %for.body.64.i
                                        # =>This Inner Loop Header: Depth=1
	movl	%ebp, %eax
	bswapl	%eax
	movl	%eax, 320(%rsp)
	movq	264(%rsp), %rcx
	movl	$1, %esi
	movl	$4, %edx
	movq	%r15, %rdi
	callq	fwrite
	testl	%eax, %eax
	js	.LBB0_67
# BB#66:                                # %if.end.i.i.196.i
                                        #   in Loop: Header=BB0_65 Depth=1
	addl	%eax, 272(%rsp)
.LBB0_67:                               # %xcf_write_32.exit197.i
                                        #   in Loop: Header=BB0_65 Depth=1
	incl	%ebx
	addl	$12, %ebp
	cmpl	304(%rsp), %ebx
	jl	.LBB0_65
.LBB0_68:                               # %for.end.69.i
	movl	$0, 320(%rsp)
	movq	264(%rsp), %rcx
	leaq	320(%rsp), %rdi
	movl	$1, %esi
	movl	$4, %edx
	callq	fwrite
	testl	%eax, %eax
	js	.LBB0_69
# BB#70:                                # %if.end.i.i.205.i
	movq	272(%rsp), %rcx
	leal	(%rax,%rcx), %eax
	movl	%eax, 272(%rsp)
	shrq	$32, %rcx
	jmp	.LBB0_71
.LBB0_69:                               # %for.end.69.i.xcf_write_32.exit206.i_crit_edge
	movl	276(%rsp), %ecx
.LBB0_71:                               # %xcf_write_32.exit206.i
	bswapl	%ecx
	movl	%ecx, 320(%rsp)
	movq	264(%rsp), %rcx
	leaq	320(%rsp), %rdi
	movl	$1, %esi
	movl	$4, %edx
	callq	fwrite
	testl	%eax, %eax
	js	.LBB0_73
# BB#72:                                # %if.end.i.i.215.i
	addl	%eax, 272(%rsp)
.LBB0_73:                               # %xcf_write_32.exit216.i
	movl	280(%rsp), %eax
	bswapl	%eax
	movl	%eax, 320(%rsp)
	movq	264(%rsp), %rcx
	leaq	320(%rsp), %rdi
	movl	$1, %esi
	movl	$4, %edx
	callq	fwrite
	testl	%eax, %eax
	js	.LBB0_75
# BB#74:                                # %if.end.i.i.225.i
	addl	%eax, 272(%rsp)
.LBB0_75:                               # %xcf_write_32.exit226.i
	movl	300(%rsp), %eax
	testl	%eax, %eax
	jle	.LBB0_81
# BB#76:                                # %for.body.84.lr.ph.i
	movl	272(%rsp), %ecx
	leal	4(%rcx,%rax,4), %ebp
	xorl	%ebx, %ebx
	leaq	320(%rsp), %r15
	movl	$64, %r12d
	.align	16, 0x90
.LBB0_77:                               # %for.body.84.i
                                        # =>This Inner Loop Header: Depth=1
	movl	%ebp, %eax
	bswapl	%eax
	movl	%eax, 320(%rsp)
	movq	264(%rsp), %rcx
	movl	$1, %esi
	movl	$4, %edx
	movq	%r15, %rdi
	callq	fwrite
	testl	%eax, %eax
	js	.LBB0_78
# BB#79:                                # %if.end.i.i.235.i
                                        #   in Loop: Header=BB0_77 Depth=1
	movq	272(%rsp), %rcx
	leal	(%rax,%rcx), %eax
	movl	%eax, 272(%rsp)
	shrq	$32, %rcx
	jmp	.LBB0_80
	.align	16, 0x90
.LBB0_78:                               # %for.body.84.i.xcf_write_32.exit236.i_crit_edge
                                        #   in Loop: Header=BB0_77 Depth=1
	movl	276(%rsp), %ecx
.LBB0_80:                               # %xcf_write_32.exit236.i
                                        #   in Loop: Header=BB0_77 Depth=1
	movl	%ebx, %eax
	cltd
	idivl	292(%rsp)
	shll	$6, %edx
	subl	%edx, %ecx
	cmpl	$64, %ecx
	cmovgl	%r12d, %ecx
	movl	280(%rsp), %edx
	shll	$6, %eax
	subl	%eax, %edx
	cmpl	$64, %edx
	cmovgl	%r12d, %edx
	imull	%r13d, %ecx
	imull	%edx, %ecx
	addl	%ecx, %ebp
	incl	%ebx
	cmpl	300(%rsp), %ebx
	jl	.LBB0_77
.LBB0_81:                               # %for.end.91.i
	movl	$0, 320(%rsp)
	movq	264(%rsp), %rcx
	leaq	320(%rsp), %rdi
	movl	$1, %esi
	movl	$4, %edx
	callq	fwrite
	testl	%eax, %eax
	movl	272(%rsp), %ecx
	js	.LBB0_83
# BB#82:                                # %if.end.i.i.249.i
	addl	%eax, %ecx
	movl	%ecx, 272(%rsp)
.LBB0_83:                               # %xcf_write_header.exit
	movq	%r14, %rbx
	movl	%ecx, 308(%rsp)
	xorl	%ebp, %ebp
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	gx_device_raster
	movl	284(%rsp), %r13d
	movl	288(%rsp), %r14d
	movq	20344(%rbx), %rcx
	movq	%rcx, 224(%rsp)         # 8-byte Spill
	movq	24(%rbx), %rdi
	movl	$.L.str.29, %edx
	movl	%eax, %esi
	callq	*64(%rdi)
	movq	%rax, 8(%rsp)           # 8-byte Spill
	movq	24(%rbx), %rdi
	movl	292(%rsp), %esi
	shll	$3, %esi
	movl	$.L.str.29, %edx
	callq	*64(%rdi)
	movq	%rax, %r12
	movl	292(%rsp), %r11d
	testl	%r11d, %r11d
	jle	.LBB0_84
# BB#100:
	leal	(%r14,%r13), %r15d
	movq	%r14, 48(%rsp)          # 8-byte Spill
	movl	$64, %r14d
	.align	16, 0x90
.LBB0_101:                              # %for.body.i.89
                                        # =>This Inner Loop Header: Depth=1
	movl	%ebp, %eax
	cltd
	idivl	%r11d
	shll	$6, %edx
	movl	276(%rsp), %esi
	movl	280(%rsp), %ecx
	subl	%edx, %esi
	cmpl	$64, %esi
	cmovgl	%r14d, %esi
	shll	$6, %eax
	subl	%eax, %ecx
	cmpl	$64, %ecx
	cmovgl	%r14d, %ecx
	imull	%r15d, %esi
	imull	%ecx, %esi
	movq	24(%rbx), %rdi
	movl	$.L.str.29, %edx
	callq	*64(%rdi)
	movq	%rax, (%r12,%rbp,8)
	incq	%rbp
	movslq	292(%rsp), %r11
	cmpq	%r11, %rbp
	jl	.LBB0_101
	jmp	.LBB0_85
.LBB0_84:
	movq	%r14, 48(%rsp)          # 8-byte Spill
.LBB0_85:                               # %for.cond.20.preheader.i
	movq	%r12, 152(%rsp)         # 8-byte Spill
	movq	%rbx, 56(%rsp)          # 8-byte Spill
	cmpl	$0, 296(%rsp)
	jle	.LBB0_98
# BB#86:                                # %for.body.23.lr.ph.i
	movq	%r13, 40(%rsp)          # 8-byte Spill
	xorl	%eax, %eax
	.align	16, 0x90
.LBB0_87:                               # %for.body.23.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_102 Depth 2
                                        #       Child Loop BB0_143 Depth 3
                                        #         Child Loop BB0_146 Depth 4
                                        #           Child Loop BB0_153 Depth 5
                                        #       Child Loop BB0_105 Depth 3
                                        #         Child Loop BB0_108 Depth 4
                                        #           Child Loop BB0_117 Depth 5
                                        #           Child Loop BB0_127 Depth 5
                                        #           Child Loop BB0_135 Depth 5
                                        #     Child Loop BB0_89 Depth 2
                                        #       Child Loop BB0_93 Depth 3
	movq	%rax, 24(%rsp)          # 8-byte Spill
	movl	%eax, %ebp
	shll	$6, %ebp
	movl	280(%rsp), %eax
	leal	64(%rbp), %ecx
	cmpl	%ecx, %eax
	cmovlel	%eax, %ecx
	movl	%ecx, 20(%rsp)          # 4-byte Spill
	cmpl	%ecx, %ebp
	movq	56(%rsp), %rdi          # 8-byte Reload
	jge	.LBB0_88
	.align	16, 0x90
.LBB0_102:                              # %for.body.33.i
                                        #   Parent Loop BB0_87 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_143 Depth 3
                                        #         Child Loop BB0_146 Depth 4
                                        #           Child Loop BB0_153 Depth 5
                                        #       Child Loop BB0_105 Depth 3
                                        #         Child Loop BB0_108 Depth 4
                                        #           Child Loop BB0_117 Depth 5
                                        #           Child Loop BB0_127 Depth 5
                                        #           Child Loop BB0_135 Depth 5
	movq	%rdi, %rbx
	movl	%ebp, %esi
	movq	8(%rsp), %rdx           # 8-byte Reload
	leaq	320(%rsp), %rcx
	callq	gdev_prn_get_bits
	movq	320(%rsp), %rax
	movq	%rax, 248(%rsp)         # 8-byte Spill
	movl	%ebp, %eax
	sarl	$31, %eax
	shrl	$26, %eax
	leal	(%rax,%rbp), %eax
	andl	$-64, %eax
	movq	%rax, 104(%rsp)         # 8-byte Spill
	movl	%ebp, %ecx
	subl	%eax, %ecx
	movl	%ecx, 92(%rsp)          # 4-byte Spill
	movl	284(%rsp), %r15d
	movq	%r15, 144(%rsp)         # 8-byte Spill
	movq	288(%rsp), %r10
	movq	%r10, %r11
	shrq	$32, %r11
	cmpq	$0, 224(%rsp)           # 8-byte Folded Reload
	je	.LBB0_103
# BB#140:                               # %if.else.i
                                        #   in Loop: Header=BB0_102 Depth=2
	testl	%r11d, %r11d
	jle	.LBB0_141
# BB#142:                               # %for.body.lr.ph.i.18.i
                                        #   in Loop: Header=BB0_102 Depth=2
	movq	%rbp, 32(%rsp)          # 8-byte Spill
	movl	%r10d, %eax
	andl	$1, %eax
	movl	%eax, 216(%rsp)         # 4-byte Spill
	movq	248(%rsp), %rax         # 8-byte Reload
	leaq	1(%rax), %rax
	movq	%rax, 192(%rsp)         # 8-byte Spill
	movq	104(%rsp), %rax         # 8-byte Reload
	leal	-1(%rax), %eax
	movl	%eax, 168(%rsp)         # 4-byte Spill
	xorl	%esi, %esi
	movl	$-1, %eax
	xorl	%r9d, %r9d
	movq	%rbx, %rdi
	.align	16, 0x90
.LBB0_143:                              # %for.body.i.37.i
                                        #   Parent Loop BB0_87 Depth=1
                                        #     Parent Loop BB0_102 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_146 Depth 4
                                        #           Child Loop BB0_153 Depth 5
	movq	%rdi, %r8
	movl	276(%rsp), %r14d
	movl	280(%rsp), %ebp
	movl	%esi, %ecx
	shll	$6, %ecx
	movl	%r14d, %edi
	subl	%ecx, %edi
	cmpl	$64, %edi
	movl	$64, %ecx
	cmovgl	%ecx, %edi
	movl	%ebp, %edx
	movq	104(%rsp), %rbx         # 8-byte Reload
	subl	%ebx, %edx
	cmpl	$64, %edx
	cmovgl	%ecx, %edx
	testl	%edi, %edi
	jle	.LBB0_144
# BB#145:                               # %for.body.30.lr.ph.i.i
                                        #   in Loop: Header=BB0_143 Depth=3
	movq	%r10, %r12
	movq	152(%rsp), %rcx         # 8-byte Reload
	movq	(%rcx,%rsi,8), %rcx
	movq	%rsi, 184(%rsp)         # 8-byte Spill
	movl	%edi, %esi
	movl	92(%rsp), %ebx          # 4-byte Reload
	imull	%ebx, %esi
	movl	%r9d, %r11d
	movslq	%esi, %r9
	imull	%r15d, %esi
	movslq	%esi, %r10
	imull	%edi, %edx
	imull	%r15d, %edx
	movslq	%edx, %rdx
	leaq	(%rdx,%rcx), %rdx
	addq	%r9, %rdx
	movq	%rdx, 208(%rsp)         # 8-byte Spill
	movl	%r11d, %r9d
	movslq	%edi, %rdx
	movq	%rdx, 240(%rsp)         # 8-byte Spill
	movl	168(%rsp), %edx         # 4-byte Reload
	subl	%ebp, %edx
	cmpl	$-66, %edx
	movl	$-65, %esi
	cmovlel	%esi, %edx
	notl	%edx
	movl	%r15d, %edi
	imull	%edx, %edi
	movl	%eax, %ebp
	movl	%eax, 176(%rsp)         # 4-byte Spill
	subl	%r14d, %ebp
	cmpl	$-66, %ebp
	cmovlel	%esi, %ebp
	notl	%ebp
	imull	%ebp, %edi
	movslq	%edi, %rax
	movl	%ebx, %edi
	imull	%ebp, %edi
	movslq	%edi, %rdi
	addq	%rax, %rdi
	leaq	(%r10,%rcx), %rax
	movq	%rax, 232(%rsp)         # 8-byte Spill
	leaq	(%rdi,%rcx), %r14
	imull	%edx, %ebp
	movslq	%ebp, %rax
	movq	%rax, 200(%rsp)         # 8-byte Spill
	leaq	(%rax,%rax), %r13
	xorl	%ebp, %ebp
	movq	%r8, %rdi
	.align	16, 0x90
.LBB0_146:                              # %for.body.30.i.i
                                        #   Parent Loop BB0_87 Depth=1
                                        #     Parent Loop BB0_102 Depth=2
                                        #       Parent Loop BB0_143 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB0_153 Depth 5
	movl	%r9d, 256(%rsp)         # 4-byte Spill
	movslq	%r9d, %r15
	movq	248(%rsp), %rax         # 8-byte Reload
	leaq	(%rax,%r15), %rdx
	movl	$1, %r8d
	movq	%rdi, %rbx
	movq	224(%rsp), %rsi         # 8-byte Reload
	movq	232(%rsp), %rcx         # 8-byte Reload
	callq	gscms_transform_color
	testl	%r12d, %r12d
	jle	.LBB0_147
# BB#148:                               # %for.body.37.i.i.preheader
                                        #   in Loop: Header=BB0_146 Depth=4
	cmpl	$0, 216(%rsp)           # 4-byte Folded Reload
	jne	.LBB0_150
# BB#149:                               #   in Loop: Header=BB0_146 Depth=4
	movq	%rbx, %r8
	xorl	%esi, %esi
	jmp	.LBB0_151
	.align	16, 0x90
.LBB0_147:                              #   in Loop: Header=BB0_146 Depth=4
	movl	256(%rsp), %r9d         # 4-byte Reload
	movq	%rbx, %rdi
	jmp	.LBB0_155
	.align	16, 0x90
.LBB0_150:                              # %for.body.37.i.i.prol
                                        #   in Loop: Header=BB0_146 Depth=4
	movq	%rbx, %r8
	movq	248(%rsp), %rax         # 8-byte Reload
	movb	(%rax,%r15), %al
	notb	%al
	movq	208(%rsp), %rcx         # 8-byte Reload
	movb	%al, (%rcx,%rbp)
	incq	%r15
	movl	$1, %esi
.LBB0_151:                              # %for.body.37.i.i.preheader.split
                                        #   in Loop: Header=BB0_146 Depth=4
	movl	256(%rsp), %r9d         # 4-byte Reload
	cmpl	$1, %r12d
	je	.LBB0_154
# BB#152:                               # %for.body.37.i.i.preheader.split.split
                                        #   in Loop: Header=BB0_146 Depth=4
	movq	192(%rsp), %rax         # 8-byte Reload
	leaq	(%r15,%rax), %rax
	movl	%r12d, %ecx
	subl	%esi, %ecx
	movq	200(%rsp), %rdi         # 8-byte Reload
	movq	%rdi, %rdx
	imulq	%rsi, %rdx
	leaq	(%rdx,%r14), %rdx
	incq	%rsi
	imulq	%rdi, %rsi
	leaq	(%rsi,%r14), %rsi
	xorl	%edi, %edi
	.align	16, 0x90
.LBB0_153:                              # %for.body.37.i.i
                                        #   Parent Loop BB0_87 Depth=1
                                        #     Parent Loop BB0_102 Depth=2
                                        #       Parent Loop BB0_143 Depth=3
                                        #         Parent Loop BB0_146 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	movb	-1(%rax), %bl
	notb	%bl
	movb	%bl, (%rdx,%rdi)
	movb	(%rax), %bl
	notb	%bl
	movb	%bl, (%rsi,%rdi)
	addq	$2, %rax
	addq	%r13, %rdi
	addl	$-2, %ecx
	jne	.LBB0_153
.LBB0_154:                              # %for.cond.35.for.end_crit_edge.i.i
                                        #   in Loop: Header=BB0_146 Depth=4
	addl	%r12d, %r9d
	movq	%r8, %rdi
.LBB0_155:                              # %for.end.i.i
                                        #   in Loop: Header=BB0_146 Depth=4
	incq	%rbp
	incq	%r14
	cmpq	240(%rsp), %rbp         # 8-byte Folded Reload
	jl	.LBB0_146
# BB#156:                               # %for.cond.28.for.end.47_crit_edge.i.i
                                        #   in Loop: Header=BB0_143 Depth=3
	movl	292(%rsp), %r11d
	movq	144(%rsp), %r15         # 8-byte Reload
	movq	%r12, %r10
	movq	184(%rsp), %rsi         # 8-byte Reload
	movl	176(%rsp), %eax         # 4-byte Reload
	jmp	.LBB0_157
	.align	16, 0x90
.LBB0_144:                              #   in Loop: Header=BB0_143 Depth=3
	movq	%r8, %rdi
.LBB0_157:                              # %for.end.47.i.i
                                        #   in Loop: Header=BB0_143 Depth=3
	incq	%rsi
	movslq	%r11d, %rcx
	addl	$64, %eax
	cmpq	%rcx, %rsi
	jl	.LBB0_143
	jmp	.LBB0_158
	.align	16, 0x90
.LBB0_103:                              # %if.then.i
                                        #   in Loop: Header=BB0_102 Depth=2
	testl	%r11d, %r11d
	jle	.LBB0_141
# BB#104:                               # %for.body.lr.ph.i.i
                                        #   in Loop: Header=BB0_102 Depth=2
	movq	%rbp, 32(%rsp)          # 8-byte Spill
	leal	-1(%r15), %eax
	movq	%rax, 192(%rsp)         # 8-byte Spill
	leaq	1(%rax), %rdx
	movq	%rdx, 240(%rsp)         # 8-byte Spill
	movl	%r15d, %ecx
	imull	92(%rsp), %ecx          # 4-byte Folded Reload
	movl	%ecx, 72(%rsp)          # 4-byte Spill
	movq	248(%rsp), %rcx         # 8-byte Reload
	leaq	(%rcx,%rax), %rax
	movq	%rax, 200(%rsp)         # 8-byte Spill
	movabsq	$8589934576, %rax       # imm = 0x1FFFFFFF0
	andq	%rax, %rdx
	movq	%rdx, 256(%rsp)         # 8-byte Spill
	leaq	-16(%rdx), %rax
	shrq	$4, %rax
	movq	%rax, 136(%rsp)         # 8-byte Spill
	andl	$1, %eax
	movq	%rax, 128(%rsp)         # 8-byte Spill
	movl	%r10d, %eax
	andl	$1, %eax
	movl	%eax, 232(%rsp)         # 4-byte Spill
	leaq	16(%rcx), %rax
	movq	%rax, 96(%rsp)          # 8-byte Spill
	leaq	1(%rcx), %rax
	movq	%rax, 216(%rsp)         # 8-byte Spill
	movq	104(%rsp), %rax         # 8-byte Reload
	leal	-1(%rax), %eax
	movl	%eax, 68(%rsp)          # 4-byte Spill
	xorl	%ebp, %ebp
	movl	$-1, %r12d
	xorl	%r9d, %r9d
	movq	%rbx, %rdi
	.align	16, 0x90
.LBB0_105:                              # %for.body.i.i
                                        #   Parent Loop BB0_87 Depth=1
                                        #     Parent Loop BB0_102 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB0_108 Depth 4
                                        #           Child Loop BB0_117 Depth 5
                                        #           Child Loop BB0_127 Depth 5
                                        #           Child Loop BB0_135 Depth 5
	movq	%rdi, %rsi
	movl	276(%rsp), %r14d
	movl	280(%rsp), %r8d
	movl	%ebp, %eax
	shll	$6, %eax
	movl	%r14d, %edi
	subl	%eax, %edi
	cmpl	$64, %edi
	movl	$64, %ecx
	cmovgl	%ecx, %edi
	movl	%r8d, %eax
	movq	104(%rsp), %rdx         # 8-byte Reload
	subl	%edx, %eax
	cmpl	$64, %eax
	cmovgl	%ecx, %eax
	testl	%edi, %edi
	jle	.LBB0_106
# BB#107:                               # %for.cond.31.preheader.lr.ph.i.i
                                        #   in Loop: Header=BB0_105 Depth=3
	movq	152(%rsp), %rcx         # 8-byte Reload
	movq	(%rcx,%rbp,8), %rcx
	movl	%edi, %esi
	movq	%r10, %r11
	movl	92(%rsp), %r10d         # 4-byte Reload
	imull	%r10d, %esi
	movslq	%esi, %rbx
	imull	%r15d, %esi
	movslq	%esi, %rsi
	leaq	(%rsi,%rcx), %rdx
	movq	%rdx, 160(%rsp)         # 8-byte Spill
	imull	%edi, %eax
	imull	%r15d, %eax
	cltq
	leaq	(%rax,%rcx), %rax
	addq	%rbx, %rax
	movq	%rax, 184(%rsp)         # 8-byte Spill
	movq	%rbp, %rax
	movq	%rbp, 80(%rsp)          # 8-byte Spill
	shlq	$6, %rax
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	addl	%edx, %eax
	movslq	%edi, %r13
	subl	%r14d, %eax
	cmpl	$-66, %eax
	movl	$-65, %edx
	cmovlel	%edx, %eax
	notl	%eax
	movl	72(%rsp), %edi          # 4-byte Reload
	imull	%edi, %eax
	cltq
	leaq	(%rcx,%rax), %rsi
	movq	%rsi, 208(%rsp)         # 8-byte Spill
	movq	192(%rsp), %rsi         # 8-byte Reload
	leaq	(%rcx,%rsi), %rsi
	addq	%rax, %rsi
	movq	%rsi, 168(%rsp)         # 8-byte Spill
	movl	%r12d, %eax
	movl	%r12d, 76(%rsp)         # 4-byte Spill
	subl	%r14d, %eax
	cmpl	$-66, %eax
	cmovlel	%edx, %eax
	notl	%eax
	movl	%edi, %esi
	imull	%eax, %esi
	movslq	%esi, %rsi
	leaq	16(%rcx,%rsi), %rdi
	movq	%rdi, 112(%rsp)         # 8-byte Spill
	leaq	1(%rcx,%rsi), %rsi
	movq	%rsi, 120(%rsp)         # 8-byte Spill
	movl	68(%rsp), %edi          # 4-byte Reload
	subl	%r8d, %edi
	cmpl	$-66, %edi
	cmovlel	%edx, %edi
	notl	%edi
	movl	%r15d, %esi
	imull	%edi, %esi
	imull	%eax, %esi
	movslq	%esi, %rbp
	movl	%r10d, %esi
	movq	%r11, %r10
	imull	%eax, %esi
	movslq	%esi, %rsi
	addq	%rbp, %rsi
	addq	%rcx, %rsi
	imull	%eax, %edi
	movslq	%edi, %rax
	movq	%rax, 176(%rsp)         # 8-byte Spill
	leaq	(%rax,%rax), %r8
	xorl	%r12d, %r12d
	xorl	%r11d, %r11d
	.align	16, 0x90
.LBB0_108:                              # %for.cond.31.preheader.i.i
                                        #   Parent Loop BB0_87 Depth=1
                                        #     Parent Loop BB0_102 Depth=2
                                        #       Parent Loop BB0_105 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB0_117 Depth 5
                                        #           Child Loop BB0_127 Depth 5
                                        #           Child Loop BB0_135 Depth 5
	testl	%r15d, %r15d
	jle	.LBB0_129
# BB#109:                               # %for.body.33.lr.ph.i.i
                                        #   in Loop: Header=BB0_108 Depth=4
	movslq	%r11d, %rbx
	movq	240(%rsp), %rax         # 8-byte Reload
	leaq	(%rax,%rbx), %rbp
	xorl	%edi, %edi
	cmpq	$0, 256(%rsp)           # 8-byte Folded Reload
	movslq	%r9d, %rcx
	je	.LBB0_121
# BB#110:                               # %vector.memcheck
                                        #   in Loop: Header=BB0_108 Depth=4
	movq	%r10, %r14
	movslq	%r11d, %r10
	movq	208(%rsp), %rax         # 8-byte Reload
	leaq	(%rax,%r10), %rax
	movq	200(%rsp), %rdx         # 8-byte Reload
	leaq	(%rdx,%rcx), %rdx
	cmpq	%rdx, %rax
	ja	.LBB0_112
# BB#111:                               # %vector.memcheck
                                        #   in Loop: Header=BB0_108 Depth=4
	movq	168(%rsp), %rax         # 8-byte Reload
	leaq	(%rax,%r10), %rax
	movq	248(%rsp), %rdx         # 8-byte Reload
	leaq	(%rdx,%rcx), %rdx
	cmpq	%rax, %rdx
	jbe	.LBB0_120
.LBB0_112:                              # %vector.body.preheader
                                        #   in Loop: Header=BB0_108 Depth=4
	cmpq	$0, 128(%rsp)           # 8-byte Folded Reload
	movq	%rbx, %rax
	jne	.LBB0_114
# BB#113:                               # %vector.body.prol
                                        #   in Loop: Header=BB0_108 Depth=4
	movq	248(%rsp), %rax         # 8-byte Reload
	movups	(%rax,%rcx), %xmm0
	movq	160(%rsp), %rax         # 8-byte Reload
	movups	%xmm0, (%rax,%rbx)
	leaq	16(%rbx), %rax
.LBB0_114:                              # %vector.body.preheader.split
                                        #   in Loop: Header=BB0_108 Depth=4
	movq	256(%rsp), %rdx         # 8-byte Reload
	leaq	(%rbx,%rdx), %rbx
	addq	%rdx, %rcx
	cmpq	$0, 136(%rsp)           # 8-byte Folded Reload
	je	.LBB0_115
# BB#116:                               # %vector.body.preheader.split.split
                                        #   in Loop: Header=BB0_108 Depth=4
	leaq	(%rdx,%r10), %rdi
	subq	%rax, %rdi
	movq	112(%rsp), %rdx         # 8-byte Reload
	leaq	(%rdx,%rax), %r15
	movslq	%r9d, %rdx
	addq	%rax, %rdx
	subq	%r10, %rdx
	movq	96(%rsp), %rax          # 8-byte Reload
	leaq	(%rdx,%rax), %rax
	.align	16, 0x90
.LBB0_117:                              # %vector.body
                                        #   Parent Loop BB0_87 Depth=1
                                        #     Parent Loop BB0_102 Depth=2
                                        #       Parent Loop BB0_105 Depth=3
                                        #         Parent Loop BB0_108 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	movups	-16(%rax), %xmm0
	movups	%xmm0, -16(%r15)
	movups	(%rax), %xmm0
	movups	%xmm0, (%r15)
	addq	$32, %r15
	addq	$32, %rax
	addq	$-32, %rdi
	jne	.LBB0_117
# BB#118:                               #   in Loop: Header=BB0_108 Depth=4
	movq	256(%rsp), %rdi         # 8-byte Reload
	jmp	.LBB0_119
.LBB0_115:                              #   in Loop: Header=BB0_108 Depth=4
	movl	%edx, %edi
.LBB0_119:                              # %middle.block
                                        #   in Loop: Header=BB0_108 Depth=4
	movq	144(%rsp), %r15         # 8-byte Reload
.LBB0_120:                              # %middle.block
                                        #   in Loop: Header=BB0_108 Depth=4
	movq	%r14, %r10
.LBB0_121:                              # %middle.block
                                        #   in Loop: Header=BB0_108 Depth=4
	cmpq	%rbx, %rbp
	je	.LBB0_128
# BB#122:                               # %for.body.33.i.i.preheader
                                        #   in Loop: Header=BB0_108 Depth=4
	movl	%r15d, %eax
	subl	%edi, %eax
	testb	$1, %al
	jne	.LBB0_124
# BB#123:                               #   in Loop: Header=BB0_108 Depth=4
	movl	%edi, %ebp
	jmp	.LBB0_125
.LBB0_124:                              # %for.body.33.i.i.prol
                                        #   in Loop: Header=BB0_108 Depth=4
	movq	248(%rsp), %rax         # 8-byte Reload
	movb	(%rax,%rcx), %al
	movq	160(%rsp), %rdx         # 8-byte Reload
	movb	%al, (%rdx,%rbx)
	leal	1(%rdi), %ebp
	incq	%rbx
	incq	%rcx
.LBB0_125:                              # %for.body.33.i.i.preheader.split
                                        #   in Loop: Header=BB0_108 Depth=4
	movq	192(%rsp), %rax         # 8-byte Reload
	cmpl	%edi, %eax
	je	.LBB0_128
# BB#126:                               # %for.body.33.i.i.preheader.split.split
                                        #   in Loop: Header=BB0_108 Depth=4
	movq	216(%rsp), %rax         # 8-byte Reload
	leaq	(%rcx,%rax), %rcx
	movq	120(%rsp), %rax         # 8-byte Reload
	leaq	(%rbx,%rax), %rax
	movl	%r15d, %edi
	subl	%ebp, %edi
	.align	16, 0x90
.LBB0_127:                              # %for.body.33.i.i
                                        #   Parent Loop BB0_87 Depth=1
                                        #     Parent Loop BB0_102 Depth=2
                                        #       Parent Loop BB0_105 Depth=3
                                        #         Parent Loop BB0_108 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	movb	-1(%rcx), %dl
	movb	%dl, -1(%rax)
	movb	(%rcx), %dl
	movb	%dl, (%rax)
	addq	$2, %rcx
	addq	$2, %rax
	addl	$-2, %edi
	jne	.LBB0_127
.LBB0_128:                              # %for.cond.31.for.cond.40.preheader_crit_edge.i.i
                                        #   in Loop: Header=BB0_108 Depth=4
	addl	%r15d, %r11d
	addl	%r15d, %r9d
.LBB0_129:                              # %for.cond.40.preheader.i.i
                                        #   in Loop: Header=BB0_108 Depth=4
	testl	%r10d, %r10d
	jle	.LBB0_137
# BB#130:                               # %for.body.42.lr.ph.i.i
                                        #   in Loop: Header=BB0_108 Depth=4
	cmpl	$0, 232(%rsp)           # 4-byte Folded Reload
	movslq	%r9d, %rax
	jne	.LBB0_132
# BB#131:                               #   in Loop: Header=BB0_108 Depth=4
	xorl	%ebx, %ebx
	jmp	.LBB0_133
	.align	16, 0x90
.LBB0_132:                              # %for.body.42.i.i.prol
                                        #   in Loop: Header=BB0_108 Depth=4
	movq	248(%rsp), %rcx         # 8-byte Reload
	movb	(%rcx,%rax), %cl
	notb	%cl
	movq	184(%rsp), %rdx         # 8-byte Reload
	movb	%cl, (%rdx,%r12)
	incq	%rax
	movl	$1, %ebx
.LBB0_133:                              # %for.body.42.lr.ph.i.i.split
                                        #   in Loop: Header=BB0_108 Depth=4
	cmpl	$1, %r10d
	je	.LBB0_136
# BB#134:                               # %for.body.42.lr.ph.i.i.split.split
                                        #   in Loop: Header=BB0_108 Depth=4
	movq	216(%rsp), %rcx         # 8-byte Reload
	leaq	(%rax,%rcx), %rcx
	movl	%r10d, %edi
	subl	%ebx, %edi
	movq	176(%rsp), %rdx         # 8-byte Reload
	movq	%rdx, %rax
	imulq	%rbx, %rax
	leaq	(%rax,%rsi), %rbp
	incq	%rbx
	imulq	%rdx, %rbx
	leaq	(%rbx,%rsi), %rbx
	xorl	%eax, %eax
	.align	16, 0x90
.LBB0_135:                              # %for.body.42.i.i
                                        #   Parent Loop BB0_87 Depth=1
                                        #     Parent Loop BB0_102 Depth=2
                                        #       Parent Loop BB0_105 Depth=3
                                        #         Parent Loop BB0_108 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	movb	-1(%rcx), %dl
	notb	%dl
	movb	%dl, (%rbp,%rax)
	movb	(%rcx), %dl
	notb	%dl
	movb	%dl, (%rbx,%rax)
	addq	$2, %rcx
	addq	%r8, %rax
	addl	$-2, %edi
	jne	.LBB0_135
.LBB0_136:                              # %for.cond.40.for.end.52_crit_edge.i.i
                                        #   in Loop: Header=BB0_108 Depth=4
	addl	%r10d, %r9d
.LBB0_137:                              # %for.end.52.i.i
                                        #   in Loop: Header=BB0_108 Depth=4
	incq	%r12
	incq	%rsi
	cmpq	%r13, %r12
	jl	.LBB0_108
# BB#138:                               # %for.cond.28.for.end.55_crit_edge.i.i
                                        #   in Loop: Header=BB0_105 Depth=3
	movl	292(%rsp), %r11d
	movq	56(%rsp), %rdi          # 8-byte Reload
	movq	80(%rsp), %rbp          # 8-byte Reload
	movl	76(%rsp), %r12d         # 4-byte Reload
	jmp	.LBB0_139
	.align	16, 0x90
.LBB0_106:                              #   in Loop: Header=BB0_105 Depth=3
	movq	%rsi, %rdi
.LBB0_139:                              # %for.end.55.i.i
                                        #   in Loop: Header=BB0_105 Depth=3
	incq	%rbp
	movslq	%r11d, %rax
	addl	$64, %r12d
	cmpq	%rax, %rbp
	jl	.LBB0_105
	jmp	.LBB0_158
	.align	16, 0x90
.LBB0_141:                              #   in Loop: Header=BB0_102 Depth=2
	movq	%rbp, 32(%rsp)          # 8-byte Spill
	movq	%rbx, %rdi
.LBB0_158:                              # %for.inc.37.i
                                        #   in Loop: Header=BB0_102 Depth=2
	movq	32(%rsp), %rbp          # 8-byte Reload
	incl	%ebp
	cmpl	20(%rsp), %ebp          # 4-byte Folded Reload
	jl	.LBB0_102
.LBB0_88:                               # %for.cond.40.preheader.i
                                        #   in Loop: Header=BB0_87 Depth=1
	testl	%r11d, %r11d
	movl	$0, %r12d
	jle	.LBB0_97
	.align	16, 0x90
.LBB0_89:                               # %for.body.44.i
                                        #   Parent Loop BB0_87 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_93 Depth 3
	movl	%r11d, %ecx
	movq	24(%rsp), %rax          # 8-byte Reload
	imull	%eax, %ecx
	movl	%r12d, %eax
	addl	%ecx, %eax
	cltd
	idivl	%r11d
	movl	%eax, %r15d
	movl	%edx, %r13d
	movl	276(%rsp), %ebx
	shll	$6, %r13d
	movl	%ebx, %eax
	subl	%r13d, %eax
	cmpl	$64, %eax
	movl	$64, %ecx
	cmovgl	%ecx, %eax
	movl	280(%rsp), %ebp
	movl	%ebp, 256(%rsp)         # 4-byte Spill
	shll	$6, %r15d
	subl	%r15d, %ebp
	cmpl	$64, %ebp
	cmovgl	%ecx, %ebp
	imull	%eax, %ebp
	movl	%ebp, %eax
	movq	40(%rsp), %rcx          # 8-byte Reload
	imull	%ecx, %eax
	movq	152(%rsp), %rcx         # 8-byte Reload
	movq	(%rcx,%r12,8), %rdi
	movslq	%eax, %rdx
	movq	264(%rsp), %rcx
	movl	$1, %esi
	callq	fwrite
	testl	%eax, %eax
	movq	48(%rsp), %rcx          # 8-byte Reload
	js	.LBB0_91
# BB#90:                                # %if.end.i.i.99
                                        #   in Loop: Header=BB0_89 Depth=2
	addl	%eax, 272(%rsp)
.LBB0_91:                               # %for.cond.53.preheader.i
                                        #   in Loop: Header=BB0_89 Depth=2
	testl	%ecx, %ecx
	jle	.LBB0_96
# BB#92:                                # %for.body.56.lr.ph.i
                                        #   in Loop: Header=BB0_89 Depth=2
	movslq	%ebp, %r14
	decl	%r13d
	subl	%ebx, %r13d
	cmpl	$-66, %r13d
	movl	$-65, %ecx
	cmovlel	%ecx, %r13d
	notl	%r13d
	movq	40(%rsp), %rax          # 8-byte Reload
	imull	%r13d, %eax
	decl	%r15d
	subl	256(%rsp), %r15d        # 4-byte Folded Reload
	cmpl	$-66, %r15d
	cmovlel	%ecx, %r15d
	notl	%r15d
	imull	%r15d, %eax
	movslq	%eax, %rbp
	imull	%r13d, %r15d
	movslq	%r15d, %r15
	movq	48(%rsp), %rax          # 8-byte Reload
	movl	%eax, %ebx
	.align	16, 0x90
.LBB0_93:                               # %for.body.56.i
                                        #   Parent Loop BB0_87 Depth=1
                                        #     Parent Loop BB0_89 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	264(%rsp), %rcx
	movq	152(%rsp), %rax         # 8-byte Reload
	movq	(%rax,%r12,8), %rdi
	addq	%rbp, %rdi
	movl	$1, %esi
	movq	%r14, %rdx
	callq	fwrite
	testl	%eax, %eax
	js	.LBB0_95
# BB#94:                                # %if.end.i.70.i
                                        #   in Loop: Header=BB0_93 Depth=3
	addl	%eax, 272(%rsp)
.LBB0_95:                               # %xcf_write.exit71.i
                                        #   in Loop: Header=BB0_93 Depth=3
	addq	%r15, %rbp
	decl	%ebx
	jne	.LBB0_93
.LBB0_96:                               # %for.end.65.i
                                        #   in Loop: Header=BB0_89 Depth=2
	incq	%r12
	movslq	292(%rsp), %r11
	cmpq	%r11, %r12
	jl	.LBB0_89
.LBB0_97:                               # %for.end.68.i
                                        #   in Loop: Header=BB0_87 Depth=1
	movq	24(%rsp), %rax          # 8-byte Reload
	incl	%eax
	cmpl	296(%rsp), %eax
	jl	.LBB0_87
.LBB0_98:                               # %for.cond.72.preheader.i
	xorl	%ebx, %ebx
	testl	%r11d, %r11d
	movq	56(%rsp), %rax          # 8-byte Reload
	movq	24(%rax), %rdi
	movq	24(%rdi), %rax
	jle	.LBB0_99
# BB#159:
	movq	56(%rsp), %r14          # 8-byte Reload
	movq	152(%rsp), %rbp         # 8-byte Reload
	.align	16, 0x90
.LBB0_160:                              # %for.body.76.i
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rbp,%rbx,8), %rsi
	movl	$.L.str.29, %edx
	callq	*%rax
	incq	%rbx
	movslq	292(%rsp), %rcx
	movq	24(%r14), %rdi
	movq	24(%rdi), %rax
	cmpq	%rcx, %rbx
	jl	.LBB0_160
	jmp	.LBB0_161
.LBB0_99:
	movq	56(%rsp), %r14          # 8-byte Reload
	movq	152(%rsp), %rbp         # 8-byte Reload
.LBB0_161:                              # %xcf_write_image_data.exit
	movq	%r14, 56(%rsp)          # 8-byte Spill
	movl	$.L.str.29, %edx
	movq	%rbp, %rsi
	callq	*%rax
	movq	24(%r14), %rdi
	movl	$.L.str.29, %edx
	movq	8(%rsp), %rsi           # 8-byte Reload
	callq	*24(%rdi)
	movl	284(%rsp), %eax
	movq	%rax, 240(%rsp)         # 8-byte Spill
	movl	288(%rsp), %ecx
	addl	%eax, %ecx
	movl	%ecx, 256(%rsp)         # 4-byte Spill
	leaq	264(%rsp), %rdi
	callq	xcf_write_fake_hierarchy
	cmpl	$0, 288(%rsp)
	movq	%r14, %rbx
	jle	.LBB0_207
# BB#162:                               # %for.body.lr.ph.i
	leaq	320(%rsp), %r12
	movl	$64, %r15d
	xorl	%ecx, %ecx
	.align	16, 0x90
.LBB0_163:                              # %for.body.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_190 Depth 2
                                        #     Child Loop BB0_201 Depth 2
	movq	%rcx, 248(%rsp)         # 8-byte Spill
	movq	18504(%rbx,%rcx,8), %rbp
	movb	$0, 319(%rsp)
	movq	24(%rbx), %rdi
	movl	$.L.str.15, %esi
	movl	$1414, %edx             # imm = 0x586
	callq	dmprintf_file_and_line
	movq	24(%rbx), %rdi
	movl	272(%rsp), %edx
	movl	$.L.str.30, %esi
	movl	$8, %ecx
	xorl	%eax, %eax
	callq	errprintf
	movl	276(%rsp), %eax
	bswapl	%eax
	movl	%eax, 320(%rsp)
	movq	264(%rsp), %rcx
	movl	$1, %esi
	movl	$4, %edx
	movq	%r12, %rdi
	callq	fwrite
	testl	%eax, %eax
	js	.LBB0_165
# BB#164:                               # %if.end.i.i.i
                                        #   in Loop: Header=BB0_163 Depth=1
	addl	%eax, 272(%rsp)
.LBB0_165:                              # %xcf_write_32.exit.i
                                        #   in Loop: Header=BB0_163 Depth=1
	movl	280(%rsp), %eax
	bswapl	%eax
	movl	%eax, 320(%rsp)
	movq	264(%rsp), %rcx
	movl	$1, %esi
	movl	$4, %edx
	movq	%r12, %rdi
	callq	fwrite
	testl	%eax, %eax
	js	.LBB0_167
# BB#166:                               # %if.end.i.i.9.i
                                        #   in Loop: Header=BB0_163 Depth=1
	addl	%eax, 272(%rsp)
.LBB0_167:                              # %xcf_write_32.exit10.i
                                        #   in Loop: Header=BB0_163 Depth=1
	movl	8(%rbp), %eax
	incl	%eax
	bswapl	%eax
	movl	%eax, 320(%rsp)
	movq	264(%rsp), %rcx
	movl	$1, %esi
	movl	$4, %edx
	movq	%r12, %rdi
	callq	fwrite
	testl	%eax, %eax
	js	.LBB0_169
# BB#168:                               # %if.end.i.i.19.i
                                        #   in Loop: Header=BB0_163 Depth=1
	addl	%eax, 272(%rsp)
.LBB0_169:                              # %xcf_write_32.exit20.i
                                        #   in Loop: Header=BB0_163 Depth=1
	movq	(%rbp), %rdi
	movslq	8(%rbp), %rdx
	movq	264(%rsp), %rcx
	movl	$1, %esi
	callq	fwrite
	testl	%eax, %eax
	js	.LBB0_171
# BB#170:                               # %if.end.i.i
                                        #   in Loop: Header=BB0_163 Depth=1
	addl	%eax, 272(%rsp)
.LBB0_171:                              # %xcf_write.exit.i
                                        #   in Loop: Header=BB0_163 Depth=1
	movq	264(%rsp), %rcx
	movl	$1, %esi
	movl	$1, %edx
	leaq	319(%rsp), %rdi
	callq	fwrite
	testl	%eax, %eax
	js	.LBB0_173
# BB#172:                               # %if.end.i.27.i
                                        #   in Loop: Header=BB0_163 Depth=1
	addl	%eax, 272(%rsp)
.LBB0_173:                              # %xcf_write.exit28.i
                                        #   in Loop: Header=BB0_163 Depth=1
	movl	$0, 320(%rsp)
	movq	264(%rsp), %rcx
	movl	$1, %esi
	movl	$4, %edx
	movq	%r12, %rdi
	callq	fwrite
	testl	%eax, %eax
	js	.LBB0_175
# BB#174:                               # %if.end.i.i.36.i
                                        #   in Loop: Header=BB0_163 Depth=1
	addl	%eax, 272(%rsp)
.LBB0_175:                              # %xcf_write_32.exit37.i
                                        #   in Loop: Header=BB0_163 Depth=1
	movl	$0, 320(%rsp)
	movq	264(%rsp), %rcx
	movl	$1, %esi
	movl	$4, %edx
	movq	%r12, %rdi
	callq	fwrite
	testl	%eax, %eax
	movl	272(%rsp), %ecx
	js	.LBB0_177
# BB#176:                               # %if.end.i.i.45.i
                                        #   in Loop: Header=BB0_163 Depth=1
	addl	%eax, %ecx
	movl	%ecx, 272(%rsp)
.LBB0_177:                              # %xcf_write_32.exit46.i
                                        #   in Loop: Header=BB0_163 Depth=1
	addl	$4, %ecx
	bswapl	%ecx
	movl	%ecx, 320(%rsp)
	movq	264(%rsp), %rcx
	movl	$1, %esi
	movl	$4, %edx
	movq	%r12, %rdi
	callq	fwrite
	testl	%eax, %eax
	js	.LBB0_178
# BB#179:                               # %if.end.i.i.55.i
                                        #   in Loop: Header=BB0_163 Depth=1
	movq	272(%rsp), %rcx
	leal	(%rax,%rcx), %eax
	movl	%eax, 272(%rsp)
	shrq	$32, %rcx
	jmp	.LBB0_180
	.align	16, 0x90
.LBB0_178:                              # %xcf_write_32.exit46.i.xcf_write_32.exit56.i_crit_edge
                                        #   in Loop: Header=BB0_163 Depth=1
	movl	276(%rsp), %ecx
.LBB0_180:                              # %xcf_write_32.exit56.i
                                        #   in Loop: Header=BB0_163 Depth=1
	bswapl	%ecx
	movl	%ecx, 320(%rsp)
	movq	264(%rsp), %rcx
	movl	$1, %esi
	movl	$4, %edx
	movq	%r12, %rdi
	callq	fwrite
	testl	%eax, %eax
	js	.LBB0_182
# BB#181:                               # %if.end.i.i.65.i
                                        #   in Loop: Header=BB0_163 Depth=1
	addl	%eax, 272(%rsp)
.LBB0_182:                              # %xcf_write_32.exit66.i
                                        #   in Loop: Header=BB0_163 Depth=1
	movl	280(%rsp), %eax
	bswapl	%eax
	movl	%eax, 320(%rsp)
	movq	264(%rsp), %rcx
	movl	$1, %esi
	movl	$4, %edx
	movq	%r12, %rdi
	callq	fwrite
	testl	%eax, %eax
	js	.LBB0_184
# BB#183:                               # %if.end.i.i.75.i
                                        #   in Loop: Header=BB0_163 Depth=1
	addl	%eax, 272(%rsp)
.LBB0_184:                              # %xcf_write_32.exit76.i
                                        #   in Loop: Header=BB0_163 Depth=1
	movl	$16777216, 320(%rsp)    # imm = 0x1000000
	movq	264(%rsp), %rcx
	movl	$1, %esi
	movl	$4, %edx
	movq	%r12, %rdi
	callq	fwrite
	testl	%eax, %eax
	movl	272(%rsp), %ecx
	js	.LBB0_186
# BB#185:                               # %if.end.i.i.84.i
                                        #   in Loop: Header=BB0_163 Depth=1
	addl	%eax, %ecx
	movl	%ecx, 272(%rsp)
.LBB0_186:                              # %xcf_write_32.exit85.i
                                        #   in Loop: Header=BB0_163 Depth=1
	movl	304(%rsp), %eax
	shll	$4, %eax
	leal	-8(%rcx,%rax), %eax
	bswapl	%eax
	movl	%eax, 320(%rsp)
	movq	264(%rsp), %rcx
	movl	$1, %esi
	movl	$4, %edx
	movq	%r12, %rdi
	callq	fwrite
	testl	%eax, %eax
	js	.LBB0_188
# BB#187:                               # %if.end.i.i.94.i
                                        #   in Loop: Header=BB0_163 Depth=1
	addl	%eax, 272(%rsp)
.LBB0_188:                              # %xcf_write_32.exit95.i
                                        #   in Loop: Header=BB0_163 Depth=1
	movl	304(%rsp), %ebx
	cmpl	$2, %ebx
	jl	.LBB0_193
# BB#189:                               # %for.body.34.lr.ph.i
                                        #   in Loop: Header=BB0_163 Depth=1
	shll	$2, %ebx
	addl	272(%rsp), %ebx
	movl	$1, %ebp
	.align	16, 0x90
.LBB0_190:                              # %for.body.34.i
                                        #   Parent Loop BB0_163 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%ebx, %eax
	bswapl	%eax
	movl	%eax, 320(%rsp)
	movq	264(%rsp), %rcx
	movl	$1, %esi
	movl	$4, %edx
	movq	%r12, %rdi
	callq	fwrite
	testl	%eax, %eax
	js	.LBB0_192
# BB#191:                               # %if.end.i.i.104.i
                                        #   in Loop: Header=BB0_190 Depth=2
	addl	%eax, 272(%rsp)
.LBB0_192:                              # %xcf_write_32.exit105.i
                                        #   in Loop: Header=BB0_190 Depth=2
	addl	$12, %ebx
	incl	%ebp
	cmpl	304(%rsp), %ebp
	jl	.LBB0_190
.LBB0_193:                              # %for.end.i
                                        #   in Loop: Header=BB0_163 Depth=1
	movl	$0, 320(%rsp)
	movq	264(%rsp), %rcx
	movl	$1, %esi
	movl	$4, %edx
	movq	%r12, %rdi
	callq	fwrite
	testl	%eax, %eax
	js	.LBB0_195
# BB#194:                               # %if.end.i.i.113.i
                                        #   in Loop: Header=BB0_163 Depth=1
	addl	%eax, 272(%rsp)
.LBB0_195:                              # %xcf_write_32.exit114.i
                                        #   in Loop: Header=BB0_163 Depth=1
	leaq	264(%rsp), %rdi
	callq	xcf_write_fake_hierarchy
	movl	276(%rsp), %eax
	bswapl	%eax
	movl	%eax, 320(%rsp)
	movq	264(%rsp), %rcx
	movl	$1, %esi
	movl	$4, %edx
	movq	%r12, %rdi
	callq	fwrite
	testl	%eax, %eax
	js	.LBB0_197
# BB#196:                               # %if.end.i.i.123.i
                                        #   in Loop: Header=BB0_163 Depth=1
	addl	%eax, 272(%rsp)
.LBB0_197:                              # %xcf_write_32.exit124.i
                                        #   in Loop: Header=BB0_163 Depth=1
	movl	280(%rsp), %eax
	bswapl	%eax
	movl	%eax, 320(%rsp)
	movq	264(%rsp), %rcx
	movl	$1, %esi
	movl	$4, %edx
	movq	%r12, %rdi
	callq	fwrite
	testl	%eax, %eax
	js	.LBB0_199
# BB#198:                               # %if.end.i.i.133.i
                                        #   in Loop: Header=BB0_163 Depth=1
	addl	%eax, 272(%rsp)
.LBB0_199:                              # %xcf_write_32.exit134.i
                                        #   in Loop: Header=BB0_163 Depth=1
	cmpl	$0, 300(%rsp)
	jle	.LBB0_204
# BB#200:                               # %for.body.45.lr.ph.i
                                        #   in Loop: Header=BB0_163 Depth=1
	movl	308(%rsp), %ebx
	movq	240(%rsp), %rax         # 8-byte Reload
	movq	248(%rsp), %rcx         # 8-byte Reload
	leal	(%rcx,%rax), %r13d
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB0_201:                              # %for.body.45.i
                                        #   Parent Loop BB0_163 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%ebp, %eax
	cltd
	idivl	292(%rsp)
	shll	$6, %edx
	movl	276(%rsp), %ecx
	movl	280(%rsp), %r14d
	subl	%edx, %ecx
	cmpl	$64, %ecx
	cmovgl	%r15d, %ecx
	shll	$6, %eax
	subl	%eax, %r14d
	cmpl	$64, %r14d
	cmovgl	%r15d, %r14d
	imull	%ecx, %r14d
	movl	%r14d, %eax
	imull	%r13d, %eax
	addl	%ebx, %eax
	bswapl	%eax
	movl	%eax, 320(%rsp)
	movq	264(%rsp), %rcx
	movl	$1, %esi
	movl	$4, %edx
	movq	%r12, %rdi
	callq	fwrite
	testl	%eax, %eax
	js	.LBB0_203
# BB#202:                               # %if.end.i.i.153.i
                                        #   in Loop: Header=BB0_201 Depth=2
	addl	%eax, 272(%rsp)
.LBB0_203:                              # %xcf_write_32.exit154.i
                                        #   in Loop: Header=BB0_201 Depth=2
	imull	256(%rsp), %r14d        # 4-byte Folded Reload
	addl	%r14d, %ebx
	incl	%ebp
	cmpl	300(%rsp), %ebp
	jl	.LBB0_201
.LBB0_204:                              # %for.end.55.i
                                        #   in Loop: Header=BB0_163 Depth=1
	movl	$0, 320(%rsp)
	movq	264(%rsp), %rcx
	movl	$1, %esi
	movl	$4, %edx
	movq	%r12, %rdi
	callq	fwrite
	testl	%eax, %eax
	js	.LBB0_206
# BB#205:                               # %if.end.i.i.143.i
                                        #   in Loop: Header=BB0_163 Depth=1
	addl	%eax, 272(%rsp)
.LBB0_206:                              # %xcf_write_32.exit144.i
                                        #   in Loop: Header=BB0_163 Depth=1
	movq	248(%rsp), %rcx         # 8-byte Reload
	incq	%rcx
	movslq	288(%rsp), %rax
	cmpq	%rax, %rcx
	movq	56(%rsp), %rbx          # 8-byte Reload
	jl	.LBB0_163
.LBB0_207:                              # %xcf_write_footer.exit
	xorl	%eax, %eax
	addq	$328, %rsp              # imm = 0x148
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	xcf_print_page, .Lfunc_end0-xcf_print_page
	.cfi_endproc

	.align	16, 0x90
	.type	xcf_prn_close,@function
xcf_prn_close:                          # @xcf_prn_close
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp13:
	.cfi_def_cfa_offset 16
.Ltmp14:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	20072(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB1_4
# BB#1:                                 # %if.then
	callq	gscms_release_link
	movq	20064(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB1_4
# BB#2:                                 # %do.end
	decq	288(%rsi)
	jne	.LBB1_4
# BB#3:                                 # %do.end.16
	movq	296(%rsi), %rdi
	movl	$.L.str.3, %edx
	callq	*304(%rsi)
	movq	$0, 20064(%rbx)
.LBB1_4:                                # %if.end.31
	movq	19800(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB1_8
# BB#5:                                 # %if.then.33
	callq	gscms_release_link
	movq	19792(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB1_8
# BB#6:                                 # %do.end.41
	decq	288(%rsi)
	jne	.LBB1_8
# BB#7:                                 # %do.end.56
	movq	296(%rsi), %rdi
	movl	$.L.str.3, %edx
	callq	*304(%rsi)
	movq	$0, 19792(%rbx)
.LBB1_8:                                # %if.end.75
	movq	20344(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB1_12
# BB#9:                                 # %if.then.77
	callq	gscms_release_link
	movq	20336(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB1_12
# BB#10:                                # %do.end.85
	decq	288(%rsi)
	jne	.LBB1_12
# BB#11:                                # %do.end.100
	movq	296(%rsi), %rdi
	movl	$.L.str.3, %edx
	callq	*304(%rsi)
	movq	$0, 20336(%rbx)
.LBB1_12:                               # %if.end.119
	movq	%rbx, %rdi
	popq	%rbx
	jmp	gdev_prn_close          # TAILCALL
.Lfunc_end1:
	.size	xcf_prn_close, .Lfunc_end1-xcf_prn_close
	.cfi_endproc

	.align	16, 0x90
	.type	xcf_map_color_rgb,@function
xcf_map_color_rgb:                      # @xcf_map_color_rgb
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp15:
	.cfi_def_cfa_offset 16
.Ltmp16:
	.cfi_offset %rbx, -16
	movq	%rdx, %r8
	cmpl	$1, 18472(%rdi)
	jne	.LBB2_7
# BB#1:                                 # %if.then
	movslq	18476(%rdi), %rcx
	movl	%ecx, %r9d
	movl	$1, %r10d
	shll	%cl, %r10d
	movl	100(%rdi), %edi
	movl	$16, %eax
	xorl	%edx, %edx
	divq	%rcx
	movq	%rcx, %rax
	subq	%rdx, %rax
	xorl	%edx, %edx
	divq	%rcx
	movq	%rdx, %r11
	testl	%edi, %edi
	jle	.LBB2_8
# BB#2:                                 # %for.body.lr.ph.i
	decl	%r10d
	leaq	(%rcx,%rcx), %rax
	movzbl	.L.str.18(%rcx,%rcx), %ecx
	shll	$8, %ecx
	orl	$1, %eax
	cltq
	movzbl	.L.str.18(%rax), %edx
	orl	%ecx, %edx
	leal	-1(%rdi), %eax
	xorl	%ecx, %ecx
	testb	$1, %dil
	je	.LBB2_4
# BB#3:                                 # %for.body.i.prol
	movl	%esi, %ecx
	andl	%r10d, %ecx
	imull	%edx, %ecx
	movzwl	%cx, %edi
	movb	%r11b, %cl
	shrl	%cl, %edi
	movslq	%eax, %rcx
	movw	%di, (%r8,%rcx,2)
	movb	%r9b, %cl
	shrq	%cl, %rsi
	movl	$1, %ecx
.LBB2_4:                                # %for.body.lr.ph.i.split
	testl	%eax, %eax
	je	.LBB2_8
# BB#5:                                 # %for.body.lr.ph.i.split.split
	movl	%eax, %edi
	subl	%ecx, %edi
	incl	%ecx
	subl	%ecx, %eax
	.align	16, 0x90
.LBB2_6:                                # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movl	%esi, %ecx
	andl	%r10d, %ecx
	imull	%edx, %ecx
	movzwl	%cx, %ebx
	movb	%r11b, %cl
	shrl	%cl, %ebx
	movslq	%edi, %rdi
	movw	%bx, (%r8,%rdi,2)
	movb	%r9b, %cl
	shrq	%cl, %rsi
	movl	%esi, %ecx
	andl	%r10d, %ecx
	imull	%edx, %ecx
	movzwl	%cx, %ebx
	movb	%r11b, %cl
	shrl	%cl, %ebx
	cltq
	movw	%bx, (%r8,%rax,2)
	movb	%r9b, %cl
	shrq	%cl, %rsi
	addl	$-2, %edi
	addl	$-2, %eax
	cmpl	$-1, %edi
	jne	.LBB2_6
	jmp	.LBB2_8
.LBB2_7:                                # %if.end
	movl	$0, (%r8)
	movw	$0, 4(%r8)
.LBB2_8:                                # %cleanup
	xorl	%eax, %eax
	popq	%rbx
	retq
.Lfunc_end2:
	.size	xcf_map_color_rgb, .Lfunc_end2-xcf_map_color_rgb
	.cfi_endproc

	.align	16, 0x90
	.type	xcf_get_params,@function
xcf_get_params:                         # @xcf_get_params
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp17:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp18:
	.cfi_def_cfa_offset 24
	subq	$56, %rsp
.Ltmp19:
	.cfi_def_cfa_offset 80
.Ltmp20:
	.cfi_offset %rbx, -24
.Ltmp21:
	.cfi_offset %r14, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movl	$0, 52(%rsp)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 32(%rsp)
	callq	gdev_prn_get_params
	testl	%eax, %eax
	js	.LBB3_6
# BB#1:                                 # %lor.lhs.false
	movl	$.L.str.4, %edx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	sample_device_crd_get_params
	testl	%eax, %eax
	js	.LBB3_6
# BB#2:                                 # %lor.lhs.false.3
	leaq	32(%rsp), %rdx
	movl	$.L.str.5, %esi
	movq	%r14, %rdi
	callq	param_write_name_array
	testl	%eax, %eax
	js	.LBB3_6
# BB#3:                                 # %lor.lhs.false.6
	leaq	52(%rsp), %rdx
	movl	$.L.str.6, %esi
	movq	%r14, %rdi
	callq	param_write_bool
	testl	%eax, %eax
	js	.LBB3_6
# BB#4:                                 # %if.end
	leaq	20080(%rbx), %rdi
	movq	%rdi, 16(%rsp)
	callq	strlen
	movl	%eax, 24(%rsp)
	movl	$0, 28(%rsp)
	leaq	16(%rsp), %rdx
	movl	$.L.str.7, %esi
	movq	%r14, %rdi
	callq	param_write_string
	testl	%eax, %eax
	js	.LBB3_6
# BB#5:                                 # %if.end.19
	addq	$19536, %rbx            # imm = 0x4C50
	movq	%rbx, (%rsp)
	movq	%rbx, %rdi
	callq	strlen
	movl	%eax, 8(%rsp)
	movl	$0, 12(%rsp)
	leaq	(%rsp), %rbx
	movl	$.L.str.8, %esi
	movq	%r14, %rdi
	movq	%rbx, %rdx
	callq	param_write_string
	movl	$.L.str.9, %esi
	movq	%r14, %rdi
	movq	%rbx, %rdx
	callq	param_write_string
.LBB3_6:                                # %cleanup
	addq	$56, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end3:
	.size	xcf_get_params, .Lfunc_end3-xcf_get_params
	.cfi_endproc

	.align	16, 0x90
	.type	xcf_put_params,@function
xcf_put_params:                         # @xcf_put_params
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
	subq	$856, %rsp              # imm = 0x358
.Ltmp28:
	.cfi_def_cfa_offset 912
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
	movq	%rsi, %r14
	movq	%rdi, %r12
	movl	18496(%r12), %ebp
	movl	18472(%r12), %r13d
	leaq	112(%rsp), %rdx
	movl	$.L.str.5, %esi
	movq	%r14, %rdi
	callq	param_read_name_array
	movl	%eax, %ebx
	testl	%ebx, %ebx
	je	.LBB4_3
# BB#1:                                 # %entry
	cmpl	$1, %ebx
	jne	.LBB4_6
# BB#2:                                 # %do.end.thread163
	movq	$0, 112(%rsp)
	jmp	.LBB4_3
.LBB4_6:                                # %do.end
	movq	(%r14), %rax
	movl	$.L.str.5, %esi
	movq	%r14, %rdi
	movl	%ebx, %edx
	callq	*56(%rax)
	movq	$0, 112(%rsp)
	testl	%ebx, %ebx
	js	.LBB4_7
.LBB4_3:                                # %if.then.7
	leaq	96(%rsp), %rdx
	movl	$.L.str.7, %esi
	movq	%r14, %rdi
	callq	param_read_string
	testl	%eax, %eax
	je	.LBB4_4
# BB#8:                                 # %if.end.9
	movq	$0, 96(%rsp)
	jns	.LBB4_9
.LBB4_7:
	movl	%ebp, 40(%rsp)          # 4-byte Spill
	jmp	.LBB4_28
.LBB4_4:                                # %if.then.i
	cmpl	$256, 104(%rsp)         # imm = 0x100
	jb	.LBB4_9
# BB#5:                                 # %if.then.2.i
	movl	%ebp, 40(%rsp)          # 4-byte Spill
	movq	(%r14), %rax
	movl	$.L.str.7, %esi
	jmp	.LBB4_27
.LBB4_9:                                # %if.then.11
	movl	%ebp, 40(%rsp)          # 4-byte Spill
	leaq	80(%rsp), %rdx
	movl	$.L.str.8, %esi
	movq	%r14, %rdi
	callq	param_read_string
	testl	%eax, %eax
	je	.LBB4_10
# BB#12:                                # %if.end.13
	movq	$0, 80(%rsp)
	jns	.LBB4_13
	jmp	.LBB4_28
.LBB4_10:                               # %if.then.i.86
	cmpl	$256, 88(%rsp)          # imm = 0x100
	jb	.LBB4_13
# BB#11:                                # %if.then.2.i.90
	movq	(%r14), %rax
	movl	$.L.str.8, %esi
	jmp	.LBB4_27
.LBB4_13:                               # %if.then.15
	leaq	64(%rsp), %rdx
	movl	$.L.str.9, %esi
	movq	%r14, %rdi
	callq	param_read_string
	testl	%eax, %eax
	je	.LBB4_14
# BB#16:                                # %if.end.17
	movq	$0, 64(%rsp)
	jns	.LBB4_17
	jmp	.LBB4_28
.LBB4_14:                               # %if.then.i.99
	cmpl	$256, 72(%rsp)          # imm = 0x100
	jb	.LBB4_17
# BB#15:                                # %if.then.2.i.103
	movq	(%r14), %rax
	movl	$.L.str.9, %esi
	jmp	.LBB4_27
.LBB4_17:                               # %if.end.21
	leaq	48(%rsp), %rdx
	movl	$.L.str.10, %esi
	movq	%r14, %rdi
	callq	param_read_name
	testl	%eax, %eax
	jne	.LBB4_28
# BB#18:                                # %if.then.23
	movl	$.L.str.11, %edi
	callq	strlen
	movl	56(%rsp), %r15d
	cmpq	%r15, %rax
	jne	.LBB4_20
# BB#19:                                # %land.rhs.i
	movq	48(%rsp), %rsi
	movl	$.L.str.11, %edi
	movq	%rax, %rdx
	callq	strncmp
	xorl	%ebp, %ebp
	testl	%eax, %eax
	je	.LBB4_29
.LBB4_20:                               # %if.else.26
	movl	$.L.str.12, %edi
	callq	strlen
	cmpq	%r15, %rax
	jne	.LBB4_22
# BB#21:                                # %land.rhs.i.119
	movq	48(%rsp), %rsi
	movl	$.L.str.12, %edi
	movq	%r15, %rdx
	callq	strncmp
	movl	$1, %ebp
	testl	%eax, %eax
	je	.LBB4_29
.LBB4_22:                               # %if.else.30
	movl	$.L.str.13, %edi
	callq	strlen
	cmpq	%r15, %rax
	jne	.LBB4_24
# BB#23:                                # %land.rhs.i.129
	movq	48(%rsp), %rsi
	movl	$.L.str.13, %edi
	movq	%r15, %rdx
	callq	strncmp
	movl	$2, %ebp
	testl	%eax, %eax
	je	.LBB4_29
.LBB4_24:                               # %if.else.34
	movl	$.L.str.1, %edi
	callq	strlen
	cmpq	%r15, %rax
	jne	.LBB4_26
# BB#25:                                # %land.rhs.i.139
	movq	48(%rsp), %rsi
	movl	$.L.str.1, %edi
	movq	%r15, %rdx
	callq	strncmp
	movl	$3, %ebp
	testl	%eax, %eax
	je	.LBB4_29
.LBB4_26:                               # %if.else.38
	movq	(%r14), %rax
	movl	$.L.str.10, %esi
.LBB4_27:                               # %if.end.46
	movl	$-15, %edx
	movq	%r14, %rdi
	callq	*56(%rax)
.LBB4_28:                               # %if.end.46
	movl	%r13d, %ebp
.LBB4_29:                               # %if.end.46
	movl	104(%r12), %eax
	movl	%eax, 848(%rsp)
	movq	96(%r12), %rax
	movq	%rax, 840(%rsp)
	movw	108(%r12), %ax
	movw	%ax, 30(%rsp)           # 2-byte Spill
	leaq	110(%r12), %r15
	leaq	134(%rsp), %rdi
	movl	$706, %edx              # imm = 0x2C2
	movq	%r15, %rsi
	callq	memcpy
	movl	%ebp, 18472(%r12)
	movl	$-1, %ebx
	movl	%ebp, %eax
	cmpl	$3, %ebp
	ja	.LBB4_37
# BB#30:                                # %if.end.46
	jmpq	*.LJTI4_0(,%rax,8)
.LBB4_31:                               # %if.then.i.142
	movq	$DeviceGrayComponents, 18480(%r12)
	movl	$1, 18488(%r12)
	movq	$.L.str.11, 784(%r12)
	movl	$1, 104(%r12)
	jmp	.LBB4_36
.LBB4_32:                               # %if.then.4.i
	movq	$DeviceRGBComponents, 18480(%r12)
	movl	$3, 18488(%r12)
	movq	$.L.str.12, 784(%r12)
	movl	$1, 104(%r12)
	jmp	.LBB4_36
.LBB4_33:                               # %if.then.13.i
	movq	$DeviceCMYKComponents, 18480(%r12)
	movl	$4, 18488(%r12)
	movq	$.L.str.13, 784(%r12)
	jmp	.LBB4_35
.LBB4_34:                               # %if.then.22.i
	movq	$DeviceCMYKComponents, 18480(%r12)
	movl	$4, 18488(%r12)
	movq	$.L.str.1, 784(%r12)
.LBB4_35:                               # %if.end.54
	movl	$0, 104(%r12)
.LBB4_36:                               # %if.end.54
	movq	%r12, %rdi
	movq	%r14, %rsi
	callq	gdev_prn_put_params
	movl	%eax, %ebx
	testl	%ebx, %ebx
	js	.LBB4_37
# BB#38:                                # %if.end.58
	cmpl	$0, 104(%r12)
	jne	.LBB4_58
# BB#39:                                # %if.then.61
	movq	112(%rsp), %rax
	movq	%rax, 32(%rsp)          # 8-byte Spill
	testq	%rax, %rax
	movl	40(%rsp), %ebx          # 4-byte Reload
	je	.LBB4_52
# BB#40:                                # %if.then.64
	movq	%r12, 16(%rsp)          # 8-byte Spill
	movl	120(%rsp), %eax
	movl	%eax, 24(%rsp)          # 4-byte Spill
	xorl	%r12d, %r12d
	testl	%eax, %eax
	jle	.LBB4_50
# BB#41:                                # %for.body.lr.ph
	movq	16(%rsp), %rax          # 8-byte Reload
	movq	18480(%rax), %rax
	movq	%rax, 40(%rsp)          # 8-byte Spill
	leaq	8(%rax), %rax
	movq	%rax, 8(%rsp)           # 8-byte Spill
	xorl	%r15d, %r15d
	xorl	%r12d, %r12d
	.align	16, 0x90
.LBB4_42:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_45 Depth 2
	cmpq	$0, 40(%rsp)            # 8-byte Folded Reload
	je	.LBB4_48
# BB#43:                                # %if.then.i.144
                                        #   in Loop: Header=BB4_42 Depth=1
	movq	40(%rsp), %rax          # 8-byte Reload
	movq	(%rax), %rbp
	testq	%rbp, %rbp
	je	.LBB4_48
# BB#44:                                # %while.body.lr.ph.i
                                        #   in Loop: Header=BB4_42 Depth=1
	movq	%r15, %rax
	shlq	$4, %rax
	movq	32(%rsp), %rcx          # 8-byte Reload
	leaq	(%rcx,%rax), %r14
	movl	8(%rcx,%rax), %ebx
	movq	8(%rsp), %r13           # 8-byte Reload
	.align	16, 0x90
.LBB4_45:                               # %while.body.i
                                        #   Parent Loop BB4_42 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rbp, %rdi
	callq	strlen
	cmpq	%rbx, %rax
	jne	.LBB4_47
# BB#46:                                # %land.lhs.true.i
                                        #   in Loop: Header=BB4_45 Depth=2
	movq	(%r14), %rsi
	movq	%rbp, %rdi
	movq	%rbx, %rdx
	callq	strncmp
	testl	%eax, %eax
	je	.LBB4_49
.LBB4_47:                               # %if.end.i
                                        #   in Loop: Header=BB4_45 Depth=2
	movq	(%r13), %rbp
	addq	$8, %r13
	testq	%rbp, %rbp
	jne	.LBB4_45
.LBB4_48:                               # %if.then.71
                                        #   in Loop: Header=BB4_42 Depth=1
	movq	%r15, %rax
	shlq	$4, %rax
	movq	32(%rsp), %rcx          # 8-byte Reload
	leaq	(%rax,%rcx), %rax
	movslq	%r12d, %rcx
	incl	%r12d
	movq	16(%rsp), %rdx          # 8-byte Reload
	movq	%rax, 18504(%rdx,%rcx,8)
.LBB4_49:                               # %for.inc
                                        #   in Loop: Header=BB4_42 Depth=1
	incq	%r15
	cmpl	24(%rsp), %r15d         # 4-byte Folded Reload
	jne	.LBB4_42
.LBB4_50:                               # %for.end
	movl	%r12d, %ebx
	movq	16(%rsp), %r12          # 8-byte Reload
	movl	%ebx, 18496(%r12)
	cmpl	$0, 84(%r12)
	je	.LBB4_52
# BB#51:                                # %if.then.83
	movq	%r12, %rdi
	callq	gs_closedevice
.LBB4_52:                               # %if.end.86
	addl	18488(%r12), %ebx
	movl	$1, %eax
	cmovnel	%ebx, %eax
	movl	%eax, 100(%r12)
	movslq	18476(%r12), %rcx
	cmpq	$8, %rcx
	jg	.LBB4_55
# BB#53:                                # %if.end.86
	cmpl	$4, %eax
	jg	.LBB4_55
# BB#54:                                # %if.then.i.151
	decl	%eax
	cltq
	movzbl	bpc_to_depth.depths-1(%rcx,%rax,8), %eax
	jmp	.LBB4_56
.LBB4_37:                               # %if.then.56
	leaq	96(%r12), %rax
	movl	848(%rsp), %ecx
	movl	%ecx, 8(%rax)
	movq	840(%rsp), %rcx
	movq	%rcx, (%rax)
	movw	30(%rsp), %ax           # 2-byte Reload
	movw	%ax, 108(%r12)
	leaq	134(%rsp), %rsi
	movl	$706, %edx              # imm = 0x2C2
	movq	%r15, %rdi
	callq	memcpy
	jmp	.LBB4_73
.LBB4_55:                               # %if.else.i.152
	imull	%ecx, %eax
	addl	$7, %eax
	andl	$-8, %eax
.LBB4_56:                               # %bpc_to_depth.exit
	movw	30(%rsp), %cx           # 2-byte Reload
	movw	%ax, 108(%r12)
	movzwl	%cx, %ecx
	movzwl	%ax, %eax
	cmpl	%eax, %ecx
	je	.LBB4_58
# BB#57:                                # %if.then.106
	movq	%r12, %rdi
	callq	gs_closedevice
.LBB4_58:                               # %if.end.109
	movq	96(%rsp), %rsi
	testq	%rsi, %rsi
	je	.LBB4_60
# BB#59:                                # %if.then.113
	leaq	20080(%r12), %rdi
	movl	104(%rsp), %edx
	callq	memcpy
	movl	104(%rsp), %eax
	movb	$0, 20080(%r12,%rax)
.LBB4_60:                               # %if.end.122
	movq	80(%rsp), %rsi
	testq	%rsi, %rsi
	je	.LBB4_62
# BB#61:                                # %if.then.126
	leaq	19536(%r12), %rdi
	movl	88(%rsp), %edx
	callq	memcpy
	movl	88(%rsp), %eax
	movb	$0, 19536(%r12,%rax)
.LBB4_62:                               # %if.end.136
	movq	64(%rsp), %rsi
	testq	%rsi, %rsi
	je	.LBB4_64
# BB#63:                                # %if.then.140
	leaq	19808(%r12), %rdi
	movl	72(%rsp), %edx
	callq	memcpy
	movl	72(%rsp), %eax
	movb	$0, 19808(%r12,%rax)
.LBB4_64:                               # %if.end.150
	xorl	%ebx, %ebx
	cmpq	$0, 20344(%r12)
	jne	.LBB4_67
# BB#65:                                # %land.lhs.true.i.156
	cmpb	$0, 20080(%r12)
	je	.LBB4_67
# BB#66:                                # %if.end.i.158
	leaq	20080(%r12), %rdi
	movq	24(%r12), %rsi
	callq	xcf_open_profile
	movl	%eax, %ebx
	testl	%ebx, %ebx
	js	.LBB4_73
.LBB4_67:                               # %land.lhs.true.5.i
	cmpq	$0, 19800(%r12)
	jne	.LBB4_70
# BB#68:                                # %land.lhs.true.8.i
	cmpb	$0, 19536(%r12)
	je	.LBB4_70
# BB#69:                                # %if.end.18.i
	leaq	19536(%r12), %rdi
	movq	24(%r12), %rsi
	callq	xcf_open_profile
	movl	%eax, %ebx
	testl	%ebx, %ebx
	js	.LBB4_73
.LBB4_70:                               # %land.lhs.true.21.i
	cmpq	$0, 20072(%r12)
	jne	.LBB4_73
# BB#71:                                # %land.lhs.true.24.i
	cmpb	$0, 19808(%r12)
	je	.LBB4_73
# BB#72:                                # %if.then.28.i
	movq	24(%r12), %rsi
	addq	$19808, %r12            # imm = 0x4D60
	movq	%r12, %rdi
	callq	xcf_open_profile
	movl	%eax, %ebx
.LBB4_73:                               # %cleanup
	movl	%ebx, %eax
	addq	$856, %rsp              # imm = 0x358
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end4:
	.size	xcf_put_params, .Lfunc_end4-xcf_put_params
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI4_0:
	.quad	.LBB4_31
	.quad	.LBB4_32
	.quad	.LBB4_33
	.quad	.LBB4_34

	.text
	.align	16, 0x90
	.type	get_spotrgb_color_mapping_procs,@function
get_spotrgb_color_mapping_procs:        # @get_spotrgb_color_mapping_procs
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$spotRGB_procs, %eax
	retq
.Lfunc_end5:
	.size	get_spotrgb_color_mapping_procs, .Lfunc_end5-get_spotrgb_color_mapping_procs
	.cfi_endproc

	.align	16, 0x90
	.type	xcf_get_color_comp_index,@function
xcf_get_color_comp_index:               # @xcf_get_color_comp_index
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
	pushq	%r13
.Ltmp38:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp39:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp40:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp41:
	.cfi_def_cfa_offset 64
.Ltmp42:
	.cfi_offset %rbx, -56
.Ltmp43:
	.cfi_offset %r12, -48
.Ltmp44:
	.cfi_offset %r13, -40
.Ltmp45:
	.cfi_offset %r14, -32
.Ltmp46:
	.cfi_offset %r15, -24
.Ltmp47:
	.cfi_offset %rbp, -16
	movl	%edx, %r15d
	movq	%rsi, (%rsp)            # 8-byte Spill
	movq	%rdi, %r12
	movq	18480(%r12), %r14
	xorl	%ebx, %ebx
	testq	%r14, %r14
	je	.LBB6_6
# BB#1:                                 # %while.cond.preheader
	movq	(%r14), %rbp
	testq	%rbp, %rbp
	je	.LBB6_6
# BB#2:                                 # %while.body.lr.ph
	movslq	%r15d, %r13
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB6_3:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movq	%rbp, %rdi
	callq	strlen
	cmpq	%rax, %r13
	jne	.LBB6_5
# BB#4:                                 # %land.lhs.true
                                        #   in Loop: Header=BB6_3 Depth=1
	movq	(%rsp), %rdi            # 8-byte Reload
	movq	%rbp, %rsi
	movq	%r13, %rdx
	callq	strncmp
	testl	%eax, %eax
	je	.LBB6_14
.LBB6_5:                                # %if.end
                                        #   in Loop: Header=BB6_3 Depth=1
	movq	8(%r14,%rbx,8), %rbp
	incq	%rbx
	testq	%rbp, %rbp
	jne	.LBB6_3
.LBB6_6:                                # %if.end.8
	movslq	18496(%r12), %r13
	testq	%r13, %r13
	jle	.LBB6_7
# BB#8:                                 # %for.body.lr.ph
	movl	%r15d, %r14d
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB6_9:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	18504(%r12,%rbp,8), %rax
	cmpl	%r15d, 8(%rax)
	jne	.LBB6_11
# BB#10:                                # %land.lhs.true.13
                                        #   in Loop: Header=BB6_9 Depth=1
	movq	(%rax), %rdi
	movq	(%rsp), %rsi            # 8-byte Reload
	movq	%r14, %rdx
	callq	strncmp
	testl	%eax, %eax
	je	.LBB6_13
.LBB6_11:                               # %if.end.26
                                        #   in Loop: Header=BB6_9 Depth=1
	incq	%rbp
	cmpq	%r13, %rbp
	jl	.LBB6_9
# BB#12:
	movl	$-1, %ebx
	jmp	.LBB6_14
.LBB6_7:
	movl	$-1, %ebx
	jmp	.LBB6_14
.LBB6_13:                               # %land.lhs.true.13.cleanup.loopexit_crit_edge
	addl	%ebp, %ebx
.LBB6_14:                               # %cleanup
	movl	%ebx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end6:
	.size	xcf_get_color_comp_index, .Lfunc_end6-xcf_get_color_comp_index
	.cfi_endproc

	.align	16, 0x90
	.type	xcf_encode_color,@function
xcf_encode_color:                       # @xcf_encode_color
	.cfi_startproc
# BB#0:                                 # %entry
	movl	18476(%rdi), %r9d
	movl	100(%rdi), %edi
	movl	$1, %r8d
	movl	$1, %r11d
	movb	%r9b, %cl
	shll	%cl, %r11d
	decl	%r11d
	movl	$16, %ecx
	subl	%r9d, %ecx
	shll	%cl, %r11d
	movl	$31, %ecx
	subl	%r9d, %ecx
	shll	%cl, %r8d
	xorl	%edx, %edx
	testl	%edi, %edi
	jle	.LBB7_6
# BB#1:                                 # %for.body.lr.ph
	incl	%r11d
	movl	$32, %r10d
	subl	%r9d, %r10d
	xorl	%ecx, %ecx
	testb	$1, %dil
	movl	$0, %edx
	je	.LBB7_3
# BB#2:                                 # %for.body.prol
	movzwl	(%rsi), %edx
	imull	%r11d, %edx
	addl	%r8d, %edx
	movb	%r10b, %cl
	shrl	%cl, %edx
	movl	$1, %ecx
.LBB7_3:                                # %for.body.lr.ph.split
	cmpl	$1, %edi
	je	.LBB7_6
# BB#4:                                 # %for.body.lr.ph.split.split
	subl	%ecx, %edi
	leaq	2(%rsi,%rcx,2), %rsi
	.align	16, 0x90
.LBB7_5:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movb	%r9b, %cl
	shlq	%cl, %rdx
	movzwl	-2(%rsi), %eax
	imull	%r11d, %eax
	addl	%r8d, %eax
	movb	%r10b, %cl
	shrl	%cl, %eax
	orq	%rdx, %rax
	movb	%r9b, %cl
	shlq	%cl, %rax
	movzwl	(%rsi), %edx
	imull	%r11d, %edx
	addl	%r8d, %edx
	movb	%r10b, %cl
	shrl	%cl, %edx
	orq	%rax, %rdx
	addq	$4, %rsi
	addl	$-2, %edi
	jne	.LBB7_5
.LBB7_6:                                # %for.end
	cmpq	$-1, %rdx
	sete	%al
	movzbl	%al, %eax
	xorq	%rdx, %rax
	retq
.Lfunc_end7:
	.size	xcf_encode_color, .Lfunc_end7-xcf_encode_color
	.cfi_endproc

	.align	16, 0x90
	.type	xcf_decode_color,@function
xcf_decode_color:                       # @xcf_decode_color
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp48:
	.cfi_def_cfa_offset 16
.Ltmp49:
	.cfi_offset %rbx, -16
	movq	%rdx, %r8
	movslq	18476(%rdi), %rcx
	movl	%ecx, %r9d
	movl	$1, %r10d
	shll	%cl, %r10d
	movl	100(%rdi), %edi
	movl	$16, %eax
	xorl	%edx, %edx
	divq	%rcx
	movq	%rcx, %rax
	subq	%rdx, %rax
	xorl	%edx, %edx
	divq	%rcx
	movq	%rdx, %r11
	testl	%edi, %edi
	jle	.LBB8_6
# BB#1:                                 # %for.body.lr.ph
	decl	%r10d
	leaq	(%rcx,%rcx), %rax
	movzbl	.L.str.18(%rcx,%rcx), %ecx
	shll	$8, %ecx
	orl	$1, %eax
	cltq
	movzbl	.L.str.18(%rax), %edx
	orl	%ecx, %edx
	leal	-1(%rdi), %eax
	xorl	%ecx, %ecx
	testb	$1, %dil
	je	.LBB8_3
# BB#2:                                 # %for.body.prol
	movl	%esi, %ecx
	andl	%r10d, %ecx
	imull	%edx, %ecx
	movzwl	%cx, %edi
	movb	%r11b, %cl
	shrl	%cl, %edi
	movslq	%eax, %rcx
	movw	%di, (%r8,%rcx,2)
	movb	%r9b, %cl
	shrq	%cl, %rsi
	movl	$1, %ecx
.LBB8_3:                                # %for.body.lr.ph.split
	testl	%eax, %eax
	je	.LBB8_6
# BB#4:                                 # %for.body.lr.ph.split.split
	movl	%eax, %edi
	subl	%ecx, %edi
	incl	%ecx
	subl	%ecx, %eax
	.align	16, 0x90
.LBB8_5:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	%esi, %ecx
	andl	%r10d, %ecx
	imull	%edx, %ecx
	movzwl	%cx, %ebx
	movb	%r11b, %cl
	shrl	%cl, %ebx
	movslq	%edi, %rdi
	movw	%bx, (%r8,%rdi,2)
	movb	%r9b, %cl
	shrq	%cl, %rsi
	movl	%esi, %ecx
	andl	%r10d, %ecx
	imull	%edx, %ecx
	movzwl	%cx, %ebx
	movb	%r11b, %cl
	shrl	%cl, %ebx
	cltq
	movw	%bx, (%r8,%rax,2)
	movb	%r9b, %cl
	shrq	%cl, %rsi
	addl	$-2, %edi
	addl	$-2, %eax
	cmpl	$-1, %edi
	jne	.LBB8_5
.LBB8_6:                                # %for.end
	xorl	%eax, %eax
	popq	%rbx
	retq
.Lfunc_end8:
	.size	xcf_decode_color, .Lfunc_end8-xcf_decode_color
	.cfi_endproc

	.align	16, 0x90
	.type	xcf_open_profile,@function
xcf_open_profile:                       # @xcf_open_profile
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp50:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp51:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp52:
	.cfi_def_cfa_offset 32
	subq	$32, %rsp
.Ltmp53:
	.cfi_def_cfa_offset 64
.Ltmp54:
	.cfi_offset %rbx, -32
.Ltmp55:
	.cfi_offset %r14, -24
.Ltmp56:
	.cfi_offset %r15, -16
	movq	%rsi, %r15
	movq	%rdi, %rbx
	callq	strlen
	movq	%rbx, %rdi
	movl	%eax, %esi
	movq	%r15, %rdx
	callq	gsicc_get_profile_handle_file
	testq	%rax, %rax
	je	.LBB9_1
# BB#2:                                 # %if.end
	movl	$0, 20(%rsp)
	movabsq	$34359738368, %rcx      # imm = 0x800000000
	movq	%rcx, 8(%rsp)
	xorl	%r14d, %r14d
	leaq	8(%rsp), %rdx
	xorl	%esi, %esi
	xorl	%ecx, %ecx
	movq	%rax, %rdi
	movq	%r15, %r8
	callq	gscms_get_link
	testq	%rax, %rax
	jne	.LBB9_5
# BB#3:                                 # %if.then.7
	movl	$.L__func__.xcf_open_profile, %edi
	movl	$.L.str.15, %esi
	movl	$643, %edx              # imm = 0x283
	xorl	%ecx, %ecx
	movl	$-1, %r8d
	movl	$.L.str.17, %r9d
	jmp	.LBB9_4
.LBB9_1:                                # %if.then
	movl	$.L__func__.xcf_open_profile, %edi
	movl	$.L.str.15, %esi
	movl	$630, %edx              # imm = 0x276
	xorl	%ecx, %ecx
	movl	$-1, %r8d
	movl	$.L.str.16, %r9d
.LBB9_4:                                # %cleanup
	xorl	%eax, %eax
	callq	gs_throw_imp
	movl	%eax, %r14d
.LBB9_5:                                # %cleanup
	movl	%r14d, %eax
	addq	$32, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end9:
	.size	xcf_open_profile, .Lfunc_end9-xcf_open_profile
	.cfi_endproc

	.align	16, 0x90
	.type	gray_cs_to_spotrgb_cm,@function
gray_cs_to_spotrgb_cm:                  # @gray_cs_to_spotrgb_cm
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp57:
	.cfi_def_cfa_offset 16
.Ltmp58:
	.cfi_offset %rbx, -16
	movslq	18496(%rdi), %rax
	testq	%rax, %rax
	movw	%si, 4(%rdx)
	movw	%si, 2(%rdx)
	movw	%si, (%rdx)
	jle	.LBB10_13
# BB#1:                                 # %for.body.lr.ph
	cmpq	$2, %rax
	movl	$1, %ecx
	cmovlq	%rax, %rcx
	notq	%rcx
	leaq	(%rcx,%rax), %r11
	cmpq	$-2, %r11
	je	.LBB10_11
# BB#2:                                 # %overflow.checked
	addq	$2, %r11
	movq	%r11, %r10
	andq	$-16, %r10
	xorl	%ecx, %ecx
	movq	%r11, %r9
	andq	$-16, %r9
	je	.LBB10_10
# BB#3:                                 # %vector.body.preheader
	cmpq	$2, %rax
	movl	$1, %ecx
	cmovlq	%rax, %rcx
	notq	%rcx
	leaq	-14(%rax,%rcx), %r8
	movl	%r8d, %ecx
	shrl	$4, %ecx
	incl	%ecx
	xorl	%esi, %esi
	testb	$3, %cl
	je	.LBB10_6
# BB#4:                                 # %vector.body.prol.preheader
	leaq	-10(%rdx,%rax,2), %rdi
	movq	%rax, %rcx
	notq	%rcx
	cmpq	$-2, %rcx
	movl	$-2, %esi
	cmovgl	%ecx, %esi
	leal	-14(%rsi,%rax), %ecx
	shrl	$4, %ecx
	incl	%ecx
	andl	$3, %ecx
	negq	%rcx
	xorl	%esi, %esi
	xorps	%xmm0, %xmm0
	.align	16, 0x90
.LBB10_5:                               # %vector.body.prol
                                        # =>This Inner Loop Header: Depth=1
	movups	%xmm0, (%rdi)
	movups	%xmm0, -16(%rdi)
	addq	$16, %rsi
	addq	$-32, %rdi
	incq	%rcx
	jne	.LBB10_5
.LBB10_6:                               # %vector.body.preheader.split
	movq	%rax, %rbx
	subq	%r10, %rbx
	cmpq	$48, %r8
	jb	.LBB10_9
# BB#7:                                 # %vector.body.preheader.split.split
	movq	%rax, %rcx
	notq	%rcx
	cmpq	$-3, %rcx
	movq	$-2, %rdi
	cmovgq	%rcx, %rdi
	leaq	2(%rdi,%rax), %rcx
	andq	$-16, %rcx
	subq	%rsi, %rcx
	addq	$-5, %rax
	subq	%rsi, %rax
	leaq	(%rdx,%rax,2), %rax
	xorps	%xmm0, %xmm0
	.align	16, 0x90
.LBB10_8:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movups	%xmm0, (%rax)
	movups	%xmm0, -16(%rax)
	movups	%xmm0, -32(%rax)
	movups	%xmm0, -48(%rax)
	movups	%xmm0, -64(%rax)
	movups	%xmm0, -80(%rax)
	movups	%xmm0, -96(%rax)
	movups	%xmm0, -112(%rax)
	addq	$-128, %rax
	addq	$-64, %rcx
	jne	.LBB10_8
.LBB10_9:
	movq	%rbx, %rax
	movq	%r9, %rcx
.LBB10_10:                              # %middle.block
	cmpq	%rcx, %r11
	je	.LBB10_13
.LBB10_11:                              # %for.body.preheader
	incq	%rax
	.align	16, 0x90
.LBB10_12:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movw	$0, 2(%rdx,%rax,2)
	decq	%rax
	cmpq	$1, %rax
	jg	.LBB10_12
.LBB10_13:                              # %for.end
	popq	%rbx
	retq
.Lfunc_end10:
	.size	gray_cs_to_spotrgb_cm, .Lfunc_end10-gray_cs_to_spotrgb_cm
	.cfi_endproc

	.align	16, 0x90
	.type	rgb_cs_to_spotrgb_cm,@function
rgb_cs_to_spotrgb_cm:                   # @rgb_cs_to_spotrgb_cm
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp59:
	.cfi_def_cfa_offset 16
.Ltmp60:
	.cfi_offset %rbx, -16
	movslq	18496(%rdi), %rax
	testq	%rax, %rax
	movw	%dx, (%r9)
	movw	%cx, 2(%r9)
	movw	%r8w, 4(%r9)
	jle	.LBB11_13
# BB#1:                                 # %for.body.lr.ph
	cmpq	$2, %rax
	movl	$1, %ecx
	cmovlq	%rax, %rcx
	notq	%rcx
	leaq	(%rcx,%rax), %rcx
	cmpq	$-2, %rcx
	je	.LBB11_11
# BB#2:                                 # %overflow.checked
	addq	$2, %rcx
	movq	%rcx, %r11
	andq	$-16, %r11
	xorl	%edx, %edx
	movq	%rcx, %r10
	andq	$-16, %r10
	je	.LBB11_10
# BB#3:                                 # %vector.body.preheader
	cmpq	$2, %rax
	movl	$1, %edx
	cmovlq	%rax, %rdx
	notq	%rdx
	leaq	-14(%rax,%rdx), %r8
	movl	%r8d, %edx
	shrl	$4, %edx
	incl	%edx
	xorl	%edi, %edi
	testb	$3, %dl
	je	.LBB11_6
# BB#4:                                 # %vector.body.prol.preheader
	leaq	-10(%r9,%rax,2), %rdx
	movq	%rax, %rsi
	notq	%rsi
	cmpq	$-2, %rsi
	movl	$-2, %edi
	cmovgl	%esi, %edi
	leal	-14(%rdi,%rax), %esi
	shrl	$4, %esi
	incl	%esi
	andl	$3, %esi
	negq	%rsi
	xorl	%edi, %edi
	xorps	%xmm0, %xmm0
	.align	16, 0x90
.LBB11_5:                               # %vector.body.prol
                                        # =>This Inner Loop Header: Depth=1
	movups	%xmm0, (%rdx)
	movups	%xmm0, -16(%rdx)
	addq	$16, %rdi
	addq	$-32, %rdx
	incq	%rsi
	jne	.LBB11_5
.LBB11_6:                               # %vector.body.preheader.split
	movq	%rax, %rbx
	subq	%r11, %rbx
	cmpq	$48, %r8
	jb	.LBB11_9
# BB#7:                                 # %vector.body.preheader.split.split
	movq	%rax, %rsi
	notq	%rsi
	cmpq	$-3, %rsi
	movq	$-2, %rdx
	cmovgq	%rsi, %rdx
	leaq	2(%rdx,%rax), %rsi
	andq	$-16, %rsi
	subq	%rdi, %rsi
	addq	$-5, %rax
	subq	%rdi, %rax
	leaq	(%r9,%rax,2), %rax
	xorps	%xmm0, %xmm0
	.align	16, 0x90
.LBB11_8:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movups	%xmm0, (%rax)
	movups	%xmm0, -16(%rax)
	movups	%xmm0, -32(%rax)
	movups	%xmm0, -48(%rax)
	movups	%xmm0, -64(%rax)
	movups	%xmm0, -80(%rax)
	movups	%xmm0, -96(%rax)
	movups	%xmm0, -112(%rax)
	addq	$-128, %rax
	addq	$-64, %rsi
	jne	.LBB11_8
.LBB11_9:
	movq	%rbx, %rax
	movq	%r10, %rdx
.LBB11_10:                              # %middle.block
	cmpq	%rdx, %rcx
	je	.LBB11_13
.LBB11_11:                              # %for.body.preheader
	incq	%rax
	.align	16, 0x90
.LBB11_12:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movw	$0, 2(%r9,%rax,2)
	decq	%rax
	cmpq	$1, %rax
	jg	.LBB11_12
.LBB11_13:                              # %for.end
	popq	%rbx
	retq
.Lfunc_end11:
	.size	rgb_cs_to_spotrgb_cm, .Lfunc_end11-rgb_cs_to_spotrgb_cm
	.cfi_endproc

	.align	16, 0x90
	.type	cmyk_cs_to_spotrgb_cm,@function
cmyk_cs_to_spotrgb_cm:                  # @cmyk_cs_to_spotrgb_cm
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp61:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp62:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp63:
	.cfi_def_cfa_offset 32
.Ltmp64:
	.cfi_offset %rbx, -24
.Ltmp65:
	.cfi_offset %r14, -16
	movq	%r9, %r14
	movl	%r8d, %eax
	movslq	18496(%rdi), %rbx
	movq	24(%rdi), %rdi
	movq	%rdi, (%rsp)
	xorl	%r8d, %r8d
	movl	%esi, %edi
	movl	%edx, %esi
	movl	%ecx, %edx
	movl	%eax, %ecx
	callq	color_cmyk_to_rgb
	testq	%rbx, %rbx
	jle	.LBB12_13
# BB#1:                                 # %for.body.lr.ph
	cmpq	$2, %rbx
	movl	$1, %eax
	cmovlq	%rbx, %rax
	notq	%rax
	leaq	(%rax,%rbx), %rax
	cmpq	$-2, %rax
	je	.LBB12_11
# BB#2:                                 # %overflow.checked
	addq	$2, %rax
	movq	%rax, %rdx
	andq	$-16, %rdx
	xorl	%ecx, %ecx
	movq	%rax, %r9
	andq	$-16, %r9
	je	.LBB12_10
# BB#3:                                 # %vector.body.preheader
	cmpq	$2, %rbx
	movl	$1, %ecx
	cmovlq	%rbx, %rcx
	notq	%rcx
	leaq	-14(%rbx,%rcx), %r8
	movl	%r8d, %ecx
	shrl	$4, %ecx
	incl	%ecx
	xorl	%edi, %edi
	testb	$3, %cl
	je	.LBB12_6
# BB#4:                                 # %vector.body.prol.preheader
	leaq	-10(%r14,%rbx,2), %rsi
	movq	%rbx, %rcx
	notq	%rcx
	cmpq	$-2, %rcx
	movl	$-2, %edi
	cmovgl	%ecx, %edi
	leal	-14(%rdi,%rbx), %ecx
	shrl	$4, %ecx
	incl	%ecx
	andl	$3, %ecx
	negq	%rcx
	xorl	%edi, %edi
	xorps	%xmm0, %xmm0
	.align	16, 0x90
.LBB12_5:                               # %vector.body.prol
                                        # =>This Inner Loop Header: Depth=1
	movups	%xmm0, (%rsi)
	movups	%xmm0, -16(%rsi)
	addq	$16, %rdi
	addq	$-32, %rsi
	incq	%rcx
	jne	.LBB12_5
.LBB12_6:                               # %vector.body.preheader.split
	movq	%rbx, %rsi
	subq	%rdx, %rsi
	cmpq	$48, %r8
	jb	.LBB12_9
# BB#7:                                 # %vector.body.preheader.split.split
	movq	%rbx, %rcx
	notq	%rcx
	cmpq	$-3, %rcx
	movq	$-2, %rdx
	cmovgq	%rcx, %rdx
	leaq	2(%rdx,%rbx), %rcx
	andq	$-16, %rcx
	subq	%rdi, %rcx
	addq	$-5, %rbx
	subq	%rdi, %rbx
	leaq	(%r14,%rbx,2), %rdx
	xorps	%xmm0, %xmm0
	.align	16, 0x90
.LBB12_8:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movups	%xmm0, (%rdx)
	movups	%xmm0, -16(%rdx)
	movups	%xmm0, -32(%rdx)
	movups	%xmm0, -48(%rdx)
	movups	%xmm0, -64(%rdx)
	movups	%xmm0, -80(%rdx)
	movups	%xmm0, -96(%rdx)
	movups	%xmm0, -112(%rdx)
	addq	$-128, %rdx
	addq	$-64, %rcx
	jne	.LBB12_8
.LBB12_9:
	movq	%rsi, %rbx
	movq	%r9, %rcx
.LBB12_10:                              # %middle.block
	cmpq	%rcx, %rax
	je	.LBB12_13
.LBB12_11:                              # %for.body.preheader
	incq	%rbx
	.align	16, 0x90
.LBB12_12:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movw	$0, 2(%r14,%rbx,2)
	decq	%rbx
	cmpq	$1, %rbx
	jg	.LBB12_12
.LBB12_13:                              # %for.end
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end12:
	.size	cmyk_cs_to_spotrgb_cm, .Lfunc_end12-cmyk_cs_to_spotrgb_cm
	.cfi_endproc

	.align	16, 0x90
	.type	get_xcf_color_mapping_procs,@function
get_xcf_color_mapping_procs:            # @get_xcf_color_mapping_procs
	.cfi_startproc
# BB#0:                                 # %entry
	movl	18472(%rdi), %eax
	decl	%eax
	cmpl	$2, %eax
	ja	.LBB13_2
# BB#1:                                 # %switch.lookup
	cltq
	movq	.Lswitch.table(,%rax,8), %rax
	retq
.LBB13_2:                               # %cleanup
	xorl	%eax, %eax
	retq
.Lfunc_end13:
	.size	get_xcf_color_mapping_procs, .Lfunc_end13-get_xcf_color_mapping_procs
	.cfi_endproc

	.align	16, 0x90
	.type	gray_cs_to_spotcmyk_cm,@function
gray_cs_to_spotcmyk_cm:                 # @gray_cs_to_spotcmyk_cm
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp66:
	.cfi_def_cfa_offset 16
.Ltmp67:
	.cfi_offset %rbx, -16
	movslq	18496(%rdi), %rax
	movl	$32760, %ecx            # imm = 0x7FF8
	subl	%esi, %ecx
	testq	%rax, %rax
	movw	$0, 4(%rdx)
	movw	$0, 2(%rdx)
	movw	$0, (%rdx)
	movw	%cx, 6(%rdx)
	jle	.LBB14_13
# BB#1:                                 # %for.body.lr.ph
	cmpq	$2, %rax
	movl	$1, %ecx
	cmovlq	%rax, %rcx
	notq	%rcx
	leaq	(%rcx,%rax), %r11
	cmpq	$-2, %r11
	je	.LBB14_11
# BB#2:                                 # %overflow.checked
	addq	$2, %r11
	movq	%r11, %r10
	andq	$-16, %r10
	xorl	%ecx, %ecx
	movq	%r11, %r9
	andq	$-16, %r9
	je	.LBB14_10
# BB#3:                                 # %vector.body.preheader
	cmpq	$2, %rax
	movl	$1, %ecx
	cmovlq	%rax, %rcx
	notq	%rcx
	leaq	-14(%rax,%rcx), %r8
	movl	%r8d, %ecx
	shrl	$4, %ecx
	incl	%ecx
	xorl	%esi, %esi
	testb	$3, %cl
	je	.LBB14_6
# BB#4:                                 # %vector.body.prol.preheader
	leaq	-8(%rdx,%rax,2), %rdi
	movq	%rax, %rcx
	notq	%rcx
	cmpq	$-2, %rcx
	movl	$-2, %esi
	cmovgl	%ecx, %esi
	leal	-14(%rsi,%rax), %ecx
	shrl	$4, %ecx
	incl	%ecx
	andl	$3, %ecx
	negq	%rcx
	xorl	%esi, %esi
	xorps	%xmm0, %xmm0
	.align	16, 0x90
.LBB14_5:                               # %vector.body.prol
                                        # =>This Inner Loop Header: Depth=1
	movups	%xmm0, (%rdi)
	movups	%xmm0, -16(%rdi)
	addq	$16, %rsi
	addq	$-32, %rdi
	incq	%rcx
	jne	.LBB14_5
.LBB14_6:                               # %vector.body.preheader.split
	movq	%rax, %rbx
	subq	%r10, %rbx
	cmpq	$48, %r8
	jb	.LBB14_9
# BB#7:                                 # %vector.body.preheader.split.split
	movq	%rax, %rcx
	notq	%rcx
	cmpq	$-3, %rcx
	movq	$-2, %rdi
	cmovgq	%rcx, %rdi
	leaq	2(%rdi,%rax), %rcx
	andq	$-16, %rcx
	subq	%rsi, %rcx
	addq	$-4, %rax
	subq	%rsi, %rax
	leaq	(%rdx,%rax,2), %rax
	xorps	%xmm0, %xmm0
	.align	16, 0x90
.LBB14_8:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movups	%xmm0, (%rax)
	movups	%xmm0, -16(%rax)
	movups	%xmm0, -32(%rax)
	movups	%xmm0, -48(%rax)
	movups	%xmm0, -64(%rax)
	movups	%xmm0, -80(%rax)
	movups	%xmm0, -96(%rax)
	movups	%xmm0, -112(%rax)
	addq	$-128, %rax
	addq	$-64, %rcx
	jne	.LBB14_8
.LBB14_9:
	movq	%rbx, %rax
	movq	%r9, %rcx
.LBB14_10:                              # %middle.block
	cmpq	%rcx, %r11
	je	.LBB14_13
.LBB14_11:                              # %for.body.preheader
	incq	%rax
	.align	16, 0x90
.LBB14_12:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movw	$0, 4(%rdx,%rax,2)
	decq	%rax
	cmpq	$1, %rax
	jg	.LBB14_12
.LBB14_13:                              # %for.end
	popq	%rbx
	retq
.Lfunc_end14:
	.size	gray_cs_to_spotcmyk_cm, .Lfunc_end14-gray_cs_to_spotcmyk_cm
	.cfi_endproc

	.align	16, 0x90
	.type	rgb_cs_to_spotcmyk_cm,@function
rgb_cs_to_spotcmyk_cm:                  # @rgb_cs_to_spotcmyk_cm
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp68:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp69:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp70:
	.cfi_def_cfa_offset 32
.Ltmp71:
	.cfi_offset %rbx, -24
.Ltmp72:
	.cfi_offset %r14, -16
	movq	%r9, %rbx
	movq	%rsi, %rax
	movl	18496(%rdi), %r14d
	movq	24(%rdi), %r9
	movl	%edx, %edi
	movl	%ecx, %esi
	movl	%r8d, %edx
	movq	%rax, %rcx
	movq	%rbx, %r8
	callq	color_rgb_to_cmyk
	testl	%r14d, %r14d
	jle	.LBB15_12
# BB#1:                                 # %for.body.preheader
	movabsq	$8589934576, %rdi       # imm = 0x1FFFFFFF0
	leal	-1(%r14), %edx
	leaq	1(%rdx), %rax
	xorl	%esi, %esi
	movq	%rax, %rcx
	andq	%rdi, %rcx
	je	.LBB15_9
# BB#2:                                 # %vector.body.preheader
	incq	%rdx
	andq	%rdi, %rdx
	addq	$-16, %rdx
	movl	%edx, %edi
	shrl	$4, %edi
	incl	%edi
	xorl	%esi, %esi
	testb	$3, %dil
	je	.LBB15_5
# BB#3:                                 # %vector.body.prol.preheader
	movl	%r14d, %edi
	andl	$48, %edi
	addl	$-16, %edi
	shrl	$4, %edi
	incl	%edi
	andl	$3, %edi
	negq	%rdi
	xorl	%esi, %esi
	xorps	%xmm0, %xmm0
	.align	16, 0x90
.LBB15_4:                               # %vector.body.prol
                                        # =>This Inner Loop Header: Depth=1
	movups	%xmm0, 8(%rbx,%rsi,2)
	movups	%xmm0, 24(%rbx,%rsi,2)
	addq	$16, %rsi
	incq	%rdi
	jne	.LBB15_4
.LBB15_5:                               # %vector.body.preheader.split
	cmpq	$48, %rdx
	jb	.LBB15_8
# BB#6:
	xorps	%xmm0, %xmm0
	.align	16, 0x90
.LBB15_7:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movq	%rsi, %rdx
	orq	$4, %rdx
	movups	%xmm0, (%rbx,%rdx,2)
	movups	%xmm0, 16(%rbx,%rdx,2)
	leaq	16(%rsi), %rdx
	orq	$4, %rdx
	movups	%xmm0, (%rbx,%rdx,2)
	movups	%xmm0, 16(%rbx,%rdx,2)
	leaq	32(%rsi), %rdx
	orq	$4, %rdx
	movups	%xmm0, (%rbx,%rdx,2)
	movups	%xmm0, 16(%rbx,%rdx,2)
	leaq	48(%rsi), %rdx
	orq	$4, %rdx
	movups	%xmm0, (%rbx,%rdx,2)
	movups	%xmm0, 16(%rbx,%rdx,2)
	addq	$64, %rsi
	cmpq	%rcx, %rsi
	jne	.LBB15_7
.LBB15_8:
	movq	%rcx, %rsi
.LBB15_9:                               # %middle.block
	cmpq	%rsi, %rax
	je	.LBB15_12
# BB#10:                                # %for.body.preheader14
	leaq	8(%rbx,%rsi,2), %rax
	subl	%esi, %r14d
	.align	16, 0x90
.LBB15_11:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movw	$0, (%rax)
	addq	$2, %rax
	decl	%r14d
	jne	.LBB15_11
.LBB15_12:                              # %for.end
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end15:
	.size	rgb_cs_to_spotcmyk_cm, .Lfunc_end15-rgb_cs_to_spotcmyk_cm
	.cfi_endproc

	.align	16, 0x90
	.type	cmyk_cs_to_spotcmyk_cm,@function
cmyk_cs_to_spotcmyk_cm:                 # @cmyk_cs_to_spotcmyk_cm
	.cfi_startproc
# BB#0:                                 # %entry
	movl	18496(%rdi), %r10d
	movw	%si, (%r9)
	movw	%dx, 2(%r9)
	movw	%cx, 4(%r9)
	movw	%r8w, 6(%r9)
	testl	%r10d, %r10d
	jle	.LBB16_12
# BB#1:                                 # %for.body.preheader
	movabsq	$8589934576, %rdi       # imm = 0x1FFFFFFF0
	leal	-1(%r10), %esi
	leaq	1(%rsi), %rcx
	xorl	%eax, %eax
	movq	%rcx, %rdx
	andq	%rdi, %rdx
	je	.LBB16_9
# BB#2:                                 # %vector.body.preheader
	incq	%rsi
	andq	%rdi, %rsi
	addq	$-16, %rsi
	movl	%esi, %eax
	shrl	$4, %eax
	incl	%eax
	xorl	%edi, %edi
	testb	$3, %al
	je	.LBB16_5
# BB#3:                                 # %vector.body.prol.preheader
	movl	%r10d, %eax
	andl	$48, %eax
	addl	$-16, %eax
	shrl	$4, %eax
	incl	%eax
	andl	$3, %eax
	negq	%rax
	xorl	%edi, %edi
	xorps	%xmm0, %xmm0
	.align	16, 0x90
.LBB16_4:                               # %vector.body.prol
                                        # =>This Inner Loop Header: Depth=1
	movups	%xmm0, 8(%r9,%rdi,2)
	movups	%xmm0, 24(%r9,%rdi,2)
	addq	$16, %rdi
	incq	%rax
	jne	.LBB16_4
.LBB16_5:                               # %vector.body.preheader.split
	cmpq	$48, %rsi
	jb	.LBB16_8
# BB#6:
	xorps	%xmm0, %xmm0
	.align	16, 0x90
.LBB16_7:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movq	%rdi, %rax
	orq	$4, %rax
	movups	%xmm0, (%r9,%rax,2)
	movups	%xmm0, 16(%r9,%rax,2)
	leaq	16(%rdi), %rax
	orq	$4, %rax
	movups	%xmm0, (%r9,%rax,2)
	movups	%xmm0, 16(%r9,%rax,2)
	leaq	32(%rdi), %rax
	orq	$4, %rax
	movups	%xmm0, (%r9,%rax,2)
	movups	%xmm0, 16(%r9,%rax,2)
	leaq	48(%rdi), %rax
	orq	$4, %rax
	movups	%xmm0, (%r9,%rax,2)
	movups	%xmm0, 16(%r9,%rax,2)
	addq	$64, %rdi
	cmpq	%rdx, %rdi
	jne	.LBB16_7
.LBB16_8:
	movq	%rdx, %rax
.LBB16_9:                               # %middle.block
	cmpq	%rax, %rcx
	je	.LBB16_12
# BB#10:                                # %for.body.preheader16
	leaq	8(%r9,%rax,2), %rcx
	subl	%eax, %r10d
	.align	16, 0x90
.LBB16_11:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movw	$0, (%rcx)
	addq	$2, %rcx
	decl	%r10d
	jne	.LBB16_11
.LBB16_12:                              # %for.end
	retq
.Lfunc_end16:
	.size	cmyk_cs_to_spotcmyk_cm, .Lfunc_end16-cmyk_cs_to_spotcmyk_cm
	.cfi_endproc

	.align	16, 0x90
	.type	gray_cs_to_spotn_cm,@function
gray_cs_to_spotn_cm:                    # @gray_cs_to_spotn_cm
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rdx, %rax
	movl	$32760, %ecx            # imm = 0x7FF8
	subl	%esi, %ecx
	movswl	%cx, %r8d
	xorl	%esi, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	movq	%rax, %r9
	jmp	cmyk_cs_to_spotn_cm     # TAILCALL
.Lfunc_end17:
	.size	gray_cs_to_spotn_cm, .Lfunc_end17-gray_cs_to_spotn_cm
	.cfi_endproc

	.align	16, 0x90
	.type	rgb_cs_to_spotn_cm,@function
rgb_cs_to_spotn_cm:                     # @rgb_cs_to_spotn_cm
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp73:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp74:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp75:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp76:
	.cfi_def_cfa_offset 40
	subq	$24, %rsp
.Ltmp77:
	.cfi_def_cfa_offset 64
.Ltmp78:
	.cfi_offset %rbx, -40
.Ltmp79:
	.cfi_offset %r12, -32
.Ltmp80:
	.cfi_offset %r14, -24
.Ltmp81:
	.cfi_offset %r15, -16
	movq	%r9, %r14
	movq	%rsi, %rax
	movq	%rdi, %rbx
	movq	19800(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB18_22
# BB#1:                                 # %if.then
	movl	18496(%rbx), %r15d
	movq	19792(%rbx), %rax
	movzbl	1(%rax), %r12d
	movswl	%dx, %eax
	movl	%eax, %edx
	shrl	$11, %edx
	leal	(%rdx,%rax,2), %eax
	movw	%ax, 18(%rsp)
	movswl	%cx, %eax
	movl	%eax, %ecx
	shrl	$11, %ecx
	leal	(%rcx,%rax,2), %eax
	movw	%ax, 20(%rsp)
	movswl	%r8w, %eax
	movl	%eax, %ecx
	shrl	$11, %ecx
	leal	(%rcx,%rax,2), %eax
	movw	%ax, 22(%rsp)
	leaq	18(%rsp), %rdx
	leaq	(%rsp), %rcx
	movl	$2, %r8d
	movq	%rbx, %rdi
	callq	gscms_transform_color
	xorl	%edx, %edx
	testq	%r12, %r12
	je	.LBB18_8
# BB#2:                                 # %for.body.lr.ph
	leal	-1(%r12), %eax
	incq	%rax
	movl	%r12d, %edx
	andl	$15, %edx
	xorl	%esi, %esi
	movq	%rax, %rcx
	subq	%rdx, %rcx
	je	.LBB18_6
# BB#3:                                 # %vector.body.preheader
	leaq	16(%rsp), %rdx
	leaq	16(%r14), %rsi
	movl	%r12d, %edi
	decl	%edi
	incq	%rdi
	movl	%r12d, %ebx
	andl	$15, %ebx
	subq	%rbx, %rdi
	.align	16, 0x90
.LBB18_4:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movdqa	-16(%rdx), %xmm0
	movdqa	(%rdx), %xmm1
	movdqa	%xmm0, %xmm2
	psrlw	$1, %xmm2
	movdqa	%xmm1, %xmm3
	psrlw	$1, %xmm3
	psrlw	$13, %xmm0
	psrlw	$13, %xmm1
	psubw	%xmm0, %xmm2
	psubw	%xmm1, %xmm3
	movdqu	%xmm2, -16(%rsi)
	movdqu	%xmm3, (%rsi)
	addq	$32, %rdx
	addq	$32, %rsi
	addq	$-16, %rdi
	jne	.LBB18_4
# BB#5:
	movq	%rcx, %rsi
.LBB18_6:                               # %middle.block
	cmpq	%rsi, %rax
	je	.LBB18_7
# BB#20:                                # %for.body.preheader
	leaq	(%rsp,%rsi,2), %rax
	leaq	(%r14,%rsi,2), %rcx
	movl	%r12d, %edx
	subl	%esi, %edx
	.align	16, 0x90
.LBB18_21:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movzwl	(%rax), %esi
	movl	%esi, %edi
	shrl	%edi
	shrl	$13, %esi
	subl	%esi, %edi
	movw	%di, (%rcx)
	addq	$2, %rax
	addq	$2, %rcx
	decl	%edx
	jne	.LBB18_21
.LBB18_7:
	movl	%r12d, %edx
.LBB18_8:                               # %for.cond.33.preheader
	leal	4(%r15), %eax
	cmpl	%eax, %edx
	jge	.LBB18_23
# BB#9:                                 # %for.body.37.lr.ph
	addl	$3, %r15d
	subl	%edx, %r15d
	leaq	1(%r15), %rcx
	movabsq	$8589934576, %r9        # imm = 0x1FFFFFFF0
	movq	%rcx, %rsi
	andq	%r9, %rsi
	andq	%r9, %rcx
	leaq	1(%r15,%rdx), %r8
	je	.LBB18_17
# BB#10:                                # %vector.body45.preheader
	leaq	1(%r15), %rbx
	andq	%r9, %rbx
	addq	$-16, %rbx
	movl	%ebx, %ecx
	shrl	$4, %ecx
	incl	%ecx
	testb	$3, %cl
	movq	%rdx, %rcx
	je	.LBB18_13
# BB#11:                                # %vector.body45.prol.preheader
	leal	1(%r15), %edi
	andl	$48, %edi
	addl	$-16, %edi
	shrl	$4, %edi
	incl	%edi
	andl	$3, %edi
	negq	%rdi
	pxor	%xmm0, %xmm0
	movq	%rdx, %rcx
	.align	16, 0x90
.LBB18_12:                              # %vector.body45.prol
                                        # =>This Inner Loop Header: Depth=1
	movdqu	%xmm0, (%r14,%rcx,2)
	movdqu	%xmm0, 16(%r14,%rcx,2)
	addq	$16, %rcx
	incq	%rdi
	jne	.LBB18_12
.LBB18_13:                              # %vector.body45.preheader.split
	addq	%rdx, %rsi
	cmpq	$48, %rbx
	jb	.LBB18_16
# BB#14:                                # %vector.body45.preheader.split.split
	incq	%r15
	andq	%r9, %r15
	addq	%r15, %rdx
	subq	%rcx, %rdx
	leaq	112(%r14,%rcx,2), %rcx
	pxor	%xmm0, %xmm0
	.align	16, 0x90
.LBB18_15:                              # %vector.body45
                                        # =>This Inner Loop Header: Depth=1
	movdqu	%xmm0, -112(%rcx)
	movdqu	%xmm0, -96(%rcx)
	movdqu	%xmm0, -80(%rcx)
	movdqu	%xmm0, -64(%rcx)
	movdqu	%xmm0, -48(%rcx)
	movdqu	%xmm0, -32(%rcx)
	movdqu	%xmm0, -16(%rcx)
	movdqu	%xmm0, (%rcx)
	subq	$-128, %rcx
	addq	$-64, %rdx
	jne	.LBB18_15
.LBB18_16:
	movq	%rsi, %rdx
.LBB18_17:                              # %middle.block46
	cmpq	%rdx, %r8
	je	.LBB18_23
# BB#18:                                # %for.body.37.preheader
	leaq	(%r14,%rdx,2), %rcx
	subl	%edx, %eax
	.align	16, 0x90
.LBB18_19:                              # %for.body.37
                                        # =>This Inner Loop Header: Depth=1
	movw	$0, (%rcx)
	addq	$2, %rcx
	decl	%eax
	jne	.LBB18_19
	jmp	.LBB18_23
.LBB18_22:                              # %if.else
	movq	24(%rbx), %r9
	movswl	%dx, %edi
	movswl	%cx, %esi
	movswl	%r8w, %edx
	leaq	(%rsp), %r8
	movq	%rax, %rcx
	callq	color_rgb_to_cmyk
	movswl	6(%rsp), %r8d
	movswl	4(%rsp), %ecx
	movswl	2(%rsp), %edx
	movswl	(%rsp), %esi
	movq	%rbx, %rdi
	movq	%r14, %r9
	callq	cmyk_cs_to_spotn_cm
.LBB18_23:                              # %if.end
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end18:
	.size	rgb_cs_to_spotn_cm, .Lfunc_end18-rgb_cs_to_spotn_cm
	.cfi_endproc

	.align	16, 0x90
	.type	cmyk_cs_to_spotn_cm,@function
cmyk_cs_to_spotn_cm:                    # @cmyk_cs_to_spotn_cm
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp82:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp83:
	.cfi_def_cfa_offset 24
	pushq	%r12
.Ltmp84:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp85:
	.cfi_def_cfa_offset 40
	subq	$24, %rsp
.Ltmp86:
	.cfi_def_cfa_offset 64
.Ltmp87:
	.cfi_offset %rbx, -40
.Ltmp88:
	.cfi_offset %r12, -32
.Ltmp89:
	.cfi_offset %r14, -24
.Ltmp90:
	.cfi_offset %r15, -16
	movq	%r9, %rbx
	movl	%esi, %r9d
	movabsq	$8589934576, %r15       # imm = 0x1FFFFFFF0
	movl	18496(%rdi), %r14d
	movq	20072(%rdi), %rsi
	testq	%rsi, %rsi
	je	.LBB19_22
# BB#1:                                 # %if.then
	movq	20064(%rdi), %rax
	movzbl	1(%rax), %r12d
	movswl	%r9w, %r9d
	movl	%r9d, %eax
	shrl	$11, %eax
	leal	(%rax,%r9,2), %eax
	movw	%ax, 16(%rsp)
	movswl	%dx, %eax
	movl	%eax, %edx
	shrl	$11, %edx
	leal	(%rdx,%rax,2), %eax
	movw	%ax, 18(%rsp)
	movswl	%cx, %eax
	movl	%eax, %ecx
	shrl	$11, %ecx
	leal	(%rcx,%rax,2), %eax
	movw	%ax, 20(%rsp)
	movswl	%r8w, %eax
	movl	%eax, %ecx
	shrl	$11, %ecx
	leal	(%rcx,%rax,2), %eax
	movw	%ax, 22(%rsp)
	leaq	16(%rsp), %rdx
	leaq	(%rsp), %rcx
	movl	$2, %r8d
	callq	gscms_transform_color
	xorl	%edx, %edx
	testq	%r12, %r12
	je	.LBB19_8
# BB#2:                                 # %for.body.lr.ph
	leal	-1(%r12), %eax
	incq	%rax
	movl	%r12d, %edx
	andl	$15, %edx
	xorl	%esi, %esi
	movq	%rax, %r8
	subq	%rdx, %r8
	je	.LBB19_6
# BB#3:                                 # %vector.body.preheader
	leaq	16(%rsp), %rdx
	leaq	16(%rbx), %rsi
	movl	%r12d, %edi
	decl	%edi
	incq	%rdi
	movl	%r12d, %ecx
	andl	$15, %ecx
	subq	%rcx, %rdi
	.align	16, 0x90
.LBB19_4:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movdqa	-16(%rdx), %xmm0
	movdqa	(%rdx), %xmm1
	movdqa	%xmm0, %xmm2
	psrlw	$1, %xmm2
	movdqa	%xmm1, %xmm3
	psrlw	$1, %xmm3
	psrlw	$13, %xmm0
	psrlw	$13, %xmm1
	psubw	%xmm0, %xmm2
	psubw	%xmm1, %xmm3
	movdqu	%xmm2, -16(%rsi)
	movdqu	%xmm3, (%rsi)
	addq	$32, %rdx
	addq	$32, %rsi
	addq	$-16, %rdi
	jne	.LBB19_4
# BB#5:
	movq	%r8, %rsi
.LBB19_6:                               # %middle.block
	cmpq	%rsi, %rax
	je	.LBB19_7
# BB#20:                                # %for.body.preheader
	leaq	(%rsp,%rsi,2), %rax
	leaq	(%rbx,%rsi,2), %rcx
	movl	%r12d, %edx
	subl	%esi, %edx
	.align	16, 0x90
.LBB19_21:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movzwl	(%rax), %esi
	movl	%esi, %edi
	shrl	%edi
	shrl	$13, %esi
	subl	%esi, %edi
	movw	%di, (%rcx)
	addq	$2, %rax
	addq	$2, %rcx
	decl	%edx
	jne	.LBB19_21
.LBB19_7:
	movl	%r12d, %edx
.LBB19_8:                               # %for.cond.40.preheader
	leal	4(%r14), %eax
	cmpl	%eax, %edx
	jge	.LBB19_34
# BB#9:                                 # %for.body.44.lr.ph
	addl	$3, %r14d
	subl	%edx, %r14d
	leaq	1(%r14), %rcx
	movq	%rcx, %r9
	andq	%r15, %r9
	andq	%r15, %rcx
	leaq	1(%r14,%rdx), %r8
	je	.LBB19_17
# BB#10:                                # %vector.body61.preheader
	leaq	1(%r14), %rdi
	andq	%r15, %rdi
	addq	$-16, %rdi
	movl	%edi, %ecx
	shrl	$4, %ecx
	incl	%ecx
	testb	$3, %cl
	movq	%rdx, %rcx
	je	.LBB19_13
# BB#11:                                # %vector.body61.prol.preheader
	leal	1(%r14), %esi
	andl	$48, %esi
	addl	$-16, %esi
	shrl	$4, %esi
	incl	%esi
	andl	$3, %esi
	negq	%rsi
	pxor	%xmm0, %xmm0
	movq	%rdx, %rcx
	.align	16, 0x90
.LBB19_12:                              # %vector.body61.prol
                                        # =>This Inner Loop Header: Depth=1
	movdqu	%xmm0, (%rbx,%rcx,2)
	movdqu	%xmm0, 16(%rbx,%rcx,2)
	addq	$16, %rcx
	incq	%rsi
	jne	.LBB19_12
.LBB19_13:                              # %vector.body61.preheader.split
	addq	%rdx, %r9
	cmpq	$48, %rdi
	jb	.LBB19_16
# BB#14:                                # %vector.body61.preheader.split.split
	incq	%r14
	andq	%r15, %r14
	addq	%r14, %rdx
	subq	%rcx, %rdx
	leaq	112(%rbx,%rcx,2), %rcx
	pxor	%xmm0, %xmm0
	.align	16, 0x90
.LBB19_15:                              # %vector.body61
                                        # =>This Inner Loop Header: Depth=1
	movdqu	%xmm0, -112(%rcx)
	movdqu	%xmm0, -96(%rcx)
	movdqu	%xmm0, -80(%rcx)
	movdqu	%xmm0, -64(%rcx)
	movdqu	%xmm0, -48(%rcx)
	movdqu	%xmm0, -32(%rcx)
	movdqu	%xmm0, -16(%rcx)
	movdqu	%xmm0, (%rcx)
	subq	$-128, %rcx
	addq	$-64, %rdx
	jne	.LBB19_15
.LBB19_16:
	movq	%r9, %rdx
.LBB19_17:                              # %middle.block62
	cmpq	%rdx, %r8
	je	.LBB19_34
# BB#18:                                # %for.body.44.preheader
	leaq	(%rbx,%rdx,2), %rcx
	subl	%edx, %eax
	.align	16, 0x90
.LBB19_19:                              # %for.body.44
                                        # =>This Inner Loop Header: Depth=1
	movw	$0, (%rcx)
	addq	$2, %rcx
	decl	%eax
	jne	.LBB19_19
	jmp	.LBB19_34
.LBB19_22:                              # %if.else
	movw	%r9w, (%rbx)
	movw	%dx, 2(%rbx)
	movw	%cx, 4(%rbx)
	movw	%r8w, 6(%rbx)
	testl	%r14d, %r14d
	jle	.LBB19_34
# BB#23:                                # %for.body.57.preheader
	leal	-1(%r14), %edx
	leaq	1(%rdx), %rax
	xorl	%esi, %esi
	movq	%rax, %rcx
	andq	%r15, %rcx
	je	.LBB19_31
# BB#24:                                # %vector.body85.preheader
	incq	%rdx
	andq	%r15, %rdx
	addq	$-16, %rdx
	movl	%edx, %edi
	shrl	$4, %edi
	incl	%edi
	xorl	%esi, %esi
	testb	$3, %dil
	je	.LBB19_27
# BB#25:                                # %vector.body85.prol.preheader
	movl	%r14d, %edi
	andl	$48, %edi
	addl	$-16, %edi
	shrl	$4, %edi
	incl	%edi
	andl	$3, %edi
	negq	%rdi
	xorl	%esi, %esi
	pxor	%xmm0, %xmm0
	.align	16, 0x90
.LBB19_26:                              # %vector.body85.prol
                                        # =>This Inner Loop Header: Depth=1
	movdqu	%xmm0, 8(%rbx,%rsi,2)
	movdqu	%xmm0, 24(%rbx,%rsi,2)
	addq	$16, %rsi
	incq	%rdi
	jne	.LBB19_26
.LBB19_27:                              # %vector.body85.preheader.split
	cmpq	$48, %rdx
	jb	.LBB19_30
# BB#28:
	pxor	%xmm0, %xmm0
	.align	16, 0x90
.LBB19_29:                              # %vector.body85
                                        # =>This Inner Loop Header: Depth=1
	movq	%rsi, %rdx
	orq	$4, %rdx
	movdqu	%xmm0, (%rbx,%rdx,2)
	movdqu	%xmm0, 16(%rbx,%rdx,2)
	leaq	16(%rsi), %rdx
	orq	$4, %rdx
	movdqu	%xmm0, (%rbx,%rdx,2)
	movdqu	%xmm0, 16(%rbx,%rdx,2)
	leaq	32(%rsi), %rdx
	orq	$4, %rdx
	movdqu	%xmm0, (%rbx,%rdx,2)
	movdqu	%xmm0, 16(%rbx,%rdx,2)
	leaq	48(%rsi), %rdx
	orq	$4, %rdx
	movdqu	%xmm0, (%rbx,%rdx,2)
	movdqu	%xmm0, 16(%rbx,%rdx,2)
	addq	$64, %rsi
	cmpq	%rcx, %rsi
	jne	.LBB19_29
.LBB19_30:
	movq	%rcx, %rsi
.LBB19_31:                              # %middle.block86
	cmpq	%rsi, %rax
	je	.LBB19_34
# BB#32:                                # %for.body.57.preheader108
	leaq	8(%rbx,%rsi,2), %rax
	subl	%esi, %r14d
	.align	16, 0x90
.LBB19_33:                              # %for.body.57
                                        # =>This Inner Loop Header: Depth=1
	movw	$0, (%rax)
	addq	$2, %rax
	decl	%r14d
	jne	.LBB19_33
.LBB19_34:                              # %if.end
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.Lfunc_end19:
	.size	cmyk_cs_to_spotn_cm, .Lfunc_end19-cmyk_cs_to_spotn_cm
	.cfi_endproc

	.align	16, 0x90
	.type	xcf_write_32,@function
xcf_write_32:                           # @xcf_write_32
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp91:
	.cfi_def_cfa_offset 16
	subq	$16, %rsp
.Ltmp92:
	.cfi_def_cfa_offset 32
.Ltmp93:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	bswapl	%esi
	movl	%esi, 12(%rsp)
	movq	(%rbx), %rcx
	leaq	12(%rsp), %rdi
	movl	$1, %esi
	movl	$4, %edx
	callq	fwrite
	testl	%eax, %eax
	js	.LBB20_2
# BB#1:                                 # %if.end.i
	addl	%eax, 8(%rbx)
.LBB20_2:                               # %xcf_write.exit
	addq	$16, %rsp
	popq	%rbx
	retq
.Lfunc_end20:
	.size	xcf_write_32, .Lfunc_end20-xcf_write_32
	.cfi_endproc

	.align	16, 0x90
	.type	xcf_write_fake_hierarchy,@function
xcf_write_fake_hierarchy:               # @xcf_write_fake_hierarchy
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp94:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp95:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp96:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp97:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp98:
	.cfi_def_cfa_offset 48
	subq	$16, %rsp
.Ltmp99:
	.cfi_def_cfa_offset 64
.Ltmp100:
	.cfi_offset %rbx, -48
.Ltmp101:
	.cfi_offset %r12, -40
.Ltmp102:
	.cfi_offset %r14, -32
.Ltmp103:
	.cfi_offset %r15, -24
.Ltmp104:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbx
	cmpl	$2, 40(%rbx)
	jl	.LBB21_5
# BB#1:                                 # %for.body.lr.ph
	movl	12(%rbx), %r15d
	movl	16(%rbx), %r12d
	movl	$1, %ebp
	leaq	12(%rsp), %r14
	.align	16, 0x90
.LBB21_2:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	sarl	%r15d
	sarl	%r12d
	movl	%r15d, %eax
	bswapl	%eax
	movl	%eax, 12(%rsp)
	movq	(%rbx), %rcx
	movl	$1, %esi
	movl	$4, %edx
	movq	%r14, %rdi
	callq	fwrite
	testl	%eax, %eax
	js	.LBB21_4
# BB#3:                                 # %if.end.i.i
                                        #   in Loop: Header=BB21_2 Depth=1
	addl	%eax, 8(%rbx)
.LBB21_4:                               # %xcf_write_32.exit
                                        #   in Loop: Header=BB21_2 Depth=1
	movq	%rbx, %rdi
	movl	%r12d, %esi
	callq	xcf_write_32
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	xcf_write_32
	incl	%ebp
	cmpl	40(%rbx), %ebp
	jl	.LBB21_2
.LBB21_5:                               # %for.end
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end21:
	.size	xcf_write_fake_hierarchy, .Lfunc_end21-xcf_write_fake_hierarchy
	.cfi_endproc

	.type	spot_rgb_procs,@object  # @spot_rgb_procs
	.section	.rodata,"a",@progbits
	.align	8
spot_rgb_procs:
	.quad	gdev_prn_open
	.quad	gx_default_get_initial_matrix
	.quad	0
	.quad	gdev_prn_bg_output_page
	.quad	xcf_prn_close
	.quad	0
	.quad	xcf_map_color_rgb
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	xcf_get_params
	.quad	xcf_put_params
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gx_page_device_get_page_device
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	get_spotrgb_color_mapping_procs
	.quad	xcf_get_color_comp_index
	.quad	xcf_encode_color
	.quad	xcf_decode_color
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.size	spot_rgb_procs, 584

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"xcf"
	.size	.L.str, 4

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"DeviceN"
	.size	.L.str.1, 8

	.type	DeviceRGBComponents,@object # @DeviceRGBComponents
	.section	.rodata,"a",@progbits
	.align	16
DeviceRGBComponents:
	.quad	.L.str.19
	.quad	.L.str.20
	.quad	.L.str.21
	.quad	0
	.size	DeviceRGBComponents, 32

	.type	gs_xcf_device,@object   # @gs_xcf_device
	.globl	gs_xcf_device
	.align	8
gs_xcf_device:
	.long	20352                   # 0x4f80
	.zero	4
	.quad	spot_rgb_procs
	.quad	.L.str
	.quad	0
	.quad	st_device_printer
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.zero	24
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.long	64                      # 0x40
	.long	3                       # 0x3
	.long	1                       # 0x1
	.short	24                      # 0x18
	.byte	0                       # 0x0
	.zero	1
	.long	255                     # 0xff
	.long	255                     # 0xff
	.long	256                     # 0x100
	.long	256                     # 0x100
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	4294967295              # 0xffffffff
	.zero	64
	.zero	64
	.zero	4
	.zero	512
	.quad	.L.str.1
	.long	4294967295              # 0xffffffff
	.zero	4
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	-1                      # 0xffffffffffffffff
	.quad	-1                      # 0xffffffffffffffff
	.long	612                     # 0x264
	.long	792                     # 0x318
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1142489088              # float 6.120000e+02
	.long	1145438208              # float 7.920000e+02
	.zero	16
	.long	0                       # 0x0
	.long	1116733440              # float 7.200000e+01
	.long	1116733440              # float 7.200000e+01
	.long	1116733440              # float 7.200000e+01
	.long	1116733440              # float 7.200000e+01
	.zero	8
	.zero	16
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.zero	68
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	10000000                # 0x989680
	.quad	4000000                 # 0x3d0900
	.zero	16
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	gx_default_install
	.quad	gx_default_begin_page
	.quad	gx_default_end_page
	.zero	584
	.zero	11240
	.quad	xcf_print_page
	.quad	gx_default_print_page_copies
	.quad	gx_default_create_buf_device
	.quad	gx_default_size_buf_device
	.quad	gx_default_setup_buf_device
	.quad	gx_default_destroy_buf_device
	.quad	gx_default_get_space_params
	.quad	gx_default_start_render_thread
	.quad	gx_default_open_render_device
	.quad	gx_default_close_render_device
	.quad	gx_default_buffer_page
	.zero	4096
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	4294967295              # 0xffffffff
	.long	0                       # 0x0
	.quad	0
	.quad	0                       # 0x0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	32
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.zero	584
	.zero	584
	.long	1                       # 0x1
	.long	8                       # 0x8
	.quad	DeviceRGBComponents
	.long	3                       # 0x3
	.zero	4
	.zero	520
	.zero	520
	.zero	256
	.quad	0
	.quad	0
	.zero	256
	.quad	0
	.quad	0
	.zero	256
	.quad	0
	.quad	0
	.size	gs_xcf_device, 20352

	.type	spot_cmyk_procs,@object # @spot_cmyk_procs
	.align	8
spot_cmyk_procs:
	.quad	gdev_prn_open
	.quad	gx_default_get_initial_matrix
	.quad	0
	.quad	gdev_prn_bg_output_page
	.quad	xcf_prn_close
	.quad	0
	.quad	xcf_map_color_rgb
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	xcf_get_params
	.quad	xcf_put_params
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gx_page_device_get_page_device
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	get_xcf_color_mapping_procs
	.quad	xcf_get_color_comp_index
	.quad	xcf_encode_color
	.quad	xcf_decode_color
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.size	spot_cmyk_procs, 584

	.type	.L.str.2,@object        # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"xcfcmyk"
	.size	.L.str.2, 8

	.type	DeviceCMYKComponents,@object # @DeviceCMYKComponents
	.section	.rodata,"a",@progbits
	.align	16
DeviceCMYKComponents:
	.quad	.L.str.22
	.quad	.L.str.23
	.quad	.L.str.24
	.quad	.L.str.25
	.quad	0
	.size	DeviceCMYKComponents, 40

	.type	gs_xcfcmyk_device,@object # @gs_xcfcmyk_device
	.globl	gs_xcfcmyk_device
	.align	8
gs_xcfcmyk_device:
	.long	20352                   # 0x4f80
	.zero	4
	.quad	spot_cmyk_procs
	.quad	.L.str.2
	.quad	0
	.quad	st_device_printer
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.zero	24
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.long	64                      # 0x40
	.long	4                       # 0x4
	.long	0                       # 0x0
	.short	32                      # 0x20
	.byte	0                       # 0x0
	.zero	1
	.long	255                     # 0xff
	.long	255                     # 0xff
	.long	256                     # 0x100
	.long	256                     # 0x100
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	4294967295              # 0xffffffff
	.zero	64
	.zero	64
	.zero	4
	.zero	512
	.quad	.L.str.1
	.long	4294967295              # 0xffffffff
	.zero	4
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	-1                      # 0xffffffffffffffff
	.quad	-1                      # 0xffffffffffffffff
	.long	612                     # 0x264
	.long	792                     # 0x318
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1142489088              # float 6.120000e+02
	.long	1145438208              # float 7.920000e+02
	.zero	16
	.long	0                       # 0x0
	.long	1116733440              # float 7.200000e+01
	.long	1116733440              # float 7.200000e+01
	.long	1116733440              # float 7.200000e+01
	.long	1116733440              # float 7.200000e+01
	.zero	8
	.zero	16
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.zero	68
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	10000000                # 0x989680
	.quad	4000000                 # 0x3d0900
	.zero	16
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	gx_default_install
	.quad	gx_default_begin_page
	.quad	gx_default_end_page
	.zero	584
	.zero	11240
	.quad	xcf_print_page
	.quad	gx_default_print_page_copies
	.quad	gx_default_create_buf_device
	.quad	gx_default_size_buf_device
	.quad	gx_default_setup_buf_device
	.quad	gx_default_destroy_buf_device
	.quad	gx_default_get_space_params
	.quad	gx_default_start_render_thread
	.quad	gx_default_open_render_device
	.quad	gx_default_close_render_device
	.quad	gx_default_buffer_page
	.zero	4096
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	4294967295              # 0xffffffff
	.long	0                       # 0x0
	.quad	0
	.quad	0                       # 0x0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	32
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.zero	584
	.zero	584
	.long	2                       # 0x2
	.long	8                       # 0x8
	.quad	DeviceCMYKComponents
	.long	4                       # 0x4
	.zero	4
	.zero	520
	.zero	520
	.zero	256
	.quad	0
	.quad	0
	.zero	256
	.quad	0
	.quad	0
	.zero	256
	.quad	0
	.quad	0
	.size	gs_xcfcmyk_device, 20352

	.type	.L.str.3,@object        # @.str.3
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.3:
	.asciz	"xcf_prn_close"
	.size	.L.str.3, 14

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"CRDDefault"
	.size	.L.str.4, 11

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"SeparationColorNames"
	.size	.L.str.5, 21

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"Separations"
	.size	.L.str.6, 12

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"ProfileOut"
	.size	.L.str.7, 11

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"ProfileRgb"
	.size	.L.str.8, 11

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"ProfileCmyk"
	.size	.L.str.9, 12

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"ProcessColorModel"
	.size	.L.str.10, 18

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"DeviceGray"
	.size	.L.str.11, 11

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"DeviceRGB"
	.size	.L.str.12, 10

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"DeviceCMYK"
	.size	.L.str.13, 11

	.type	DeviceGrayComponents,@object # @DeviceGrayComponents
	.section	.rodata,"a",@progbits
	.align	16
DeviceGrayComponents:
	.quad	.L.str.14
	.quad	0
	.size	DeviceGrayComponents, 16

	.type	.L.str.14,@object       # @.str.14
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.14:
	.asciz	"Gray"
	.size	.L.str.14, 5

	.type	bpc_to_depth.depths,@object # @bpc_to_depth.depths
	.section	.rodata,"a",@progbits
	.align	16
bpc_to_depth.depths:
	.ascii	"\001\002\000\004\b\000\000\b"
	.ascii	"\002\004\000\b\020\000\000\020"
	.ascii	"\004\b\000\020\020\000\000\030"
	.ascii	"\004\b\000\020 \000\000 "
	.size	bpc_to_depth.depths, 32

	.type	.L__func__.xcf_open_profile,@object # @__func__.xcf_open_profile
	.section	.rodata.str1.1,"aMS",@progbits,1
.L__func__.xcf_open_profile:
	.asciz	"xcf_open_profile"
	.size	.L__func__.xcf_open_profile, 17

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"./devices/gdevxcf.c"
	.size	.L.str.15, 20

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"Could not create profile for xcf device"
	.size	.L.str.16, 40

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"Could not create link handle for xdev device"
	.size	.L.str.17, 45

	.type	spotRGB_procs,@object   # @spotRGB_procs
	.section	.rodata,"a",@progbits
	.align	8
spotRGB_procs:
	.quad	gray_cs_to_spotrgb_cm
	.quad	rgb_cs_to_spotrgb_cm
	.quad	cmyk_cs_to_spotrgb_cm
	.size	spotRGB_procs, 24

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"\000\000\377\377UU\222I\021\021\204!\020A@\201\001\001\002\001\004\001\b\001\020\001 \001@\001\200\001"
	.size	.L.str.18, 33

	.type	.L.str.19,@object       # @.str.19
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.19:
	.asciz	"Red"
	.size	.L.str.19, 4

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"Green"
	.size	.L.str.20, 6

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"Blue"
	.size	.L.str.21, 5

	.type	spotCMYK_procs,@object  # @spotCMYK_procs
	.section	.rodata,"a",@progbits
	.align	8
spotCMYK_procs:
	.quad	gray_cs_to_spotcmyk_cm
	.quad	rgb_cs_to_spotcmyk_cm
	.quad	cmyk_cs_to_spotcmyk_cm
	.size	spotCMYK_procs, 24

	.type	spotN_procs,@object     # @spotN_procs
	.align	8
spotN_procs:
	.quad	gray_cs_to_spotn_cm
	.quad	rgb_cs_to_spotn_cm
	.quad	cmyk_cs_to_spotn_cm
	.size	spotN_procs, 24

	.type	.L.str.22,@object       # @.str.22
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.22:
	.asciz	"Cyan"
	.size	.L.str.22, 5

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"Magenta"
	.size	.L.str.23, 8

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"Yellow"
	.size	.L.str.24, 7

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"Black"
	.size	.L.str.25, 6

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"Background"
	.size	.L.str.26, 11

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"gimp xcf file"
	.size	.L.str.27, 14

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"tile offset: %d\n"
	.size	.L.str.28, 17

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"xcf_write_image_data"
	.size	.L.str.29, 21

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"actual tile offset: %d %d\n"
	.size	.L.str.30, 27

	.type	.Lswitch.table,@object  # @switch.table
	.section	.rodata,"a",@progbits
	.align	16
.Lswitch.table:
	.quad	spotRGB_procs
	.quad	spotCMYK_procs
	.quad	spotN_procs
	.size	.Lswitch.table, 24


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
