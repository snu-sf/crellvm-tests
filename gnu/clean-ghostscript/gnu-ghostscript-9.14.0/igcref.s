	.text
	.file	"igcref.bc"
	.align	16, 0x90
	.type	refs_clear_marks,@function
refs_clear_marks:                       # @refs_clear_marks
	.cfi_startproc
# BB#0:                                 # %entry
	movl	%edx, %eax
	addq	%rsi, %rax
	jmp	.LBB0_1
	.align	16, 0x90
.LBB0_2:                                # %if.then
                                        #   in Loop: Header=BB0_1 Depth=1
	andl	$61439, %ecx            # imm = 0xEFFF
	movw	%cx, (%rsi)
	addq	$2, %rsi
.LBB0_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movzwl	(%rsi), %ecx
	cmpl	$16384, %ecx            # imm = 0x4000
	jae	.LBB0_2
# BB#3:                                 # %if.else
                                        #   in Loop: Header=BB0_1 Depth=1
	andl	$65534, %ecx            # imm = 0xFFFE
	movw	%cx, (%rsi)
	addq	$16, %rsi
	cmpq	%rax, %rsi
	jb	.LBB0_1
# BB#4:                                 # %for.end
	retq
.Lfunc_end0:
	.size	refs_clear_marks, .Lfunc_end0-refs_clear_marks
	.cfi_endproc

	.align	16, 0x90
	.type	refs_do_reloc,@function
refs_do_reloc:                          # @refs_do_reloc
	.cfi_startproc
# BB#0:                                 # %entry
	movl	%esi, %eax
	leaq	(%rax,%rdi), %rsi
	movq	%rcx, %rdx
	jmp	igc_reloc_refs          # TAILCALL
.Lfunc_end1:
	.size	refs_do_reloc, .Lfunc_end1-refs_do_reloc
	.cfi_endproc

	.globl	ref_struct_clear_marks
	.align	16, 0x90
	.type	ref_struct_clear_marks,@function
ref_struct_clear_marks:                 # @ref_struct_clear_marks
	.cfi_startproc
# BB#0:                                 # %entry
	movl	%edx, %eax
	testl	%edx, %edx
	je	.LBB2_7
# BB#1:                                 # %for.body.lr.ph
	leaq	(%rax,%rsi), %rcx
	leaq	16(%rsi), %rdx
	cmpq	%rdx, %rcx
	cmovaq	%rcx, %rdx
	movq	%rsi, %rcx
	notq	%rcx
	addq	%rdx, %rcx
	movl	%ecx, %edx
	shrl	$4, %edx
	incl	%edx
	testb	$7, %dl
	movq	%rsi, %rdx
	je	.LBB2_4
# BB#2:                                 # %for.body.prol.preheader
	movl	%ecx, %edi
	shrl	$4, %edi
	incl	%edi
	andl	$7, %edi
	negq	%rdi
	movq	%rsi, %rdx
	.align	16, 0x90
.LBB2_3:                                # %for.body.prol
                                        # =>This Inner Loop Header: Depth=1
	andb	$-2, (%rdx)
	addq	$16, %rdx
	incq	%rdi
	jne	.LBB2_3
.LBB2_4:                                # %for.body.lr.ph.split
	cmpq	$112, %rcx
	jb	.LBB2_7
# BB#5:
	addq	%rax, %rsi
	.align	16, 0x90
.LBB2_6:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	andb	$-2, (%rdx)
	andb	$-2, 16(%rdx)
	andb	$-2, 32(%rdx)
	andb	$-2, 48(%rdx)
	andb	$-2, 64(%rdx)
	andb	$-2, 80(%rdx)
	andb	$-2, 96(%rdx)
	andb	$-2, 112(%rdx)
	subq	$-128, %rdx
	cmpq	%rsi, %rdx
	jb	.LBB2_6
.LBB2_7:                                # %for.end
	retq
.Lfunc_end2:
	.size	ref_struct_clear_marks, .Lfunc_end2-ref_struct_clear_marks
	.cfi_endproc

	.globl	ref_struct_enum_ptrs
	.align	16, 0x90
	.type	ref_struct_enum_ptrs,@function
ref_struct_enum_ptrs:                   # @ref_struct_enum_ptrs
	.cfi_startproc
# BB#0:                                 # %entry
	movslq	%ecx, %rcx
	shrl	$4, %edx
	xorl	%eax, %eax
	cmpq	%rdx, %rcx
	jae	.LBB3_2
# BB#1:                                 # %if.end
	shlq	$4, %rcx
	addq	%rcx, %rsi
	movq	%rsi, (%r8)
	movl	$ptr_ref_procs, %eax
.LBB3_2:                                # %return
	retq
.Lfunc_end3:
	.size	ref_struct_enum_ptrs, .Lfunc_end3-ref_struct_enum_ptrs
	.cfi_endproc

	.globl	ref_struct_reloc_ptrs
	.align	16, 0x90
	.type	ref_struct_reloc_ptrs,@function
ref_struct_reloc_ptrs:                  # @ref_struct_reloc_ptrs
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
	pushq	%rbx
.Ltmp3:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp4:
	.cfi_def_cfa_offset 48
.Ltmp5:
	.cfi_offset %rbx, -40
.Ltmp6:
	.cfi_offset %r14, -32
.Ltmp7:
	.cfi_offset %r15, -24
.Ltmp8:
	.cfi_offset %rbp, -16
	movl	%esi, %ebp
	movq	%rdi, %rbx
	movl	%ebp, %r15d
	leaq	(%r15,%rbx), %r14
	movq	%r14, %rsi
	movq	%rcx, %rdx
	callq	igc_reloc_refs
	testl	%ebp, %ebp
	je	.LBB4_6
# BB#1:                                 # %for.body.lr.ph.i
	leaq	(%r15,%rbx), %rax
	leaq	16(%rbx), %rcx
	cmpq	%rcx, %rax
	cmovaq	%rax, %rcx
	movq	%rbx, %rax
	notq	%rax
	addq	%rcx, %rax
	movl	%eax, %ecx
	shrl	$4, %ecx
	incl	%ecx
	testb	$7, %cl
	je	.LBB4_4
# BB#2:                                 # %for.body.i.prol.preheader
	movl	%eax, %ecx
	shrl	$4, %ecx
	incl	%ecx
	andl	$7, %ecx
	negq	%rcx
	.align	16, 0x90
