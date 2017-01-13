	.text
	.file	"gdevdljm.bc"
	.globl	dljet_mono_print_page
	.align	16, 0x90
	.type	dljet_mono_print_page,@function
dljet_mono_print_page:                  # @dljet_mono_print_page
	.cfi_startproc
# BB#0:                                 # %entry
	subq	$24, %rsp
.Ltmp0:
	.cfi_def_cfa_offset 32
	movq	%r8, %rax
	movl	%ecx, %r8d
	movl	%edx, %ecx
	movq	%rax, (%rsp)
	movl	$0, 8(%rsp)
	movl	$1, %edx
	movq	%rax, %r9
	callq	dljet_mono_print_page_copies
	addq	$24, %rsp
	retq
.Lfunc_end0:
	.size	dljet_mono_print_page, .Lfunc_end0-dljet_mono_print_page
	.cfi_endproc

	.globl	dljet_mono_print_page_copies
	.align	16, 0x90
	.type	dljet_mono_print_page_copies,@function
dljet_mono_print_page_copies:           # @dljet_mono_print_page_copies
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp1:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp2:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp3:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp4:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp5:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp6:
	.cfi_def_cfa_offset 56
	subq	$152, %rsp
.Ltmp7:
	.cfi_def_cfa_offset 208
.Ltmp8:
	.cfi_offset %rbx, -56
.Ltmp9:
	.cfi_offset %r12, -48
.Ltmp10:
	.cfi_offset %r13, -40
.Ltmp11:
	.cfi_offset %r14, -32
.Ltmp12:
	.cfi_offset %r15, -24
.Ltmp13:
	.cfi_offset %rbp, -16
	movl	%ecx, %ebx
	movq	%r9, 104(%rsp)          # 8-byte Spill
	movl	%edx, %r12d
	movl	%r8d, %r15d
	movq	%rsi, %r14
	movq	%rdi, %rbp
	movl	216(%rsp), %eax
	movl	%eax, 96(%rsp)          # 4-byte Spill
	movq	208(%rsp), %rax
	movq	%rax, 112(%rsp)         # 8-byte Spill
	xorl	%esi, %esi
	callq	gx_device_raster
	movl	%eax, 140(%rsp)         # 4-byte Spill
	cvttss2si	884(%rbp), %r13d
	cvttss2si	888(%rbp), %ecx
	movl	%ebx, %eax
	movq	%rbp, %rbx
	cltd
	idivl	%ecx
	movl	%eax, 36(%rsp)          # 4-byte Spill
	movq	%rbx, %rdi
	callq	gdev_prn_print_scan_lines
	movl	%eax, 124(%rsp)         # 4-byte Spill
	movl	$.L.str, %edi
	callq	strlen
	movq	%rax, 72(%rsp)          # 8-byte Spill
	movl	$.L.str.1, %edi
	callq	strlen
	movq	%rax, 64(%rsp)          # 8-byte Spill
	movq	%rbx, %rdi
	callq	gdev_pcl_paper_size
	movl	%eax, %ebp
	movq	%rbx, %rdi
	callq	gdev_pcl_page_orientation
	movl	17164(%rbx), %esi
	movl	17168(%rbx), %edx
	cmpl	$1, %r12d
	je	.LBB1_2
# BB#1:                                 # %entry
	movl	%r15d, %ecx
	andl	$256, %ecx              # imm = 0x100
	jne	.LBB1_2
# BB#82:                                # %if.then
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movl	%r12d, %edx
	addq	$152, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	gx_default_print_page_copies # TAILCALL