.LBB4_3:                                # %for.body.i.prol
                                        # =>This Inner Loop Header: Depth=1
	andb	$-2, (%rbx)
	addq	$16, %rbx
	incq	%rcx
	jne	.LBB4_3
.LBB4_4:                                # %for.body.lr.ph.i.split
	cmpq	$112, %rax
	jb	.LBB4_6
	.align	16, 0x90
.LBB4_5:                                # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	andb	$-2, (%rbx)
	andb	$-2, 16(%rbx)
	andb	$-2, 32(%rbx)
	andb	$-2, 48(%rbx)
	andb	$-2, 64(%rbx)
	andb	$-2, 80(%rbx)
	andb	$-2, 96(%rbx)
	andb	$-2, 112(%rbx)
	subq	$-128, %rbx
	cmpq	%r14, %rbx
	jb	.LBB4_5
.LBB4_6:                                # %ref_struct_clear_marks.exit
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end4:
	.size	ref_struct_reloc_ptrs, .Lfunc_end4-ref_struct_reloc_ptrs
	.cfi_endproc

	.globl	igc_reloc_refs
	.align	16, 0x90
	.type	igc_reloc_refs,@function
igc_reloc_refs:                         # @igc_reloc_refs
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
	subq	$24, %rsp
.Ltmp15:
	.cfi_def_cfa_offset 80
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
	movq	%rdx, %r14
	movq	%rsi, %r15
	movq	%rdi, %rbx
	cmpq	%r15, %rbx
	jae	.LBB5_95
# BB#1:                                 # %while.body.lr.ph
	movl	64(%r14), %ebp
	movl	68(%r14), %r12d
	movq	40(%r14), %rax
	movq	(%rax), %r13
	jmp	.LBB5_2
.LBB5_42:                               # %do.end.10.i.i.205
                                        #   in Loop: Header=BB5_2 Depth=1
	andl	$4095, %edx             # imm = 0xFFF
.LBB5_47:                               # %cond.false.i.i.225
                                        #   in Loop: Header=BB5_2 Depth=1
	subq	%rdx, %rcx
	movl	%edi, %edx
	addq	%rdx, %rcx
	jmp	.LBB5_48
	.align	16, 0x90
.LBB5_2:                                # %while.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_83 Depth 2
                                        #     Child Loop BB5_67 Depth 2
                                        #     Child Loop BB5_54 Depth 2
                                        #     Child Loop BB5_39 Depth 2
                                        #     Child Loop BB5_27 Depth 2
                                        #     Child Loop BB5_12 Depth 2
	movzwl	(%rbx), %eax
	cmpl	$16384, %eax            # imm = 0x4000
	jb	.LBB5_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB5_2 Depth=1
	addq	$2, %rbx
	jmp	.LBB5_94
	.align	16, 0x90
.LBB5_4:                                # %if.end
                                        #   in Loop: Header=BB5_2 Depth=1
	movl	%eax, %ecx
	andl	$12, %ecx
	cmpl	%ebp, %ecx
	jb	.LBB5_93
# BB#5:                                 # %if.end
                                        #   in Loop: Header=BB5_2 Depth=1
	andl	$1, %eax
	orl	%r12d, %eax
	je	.LBB5_93
# BB#6:                                 # %if.then.12
                                        #   in Loop: Header=BB5_2 Depth=1
	movzbl	1(%rbx), %eax
	addl	$-2, %eax
	cmpl	$18, %eax
	ja	.LBB5_93
# BB#7:                                 # %if.then.12
                                        #   in Loop: Header=BB5_2 Depth=1
	jmpq	*.LJTI5_0(,%rax,8)
.LBB5_91:                               # %sw.bb
                                        #   in Loop: Header=BB5_2 Depth=1
	movq	(%r14), %rax
	movq	8(%rbx), %rdi
	movq	%r14, %rsi
	callq	*(%rax)
	jmp	.LBB5_92
.LBB5_8:                                # %do.end.33
                                        #   in Loop: Header=BB5_2 Depth=1
	movq	8(%rbx), %rax
	movzwl	(%rax), %ecx
	xorl	%esi, %esi
	cmpl	$16384, %ecx            # imm = 0x4000
	jb	.LBB5_10
# BB#9:                                 # %if.then.i
                                        #   in Loop: Header=BB5_2 Depth=1
	testb	$16, %ch
	jmp	.LBB5_11
.LBB5_21:                               # %sw.bb.38
                                        #   in Loop: Header=BB5_2 Depth=1
	movl	4(%rbx), %eax
	testl	%eax, %eax
	je	.LBB5_93
# BB#22:                                # %if.then.42
                                        #   in Loop: Header=BB5_2 Depth=1
	cmpl	$49, %eax
	ja	.LBB5_35
# BB#23:                                # %do.end.49
                                        #   in Loop: Header=BB5_2 Depth=1
	movq	8(%rbx), %rax
	movzwl	(%rax), %ecx
	xorl	%esi, %esi
	cmpl	$16384, %ecx            # imm = 0x4000
	jb	.LBB5_25
# BB#24:                                # %if.then.i.133
                                        #   in Loop: Header=BB5_2 Depth=1
	testb	$16, %ch
	jmp	.LBB5_26
.LBB5_49:                               # %sw.bb.66
                                        #   in Loop: Header=BB5_2 Depth=1
	cmpl	$0, 4(%rbx)
	je	.LBB5_93
# BB#50:                                # %do.end.74
                                        #   in Loop: Header=BB5_2 Depth=1
	movq	8(%rbx), %rax
	movzwl	(%rax), %ecx
	xorl	%esi, %esi
	cmpl	$16384, %ecx            # imm = 0x4000
	jb	.LBB5_52
# BB#51:                                # %if.then.i.283
                                        #   in Loop: Header=BB5_2 Depth=1
	testb	$16, %ch
	jmp	.LBB5_53
.LBB5_62:                               # %sw.bb.80
                                        #   in Loop: Header=BB5_2 Depth=1
	movl	4(%rbx), %eax
	testl	%eax, %eax
	je	.LBB5_93
# BB#63:                                # %do.end.89
                                        #   in Loop: Header=BB5_2 Depth=1
	decl	%eax
	movq	8(%rbx), %rdx
	leaq	(%rdx,%rax,2), %rcx
	movzwl	(%rdx,%rax,2), %edx
	xorl	%edi, %edi
	cmpl	$16384, %edx            # imm = 0x4000
	jb	.LBB5_65
# BB#64:                                # %if.then.i.233
                                        #   in Loop: Header=BB5_2 Depth=1
	testb	$16, %dh
	jmp	.LBB5_66
.LBB5_77:                               # %sw.bb.102
                                        #   in Loop: Header=BB5_2 Depth=1
	movq	192(%r13), %rax
	movq	120(%rax), %rdi
	movq	%rbx, %rsi
	callq	names_ref_sub_table
	movl	%r12d, 4(%rsp)          # 4-byte Spill
	movq	%r14, %r12
	movq	%r13, %r14
	movq	%rax, %r13
	movq	(%r12), %rax
	movq	%r13, %rdi
	movq	%r12, %rsi
	callq	*(%rax)
	movq	8(%rbx), %rcx
	subq	%r13, %rcx
	movq	%r14, %r13
	movq	%r12, %r14
	movl	4(%rsp), %r12d          # 4-byte Reload
	addq	%rax, %rcx
	movq	%rcx, 8(%rbx)
	jmp	.LBB5_93
.LBB5_78:                               # %sw.bb.110
                                        #   in Loop: Header=BB5_2 Depth=1
	movq	8(%rbx), %rax
	movq	%rax, 8(%rsp)
	movl	4(%rbx), %eax
	movl	%eax, 16(%rsp)
	movq	(%r14), %rax
	leaq	8(%rsp), %rdi
	movq	%r14, %rsi
	callq	*8(%rax)
	movq	8(%rsp), %rax
	jmp	.LBB5_92
.LBB5_79:                               # %do.end.121
                                        #   in Loop: Header=BB5_2 Depth=1
	movq	8(%rbx), %rax
	movzwl	(%rax), %ecx
	xorl	%esi, %esi
	cmpl	$16384, %ecx            # imm = 0x4000
	jb	.LBB5_81
# BB#80:                                # %if.then.i.83
                                        #   in Loop: Header=BB5_2 Depth=1
	testb	$16, %ch
	jmp	.LBB5_82
.LBB5_10:                               # %if.else.i
                                        #   in Loop: Header=BB5_2 Depth=1
	testb	$1, %cl
.LBB5_11:                               # %if.else.i
                                        #   in Loop: Header=BB5_2 Depth=1
	movq	%rax, %rdx
	je	.LBB5_92
	jmp	.LBB5_12
	.align	16, 0x90
.LBB5_96:                               # %do.end.42.i.i
                                        #   in Loop: Header=BB5_12 Depth=2
	addq	$16, %rdx
.LBB5_12:                               # %for.cond.i.i
                                        #   Parent Loop BB5_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzwl	(%rdx), %ecx
	cmpl	$16384, %ecx            # imm = 0x4000
	jb	.LBB5_18
# BB#13:                                # %do.end.i.i
                                        #   in Loop: Header=BB5_12 Depth=2
	testb	$16, %ch
	je	.LBB5_14
# BB#17:                                # %if.else.i.i
                                        #   in Loop: Header=BB5_12 Depth=2
	addq	$2, %rdx
	jmp	.LBB5_12
	.align	16, 0x90
.LBB5_18:                               # %if.end.19.i.i
                                        #   in Loop: Header=BB5_12 Depth=2
	movzbl	1(%rdx), %ecx
	testb	$6, ref_type_properties(%rcx)
	jne	.LBB5_96
	jmp	.LBB5_19
.LBB5_14:                               # %if.then.3.i.i
                                        #   in Loop: Header=BB5_12 Depth=2
	cmpl	$28671, %ecx            # imm = 0x6FFF
	jne	.LBB5_15
# BB#16:                                # %if.end.i.i
                                        #   in Loop: Header=BB5_12 Depth=2
	addl	$8, %esi
	addq	$8, %rdx
	jmp	.LBB5_12
.LBB5_81:                               # %if.else.i.86
                                        #   in Loop: Header=BB5_2 Depth=1
	testb	$1, %cl
.LBB5_82:                               # %if.else.i.86
                                        #   in Loop: Header=BB5_2 Depth=1
	movq	%rax, %rdx
	je	.LBB5_92
	jmp	.LBB5_83
	.align	16, 0x90
.LBB5_90:                               # %do.end.42.i.i.127
                                        #   in Loop: Header=BB5_83 Depth=2
	addq	$16, %rdx
.LBB5_83:                               # %for.cond.i.i.93
                                        #   Parent Loop BB5_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzwl	(%rdx), %ecx
	cmpl	$16384, %ecx            # imm = 0x4000
	jb	.LBB5_89
# BB#84:                                # %do.end.i.i.96
                                        #   in Loop: Header=BB5_83 Depth=2
	testb	$16, %ch
	je	.LBB5_85
# BB#88:                                # %if.else.i.i.110
                                        #   in Loop: Header=BB5_83 Depth=2
	addq	$2, %rdx
	jmp	.LBB5_83
	.align	16, 0x90
.LBB5_89:                               # %if.end.19.i.i.116
                                        #   in Loop: Header=BB5_83 Depth=2
	movzbl	1(%rdx), %ecx
	testb	$6, ref_type_properties(%rcx)
	jne	.LBB5_90
	jmp	.LBB5_19
.LBB5_85:                               # %if.then.3.i.i.98
                                        #   in Loop: Header=BB5_83 Depth=2
	cmpl	$28671, %ecx            # imm = 0x6FFF
	jne	.LBB5_86
# BB#87:                                # %if.end.i.i.108
                                        #   in Loop: Header=BB5_83 Depth=2
	addl	$8, %esi
	addq	$8, %rdx
	jmp	.LBB5_83
.LBB5_35:                               # %do.end.56
                                        #   in Loop: Header=BB5_2 Depth=1
	decl	%eax
	movq	8(%rbx), %rcx
	shlq	$4, %rax
	movzwl	(%rcx,%rax), %edx
	addq	%rax, %rcx
	xorl	%edi, %edi
	cmpl	$16384, %edx            # imm = 0x4000
	jb	.LBB5_37
# BB#36:                                # %if.then.i.183
                                        #   in Loop: Header=BB5_2 Depth=1
	testb	$16, %dh
	jmp	.LBB5_38
.LBB5_52:                               # %if.else.i.286
                                        #   in Loop: Header=BB5_2 Depth=1
	testb	$1, %cl
.LBB5_53:                               # %if.else.i.286
                                        #   in Loop: Header=BB5_2 Depth=1
	movq	%rax, %rdx
	je	.LBB5_92
	jmp	.LBB5_54
	.align	16, 0x90