.LBB1_2:                                # %if.end
	movl	%esi, 56(%rsp)          # 4-byte Spill
	movl	%edx, 92(%rsp)          # 4-byte Spill
	movl	%eax, 88(%rsp)          # 4-byte Spill
	movl	%ebp, 52(%rsp)          # 4-byte Spill
	movl	%r13d, 80(%rsp)         # 4-byte Spill
	movq	%r14, 144(%rsp)         # 8-byte Spill
	movslq	140(%rsp), %rax         # 4-byte Folded Reload
	movq	%rax, 24(%rsp)          # 8-byte Spill
	leaq	7(%rax), %r14
	movq	%rbx, %rbp
	movl	%r14d, %ebx
	andl	$-8, %ebx
	movq	24(%rbp), %rdi
	movl	$8, %edx
	movl	$.L.str.2, %ecx
	movl	%ebx, %esi
	callq	*88(%rdi)
	movq	%rax, %r13
	movl	$-25, %eax
	testq	%r13, %r13
	je	.LBB1_81
# BB#3:                                 # %if.end.23
	movl	%ebx, %edx
	shlq	$3, %rdx
	xorl	%esi, %esi
	movq	%r13, %rdi
	callq	memset
	cmpq	$0, 928(%rbp)
	je	.LBB1_5
# BB#4:                                 # %if.end.23.if.end.78_crit_edge
	movq	%rbp, 128(%rsp)         # 8-byte Spill
	movl	%r15d, %ebx
	andl	$64, %ebx
	movl	56(%rsp), %eax          # 4-byte Reload
	jmp	.LBB1_19
.LBB1_5:                                # %if.then.36
	movl	%r15d, %eax
	testb	$2, %ah
	je	.LBB1_7
# BB#6:                                 # %if.then.39
	movl	$.L.str.3, %edi
	movq	144(%rsp), %rsi         # 8-byte Reload
	callq	fputs
.LBB1_7:                                # %if.end.41
	movq	%rbp, 128(%rsp)         # 8-byte Spill
	movl	$.L.str.4, %edi
	movq	144(%rsp), %rbx         # 8-byte Reload
	movq	%rbx, %rsi
	callq	fputs
	movl	$.L.str.5, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	movl	88(%rsp), %edx          # 4-byte Reload
	callq	fprintf
	testb	$-128, %r15b
	je	.LBB1_9
# BB#8:                                 # %if.then.46
	movl	$.L.str.6, %esi
	xorl	%eax, %eax
	movq	144(%rsp), %rdi         # 8-byte Reload
	movl	52(%rsp), %edx          # 4-byte Reload
	callq	fprintf
.LBB1_9:                                # %if.end.48
	movl	%r15d, %ebx
	andl	$64, %ebx
	movl	92(%rsp), %edi          # 4-byte Reload
	je	.LBB1_24
# BB#10:                                # %if.then.51
	testl	%edi, %edi
	sets	%dl
	setns	%r8b
	movl	56(%rsp), %ebp          # 4-byte Reload
	testl	%ebp, %ebp
	sete	%cl
	setne	%al
	movl	96(%rsp), %esi          # 4-byte Reload
	testl	%esi, %esi
	jne	.LBB1_12
# BB#11:                                # %if.then.51
	orb	%dl, %cl
	je	.LBB1_17
.LBB1_12:                               # %if.else
	andb	%r8b, %al
	testl	%esi, %esi
	setne	%cl
	andb	%al, %cl
	movzbl	%cl, %eax
	cmpl	$1, %eax
	jne	.LBB1_14
# BB#13:                                # %if.then.64
	movl	$.L.str.8, %edi
	jmp	.LBB1_18
.LBB1_14:                               # %if.else.66
	testl	%ebp, %ebp
	jne	.LBB1_17
# BB#15:                                # %if.else.66
	testl	%edi, %edi
	js	.LBB1_17
# BB#16:                                # %if.then.70
	movl	$.L.str.9, %edi
	jmp	.LBB1_18
.LBB1_17:                               # %if.else.72
	movl	$.L.str.7, %edi
.LBB1_18:                               # %if.end.78
	movq	144(%rsp), %rsi         # 8-byte Reload
	callq	fputs
	movl	%ebp, %eax
.LBB1_19:                               # %if.end.78
	testl	%eax, %eax
	movl	92(%rsp), %eax          # 4-byte Reload
	je	.LBB1_24
# BB#20:                                # %if.end.78
	testl	%ebx, %ebx
	je	.LBB1_24
# BB#21:                                # %if.end.78
	testl	%eax, %eax
	js	.LBB1_24
# BB#22:                                # %if.then.85
	movq	128(%rsp), %rax         # 8-byte Reload
	movq	928(%rax), %rax
	movslq	%r12d, %rcx
	cqto
	idivq	%rcx
	testb	$1, %al
	jne	.LBB1_23
.LBB1_24:                               # %if.else.103
	movl	$.L.str.5, %esi
	xorl	%eax, %eax
	movq	144(%rsp), %rbp         # 8-byte Reload
	movq	%rbp, %rdi
	movl	88(%rsp), %edx          # 4-byte Reload
	callq	fprintf
	testb	$-128, %r15b
	je	.LBB1_26
# BB#25:                                # %if.then.107
	movl	$.L.str.6, %esi
	xorl	%eax, %eax
	movq	%rbp, %rdi
	movl	52(%rsp), %edx          # 4-byte Reload
	callq	fprintf
.LBB1_26:                               # %if.end.109
	movl	$.L.str.10, %edi
	movq	%rbp, %rsi
	callq	fputs
	movq	104(%rsp), %rdi         # 8-byte Reload
	jmp	.LBB1_27
.LBB1_23:                               # %if.else.100
	movq	112(%rsp), %rdi         # 8-byte Reload
	movq	144(%rsp), %rbp         # 8-byte Reload
.LBB1_27:                               # %if.end.112
	movq	%rbp, %rsi
	callq	fputs
	movl	$0, 112(%rsp)           # 4-byte Folded Spill
	movl	$.L.str.11, %esi
	xorl	%eax, %eax
	movq	%rbp, %rdi
	movl	%r12d, %edx
	callq	fprintf
	movl	$.L.str.12, %edi
	movq	%rbp, %rsi
	callq	fputs
	testb	$32, %r15b
	movl	%r15d, %ebx
	je	.LBB1_29
# BB#28:                                # %if.then.117
	movq	104(%rsp), %rdi         # 8-byte Reload
	movq	%rbp, %rsi
	callq	fputs
	movl	$.L.str.11, %esi
	xorl	%eax, %eax
	movq	%rbp, %rdi
	movl	%r12d, %edx
	callq	fprintf
.LBB1_29:                               # %if.end.120
	movl	$.L.str.13, %esi
	xorl	%eax, %eax
	movq	%rbp, %rdi
	movq	%rbp, 144(%rsp)         # 8-byte Spill
	movl	80(%rsp), %edx          # 4-byte Reload
	callq	fprintf
	xorl	%ecx, %ecx
	movq	128(%rsp), %r15         # 8-byte Reload
	subl	832(%r15), %ecx
	movq	$-1, %rax
	shlq	%cl, %rax
	movq	%rax, 104(%rsp)         # 8-byte Spill
	cmpl	$0, 124(%rsp)           # 4-byte Folded Reload
	jle	.LBB1_80
# BB#30:                                # %for.body.lr.ph
	shrq	$3, %r14
	movq	%r14, %rax
	shlq	$33, %rax
	sarq	$29, %rax
	leaq	(%r13,%rax), %rcx
	movq	%rcx, 80(%rsp)          # 8-byte Spill
	leaq	(%rcx,%rax), %rcx
	movq	%rcx, 40(%rsp)          # 8-byte Spill
	leaq	(%rax,%rcx), %rax
	movq	%rax, 56(%rsp)          # 8-byte Spill
	shlq	$32, %r14
	sarq	$29, %r14
	leaq	(%r14,%r13), %rax
	movq	%rax, 96(%rsp)          # 8-byte Spill
	movl	%ebx, %eax
	andl	$7, %eax
	movl	%eax, 52(%rsp)          # 4-byte Spill
	movl	%ebx, %eax
	andl	$16, %eax
	movl	%eax, 88(%rsp)          # 4-byte Spill
	movl	%ebx, %eax
	andl	$8, %eax
	movl	%eax, 20(%rsp)          # 4-byte Spill
	movl	%ebx, %eax
	andl	$23, %eax
	movl	%eax, 16(%rsp)          # 4-byte Spill
	andl	$1, %ebx
	movl	%ebx, 12(%rsp)          # 4-byte Spill
	movl	$-1, 92(%rsp)           # 4-byte Folded Spill
	xorl	%r14d, %r14d
	xorl	%r12d, %r12d
	.align	16, 0x90