.LBB5_61:                               # %do.end.42.i.i.327
                                        #   in Loop: Header=BB5_54 Depth=2
	addq	$16, %rdx
.LBB5_54:                               # %for.cond.i.i.293
                                        #   Parent Loop BB5_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzwl	(%rdx), %ecx
	cmpl	$16384, %ecx            # imm = 0x4000
	jb	.LBB5_60
# BB#55:                                # %do.end.i.i.296
                                        #   in Loop: Header=BB5_54 Depth=2
	testb	$16, %ch
	je	.LBB5_56
# BB#59:                                # %if.else.i.i.310
                                        #   in Loop: Header=BB5_54 Depth=2
	addq	$2, %rdx
	jmp	.LBB5_54
	.align	16, 0x90
.LBB5_60:                               # %if.end.19.i.i.316
                                        #   in Loop: Header=BB5_54 Depth=2
	movzbl	1(%rdx), %ecx
	testb	$6, ref_type_properties(%rcx)
	jne	.LBB5_61
	jmp	.LBB5_19
.LBB5_56:                               # %if.then.3.i.i.298
                                        #   in Loop: Header=BB5_54 Depth=2
	cmpl	$28671, %ecx            # imm = 0x6FFF
	jne	.LBB5_57
# BB#58:                                # %if.end.i.i.308
                                        #   in Loop: Header=BB5_54 Depth=2
	addl	$8, %esi
	addq	$8, %rdx
	jmp	.LBB5_54
.LBB5_65:                               # %if.else.i.236
                                        #   in Loop: Header=BB5_2 Depth=1
	testb	$1, %dl
.LBB5_66:                               # %if.else.i.236
                                        #   in Loop: Header=BB5_2 Depth=1
	movq	%rcx, %rsi
	je	.LBB5_76
	jmp	.LBB5_67
	.align	16, 0x90
.LBB5_98:                               # %do.end.42.i.i.277
                                        #   in Loop: Header=BB5_67 Depth=2
	addq	$16, %rsi
.LBB5_67:                               # %for.cond.i.i.243
                                        #   Parent Loop BB5_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzwl	(%rsi), %edx
	cmpl	$16384, %edx            # imm = 0x4000
	jb	.LBB5_73
# BB#68:                                # %do.end.i.i.246
                                        #   in Loop: Header=BB5_67 Depth=2
	testb	$16, %dh
	je	.LBB5_69
# BB#72:                                # %if.else.i.i.260
                                        #   in Loop: Header=BB5_67 Depth=2
	addq	$2, %rsi
	jmp	.LBB5_67
	.align	16, 0x90
.LBB5_73:                               # %if.end.19.i.i.266
                                        #   in Loop: Header=BB5_67 Depth=2
	movzbl	1(%rsi), %edx
	testb	$6, ref_type_properties(%rdx)
	jne	.LBB5_98
	jmp	.LBB5_74
.LBB5_69:                               # %if.then.3.i.i.248
                                        #   in Loop: Header=BB5_67 Depth=2
	cmpl	$28671, %edx            # imm = 0x6FFF
	jne	.LBB5_70
# BB#71:                                # %if.end.i.i.258
                                        #   in Loop: Header=BB5_67 Depth=2
	addl	$8, %edi
	addq	$8, %rsi
	jmp	.LBB5_67
.LBB5_74:                               # %do.end.28.i.i.269
                                        #   in Loop: Header=BB5_2 Depth=1
	movl	4(%rsi), %edx
	testq	%rdx, %rdx
	jne	.LBB5_75
	jmp	.LBB5_76
.LBB5_25:                               # %if.else.i.136
                                        #   in Loop: Header=BB5_2 Depth=1
	testb	$1, %cl
.LBB5_26:                               # %if.else.i.136
                                        #   in Loop: Header=BB5_2 Depth=1
	movq	%rax, %rdx
	je	.LBB5_92
	jmp	.LBB5_27
	.align	16, 0x90
.LBB5_34:                               # %do.end.42.i.i.177
                                        #   in Loop: Header=BB5_27 Depth=2
	addq	$16, %rdx
.LBB5_27:                               # %for.cond.i.i.143
                                        #   Parent Loop BB5_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzwl	(%rdx), %ecx
	cmpl	$16384, %ecx            # imm = 0x4000
	jb	.LBB5_33
# BB#28:                                # %do.end.i.i.146
                                        #   in Loop: Header=BB5_27 Depth=2
	testb	$16, %ch
	je	.LBB5_29
# BB#32:                                # %if.else.i.i.160
                                        #   in Loop: Header=BB5_27 Depth=2
	addq	$2, %rdx
	jmp	.LBB5_27
	.align	16, 0x90
.LBB5_33:                               # %if.end.19.i.i.166
                                        #   in Loop: Header=BB5_27 Depth=2
	movzbl	1(%rdx), %ecx
	testb	$6, ref_type_properties(%rcx)
	jne	.LBB5_34
	jmp	.LBB5_19
.LBB5_29:                               # %if.then.3.i.i.148
                                        #   in Loop: Header=BB5_27 Depth=2
	cmpl	$28671, %ecx            # imm = 0x6FFF
	jne	.LBB5_30
# BB#31:                                # %if.end.i.i.158
                                        #   in Loop: Header=BB5_27 Depth=2
	addl	$8, %esi
	addq	$8, %rdx
	jmp	.LBB5_27
.LBB5_19:                               # %do.end.28.i.i
                                        #   in Loop: Header=BB5_2 Depth=1
	movl	4(%rdx), %ecx
	testq	%rcx, %rcx
	jne	.LBB5_20
	jmp	.LBB5_92
.LBB5_37:                               # %if.else.i.186
                                        #   in Loop: Header=BB5_2 Depth=1
	testb	$1, %dl
.LBB5_38:                               # %if.else.i.186
                                        #   in Loop: Header=BB5_2 Depth=1
	movq	%rcx, %rsi
	je	.LBB5_48
	jmp	.LBB5_39
	.align	16, 0x90
.LBB5_97:                               # %do.end.42.i.i.227
                                        #   in Loop: Header=BB5_39 Depth=2
	addq	$16, %rsi
.LBB5_39:                               # %for.cond.i.i.193
                                        #   Parent Loop BB5_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzwl	(%rsi), %edx
	cmpl	$16384, %edx            # imm = 0x4000
	jb	.LBB5_45
# BB#40:                                # %do.end.i.i.196
                                        #   in Loop: Header=BB5_39 Depth=2
	testb	$16, %dh
	je	.LBB5_41