.LBB1_31:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_34 Depth 2
                                        #     Child Loop BB1_58 Depth 2
                                        #     Child Loop BB1_60 Depth 2
                                        #     Child Loop BB1_45 Depth 2
	movq	%r15, %rdi
	movl	%r12d, %esi
	movq	%r13, %rdx
	movl	140(%rsp), %ecx         # 4-byte Reload
	callq	gdev_prn_copy_scan_lines
	testl	%eax, %eax
	js	.LBB1_32
# BB#33:                                # %if.end.133
                                        #   in Loop: Header=BB1_31 Depth=1
	movq	104(%rsp), %rcx         # 8-byte Reload
	movq	96(%rsp), %rdx          # 8-byte Reload
	andq	%rcx, -8(%rdx)
	movq	%rdx, %rcx
	.align	16, 0x90
.LBB1_34:                               # %while.cond
                                        #   Parent Loop BB1_31 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rcx, %rbp
	cmpq	%r13, %rbp
	jbe	.LBB1_36
# BB#35:                                # %land.rhs
                                        #   in Loop: Header=BB1_34 Depth=2
	leaq	-8(%rbp), %rcx
	cmpq	$0, -8(%rbp)
	je	.LBB1_34
.LBB1_36:                               # %while.end
                                        #   in Loop: Header=BB1_31 Depth=1
	cmpq	%r13, %rbp
	je	.LBB1_37
# BB#38:                                # %if.end.144
                                        #   in Loop: Header=BB1_31 Depth=1
	cmpl	%r12d, %r14d
	jne	.LBB1_48
# BB#39:                                # %if.then.147
                                        #   in Loop: Header=BB1_31 Depth=1
	movl	%eax, 112(%rsp)         # 4-byte Spill
	cmpl	$0, 52(%rsp)            # 4-byte Folded Reload
	je	.LBB1_43
# BB#40:                                # %if.then.150
                                        #   in Loop: Header=BB1_31 Depth=1
	testl	%r14d, %r14d
	movq	144(%rsp), %rbx         # 8-byte Reload
	jle	.LBB1_42
# BB#41:                                # %if.then.153
                                        #   in Loop: Header=BB1_31 Depth=1
	imull	36(%rsp), %r14d         # 4-byte Folded Reload
	movl	$.L.str.14, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	movl	%r14d, %edx
	callq	fprintf
.LBB1_42:                               # %if.end.156
                                        #   in Loop: Header=BB1_31 Depth=1
	movl	$.L.str.15, %edi
	movq	%rbx, %rsi
	callq	fputs
	jmp	.LBB1_66
	.align	16, 0x90
.LBB1_37:                               # %if.then.143
                                        #   in Loop: Header=BB1_31 Depth=1
	movl	%eax, 112(%rsp)         # 4-byte Spill
	incl	%r14d
	jmp	.LBB1_79
	.align	16, 0x90
.LBB1_48:                               # %if.else.176
                                        #   in Loop: Header=BB1_31 Depth=1
	movl	%eax, 112(%rsp)         # 4-byte Spill
	testl	%r14d, %r14d
	je	.LBB1_66
# BB#49:                                # %if.then.179
                                        #   in Loop: Header=BB1_31 Depth=1
	cmpl	$7, %r14d
	setl	%al
	cmpl	$3, 92(%rsp)            # 4-byte Folded Reload
	setne	%cl
	cmpl	$0, 52(%rsp)            # 4-byte Folded Reload
	je	.LBB1_51
# BB#50:                                # %if.then.179
                                        #   in Loop: Header=BB1_31 Depth=1
	andb	%cl, %al
	jne	.LBB1_51
# BB#61:                                # %if.else.225
                                        #   in Loop: Header=BB1_31 Depth=1
	cmpl	$0, 12(%rsp)            # 4-byte Folded Reload
	jne	.LBB1_62
# BB#63:                                # %if.else.231
                                        #   in Loop: Header=BB1_31 Depth=1
	movl	$.L.str.19, %esi
	jmp	.LBB1_64
.LBB1_43:                               # %if.else.158
                                        #   in Loop: Header=BB1_31 Depth=1
	movl	$.L.str.15, %edi
	movq	144(%rsp), %rsi         # 8-byte Reload
	callq	fputs
	cmpl	$0, 88(%rsp)            # 4-byte Folded Reload
	jne	.LBB1_46
# BB#44:                                # %for.cond.170.preheader
                                        #   in Loop: Header=BB1_31 Depth=1
	testl	%r14d, %r14d
	movq	144(%rsp), %rbx         # 8-byte Reload
	je	.LBB1_75
	.align	16, 0x90
.LBB1_45:                               # %for.body.172
                                        #   Parent Loop BB1_31 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$.L.str.17, %edi
	movq	%rbx, %rsi
	callq	fputs
	decl	%r14d
	jne	.LBB1_45
	jmp	.LBB1_66
.LBB1_51:                               # %if.then.187
                                        #   in Loop: Header=BB1_31 Depth=1
	cmpl	$16, 16(%rsp)           # 4-byte Folded Reload
	jne	.LBB1_54
# BB#52:                                # %if.then.187
                                        #   in Loop: Header=BB1_31 Depth=1
	cmpl	$2, 92(%rsp)            # 4-byte Folded Reload
	je	.LBB1_54
# BB#53:                                # %if.then.198
                                        #   in Loop: Header=BB1_31 Depth=1
	movl	$.L.str.1, %edi
	movq	144(%rsp), %rsi         # 8-byte Reload
	callq	fputs
	movl	$2, 92(%rsp)            # 4-byte Folded Spill
.LBB1_54:                               # %if.end.200
                                        #   in Loop: Header=BB1_31 Depth=1
	cmpl	$0, 88(%rsp)            # 4-byte Folded Reload
	je	.LBB1_56
# BB#55:                                # %if.then.203
                                        #   in Loop: Header=BB1_31 Depth=1
	movl	$.L.str.18, %edi
	movq	144(%rsp), %rsi         # 8-byte Reload
	callq	fputs
	decl	%r14d
.LBB1_56:                               # %if.end.206
                                        #   in Loop: Header=BB1_31 Depth=1
	cmpl	$16, 16(%rsp)           # 4-byte Folded Reload
	jne	.LBB1_57
# BB#59:                                # %for.cond.209.preheader
                                        #   in Loop: Header=BB1_31 Depth=1
	testl	%r14d, %r14d
	movq	144(%rsp), %rbx         # 8-byte Reload
	je	.LBB1_65
	.align	16, 0x90
.LBB1_60:                               # %for.body.211
                                        #   Parent Loop BB1_31 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$.L.str.16, %edi
	movq	%rbx, %rsi
	callq	fputs
	decl	%r14d
	jne	.LBB1_60
	jmp	.LBB1_65
.LBB1_46:                               # %if.then.161
                                        #   in Loop: Header=BB1_31 Depth=1
	testl	%r14d, %r14d
	jle	.LBB1_67
# BB#47:                                # %if.then.165
                                        #   in Loop: Header=BB1_31 Depth=1
	movl	$.L.str.16, %edi
	movq	144(%rsp), %rsi         # 8-byte Reload
	callq	fputs
	jmp	.LBB1_67
.LBB1_62:                               # %if.then.228
                                        #   in Loop: Header=BB1_31 Depth=1
	imull	36(%rsp), %r14d         # 4-byte Folded Reload
	movl	$.L.str.14, %esi