# BB#44:                                # %if.else.i.i.210
                                        #   in Loop: Header=BB5_39 Depth=2
	addq	$2, %rsi
	jmp	.LBB5_39
	.align	16, 0x90
.LBB5_45:                               # %if.end.19.i.i.216
                                        #   in Loop: Header=BB5_39 Depth=2
	movzbl	1(%rsi), %edx
	testb	$6, ref_type_properties(%rdx)
	jne	.LBB5_97
	jmp	.LBB5_46
.LBB5_41:                               # %if.then.3.i.i.198
                                        #   in Loop: Header=BB5_39 Depth=2
	cmpl	$28671, %edx            # imm = 0x6FFF
	jne	.LBB5_42
# BB#43:                                # %if.end.i.i.208
                                        #   in Loop: Header=BB5_39 Depth=2
	addl	$8, %edi
	addq	$8, %rsi
	jmp	.LBB5_39
.LBB5_46:                               # %do.end.28.i.i.219
                                        #   in Loop: Header=BB5_2 Depth=1
	movl	4(%rsi), %edx
	testq	%rdx, %rdx
	jne	.LBB5_47
	jmp	.LBB5_48
.LBB5_15:                               # %do.end.10.i.i
                                        #   in Loop: Header=BB5_2 Depth=1
	andl	$4095, %ecx             # imm = 0xFFF
	jmp	.LBB5_20
.LBB5_86:                               # %do.end.10.i.i.105
                                        #   in Loop: Header=BB5_2 Depth=1
	andl	$4095, %ecx             # imm = 0xFFF
	jmp	.LBB5_20
.LBB5_70:                               # %do.end.10.i.i.255
                                        #   in Loop: Header=BB5_2 Depth=1
	andl	$4095, %edx             # imm = 0xFFF
.LBB5_75:                               # %cond.false.i.i.275
                                        #   in Loop: Header=BB5_2 Depth=1
	subq	%rdx, %rcx
	movl	%edi, %edx
	addq	%rdx, %rcx
.LBB5_76:                               # %igc_reloc_ref_ptr.exit279
                                        #   in Loop: Header=BB5_2 Depth=1
	addq	%rax, %rax
.LBB5_48:                               # %igc_reloc_ref_ptr.exit229
                                        #   in Loop: Header=BB5_2 Depth=1
	subq	%rax, %rcx
	movq	%rcx, 8(%rbx)
	jmp	.LBB5_93
.LBB5_57:                               # %do.end.10.i.i.305
                                        #   in Loop: Header=BB5_2 Depth=1
	andl	$4095, %ecx             # imm = 0xFFF
	jmp	.LBB5_20
.LBB5_30:                               # %do.end.10.i.i.155
                                        #   in Loop: Header=BB5_2 Depth=1
	andl	$4095, %ecx             # imm = 0xFFF
.LBB5_20:                               # %cond.false.i.i
                                        #   in Loop: Header=BB5_2 Depth=1
	subq	%rcx, %rax
	movl	%esi, %ecx
	addq	%rcx, %rax
.LBB5_92:                               # %igc_reloc_ref_ptr.exit129
                                        #   in Loop: Header=BB5_2 Depth=1
	movq	%rax, 8(%rbx)
	.align	16, 0x90
.LBB5_93:                               # %no_reloc
                                        #   in Loop: Header=BB5_2 Depth=1
	addq	$16, %rbx
.LBB5_94:                               # %while.cond.backedge
                                        #   in Loop: Header=BB5_2 Depth=1
	cmpq	%r15, %rbx
	jb	.LBB5_2
.LBB5_95:                               # %while.end
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end5:
	.size	igc_reloc_refs, .Lfunc_end5-igc_reloc_refs
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI5_0:
	.quad	.LBB5_8
	.quad	.LBB5_91
	.quad	.LBB5_21
	.quad	.LBB5_49
	.quad	.LBB5_62
	.quad	.LBB5_93
	.quad	.LBB5_91
	.quad	.LBB5_91
	.quad	.LBB5_91
	.quad	.LBB5_93
	.quad	.LBB5_93
	.quad	.LBB5_77
	.quad	.LBB5_93
	.quad	.LBB5_93
	.quad	.LBB5_93
	.quad	.LBB5_93
	.quad	.LBB5_78
	.quad	.LBB5_91
	.quad	.LBB5_79

	.text
	.globl	ptr_ref_unmark
	.align	16, 0x90
	.type	ptr_ref_unmark,@function
ptr_ref_unmark:                         # @ptr_ref_unmark
	.cfi_startproc
# BB#0:                                 # %entry
	movq	(%rdi), %rax
	movzwl	(%rax), %ecx
	cmpl	$16383, %ecx            # imm = 0x3FFF
	movw	$-4097, %dx             # imm = 0xFFFFFFFFFFFFEFFF
	movw	$-2, %si
	cmovaw	%dx, %si
	andl	%ecx, %esi
	movw	%si, (%rax)
	retq
.Lfunc_end6:
	.size	ptr_ref_unmark, .Lfunc_end6-ptr_ref_unmark
	.cfi_endproc

	.globl	ptr_ref_mark
	.align	16, 0x90
	.type	ptr_ref_mark,@function
ptr_ref_mark:                           # @ptr_ref_mark
	.cfi_startproc
# BB#0:                                 # %entry
	movq	(%rdi), %rcx
	movzwl	(%rcx), %edx
	xorl	%eax, %eax
	cmpl	$16384, %edx            # imm = 0x4000
	jb	.LBB7_3
# BB#1:                                 # %if.then
	testb	$16, %dh
	jne	.LBB7_6
# BB#2:                                 # %if.end
	orl	$4096, %edx             # imm = 0x1000
	jmp	.LBB7_5
.LBB7_3:                                # %if.else
	testb	$1, %dl
	jne	.LBB7_6
# BB#4:                                 # %if.end.10
	orl	$1, %edx
.LBB7_5:                                # %cleanup.17
	movw	%dx, (%rcx)
	movl	$1, %eax
.LBB7_6:                                # %cleanup.17
	retq
.Lfunc_end7:
	.size	ptr_ref_mark, .Lfunc_end7-ptr_ref_mark
	.cfi_endproc

	.globl	igc_reloc_ref_ptr
	.align	16, 0x90
	.type	igc_reloc_ref_ptr,@function
igc_reloc_ref_ptr:                      # @igc_reloc_ref_ptr
	.cfi_startproc