.LBB1_64:                               # %if.end.234
                                        #   in Loop: Header=BB1_31 Depth=1
	xorl	%eax, %eax
	movq	144(%rsp), %rdi         # 8-byte Reload
	movl	%r14d, %edx
	callq	fprintf
	jmp	.LBB1_65
.LBB1_57:                               # %for.cond.217.preheader
                                        #   in Loop: Header=BB1_31 Depth=1
	testl	%r14d, %r14d
	movq	144(%rsp), %rbx         # 8-byte Reload
	je	.LBB1_65
	.align	16, 0x90
.LBB1_58:                               # %for.body.219
                                        #   Parent Loop BB1_31 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$.L.str.17, %edi
	movq	%rbx, %rsi
	callq	fputs
	decl	%r14d
	jne	.LBB1_58
.LBB1_65:                               # %if.end.234
                                        #   in Loop: Header=BB1_31 Depth=1
	xorl	%esi, %esi
	movq	56(%rsp), %rdi          # 8-byte Reload
	movq	24(%rsp), %rdx          # 8-byte Reload
	callq	memset
.LBB1_66:                               # %if.end.238
                                        #   in Loop: Header=BB1_31 Depth=1
	cmpl	$0, 88(%rsp)            # 4-byte Folded Reload
	jne	.LBB1_67
.LBB1_75:                               # %if.else.269
                                        #   in Loop: Header=BB1_31 Depth=1
	movq	%r15, 128(%rsp)         # 8-byte Spill
	cmpl	$0, 20(%rsp)            # 4-byte Folded Reload
	jne	.LBB1_76
# BB#77:                                # %if.else.274
                                        #   in Loop: Header=BB1_31 Depth=1
	subl	%r13d, %ebp
	movl	%ebp, %ebx
	movq	%r13, %rbp
	jmp	.LBB1_78
	.align	16, 0x90