# BB#0:                                 # %entry
	movzwl	(%rdi), %ecx
	xorl	%eax, %eax
	cmpl	$16384, %ecx            # imm = 0x4000
	jb	.LBB8_2
# BB#1:                                 # %if.then
	testb	$16, %ch
	jmp	.LBB8_3
.LBB8_2:                                # %if.else
	testb	$1, %cl
.LBB8_3:                                # %if.else
	movq	%rdi, %rcx
	je	.LBB8_14
	jmp	.LBB8_4
	.align	16, 0x90
.LBB8_15:                               # %do.end.42.i
                                        #   in Loop: Header=BB8_4 Depth=1
	addq	$16, %rcx
.LBB8_4:                                # %for.cond.i
                                        # =>This Inner Loop Header: Depth=1
	movzwl	(%rcx), %edx
	cmpl	$16384, %edx            # imm = 0x4000
	jb	.LBB8_10
# BB#5:                                 # %do.end.i
                                        #   in Loop: Header=BB8_4 Depth=1
	testb	$16, %dh
	je	.LBB8_6
# BB#9:                                 # %if.else.i
                                        #   in Loop: Header=BB8_4 Depth=1
	addq	$2, %rcx
	jmp	.LBB8_4
	.align	16, 0x90
.LBB8_10:                               # %if.end.19.i
                                        #   in Loop: Header=BB8_4 Depth=1
	movzbl	1(%rcx), %edx
	testb	$6, ref_type_properties(%rdx)
	jne	.LBB8_15
	jmp	.LBB8_11
.LBB8_6:                                # %if.then.3.i
                                        #   in Loop: Header=BB8_4 Depth=1
	cmpl	$28671, %edx            # imm = 0x6FFF
	jne	.LBB8_7
# BB#8:                                 # %if.end.i
                                        #   in Loop: Header=BB8_4 Depth=1
	addl	$8, %eax
	addq	$8, %rcx
	jmp	.LBB8_4
.LBB8_11:                               # %do.end.28.i
	movl	4(%rcx), %ecx
	testq	%rcx, %rcx
	je	.LBB8_14
# BB#12:                                # %cond.false.i
	subq	%rcx, %rdi
.LBB8_13:                               # %cleanup
	movl	%eax, %eax
	addq	%rax, %rdi
.LBB8_14:                               # %cleanup
	movq	%rdi, %rax
	retq
.LBB8_7:                                # %do.end.10.i
	andl	$4095, %edx             # imm = 0xFFF
	subq	%rdx, %rdi
	jmp	.LBB8_13
.Lfunc_end8:
	.size	igc_reloc_ref_ptr, .Lfunc_end8-igc_reloc_ref_ptr
	.cfi_endproc

	.globl	igc_reloc_ref_ptr_nocheck
	.align	16, 0x90
	.type	igc_reloc_ref_ptr_nocheck,@function
igc_reloc_ref_ptr_nocheck:              # @igc_reloc_ref_ptr_nocheck
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	movq	%rdi, %rcx
	jmp	.LBB9_1
	.align	16, 0x90
.LBB9_12:                               # %do.end.42
                                        #   in Loop: Header=BB9_1 Depth=1
	addq	$16, %rcx
.LBB9_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movzwl	(%rcx), %edx
	cmpl	$16384, %edx            # imm = 0x4000
	jb	.LBB9_7
# BB#2:                                 # %do.end
                                        #   in Loop: Header=BB9_1 Depth=1
	testb	$16, %dh
	je	.LBB9_3
# BB#6:                                 # %if.else
                                        #   in Loop: Header=BB9_1 Depth=1
	addq	$2, %rcx
	jmp	.LBB9_1
	.align	16, 0x90
.LBB9_7:                                # %if.end.19
                                        #   in Loop: Header=BB9_1 Depth=1
	movzbl	1(%rcx), %edx
	testb	$6, ref_type_properties(%rdx)
	jne	.LBB9_12
	jmp	.LBB9_8
.LBB9_3:                                # %if.then.3
                                        #   in Loop: Header=BB9_1 Depth=1
	cmpl	$28671, %edx            # imm = 0x6FFF
	jne	.LBB9_4
# BB#5:                                 # %if.end
                                        #   in Loop: Header=BB9_1 Depth=1
	addl	$8, %eax
	addq	$8, %rcx
	jmp	.LBB9_1
.LBB9_8:                                # %do.end.28
	movl	4(%rcx), %ecx
	testq	%rcx, %rcx
	je	.LBB9_11
# BB#9:                                 # %cond.false
	subq	%rcx, %rdi
.LBB9_10:                               # %for.end
	movl	%eax, %eax
	addq	%rax, %rdi
.LBB9_11:                               # %for.end
	movq	%rdi, %rax
	retq
.LBB9_4:                                # %do.end.10
	andl	$4095, %edx             # imm = 0xFFF
	subq	%rdx, %rdi
	jmp	.LBB9_10
.Lfunc_end9:
	.size	igc_reloc_ref_ptr_nocheck, .Lfunc_end9-igc_reloc_ref_ptr_nocheck
	.cfi_endproc

	.align	16, 0x90
	.type	refs_clear_reloc,@function
refs_clear_reloc:                       # @refs_clear_reloc
	.cfi_startproc
# BB#0:                                 # %entry
	movl	%esi, %eax
	leaq	24(%rdi,%rax), %rax
	addq	$24, %rdi
	jmp	.LBB10_1
	.align	16, 0x90
.LBB10_6:                               # %if.end
                                        #   in Loop: Header=BB10_1 Depth=1
	addq	$16, %rdi
.LBB10_1:                               # %entry
                                        # =>This Inner Loop Header: Depth=1
	cmpq	%rax, %rdi
	jae	.LBB10_7
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB10_1 Depth=1
	movzwl	(%rdi), %ecx
	cmpl	$16384, %ecx            # imm = 0x4000
	jb	.LBB10_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB10_1 Depth=1
	addq	$2, %rdi
	jmp	.LBB10_1
	.align	16, 0x90
.LBB10_4:                               # %if.else
                                        #   in Loop: Header=BB10_1 Depth=1
	movzbl	1(%rdi), %ecx
	testb	$6, ref_type_properties(%rcx)
	jne	.LBB10_6
# BB#5:                                 # %do.end
                                        #   in Loop: Header=BB10_1 Depth=1
	movl	$0, 4(%rdi)
	jmp	.LBB10_6
.LBB10_7:                               # %while.end
	retq
.Lfunc_end10:
	.size	refs_clear_reloc, .Lfunc_end10-refs_clear_reloc
	.cfi_endproc

	.align	16, 0x90
	.type	refs_set_reloc,@function
refs_set_reloc:                         # @refs_set_reloc
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
.Ltmp28:
	.cfi_offset %rbx, -56
.Ltmp29:
	.cfi_offset %r12, -48
.Ltmp30:
	.cfi_offset %r13, -40
.Ltmp31:
	.cfi_offset %r14, -32
.Ltmp32:
	.cfi_offset %r15, -24
.Ltmp33:
	.cfi_offset %rbp, -16
	movl	%edx, %eax
	leaq	24(%rdi,%rax), %r10
	addq	$24, %rdi
	xorl	%eax, %eax
	cmpq	%r10, %rdi
	movl	$0, %r8d
	jae	.LBB11_14
# BB#1:
	movl	$4095, %r9d             # imm = 0xFFF
	movq	%rdi, %r11
	xorl	%r8d, %r8d
	jmp	.LBB11_2
.LBB11_4:                               # %if.then
                                        #   in Loop: Header=BB11_2 Depth=1
	testl	%ebx, %ebx
	je	.LBB11_7
# BB#5:                                 # %for.cond.preheader
                                        #   in Loop: Header=BB11_2 Depth=1
	orl	$4096, %r13d            # imm = 0x1000
	movw	%r13w, (%r11)
	orl	$4096, %r15d            # imm = 0x1000
	movw	%r15w, 2(%r11)
	orl	$4096, %r12d            # imm = 0x1000
	movw	%r12w, 4(%r11)
	orl	$4096, %r14d            # imm = 0x1000
	movw	%r14w, 6(%r11)
	jmp	.LBB11_6
.LBB11_8:                               # %if.else
                                        #   in Loop: Header=BB11_2 Depth=1
	leal	(%r8,%rsi), %ebx
	testb	$1, %r13b
	jne	.LBB11_10
# BB#9:                                 # %do.end.42
                                        #   in Loop: Header=BB11_2 Depth=1
	movw	$3072, (%r11)           # imm = 0xC00
	movl	%ebx, 4(%r11)
	addl	$16, %r8d
	jmp	.LBB11_12
.LBB11_10:                              # %do.end.52
                                        #   in Loop: Header=BB11_2 Depth=1
	movzbl	1(%r11), %ecx
	testb	$6, ref_type_properties(%rcx)
	jne	.LBB11_12
# BB#11:                                # %do.end.64
                                        #   in Loop: Header=BB11_2 Depth=1
	movl	%ebx, 4(%r11)
.LBB11_12:                              # %if.end.67
                                        #   in Loop: Header=BB11_2 Depth=1
	addq	$16, %r11
	jmp	.LBB11_13
.LBB11_7:                               # %do.end.24
                                        #   in Loop: Header=BB11_2 Depth=1
	leal	(%r8,%rsi), %ecx
	cmpl	$4095, %ecx             # imm = 0xFFF
	cmovael	%r9d, %ecx
	addl	$24576, %ecx            # imm = 0x6000
	movw	%cx, (%r11)
	addq	$8, %r11
	addl	$8, %r8d
	jmp	.LBB11_13
	.align	16, 0x90
.LBB11_2:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movzwl	(%r11), %r13d
	cmpl	$16384, %r13d           # imm = 0x4000
	jb	.LBB11_8
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB11_2 Depth=1
	movl	%r13d, %ebx
	andl	$4096, %ebx             # imm = 0x1000
	movzwl	2(%r11), %r15d
	movl	%r15d, %ebp
	andl	$4096, %ebp             # imm = 0x1000
	addl	%ebx, %ebp
	movzwl	4(%r11), %r12d
	movl	%r12d, %ecx
	andl	$4096, %ecx             # imm = 0x1000
	addl	%ebp, %ecx
	movzwl	6(%r11), %r14d
	movl	%r14d, %ebx
	andl	$4096, %ebx             # imm = 0x1000
	addl	%ecx, %ebx
	cmpl	$16384, %ebx            # imm = 0x4000
	jne	.LBB11_4
.LBB11_6:                               # %while.cond.backedge
                                        #   in Loop: Header=BB11_2 Depth=1
	addq	$8, %r11
.LBB11_13:                              # %while.cond.outer.backedge
                                        #   in Loop: Header=BB11_2 Depth=1
	cmpq	%r10, %r11
	jb	.LBB11_2
.LBB11_14:                              # %do.end.72
	cmpl	%edx, %r8d
	je	.LBB11_27
# BB#15:                                # %if.end.76
	movl	$1, %eax
	cmpl	$65536, %r8d            # imm = 0x10000
	jb	.LBB11_27
	jmp	.LBB11_16
	.align	16, 0x90
.LBB11_25:                              # %if.end.122
                                        #   in Loop: Header=BB11_16 Depth=1
	addq	$16, %rdi
.LBB11_16:                              # %while.cond.82.preheader
                                        # =>This Inner Loop Header: Depth=1
	cmpq	%r10, %rdi
	jae	.LBB11_26
# BB#17:                                # %while.body.85
                                        #   in Loop: Header=BB11_16 Depth=1
	movzwl	(%rdi), %ecx
	cmpl	$16384, %ecx            # imm = 0x4000
	jb	.LBB11_21
# BB#18:                                # %if.then.89
                                        #   in Loop: Header=BB11_16 Depth=1
	testb	$16, %ch
	jne	.LBB11_20
# BB#19:                                # %if.then.93
                                        #   in Loop: Header=BB11_16 Depth=1
	movw	$28672, (%rdi)          # imm = 0x7000
.LBB11_20:                              # %if.end.94
                                        #   in Loop: Header=BB11_16 Depth=1
	addq	$2, %rdi
	jmp	.LBB11_16
	.align	16, 0x90
.LBB11_21:                              # %if.else.96
                                        #   in Loop: Header=BB11_16 Depth=1
	testb	$1, %cl
	jne	.LBB11_23
# BB#22:                                # %if.then.103
                                        #   in Loop: Header=BB11_16 Depth=1
	movw	$3073, (%rdi)           # imm = 0xC01
	jmp	.LBB11_24
	.align	16, 0x90
.LBB11_23:                              # %if.else.108
                                        #   in Loop: Header=BB11_16 Depth=1
	movzbl	1(%rdi), %ecx
	testb	$6, ref_type_properties(%rcx)
	jne	.LBB11_25