.LBB1_67:                               # %if.then.241
                                        #   in Loop: Header=BB1_31 Depth=1
	movq	%r15, 128(%rsp)         # 8-byte Spill
	movl	140(%rsp), %edi         # 4-byte Reload
	movq	%r13, %rsi
	movq	56(%rsp), %rdx          # 8-byte Reload
	movq	80(%rsp), %rcx          # 8-byte Reload
	callq	gdev_pcl_mode3compress
	movl	%eax, %ebx
	movq	%r13, %rdi
	movq	%rbp, %rsi
	movq	40(%rsp), %rdx          # 8-byte Reload
	callq	gdev_pcl_mode2compress
	movl	%eax, %ebp
	movl	92(%rsp), %esi          # 4-byte Reload
	cmpl	$3, %esi
	movq	72(%rsp), %rax          # 8-byte Reload
	movl	$0, %edx
	cmovel	%edx, %eax
	cmpl	$2, %esi
	movq	64(%rsp), %rcx          # 8-byte Reload
	cmovel	%edx, %ecx
	leal	(%rax,%rbx), %eax
	leal	(%rcx,%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB1_71
# BB#68:                                # %if.then.256
                                        #   in Loop: Header=BB1_31 Depth=1
	cmpl	$3, %esi
	jne	.LBB1_70
# BB#69:                                #   in Loop: Header=BB1_31 Depth=1
	movl	$3, 92(%rsp)            # 4-byte Folded Spill
	movq	80(%rsp), %rbp          # 8-byte Reload
	jmp	.LBB1_78
.LBB1_71:                               # %if.else.262
                                        #   in Loop: Header=BB1_31 Depth=1
	cmpl	$2, %esi
	jne	.LBB1_74
# BB#72:                                #   in Loop: Header=BB1_31 Depth=1
	movl	$2, 92(%rsp)            # 4-byte Folded Spill
	jmp	.LBB1_73
.LBB1_76:                               # %if.then.272
                                        #   in Loop: Header=BB1_31 Depth=1
	movq	%r13, %rdi
	movq	%rbp, %rsi
	movq	80(%rsp), %rbp          # 8-byte Reload
	movq	%rbp, %rdx
	callq	gdev_pcl_mode2compress
	movl	%eax, %ebx
	jmp	.LBB1_78
.LBB1_70:                               # %if.then.259
                                        #   in Loop: Header=BB1_31 Depth=1
	movl	$3, 92(%rsp)            # 4-byte Folded Spill
	movl	$.L.str, %edi
	movq	144(%rsp), %rsi         # 8-byte Reload
	callq	fputs
	movq	80(%rsp), %rbp          # 8-byte Reload
	jmp	.LBB1_78
.LBB1_74:                               # %if.then.265
                                        #   in Loop: Header=BB1_31 Depth=1
	movl	$2, 92(%rsp)            # 4-byte Folded Spill
	movl	$.L.str.1, %edi
	movq	144(%rsp), %rsi         # 8-byte Reload
	callq	fputs
.LBB1_73:                               # %if.end.277
                                        #   in Loop: Header=BB1_31 Depth=1
	movl	%ebp, %ebx
	movq	40(%rsp), %rbp          # 8-byte Reload
.LBB1_78:                               # %if.end.277
                                        #   in Loop: Header=BB1_31 Depth=1
	xorl	%r14d, %r14d
	movl	$.L.str.20, %esi
	xorl	%eax, %eax
	movq	144(%rsp), %r15         # 8-byte Reload
	movq	%r15, %rdi
	movl	%ebx, %edx
	callq	fprintf
	movslq	%ebx, %rdx
	movl	$1, %esi
	movq	%rbp, %rdi
	movq	%r15, %rcx
	callq	fwrite
	movq	128(%rsp), %r15         # 8-byte Reload
.LBB1_79:                               # %for.inc.281
                                        #   in Loop: Header=BB1_31 Depth=1
	incl	%r12d
	cmpl	124(%rsp), %r12d        # 4-byte Folded Reload
	jl	.LBB1_31
	jmp	.LBB1_80
.LBB1_32:
	movl	%eax, 112(%rsp)         # 4-byte Spill
.LBB1_80:                               # %for.end.283
	movl	$.L.str.21, %edi
	movq	144(%rsp), %rsi         # 8-byte Reload
	callq	fputs
	movq	24(%r15), %rdi
	movl	$.L.str.2, %edx
	movq	%r13, %rsi
	callq	*24(%rdi)
	movl	112(%rsp), %eax         # 4-byte Reload
.LBB1_81:                               # %cleanup.288
	addq	$152, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	dljet_mono_print_page_copies, .Lfunc_end1-dljet_mono_print_page_copies
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"\033*b3M"
	.size	.L.str, 6

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"\033*b2M"
	.size	.L.str.1, 6

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"hpjet_print_page"
	.size	.L.str.2, 17

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"\033%-12345X@PJL\r\n@PJL ENTER LANGUAGE = PCL\r\n"
	.size	.L.str.3, 43

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"\033E"
	.size	.L.str.4, 3

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"\033&l%dO"
	.size	.L.str.5, 7

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"\033&l%dA"
	.size	.L.str.6, 7

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"\033&l1S"
	.size	.L.str.7, 6

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"\033&l2S"
	.size	.L.str.8, 6

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"\033&l0S"
	.size	.L.str.9, 6

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"\033&l0l0E"
	.size	.L.str.10, 8

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"\033&l%dX"
	.size	.L.str.11, 7

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"\033*rB\033*p0x0Y"
	.size	.L.str.12, 12

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"\033*t%dR"
	.size	.L.str.13, 7

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"\033*p+%dY"
	.size	.L.str.14, 8

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"\033*r1A"
	.size	.L.str.15, 6

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"\033*b0W"
	.size	.L.str.16, 6

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"\033*bW"
	.size	.L.str.17, 5

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"\033*b1Y"
	.size	.L.str.18, 6

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"\033*b%dY"
	.size	.L.str.19, 7

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"\033*b%dW"
	.size	.L.str.20, 7

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"\033*rB\f"
	.size	.L.str.21, 6


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