.LBB11_24:                              # %if.then.118
                                        #   in Loop: Header=BB11_16 Depth=1
	movl	%esi, 4(%rdi)
	jmp	.LBB11_25
.LBB11_26:                              # %while.end.125
	andb	$-2, -16(%rdi)
.LBB11_27:                              # %cleanup
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end11:
	.size	refs_set_reloc, .Lfunc_end11-refs_set_reloc
	.cfi_endproc

	.align	16, 0x90
	.type	refs_compact,@function
refs_compact:                           # @refs_compact
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp34:
	.cfi_def_cfa_offset 16
.Ltmp35:
	.cfi_offset %rbx, -16
	leaq	24(%rsi), %rdi
	movl	%ecx, %eax
	cmpq	%rsi, %rdx
	je	.LBB12_1
# BB#6:                                 # %if.else.25
	movq	16(%rsi), %rbx
	movq	%rbx, 16(%rdx)
	movups	(%rsi), %xmm0
	movups	%xmm0, (%rdx)
	jmp	.LBB12_7
	.align	16, 0x90
.LBB12_5:                               # %cleanup.thread
                                        #   in Loop: Header=BB12_1 Depth=1
	andl	$65534, %ebx            # imm = 0xFFFE
	movw	%bx, (%rdi)
	addq	$16, %rdi
.LBB12_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movzwl	(%rdi), %ebx
	cmpl	$16384, %ebx            # imm = 0x4000
	jb	.LBB12_4
# BB#2:                                 # %if.then.4
                                        #   in Loop: Header=BB12_1 Depth=1
	testb	$16, %bh
	je	.LBB12_7
# BB#3:                                 # %do.end
                                        #   in Loop: Header=BB12_1 Depth=1
	andl	$61439, %ebx            # imm = 0xEFFF
	movw	%bx, (%rdi)
	addq	$2, %rdi
	jmp	.LBB12_1
	.align	16, 0x90
.LBB12_4:                               # %if.else
                                        #   in Loop: Header=BB12_1 Depth=1
	testb	$1, %bl
	jne	.LBB12_5
.LBB12_7:                               # %if.end.26
	leaq	24(%rsi,%rax), %r8
	movq	%rdi, %rax
	subq	%rsi, %rax
	addq	%rdx, %rax
	jmp	.LBB12_8
.LBB12_11:                              # %if.end.44
                                        #   in Loop: Header=BB12_8 Depth=1
	addq	$2, %rdi
	.align	16, 0x90
.LBB12_8:                               # %for.cond.28
                                        # =>This Inner Loop Header: Depth=1
	movzwl	(%rdi), %ebx
	cmpl	$16384, %ebx            # imm = 0x4000
	jae	.LBB12_9
# BB#12:                                # %if.else.46
                                        #   in Loop: Header=BB12_8 Depth=1
	testb	$1, %bl
	jne	.LBB12_13
# BB#14:                                # %if.else.63
                                        #   in Loop: Header=BB12_8 Depth=1
	addq	$16, %rdi
	cmpq	%r8, %rdi
	jb	.LBB12_8
	jmp	.LBB12_15
.LBB12_9:                               # %if.then.32
                                        #   in Loop: Header=BB12_8 Depth=1
	testb	$16, %bh
	je	.LBB12_11
# BB#10:                                # %do.end.39
                                        #   in Loop: Header=BB12_8 Depth=1
	andl	$61439, %ebx            # imm = 0xEFFF
	movw	%bx, (%rax)
	addq	$2, %rax
	jmp	.LBB12_11
.LBB12_13:                              # %if.then.52
                                        #   in Loop: Header=BB12_8 Depth=1
	movq	2(%rdi), %r9
	movq	8(%rdi), %rsi
	movq	%rsi, -10(%rsp)
	movq	%r9, -16(%rsp)
	andl	$65534, %ebx            # imm = 0xFFFE
	movw	%bx, (%rax)
	movq	-16(%rsp), %rsi
	movq	-10(%rsp), %rbx
	movq	%rbx, 8(%rax)
	movq	%rsi, 2(%rax)
	addq	$16, %rdi
	addq	$16, %rax
	jmp	.LBB12_8
.LBB12_15:                              # %for.end.71
	movq	$-8, %rdi
	subq	%rdx, %rdi
	addq	%rax, %rdi
	testb	$15, %dil
	je	.LBB12_16
	.align	16, 0x90
.LBB12_17:                              # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movl	%edi, %esi
	movw	$24576, (%rax)          # imm = 0x6000
	addq	$2, %rax
	addq	$2, %rsi
	addl	$2, %edi
	testb	$15, %dil
	movq	%rsi, %rdi
	jne	.LBB12_17
	jmp	.LBB12_18
.LBB12_16:
	movq	%rdi, %rsi
.LBB12_18:                              # %while.end
	movl	%ecx, %edi
	subl	%esi, %edi
	cmpl	$23, %edi
	jbe	.LBB12_19
# BB#21:                                # %if.else.96
	movl	$0, 16(%rax)
	addl	$-24, %edi
	movl	%edi, 20(%rax)
	movq	$st_bytes, 24(%rax)
	jmp	.LBB12_22
	.align	16, 0x90
.LBB12_20:                              # %while.body.90
                                        #   in Loop: Header=BB12_19 Depth=1
	movw	$24576, (%rax)          # imm = 0x6000
	addq	$2, %rax
	addl	$2, %esi
.LBB12_19:                              # %while.cond.87.preheader
                                        # =>This Inner Loop Header: Depth=1
	cmpl	%ecx, %esi
	jb	.LBB12_20
.LBB12_22:                              # %if.end.113
	movw	$2816, (%rax)           # imm = 0xB00
	movl	%esi, 4(%rdx)
	popq	%rbx
	retq
.Lfunc_end12:
	.size	refs_compact, .Lfunc_end12-refs_compact
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"refs"
	.size	.L.str, 5

	.type	refs_shared_procs,@object # @refs_shared_procs
	.section	.rodata,"a",@progbits
	.align	8
refs_shared_procs:
	.quad	refs_clear_reloc
	.quad	refs_set_reloc
	.quad	refs_compact
	.size	refs_shared_procs, 24

	.type	st_refs,@object         # @st_refs
	.globl	st_refs
	.align	8
st_refs:
	.long	16                      # 0x10
	.zero	4
	.quad	.L.str
	.quad	refs_shared_procs
	.quad	refs_clear_marks
	.quad	0
	.quad	refs_do_reloc
	.quad	0
	.quad	0
	.size	st_refs, 64


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
