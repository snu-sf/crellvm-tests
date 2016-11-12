	.text
	.file	"igc.bc"
	.align	16, 0x90
	.type	ptr_struct_unmark,@function
ptr_struct_unmark:                      # @ptr_struct_unmark
	.cfi_startproc
# BB#0:                                 # %entry
	movq	(%rdi), %rax
	testq	%rax, %rax
	je	.LBB0_2
# BB#1:                                 # %if.then
	orl	$-2, -24(%rax)
.LBB0_2:                                # %if.end
	retq
.Lfunc_end0:
	.size	ptr_struct_unmark, .Lfunc_end0-ptr_struct_unmark
	.cfi_endproc

	.align	16, 0x90
	.type	ptr_struct_mark,@function
ptr_struct_mark:                        # @ptr_struct_mark
	.cfi_startproc
# BB#0:                                 # %entry
	movq	(%rdi), %rcx
	xorl	%eax, %eax
	testq	%rcx, %rcx
	je	.LBB1_3
# BB#1:                                 # %if.end
	movl	-24(%rcx), %edx
	cmpl	$-2, %edx
	jb	.LBB1_3
# BB#2:                                 # %if.end.4
	andl	$1, %edx
	movl	%edx, -24(%rcx)
	movl	$1, %eax
.LBB1_3:                                # %cleanup
	retq
.Lfunc_end1:
	.size	ptr_struct_mark, .Lfunc_end1-ptr_struct_mark
	.cfi_endproc

	.align	16, 0x90
	.type	igc_reloc_struct_ptr,@function
igc_reloc_struct_ptr:                   # @igc_reloc_struct_ptr
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	testq	%rdi, %rdi
	je	.LBB2_4
# BB#1:                                 # %do.end
	movl	-24(%rdi), %eax
	shrl	%eax
	cmpl	$2147483646, %eax       # imm = 0x7FFFFFFE
	je	.LBB2_3
# BB#2:                                 # %if.else
	leaq	-24(%rdi), %rcx
	addl	%eax, %eax
	subq	%rax, %rcx
	movq	%rdi, %rdx
	subq	%rax, %rdx
	movslq	-24(%rdx), %rax
	andq	$-2, %rax
	subq	%rax, %rcx
	leaq	32(%rcx), %rax
	subq	-16(%rdx), %rdi
	subq	%rax, %rdi
	addq	(%rcx), %rdi
.LBB2_3:                                # %cleanup
	movq	%rdi, %rax
.LBB2_4:                                # %cleanup
	retq
.Lfunc_end2:
	.size	igc_reloc_struct_ptr, .Lfunc_end2-igc_reloc_struct_ptr
	.cfi_endproc

	.align	16, 0x90
	.type	ptr_string_unmark,@function
ptr_string_unmark:                      # @ptr_string_unmark
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rsi, %rax
	movq	(%rdi), %rcx
	movl	8(%rdi), %esi
	xorl	%edx, %edx
	movq	%rcx, %rdi
	movq	%rax, %rcx
	jmp	gc_string_mark          # TAILCALL
.Lfunc_end3:
	.size	ptr_string_unmark, .Lfunc_end3-ptr_string_unmark
	.cfi_endproc

	.align	16, 0x90
	.type	ptr_string_mark,@function
ptr_string_mark:                        # @ptr_string_mark
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rsi, %rax
	movq	(%rdi), %rcx
	movl	8(%rdi), %esi
	movl	$1, %edx
	movq	%rcx, %rdi
	movq	%rax, %rcx
	jmp	gc_string_mark          # TAILCALL
.Lfunc_end4:
	.size	ptr_string_mark, .Lfunc_end4-ptr_string_mark
	.cfi_endproc

	.align	16, 0x90
	.type	ptr_name_index_unmark,@function
ptr_name_index_unmark:                  # @ptr_name_index_unmark
	.cfi_startproc
# BB#0:                                 # %entry
	retq
.Lfunc_end5:
	.size	ptr_name_index_unmark, .Lfunc_end5-ptr_name_index_unmark
	.cfi_endproc

	.align	16, 0x90
	.type	ptr_name_index_mark,@function
ptr_name_index_mark:                    # @ptr_name_index_mark
	.cfi_startproc
# BB#0:                                 # %entry
	movq	72(%rsi), %rax
	movq	192(%rax), %rax
	movq	120(%rax), %rax
	movl	8(%rdi), %esi
	movq	%rax, %rdi
	jmp	names_mark_index        # TAILCALL
.Lfunc_end6:
	.size	ptr_name_index_mark, .Lfunc_end6-ptr_name_index_mark
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI7_0:
	.zero	16
	.text
	.globl	gs_gc_reclaim
	.align	16, 0x90
	.type	gs_gc_reclaim,@function
gs_gc_reclaim:                          # @gs_gc_reclaim
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
	subq	$2248, %rsp             # imm = 0x8C8
.Ltmp6:
	.cfi_def_cfa_offset 2304
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
	movl	%esi, 20(%rsp)          # 4-byte Spill
	movups	(%rdi), %xmm0
	movaps	%xmm0, 2176(%rsp)
	movq	16(%rdi), %rcx
	movq	24(%rdi), %rax
	movq	32(%rdi), %rdx
	movq	(%rcx), %rsi
	movq	%rsi, 56(%rsp)          # 8-byte Spill
	movq	%rcx, 2120(%rsp)
	movq	%rax, 2128(%rsp)
	movq	(%rax), %rsi
	movl	$2, %ebp
	cmpq	%rax, %rsi
	movl	$2, %r15d
	je	.LBB7_2
# BB#1:                                 # %if.then
	movq	%rsi, 2136(%rsp)
	movl	$3, %r15d
.LBB7_2:                                # %if.end
	movl	$8, %esi
	cmpq	%rdx, %rax
	je	.LBB7_6
# BB#3:                                 # %if.then.26
	leal	1(%r15), %ebp
	movq	%rdx, 2112(%rsp,%rbp,8)
	movq	(%rdx), %rdi
	movl	$12, %esi
	cmpq	%rdx, %rdi
	je	.LBB7_4
# BB#5:                                 # %if.then.41
	addl	$2, %r15d
	movq	%rdi, 2112(%rsp,%r15,8)
	jmp	.LBB7_6
.LBB7_4:
	movl	%ebp, %r15d
.LBB7_6:                                # %if.end.50
	movq	%rbp, 8(%rsp)           # 8-byte Spill
	cmpl	$0, 20(%rsp)            # 4-byte Folded Reload
	movl	$4, %edi
	cmovel	%esi, %edi
	movl	$1, %esi
	cmovel	%ebp, %esi
	movq	%rsi, 24(%rsp)          # 8-byte Spill
	movq	$igc_procs, 1760(%rsp)
	movq	%rax, 1768(%rsp)
	movq	$0, 1776(%rsp)
	movaps	2176(%rsp), %xmm0
	movups	%xmm0, 1784(%rsp)
	movq	%rcx, 1800(%rsp)
	movq	%rax, 1808(%rsp)
	movq	%rdx, 1816(%rsp)
	movl	%edi, 1824(%rsp)
	movl	$0, 1828(%rsp)
	movq	200(%rax), %rax
	movq	%rax, 1832(%rsp)
	movq	192(%rax), %rax
	movq	120(%rax), %rax
	movq	%rax, 1840(%rsp)
	testl	%r15d, %r15d
	jle	.LBB7_9
# BB#7:                                 # %for.body.lr.ph
	leaq	2120(%rsp), %rbx
	leaq	1888(%rsp), %rbp
	movl	%r15d, %r14d
	.align	16, 0x90
.LBB7_8:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rbx), %rdi
	movl	$.L.str, %ecx
	movq	%rbp, %rsi
	movq	%rbx, %rdx
	callq	gs_register_struct_root
	addq	$8, %rbx
	addq	$32, %rbp
	decl	%r14d
	jne	.LBB7_8
.LBB7_9:                                # %for.cond.71.preheader
	movq	24(%rsp), %rax          # 8-byte Reload
	cmpl	%r15d, %eax
	movq	%r15, 32(%rsp)          # 8-byte Spill
	jg	.LBB7_21
# BB#10:                                # %for.body.73.lr.ph
	movq	24(%rsp), %rax          # 8-byte Reload
	movslq	%eax, %r15
	movq	32(%rsp), %rax          # 8-byte Reload
	cltq
	movq	%rax, 104(%rsp)         # 8-byte Spill
	.align	16, 0x90
.LBB7_11:                               # %for.body.73
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_12 Depth 2
                                        #       Child Loop BB7_14 Depth 3
                                        #         Child Loop BB7_16 Depth 4
	movq	2112(%rsp,%r15,8), %r14
	jmp	.LBB7_12
	.align	16, 0x90
.LBB7_25:                               # %for.inc.84
                                        #   in Loop: Header=BB7_12 Depth=2
	movq	616(%r14), %r14
.LBB7_12:                               # %for.body.73
                                        #   Parent Loop BB7_11 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB7_14 Depth 3
                                        #         Child Loop BB7_16 Depth 4
	testq	%r14, %r14
	je	.LBB7_20
# BB#13:                                # %for.body.78
                                        #   in Loop: Header=BB7_12 Depth=2
	movq	288(%r14), %r13
	jmp	.LBB7_14
	.align	16, 0x90
.LBB7_24:                               # %gc_objects_clear_marks.exit
                                        #   in Loop: Header=BB7_14 Depth=3
	xorl	%esi, %esi
	movq	%r13, %rdi
	callq	gc_strings_set_marks
	movq	80(%r13), %r13
.LBB7_14:                               # %for.body.78
                                        #   Parent Loop BB7_11 Depth=1
                                        #     Parent Loop BB7_12 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB7_16 Depth 4
	testq	%r13, %r13
	je	.LBB7_25
# BB#15:                                # %for.body.81
                                        #   in Loop: Header=BB7_14 Depth=3
	movq	8(%r13), %rbp
	movq	24(%r13), %r12
	jmp	.LBB7_16
	.align	16, 0x90
.LBB7_19:                               # %if.end.i
                                        #   in Loop: Header=BB7_16 Depth=4
	addq	$31, %rbx
	movabsq	$8589934584, %rax       # imm = 0x1FFFFFFF8
	andq	%rax, %rbx
	addq	%rbx, %rbp
.LBB7_16:                               # %for.body.81
                                        #   Parent Loop BB7_11 Depth=1
                                        #     Parent Loop BB7_12 Depth=2
                                        #       Parent Loop BB7_14 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	cmpq	%r12, %rbp
	jae	.LBB7_24
# BB#17:                                # %for.body.i
                                        #   in Loop: Header=BB7_16 Depth=4
	movl	4(%rbp), %ebx
	movq	8(%rbp), %rcx
	movq	24(%rcx), %rax
	orl	$-2, (%rbp)
	testq	%rax, %rax
	je	.LBB7_19
# BB#18:                                # %if.then.i
                                        #   in Loop: Header=BB7_16 Depth=4
	leaq	24(%rbp), %rsi
	movq	%r14, %rdi
	movl	%ebx, %edx
	callq	*%rax
	jmp	.LBB7_19
	.align	16, 0x90
.LBB7_20:                               # %for.inc.87
                                        #   in Loop: Header=BB7_11 Depth=1
	cmpq	104(%rsp), %r15         # 8-byte Folded Reload
	leaq	1(%r15), %r15
	jl	.LBB7_11
.LBB7_21:                               # %for.cond.93.preheader
	xorl	%eax, %eax
	movq	%rax, 64(%rsp)          # 8-byte Spill
	movq	32(%rsp), %rax          # 8-byte Reload
	testl	%eax, %eax
	jle	.LBB7_29
# BB#22:                                # %for.body.95.lr.ph
	movq	32(%rsp), %rax          # 8-byte Reload
	leal	1(%rax), %r14d
	movl	$1, %r15d
	leaq	2208(%rsp), %r12
	leaq	1760(%rsp), %rbp
	.align	16, 0x90
.LBB7_23:                               # %for.body.95
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_27 Depth 2
	movq	2112(%rsp,%r15,8), %rax
	movq	%rax, 64(%rsp)          # 8-byte Spill
	movq	584(%rax), %rbx
	jmp	.LBB7_27
	.align	16, 0x90
.LBB7_26:                               # %for.body.100
                                        #   in Loop: Header=BB7_27 Depth=2
	movq	16(%rbx), %rax
	movq	(%rax), %rax
	movq	%rax, 2208(%rsp)
	movq	8(%rbx), %rax
	movq	%r12, %rdi
	movq	%rbp, %rsi
	callq	*(%rax)
	movq	(%rbx), %rbx
.LBB7_27:                               # %for.body.100
                                        #   Parent Loop BB7_23 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	testq	%rbx, %rbx
	jne	.LBB7_26
# BB#28:                                # %for.inc.107
                                        #   in Loop: Header=BB7_23 Depth=1
	incq	%r15
	cmpl	%r14d, %r15d
	jne	.LBB7_23
.LBB7_29:                               # %do.end.112
	cmpl	$0, 20(%rsp)            # 4-byte Folded Reload
	je	.LBB7_36
# BB#30:                                # %if.then.114
	movq	56(%rsp), %rbp          # 8-byte Reload
	movq	%rbp, %rdi
	callq	get_global_op_array
	movq	%rax, %rbx
	movq	%rbp, %rdi
	callq	get_local_op_array
	movq	%rax, %r14
	movq	1840(%rsp), %r15
	movq	%r15, %rdi
	callq	names_unmark_all
	cmpl	$0, 24(%rbx)
	je	.LBB7_33
# BB#31:                                # %for.body.lr.ph.i
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB7_32:                               # %for.body.i.292
                                        # =>This Inner Loop Header: Depth=1
	movl	%ebp, %eax
	movq	16(%rbx), %rcx
	movzwl	(%rcx,%rax,2), %esi
	movq	%r15, %rdi
	callq	names_mark_index
	incl	%ebp
	cmpl	24(%rbx), %ebp
	jb	.LBB7_32
.LBB7_33:                               # %for.cond.1.preheader.i
	cmpl	$0, 24(%r14)
	je	.LBB7_36
# BB#34:                                # %for.body.5.lr.ph.i
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB7_35:                               # %for.body.5.i
                                        # =>This Inner Loop Header: Depth=1
	movl	%ebx, %eax
	movq	16(%r14), %rcx
	movzwl	(%rcx,%rax,2), %esi
	movq	%r15, %rdi
	callq	names_mark_index
	incl	%ebx
	cmpl	24(%r14), %ebx
	jb	.LBB7_35
.LBB7_36:                               # %if.end.118
	xorl	%ebp, %ebp
	movq	32(%rsp), %rax          # 8-byte Reload
	testl	%eax, %eax
	movl	$100, 128(%rsp)
	movq	$0, 136(%rsp)
	movl	$0, 144(%rsp)
	movl	$0, 148(%rsp)
	xorps	%xmm0, %xmm0
	movaps	%xmm0, 112(%rsp)
	movl	$0, 132(%rsp)
	jle	.LBB7_54
# BB#37:                                # %for.body.124.lr.ph
	movq	32(%rsp), %r8           # 8-byte Reload
	leal	1(%r8), %r15d
	movl	$1, %eax
	movabsq	$68719476696, %rcx      # imm = 0xFFFFFFFD8
	leaq	112(%rsp), %rdx
	.align	16, 0x90
.LBB7_38:                               # %for.body.124
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_39 Depth 2
                                        #       Child Loop BB7_41 Depth 3
	movq	2112(%rsp,%rax,8), %rsi
	jmp	.LBB7_39
	.align	16, 0x90
.LBB7_50:                               # %for.inc.152
                                        #   in Loop: Header=BB7_39 Depth=2
	movq	616(%rsi), %rsi
.LBB7_39:                               # %for.body.124
                                        #   Parent Loop BB7_38 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB7_41 Depth 3
	testq	%rsi, %rsi
	je	.LBB7_46
# BB#40:                                # %for.body.129
                                        #   in Loop: Header=BB7_39 Depth=2
	movq	288(%rsi), %rdi
	jmp	.LBB7_41
	.align	16, 0x90
.LBB7_45:                               # %if.end.148
                                        #   in Loop: Header=BB7_41 Depth=3
	movq	64(%rdi), %rbp
	movq	%rbp, 168(%rdi)
	movq	8(%rdi), %rbp
	movq	%rbp, 176(%rdi)
	movq	80(%rdi), %rdi
.LBB7_41:                               # %for.body.129
                                        #   Parent Loop BB7_38 Depth=1
                                        #     Parent Loop BB7_39 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	testq	%rdi, %rdi
	je	.LBB7_50
# BB#42:                                # %for.body.133
                                        #   in Loop: Header=BB7_41 Depth=3
	movl	48(%rdi), %ebx
	movq	24(%rdi), %rbp
	subl	%ebp, %ebx
	cmpl	$840, %ebx              # imm = 0x348
	jb	.LBB7_45
# BB#43:                                # %land.lhs.true
                                        #   in Loop: Header=BB7_41 Depth=3
	cmpl	$0, 96(%rdi)
	jne	.LBB7_45
# BB#44:                                # %if.then.138
                                        #   in Loop: Header=BB7_41 Depth=3
	leaq	(%rbx,%rcx), %rbx
	shrq	$4, %rbx
	movq	$0, 8(%rbp)
	movl	%ebx, 16(%rbp)
	movq	$0, 24(%rbp)
	movl	$0, 32(%rbp)
	movl	$0, 36(%rbp)
	movq	%rbp, 120(%rsp)
	movq	%rdx, (%rbp)
	movl	$0, 20(%rbp)
	jmp	.LBB7_45
	.align	16, 0x90
.LBB7_46:                               # %for.inc.156
                                        #   in Loop: Header=BB7_38 Depth=1
	incq	%rax
	cmpl	%r15d, %eax
	jne	.LBB7_38
# BB#47:                                # %for.cond.159.preheader
	xorl	%ebp, %ebp
	testl	%r8d, %r8d
	movl	$0, %eax
	movq	%rax, 64(%rsp)          # 8-byte Spill
	jle	.LBB7_54
# BB#48:                                # %for.body.162.lr.ph
	xorl	%ebp, %ebp
	movl	$1, %r12d
	leaq	1760(%rsp), %r14
	leaq	112(%rsp), %r13
	.align	16, 0x90
.LBB7_49:                               # %for.body.162
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_52 Depth 2
	movq	2112(%rsp,%r12,8), %rax
	movq	%rax, 64(%rsp)          # 8-byte Spill
	movq	584(%rax), %rbx
	jmp	.LBB7_52
	.align	16, 0x90
.LBB7_51:                               # %do.end.172
                                        #   in Loop: Header=BB7_52 Depth=2
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movq	%r13, %rdx
	callq	gc_trace
	orl	%eax, %ebp
	movq	(%rbx), %rbx
.LBB7_52:                               # %do.end.172
                                        #   Parent Loop BB7_49 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	testq	%rbx, %rbx
	jne	.LBB7_51
# BB#53:                                # %for.inc.177
                                        #   in Loop: Header=BB7_49 Depth=1
	incq	%r12
	cmpl	%r15d, %r12d
	jne	.LBB7_49
.LBB7_54:                               # %do.end.182
	cmpl	$0, 20(%rsp)            # 4-byte Folded Reload
	jne	.LBB7_59
# BB#55:                                # %for.body.189.lr.ph
	movq	24(%rsp), %rax          # 8-byte Reload
	leal	-1(%rax), %eax
	cltq
	movq	%rax, 48(%rsp)          # 8-byte Spill
	movl	$1, %ecx
	xorl	%eax, %eax
	movq	%rax, 64(%rsp)          # 8-byte Spill
	movl	$st_refs, %esi
	.align	16, 0x90
.LBB7_56:                               # %for.body.189
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_57 Depth 2
                                        #       Child Loop BB7_62 Depth 3
                                        #         Child Loop BB7_63 Depth 4
                                        #           Child Loop BB7_66 Depth 5
                                        #             Child Loop BB7_68 Depth 6
	movq	%rcx, 72(%rsp)          # 8-byte Spill
	movq	2112(%rsp,%rcx,8), %rax
	testq	%rax, %rax
	je	.LBB7_84
	.align	16, 0x90
.LBB7_57:                               # %for.body.195
                                        #   Parent Loop BB7_56 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB7_62 Depth 3
                                        #         Child Loop BB7_63 Depth 4
                                        #           Child Loop BB7_66 Depth 5
                                        #             Child Loop BB7_68 Depth 6
	movq	288(%rax), %rcx
	testq	%rcx, %rcx
	je	.LBB7_58
# BB#61:                                # %for.body.200.lr.ph
                                        #   in Loop: Header=BB7_57 Depth=2
	movq	%rax, 96(%rsp)          # 8-byte Spill
	.align	16, 0x90
.LBB7_62:                               # %for.body.200
                                        #   Parent Loop BB7_56 Depth=1
                                        #     Parent Loop BB7_57 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB7_63 Depth 4
                                        #           Child Loop BB7_66 Depth 5
                                        #             Child Loop BB7_68 Depth 6
	movq	%rcx, 80(%rsp)          # 8-byte Spill
	movq	%rbp, 88(%rsp)          # 8-byte Spill
	movl	1824(%rsp), %eax
	movl	%eax, 104(%rsp)         # 4-byte Spill
	leaq	2200(%rsp), %rax
	movq	%rax, 2224(%rsp)
	movq	8(%rcx), %r15
	movq	24(%rcx), %rbp
	xorl	%r13d, %r13d
	jmp	.LBB7_63
	.align	16, 0x90
.LBB7_81:                               # %for.inc.i
                                        #   in Loop: Header=BB7_63 Depth=4
	addq	$31, %rbx
	movabsq	$8589934584, %rax       # imm = 0x1FFFFFFF8
	andq	%rax, %rbx
	addq	%rbx, %r15
.LBB7_63:                               # %for.body.200
                                        #   Parent Loop BB7_56 Depth=1
                                        #     Parent Loop BB7_57 Depth=2
                                        #       Parent Loop BB7_62 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB7_66 Depth 5
                                        #             Child Loop BB7_68 Depth 6
	cmpq	%rbp, %r15
	jae	.LBB7_82
# BB#64:                                # %for.body.i.303
                                        #   in Loop: Header=BB7_63 Depth=4
	movl	4(%r15), %ebx
	movq	8(%r15), %rax
	cmpq	%rsi, %rax
	je	.LBB7_65
# BB#74:                                # %if.else.25.i
                                        #   in Loop: Header=BB7_63 Depth=4
	movl	(%r15), %ecx
	movl	%ecx, %edx
	shrl	%edx
	cmpl	$2147483646, %edx       # imm = 0x7FFFFFFE
	je	.LBB7_77
# BB#75:                                # %if.else.25.i
                                        #   in Loop: Header=BB7_63 Depth=4
	cmpl	$2147483647, %edx       # imm = 0x7FFFFFFF
	je	.LBB7_81
# BB#76:                                # %if.then.39.i
                                        #   in Loop: Header=BB7_63 Depth=4
	orl	$-2, %ecx
	movl	%ecx, (%r15)
.LBB7_77:                               # %if.end.45.i
                                        #   in Loop: Header=BB7_63 Depth=4
	movl	$st_free, %ecx
	cmpq	%rcx, %rax
	je	.LBB7_81
# BB#78:                                # %if.then.52.i
                                        #   in Loop: Header=BB7_63 Depth=4
	movq	24(%rax), %rax
	movq	$ptr_struct_procs, 2216(%rsp)
	leaq	24(%r15), %rsi
	movq	%rsi, 2200(%rsp)
	testq	%rax, %rax
	je	.LBB7_80
# BB#79:                                # %if.then.61.i
                                        #   in Loop: Header=BB7_63 Depth=4
	movq	8(%r15), %rcx
	movq	96(%rsp), %rdi          # 8-byte Reload
	movl	%ebx, %edx
	callq	*%rax
.LBB7_80:                               # %if.end.66.i
                                        #   in Loop: Header=BB7_63 Depth=4
	leaq	2208(%rsp), %rdi
	leaq	1760(%rsp), %rsi
	leaq	112(%rsp), %rdx
	callq	gc_trace
	orl	%eax, %r13d
	movl	$st_refs, %esi
	jmp	.LBB7_81
	.align	16, 0x90
.LBB7_65:                               # %if.then.i.305
                                        #   in Loop: Header=BB7_63 Depth=4
	leaq	24(%r15), %r12
	leaq	24(%r15,%rbx), %r14
	movq	$ptr_ref_procs, 2216(%rsp)
	jmp	.LBB7_66
	.align	16, 0x90
.LBB7_73:                               # %if.end.i.308
                                        #   in Loop: Header=BB7_66 Depth=5
	movl	$st_refs, %esi
	addq	$16, %r12
.LBB7_66:                               # %if.then.i.305
                                        #   Parent Loop BB7_56 Depth=1
                                        #     Parent Loop BB7_57 Depth=2
                                        #       Parent Loop BB7_62 Depth=3
                                        #         Parent Loop BB7_63 Depth=4
                                        # =>        This Loop Header: Depth=5
                                        #             Child Loop BB7_68 Depth 6
	cmpq	%r14, %r12
	jae	.LBB7_81
# BB#67:                                # %while.body.lr.ph.i
                                        #   in Loop: Header=BB7_66 Depth=5
	movq	%r12, %rax
	.align	16, 0x90
.LBB7_68:                               # %while.body.i
                                        #   Parent Loop BB7_56 Depth=1
                                        #     Parent Loop BB7_57 Depth=2
                                        #       Parent Loop BB7_62 Depth=3
                                        #         Parent Loop BB7_63 Depth=4
                                        #           Parent Loop BB7_66 Depth=5
                                        # =>          This Inner Loop Header: Depth=6
	movq	%rax, %r12
	movzwl	(%r12), %eax
	cmpl	$16384, %eax            # imm = 0x4000
	jb	.LBB7_71
# BB#69:                                # %if.then.13.i
                                        #   in Loop: Header=BB7_68 Depth=6
	leaq	2(%r12), %rax
	cmpq	%r14, %rax
	jb	.LBB7_68
	jmp	.LBB7_70
	.align	16, 0x90
.LBB7_71:                               # %if.else.i
                                        #   in Loop: Header=BB7_66 Depth=5
	movq	%r12, 2200(%rsp)
	movl	%eax, %ecx
	andl	$12, %ecx
	cmpl	104(%rsp), %ecx         # 4-byte Folded Reload
	jb	.LBB7_73
# BB#72:                                # %if.then.17.i
                                        #   in Loop: Header=BB7_66 Depth=5
	andl	$65534, %eax            # imm = 0xFFFE
	movw	%ax, (%r12)
	leaq	2208(%rsp), %rdi
	leaq	1760(%rsp), %rsi
	leaq	112(%rsp), %rdx
	callq	gc_trace
	orl	%eax, %r13d
	jmp	.LBB7_73
.LBB7_70:                               # %while.cond.for.inc.loopexit_crit_edge.i
                                        #   in Loop: Header=BB7_63 Depth=4
	movq	%r12, 2200(%rsp)
	jmp	.LBB7_81
	.align	16, 0x90
.LBB7_82:                               # %gc_trace_chunk.exit
                                        #   in Loop: Header=BB7_62 Depth=3
	movq	88(%rsp), %rax          # 8-byte Reload
	orl	%r13d, %eax
	movq	%rax, %rbp
	movq	80(%rsp), %rcx          # 8-byte Reload
	movq	80(%rcx), %rcx
	testq	%rcx, %rcx
	jne	.LBB7_62
	jmp	.LBB7_83
	.align	16, 0x90
.LBB7_58:                               #   in Loop: Header=BB7_57 Depth=2
	movq	%rax, 96(%rsp)          # 8-byte Spill
.LBB7_83:                               # %for.inc.206
                                        #   in Loop: Header=BB7_57 Depth=2
	movq	96(%rsp), %rax          # 8-byte Reload
	movq	616(%rax), %rax
	testq	%rax, %rax
	movq	72(%rsp), %rcx          # 8-byte Reload
	jne	.LBB7_57
.LBB7_84:                               # %for.inc.210
                                        #   in Loop: Header=BB7_56 Depth=1
	cmpq	48(%rsp), %rcx          # 8-byte Folded Reload
	leaq	1(%rcx), %rcx
	jl	.LBB7_56
.LBB7_59:                               # %while.cond.preheader
	testl	%ebp, %ebp
	jns	.LBB7_88
# BB#60:                                # %for.cond.216.preheader.lr.ph
	movq	32(%rsp), %rax          # 8-byte Reload
	leal	1(%rax), %eax
	movl	%eax, 44(%rsp)          # 4-byte Spill
	.align	16, 0x90
.LBB7_87:                               # %for.cond.216.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_113 Depth 2
                                        #       Child Loop BB7_114 Depth 3
                                        #         Child Loop BB7_116 Depth 4
                                        #           Child Loop BB7_119 Depth 5
                                        #             Child Loop BB7_123 Depth 6
	movq	32(%rsp), %rax          # 8-byte Reload
	testl	%eax, %eax
	movl	$1, %eax
	movl	$0, 72(%rsp)            # 4-byte Folded Spill
	jle	.LBB7_88
	.align	16, 0x90
.LBB7_113:                              # %for.body.219
                                        #   Parent Loop BB7_87 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB7_114 Depth 3
                                        #         Child Loop BB7_116 Depth 4
                                        #           Child Loop BB7_119 Depth 5
                                        #             Child Loop BB7_123 Depth 6
	movq	%rax, 48(%rsp)          # 8-byte Spill
	movq	2112(%rsp,%rax,8), %rax
	jmp	.LBB7_114
	.align	16, 0x90
.LBB7_139:                              # %for.inc.236
                                        #   in Loop: Header=BB7_114 Depth=3
	movq	64(%rsp), %rax          # 8-byte Reload
	movq	616(%rax), %rax
.LBB7_114:                              # %for.body.219
                                        #   Parent Loop BB7_87 Depth=1
                                        #     Parent Loop BB7_113 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB7_116 Depth 4
                                        #           Child Loop BB7_119 Depth 5
                                        #             Child Loop BB7_123 Depth 6
	testq	%rax, %rax
	je	.LBB7_85
# BB#115:                               # %for.body.225
                                        #   in Loop: Header=BB7_114 Depth=3
	movq	%rax, 64(%rsp)          # 8-byte Spill
	movq	288(%rax), %r13
	jmp	.LBB7_116
	.align	16, 0x90
.LBB7_138:                              # %gc_rescan_chunk.exit
                                        #   in Loop: Header=BB7_116 Depth=4
	orl	%ebp, 72(%rsp)          # 4-byte Folded Spill
	movq	80(%r13), %r13
.LBB7_116:                              # %for.body.225
                                        #   Parent Loop BB7_87 Depth=1
                                        #     Parent Loop BB7_113 Depth=2
                                        #       Parent Loop BB7_114 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB7_119 Depth 5
                                        #             Child Loop BB7_123 Depth 6
	testq	%r13, %r13
	je	.LBB7_139
# BB#117:                               # %for.body.230
                                        #   in Loop: Header=BB7_116 Depth=4
	movq	168(%r13), %rax
	movq	%rax, 104(%rsp)         # 8-byte Spill
	movq	176(%r13), %rcx
	movq	%rcx, 88(%rsp)          # 8-byte Spill
	xorl	%ebp, %ebp
	cmpq	%rcx, %rax
	ja	.LBB7_138
# BB#118:                               # %if.end.i.319
                                        #   in Loop: Header=BB7_116 Depth=4
	movq	1800(%rsp), %rax
	movq	(%rax), %rax
	movq	%rax, 80(%rsp)          # 8-byte Spill
	leaq	2200(%rsp), %rax
	movq	%rax, 2224(%rsp)
	movq	64(%r13), %rax
	movq	%rax, 168(%r13)
	movq	8(%r13), %rbx
	movq	%rbx, 176(%r13)
	movq	24(%r13), %rax
	movq	%rax, 96(%rsp)          # 8-byte Spill
	xorl	%ebp, %ebp
	cmpq	%rax, %rbx
	jae	.LBB7_138
	.align	16, 0x90
.LBB7_119:                              # %for.body.i.325
                                        #   Parent Loop BB7_87 Depth=1
                                        #     Parent Loop BB7_113 Depth=2
                                        #       Parent Loop BB7_114 Depth=3
                                        #         Parent Loop BB7_116 Depth=4
                                        # =>        This Loop Header: Depth=5
                                        #             Child Loop BB7_123 Depth 6
	movl	4(%rbx), %r14d
	leaq	24(%rbx,%r14), %r12
	cmpq	104(%rsp), %r12         # 8-byte Folded Reload
	jb	.LBB7_137
# BB#120:                               # %if.else.i.327
                                        #   in Loop: Header=BB7_119 Depth=5
	leaq	24(%rbx), %r15
	cmpq	88(%rsp), %r15          # 8-byte Folded Reload
	ja	.LBB7_138
# BB#121:                               # %do.end.15.i
                                        #   in Loop: Header=BB7_119 Depth=5
	movq	8(%rbx), %rax
	movl	$st_refs, %ecx
	cmpq	%rcx, %rax
	je	.LBB7_122
# BB#131:                               # %if.else.50.i
                                        #   in Loop: Header=BB7_119 Depth=5
	cmpl	$-3, (%rbx)
	ja	.LBB7_137
# BB#132:                               # %if.then.55.i
                                        #   in Loop: Header=BB7_119 Depth=5
	movq	24(%rax), %rax
	movq	$ptr_struct_procs, 2216(%rsp)
	movq	%r15, 2200(%rsp)
	movl	(%rbx), %ecx
	movl	%ecx, %edx
	andl	$-2, %edx
	cmpl	$-4, %edx
	je	.LBB7_134
# BB#133:                               # %if.then.70.i
                                        #   in Loop: Header=BB7_119 Depth=5
	orl	$-2, %ecx
	movl	%ecx, (%rbx)
.LBB7_134:                              # %if.end.76.i
                                        #   in Loop: Header=BB7_119 Depth=5
	testq	%rax, %rax
	je	.LBB7_136
# BB#135:                               # %if.then.79.i
                                        #   in Loop: Header=BB7_119 Depth=5
	movq	2200(%rsp), %rsi
	movq	8(%rbx), %rcx
	movq	80(%rsp), %rdi          # 8-byte Reload
	movl	%r14d, %edx
	callq	*%rax
.LBB7_136:                              # %if.end.84.i
                                        #   in Loop: Header=BB7_119 Depth=5
	leaq	2208(%rsp), %rdi
	leaq	1760(%rsp), %rsi
	leaq	112(%rsp), %rdx
	callq	gc_trace
	orl	%eax, %ebp
	jmp	.LBB7_137
.LBB7_122:                              # %if.then.19.i
                                        #   in Loop: Header=BB7_119 Depth=5
	movq	$ptr_ref_procs, 2216(%rsp)
	jmp	.LBB7_123
	.align	16, 0x90
.LBB7_130:                              # %if.end.47.i
                                        #   in Loop: Header=BB7_123 Depth=6
	addq	$16, %r15
.LBB7_123:                              # %if.then.19.i
                                        #   Parent Loop BB7_87 Depth=1
                                        #     Parent Loop BB7_113 Depth=2
                                        #       Parent Loop BB7_114 Depth=3
                                        #         Parent Loop BB7_116 Depth=4
                                        #           Parent Loop BB7_119 Depth=5
                                        # =>          This Inner Loop Header: Depth=6
	cmpq	%r12, %r15
	jae	.LBB7_137
# BB#124:                               # %while.body.i.330
                                        #   in Loop: Header=BB7_123 Depth=6
	movq	%r15, 2200(%rsp)
	movzwl	(%r15), %eax
	cmpl	$16384, %eax            # imm = 0x4000
	jb	.LBB7_128
# BB#125:                               # %if.then.27.i
                                        #   in Loop: Header=BB7_123 Depth=6
	testb	$16, %ah
	je	.LBB7_127
# BB#126:                               # %if.then.29.i
                                        #   in Loop: Header=BB7_123 Depth=6
	andl	$61439, %eax            # imm = 0xEFFF
	movw	%ax, (%r15)
	leaq	2208(%rsp), %rdi
	leaq	1760(%rsp), %rsi
	leaq	112(%rsp), %rdx
	callq	gc_trace
	orl	%eax, %ebp
.LBB7_127:                              # %if.end.34.i
                                        #   in Loop: Header=BB7_123 Depth=6
	addq	$2, %r15
	jmp	.LBB7_123
	.align	16, 0x90
.LBB7_128:                              # %if.else.35.i
                                        #   in Loop: Header=BB7_123 Depth=6
	testb	$1, %al
	je	.LBB7_130
# BB#129:                               # %if.then.39.i.335
                                        #   in Loop: Header=BB7_123 Depth=6
	andl	$65534, %eax            # imm = 0xFFFE
	movw	%ax, (%r15)
	leaq	2208(%rsp), %rdi
	leaq	1760(%rsp), %rsi
	leaq	112(%rsp), %rdx
	callq	gc_trace
	orl	%eax, %ebp
	jmp	.LBB7_130
	.align	16, 0x90
.LBB7_137:                              # %for.inc.i.340
                                        #   in Loop: Header=BB7_119 Depth=5
	addq	$31, %r14
	movabsq	$8589934584, %rax       # imm = 0x1FFFFFFF8
	andq	%rax, %r14
	addq	%r14, %rbx
	cmpq	96(%rsp), %rbx          # 8-byte Folded Reload
	jb	.LBB7_119
	jmp	.LBB7_138
	.align	16, 0x90
.LBB7_85:                               # %for.inc.240
                                        #   in Loop: Header=BB7_113 Depth=2
	movq	48(%rsp), %rax          # 8-byte Reload
	incq	%rax
	cmpl	44(%rsp), %eax          # 4-byte Folded Reload
	jne	.LBB7_113
# BB#86:                                # %while.cond.loopexit
                                        #   in Loop: Header=BB7_87 Depth=1
	cmpl	$0, 72(%rsp)            # 4-byte Folded Reload
	movl	$0, %eax
	movq	%rax, 64(%rsp)          # 8-byte Spill
	js	.LBB7_87
.LBB7_88:                               # %while.cond.247.preheader
	leaq	112(%rsp), %rax
	.align	16, 0x90
.LBB7_89:                               # %while.cond.247
                                        # =>This Inner Loop Header: Depth=1
	movq	%rax, %rsi
	movq	8(%rsi), %rax
	testq	%rax, %rax
	jne	.LBB7_89
# BB#90:                                # %while.cond.253.preheader
	testq	%rsi, %rsi
	movq	32(%rsp), %r12          # 8-byte Reload
	je	.LBB7_93
	.align	16, 0x90
.LBB7_91:                               # %while.body.255
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rsi), %rbx
	cmpl	$0, 20(%rsi)
	je	.LBB7_92
# BB#140:                               # %if.then.260
                                        #   in Loop: Header=BB7_91 Depth=1
	movq	1832(%rsp), %rdi
	movl	$.L.str.1, %edx
	callq	*24(%rdi)
.LBB7_92:                               # %while.cond.253.backedge
                                        #   in Loop: Header=BB7_91 Depth=1
	testq	%rbx, %rbx
	movq	%rbx, %rsi
	jne	.LBB7_91
.LBB7_93:                               # %while.end.271
	cmpl	$0, 20(%rsp)            # 4-byte Folded Reload
	movq	8(%rsp), %rax           # 8-byte Reload
	je	.LBB7_99
# BB#94:                                # %if.then.276
	movq	1840(%rsp), %r15
	xorl	%esi, %esi
	movq	%r15, %rdi
	callq	names_next_valid_index
	movl	%eax, %ebp
	testl	%ebp, %ebp
	je	.LBB7_98
# BB#95:
	leaq	1760(%rsp), %r14
	.align	16, 0x90
.LBB7_96:                               # %while.body.i.348
                                        # =>This Inner Loop Header: Depth=1
	movl	%ebp, %eax
	shrl	$9, %eax
	shlq	$4, %rax
	movq	16424(%r15,%rax), %rax
	movl	%ebp, %ecx
	andl	$511, %ecx              # imm = 0x1FF
	shlq	$4, %rcx
	movl	(%rax,%rcx), %esi
	testl	$2097152, %esi          # imm = 0x200000
	je	.LBB7_97
# BB#141:                               # %if.then.i.349
                                        #   in Loop: Header=BB7_96 Depth=1
	testl	$1048576, %esi          # imm = 0x100000
	jne	.LBB7_143
# BB#142:                               # %land.lhs.true.i
                                        #   in Loop: Header=BB7_96 Depth=1
	movq	8(%rax,%rcx), %rdi
	shrl	$22, %esi
	movl	$1, %edx
	movq	%r14, %rcx
	callq	gc_string_mark
.LBB7_143:                              # %if.end.i.351
                                        #   in Loop: Header=BB7_96 Depth=1
	movq	%r15, %rdi
	movl	%ebp, %esi
	callq	names_index_sub_table
	movq	%rax, %rbx
	movq	%r15, %rdi
	movl	%ebp, %esi
	callq	names_index_string_sub_table
	testq	%rbx, %rbx
	je	.LBB7_146
# BB#144:                               # %if.end.i.i
                                        #   in Loop: Header=BB7_96 Depth=1
	movl	-24(%rbx), %ecx
	cmpl	$-2, %ecx
	jb	.LBB7_146
# BB#145:                               # %if.end.4.i.i
                                        #   in Loop: Header=BB7_96 Depth=1
	andl	$1, %ecx
	movl	%ecx, -24(%rbx)
.LBB7_146:                              # %ptr_struct_mark.exit.i
                                        #   in Loop: Header=BB7_96 Depth=1
	testq	%rax, %rax
	je	.LBB7_97
# BB#147:                               # %if.end.i.4.i
                                        #   in Loop: Header=BB7_96 Depth=1
	movl	-24(%rax), %ecx
	cmpl	$-2, %ecx
	jb	.LBB7_97
# BB#148:                               # %if.end.4.i.6.i
                                        #   in Loop: Header=BB7_96 Depth=1
	andl	$1, %ecx
	movl	%ecx, -24(%rax)
	.align	16, 0x90
.LBB7_97:                               # %while.cond.i.backedge
                                        #   in Loop: Header=BB7_96 Depth=1
	movq	%r15, %rdi
	movl	%ebp, %esi
	callq	names_next_valid_index
	movl	%eax, %ebp
	testl	%ebp, %ebp
	jne	.LBB7_96
.LBB7_98:                               # %gc_trace_finish.exit
	movq	1840(%rsp), %rdi
	leaq	1760(%rsp), %rsi
	callq	names_trace_finish
	movq	24(%rsp), %rax          # 8-byte Reload
.LBB7_99:                               # %for.cond.283.preheader
	cmpl	%r12d, %eax
	jg	.LBB7_102
# BB#100:                               # %for.body.286.lr.ph
	movslq	%r12d, %rbx
	movslq	%eax, %rbp
	decq	%rbp
	.align	16, 0x90
.LBB7_101:                              # %for.body.286
                                        # =>This Inner Loop Header: Depth=1
	movq	2120(%rsp,%rbp,8), %rdi
	callq	alloc_save__filter_changes
	incq	%rbp
	cmpq	%rbx, %rbp
	jl	.LBB7_101
.LBB7_102:                              # %for.cond.293.preheader
	movq	24(%rsp), %rax          # 8-byte Reload
	leal	-1(%rax), %eax
	movl	%eax, 72(%rsp)          # 4-byte Spill
	cmpl	$0, 20(%rsp)            # 4-byte Folded Reload
	jne	.LBB7_165
# BB#103:                               # %for.body.297.lr.ph
	movslq	72(%rsp), %rax          # 4-byte Folded Reload
	movq	%rax, 104(%rsp)         # 8-byte Spill
	movl	$1, %r14d
	.align	16, 0x90
.LBB7_104:                              # %for.body.297
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_105 Depth 2
                                        #       Child Loop BB7_107 Depth 3
                                        #         Child Loop BB7_109 Depth 4
	movq	2112(%rsp,%r14,8), %r15
	jmp	.LBB7_105
	.align	16, 0x90
.LBB7_163:                              # %for.inc.312
                                        #   in Loop: Header=BB7_105 Depth=2
	movq	616(%r15), %r15
.LBB7_105:                              # %for.body.297
                                        #   Parent Loop BB7_104 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB7_107 Depth 3
                                        #         Child Loop BB7_109 Depth 4
	testq	%r15, %r15
	je	.LBB7_149
# BB#106:                               # %for.body.303
                                        #   in Loop: Header=BB7_105 Depth=2
	movq	288(%r15), %r12
	jmp	.LBB7_107
	.align	16, 0x90
.LBB7_162:                              # %gc_objects_clear_marks.exit371
                                        #   in Loop: Header=BB7_107 Depth=3
	movq	80(%r12), %r12
.LBB7_107:                              # %for.body.303
                                        #   Parent Loop BB7_104 Depth=1
                                        #     Parent Loop BB7_105 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB7_109 Depth 4
	testq	%r12, %r12
	je	.LBB7_163
# BB#108:                               # %for.body.308
                                        #   in Loop: Header=BB7_107 Depth=3
	movq	8(%r12), %rbx
	movq	24(%r12), %r13
	jmp	.LBB7_109
	.align	16, 0x90
.LBB7_112:                              # %if.end.i.370
                                        #   in Loop: Header=BB7_109 Depth=4
	addq	$31, %rbp
	movabsq	$8589934584, %rax       # imm = 0x1FFFFFFF8
	andq	%rax, %rbp
	addq	%rbp, %rbx
.LBB7_109:                              # %for.body.308
                                        #   Parent Loop BB7_104 Depth=1
                                        #     Parent Loop BB7_105 Depth=2
                                        #       Parent Loop BB7_107 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	cmpq	%r13, %rbx
	jae	.LBB7_162
# BB#110:                               # %for.body.i.362
                                        #   in Loop: Header=BB7_109 Depth=4
	movl	4(%rbx), %ebp
	movq	8(%rbx), %rcx
	movq	24(%rcx), %rax
	orl	$-2, (%rbx)
	testq	%rax, %rax
	je	.LBB7_112
# BB#111:                               # %if.then.i.364
                                        #   in Loop: Header=BB7_109 Depth=4
	leaq	24(%rbx), %rsi
	movq	%r15, %rdi
	movl	%ebp, %edx
	callq	*%rax
	jmp	.LBB7_112
	.align	16, 0x90
.LBB7_149:                              # %for.inc.316
                                        #   in Loop: Header=BB7_104 Depth=1
	cmpq	104(%rsp), %r14         # 8-byte Folded Reload
	leaq	1(%r14), %r14
	jl	.LBB7_104
# BB#150:                               # %for.cond.322.preheader
	xorl	%eax, %eax
	movq	%rax, 64(%rsp)          # 8-byte Spill
	cmpl	$0, 20(%rsp)            # 4-byte Folded Reload
	jne	.LBB7_165
# BB#151:                               # %for.body.326.lr.ph
	movl	$1, %ecx
	xorl	%eax, %eax
	movq	%rax, 64(%rsp)          # 8-byte Spill
	.align	16, 0x90
.LBB7_152:                              # %for.body.326
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_153 Depth 2
                                        #       Child Loop BB7_155 Depth 3
                                        #         Child Loop BB7_158 Depth 4
	movq	%rcx, 96(%rsp)          # 8-byte Spill
	movq	2112(%rsp,%rcx,8), %r13
	jmp	.LBB7_153
	.align	16, 0x90
.LBB7_167:                              # %for.inc.341
                                        #   in Loop: Header=BB7_153 Depth=2
	movq	616(%r13), %r13
.LBB7_153:                              # %for.body.326
                                        #   Parent Loop BB7_152 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB7_155 Depth 3
                                        #         Child Loop BB7_158 Depth 4
	testq	%r13, %r13
	je	.LBB7_164
# BB#154:                               # %for.body.332
                                        #   in Loop: Header=BB7_153 Depth=2
	movq	288(%r13), %r14
	jmp	.LBB7_155
	.align	16, 0x90
.LBB7_161:                              # %gc_clear_reloc.exit
                                        #   in Loop: Header=BB7_155 Depth=3
	movl	$1, %esi
	movq	%r14, %rdi
	callq	gc_strings_set_marks
	movq	%r14, %rdi
	callq	gc_strings_clear_reloc
	movq	80(%r14), %r14
.LBB7_155:                              # %for.body.332
                                        #   Parent Loop BB7_152 Depth=1
                                        #     Parent Loop BB7_153 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB7_158 Depth 4
	testq	%r14, %r14
	je	.LBB7_167
# BB#156:                               # %for.body.337
                                        #   in Loop: Header=BB7_155 Depth=3
	movq	(%r14), %r15
	movq	8(%r14), %rax
	movq	%rax, (%r15)
	movl	8(%r15), %eax
	andl	$1, %eax
	orl	$8, %eax
	movl	%eax, 8(%r15)
	movl	$24, 12(%r15)
	movq	$0, 16(%r15)
	movq	8(%r14), %rbp
	movq	24(%r14), %r12
	cmpq	%r12, %rbp
	jae	.LBB7_161
# BB#157:                               # %for.body.lr.ph.i.375
                                        #   in Loop: Header=BB7_155 Depth=3
	addq	$8, %r15
	.align	16, 0x90
.LBB7_158:                              # %for.body.i.379
                                        #   Parent Loop BB7_152 Depth=1
                                        #     Parent Loop BB7_153 Depth=2
                                        #       Parent Loop BB7_155 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	4(%rbp), %ebx
	movq	8(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.LBB7_160
# BB#159:                               # %if.then.i.380
                                        #   in Loop: Header=BB7_158 Depth=4
	movq	%rbp, %rdi
	movl	%ebx, %esi
	callq	*(%rax)
.LBB7_160:                              # %if.end.i.386
                                        #   in Loop: Header=BB7_158 Depth=4
	movl	(%rbp), %eax
	andl	$1, %eax
	movl	%ebp, %ecx
	subl	%r15d, %ecx
	andl	$-2, %ecx
	orl	%eax, %ecx
	movl	%ecx, (%rbp)
	addq	$31, %rbx
	movabsq	$8589934584, %rax       # imm = 0x1FFFFFFF8
	andq	%rax, %rbx
	addq	%rbx, %rbp
	cmpq	%r12, %rbp
	jb	.LBB7_158
	jmp	.LBB7_161
	.align	16, 0x90
.LBB7_164:                              # %for.inc.345
                                        #   in Loop: Header=BB7_152 Depth=1
	movq	96(%rsp), %rcx          # 8-byte Reload
	cmpq	104(%rsp), %rcx         # 8-byte Folded Reload
	leaq	1(%rcx), %rcx
	jl	.LBB7_152
.LBB7_165:                              # %for.cond.352.preheader
	movq	32(%rsp), %r14          # 8-byte Reload
	movq	24(%rsp), %rax          # 8-byte Reload
	cmpl	%r14d, %eax
	jle	.LBB7_168
# BB#166:                               # %for.end.363.thread
	movq	64(%rsp), %rax          # 8-byte Reload
	movq	%rax, 1848(%rsp)
	jmp	.LBB7_183
.LBB7_168:                              # %for.body.355.lr.ph
	movslq	%r14d, %r15
	movq	%r15, 80(%rsp)          # 8-byte Spill
	movslq	%eax, %rbp
	leaq	-1(%rbp), %rbx
	.align	16, 0x90
.LBB7_169:                              # %for.body.355
                                        # =>This Inner Loop Header: Depth=1
	movq	2120(%rsp,%rbx,8), %rdi
	xorl	%esi, %esi
	callq	*184(%rdi)
	incq	%rbx
	cmpq	%r15, %rbx
	jl	.LBB7_169
# BB#170:                               # %for.end.363
	movq	24(%rsp), %rax          # 8-byte Reload
	cmpl	%r14d, %eax
	movq	64(%rsp), %rax          # 8-byte Reload
	movq	%rax, 1848(%rsp)
	jg	.LBB7_183
	.align	16, 0x90
.LBB7_171:                              # %for.body.367
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_172 Depth 2
                                        #       Child Loop BB7_174 Depth 3
                                        #         Child Loop BB7_177 Depth 4
	movq	%rbp, 88(%rsp)          # 8-byte Spill
	movq	2112(%rsp,%rbp,8), %rax
	jmp	.LBB7_172
	.align	16, 0x90
.LBB7_206:                              # %for.inc.382
                                        #   in Loop: Header=BB7_172 Depth=2
	movq	96(%rsp), %rax          # 8-byte Reload
	movq	616(%rax), %rax
.LBB7_172:                              # %for.body.367
                                        #   Parent Loop BB7_171 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB7_174 Depth 3
                                        #         Child Loop BB7_177 Depth 4
	testq	%rax, %rax
	je	.LBB7_179
# BB#173:                               # %for.body.373
                                        #   in Loop: Header=BB7_172 Depth=2
	movq	%rax, 96(%rsp)          # 8-byte Spill
	movq	288(%rax), %rbx
	jmp	.LBB7_174
	.align	16, 0x90
.LBB7_205:                              # %gc_objects_set_reloc.exit
                                        #   in Loop: Header=BB7_174 Depth=3
	movq	104(%rsp), %rbx         # 8-byte Reload
	movq	%rbx, %rdi
	callq	gc_strings_set_reloc
	movq	80(%rbx), %rbx
.LBB7_174:                              # %for.body.373
                                        #   Parent Loop BB7_171 Depth=1
                                        #     Parent Loop BB7_172 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB7_177 Depth 4
	testq	%rbx, %rbx
	je	.LBB7_206
# BB#175:                               # %for.body.378
                                        #   in Loop: Header=BB7_174 Depth=3
	movq	%rbx, 104(%rsp)         # 8-byte Spill
	movq	(%rbx), %r15
	movq	8(%rbx), %rax
	movq	%rax, (%r15)
	movl	8(%r15), %eax
	andl	$1, %eax
	orl	$8, %eax
	movl	%eax, 8(%r15)
	movl	$24, 12(%r15)
	movq	$0, 16(%r15)
	movq	8(%rbx), %rbp
	movq	24(%rbx), %r13
	cmpq	%r13, %rbp
	jae	.LBB7_205
# BB#176:                               # %for.body.lr.ph.i.397
                                        #   in Loop: Header=BB7_174 Depth=3
	leaq	8(%r15), %r14
	xorl	%r12d, %r12d
	.align	16, 0x90
.LBB7_177:                              # %for.body.i.400
                                        #   Parent Loop BB7_171 Depth=1
                                        #     Parent Loop BB7_172 Depth=2
                                        #       Parent Loop BB7_174 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	4(%rbp), %ebx
	movq	8(%rbp), %rax
	movq	16(%rax), %rcx
	testq	%rcx, %rcx
	je	.LBB7_178
# BB#197:                               # %cond.false.i
                                        #   in Loop: Header=BB7_177 Depth=4
	movq	%rbp, %rdi
	movl	%r12d, %esi
	movl	%ebx, %edx
	callq	*8(%rcx)
	testl	%eax, %eax
	je	.LBB7_198
# BB#202:                               # %cond.false.do.end.37_crit_edge.i
                                        #   in Loop: Header=BB7_177 Depth=4
	movl	(%rbp), %ecx
	jmp	.LBB7_203
	.align	16, 0x90
.LBB7_178:                              # %cond.true.i
                                        #   in Loop: Header=BB7_177 Depth=4
	movl	(%rbp), %ecx
	cmpl	$-3, %ecx
	ja	.LBB7_199
.LBB7_203:                              # %do.end.37.i
                                        #   in Loop: Header=BB7_177 Depth=4
	movl	%ebp, %eax
	subl	%r14d, %eax
	andl	$-2, %eax
	andl	$1, %ecx
	orl	%eax, %ecx
	movl	%ecx, (%rbp)
	jmp	.LBB7_204
	.align	16, 0x90
.LBB7_198:                              # %cond.false.if.then_crit_edge.i
                                        #   in Loop: Header=BB7_177 Depth=4
	movq	8(%rbp), %rax
.LBB7_199:                              # %if.then.i.407
                                        #   in Loop: Header=BB7_177 Depth=4
	leal	7(%rbx), %ecx
	andl	$-8, %ecx
	leaq	24(%r12,%rcx), %r12
	movq	48(%rax), %rax
	testq	%rax, %rax
	je	.LBB7_201
# BB#200:                               # %do.end.22.i
                                        #   in Loop: Header=BB7_177 Depth=4
	movq	1848(%rsp), %rdi
	leaq	24(%rbp), %rsi
	callq	*%rax
.LBB7_201:                              # %if.end.i.415
                                        #   in Loop: Header=BB7_177 Depth=4
	movl	%ebp, %eax
	subl	%r15d, %eax
	movl	(%rbp), %ecx
	andl	$-2, %eax
	andl	$1, %ecx
	orl	%eax, %ecx
	movl	%ecx, (%rbp)
	movq	%r12, 8(%rbp)
	movq	%rbp, %r14
.LBB7_204:                              # %if.end.52.i
                                        #   in Loop: Header=BB7_177 Depth=4
	addq	$31, %rbx
	movabsq	$8589934584, %rax       # imm = 0x1FFFFFFF8
	andq	%rax, %rbx
	addq	%rbx, %rbp
	cmpq	%r13, %rbp
	jb	.LBB7_177
	jmp	.LBB7_205
	.align	16, 0x90
.LBB7_179:                              # %for.inc.386
                                        #   in Loop: Header=BB7_171 Depth=1
	movq	80(%rsp), %r14          # 8-byte Reload
	movq	88(%rsp), %rbp          # 8-byte Reload
	cmpq	%r14, %rbp
	leaq	1(%rbp), %rbp
	jl	.LBB7_171
# BB#180:                               # %for.cond.390.preheader
	movq	32(%rsp), %rax          # 8-byte Reload
	movq	24(%rsp), %rcx          # 8-byte Reload
	cmpl	%eax, %ecx
	jg	.LBB7_183
# BB#181:                               # %for.body.393.lr.ph
	movq	24(%rsp), %rax          # 8-byte Reload
	movslq	%eax, %rbx
	decq	%rbx
	.align	16, 0x90
.LBB7_182:                              # %for.body.393
                                        # =>This Inner Loop Header: Depth=1
	movq	2120(%rsp,%rbx,8), %rdi
	movl	$1, %esi
	callq	*184(%rdi)
	incq	%rbx
	cmpq	%r14, %rbx
	jl	.LBB7_182
.LBB7_183:                              # %for.end.402
	cmpl	$0, 20(%rsp)            # 4-byte Folded Reload
	movl	$1, 1828(%rsp)
	jne	.LBB7_209
# BB#184:                               # %for.body.411.lr.ph
	movslq	72(%rsp), %rax          # 4-byte Folded Reload
	movq	%rax, 88(%rsp)          # 8-byte Spill
	movl	$1, %eax
	leaq	1760(%rsp), %r13
	.align	16, 0x90
.LBB7_185:                              # %for.body.411
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_186 Depth 2
                                        #       Child Loop BB7_188 Depth 3
                                        #         Child Loop BB7_191 Depth 4
	movq	%rax, 96(%rsp)          # 8-byte Spill
	movq	2112(%rsp,%rax,8), %rax
	jmp	.LBB7_186
	.align	16, 0x90
.LBB7_207:                              # %for.inc.426
                                        #   in Loop: Header=BB7_186 Depth=2
	movq	104(%rsp), %rax         # 8-byte Reload
	movq	616(%rax), %rax
.LBB7_186:                              # %for.body.411
                                        #   Parent Loop BB7_185 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB7_188 Depth 3
                                        #         Child Loop BB7_191 Depth 4
	testq	%rax, %rax
	je	.LBB7_208
# BB#187:                               # %for.body.417
                                        #   in Loop: Header=BB7_186 Depth=2
	movq	%rax, 104(%rsp)         # 8-byte Spill
	movq	288(%rax), %rbx
	jmp	.LBB7_188
	.align	16, 0x90
.LBB7_196:                              # %gc_do_reloc.exit
                                        #   in Loop: Header=BB7_188 Depth=3
	movq	80(%rbx), %rbx
.LBB7_188:                              # %for.body.417
                                        #   Parent Loop BB7_185 Depth=1
                                        #     Parent Loop BB7_186 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB7_191 Depth 4
	testq	%rbx, %rbx
	je	.LBB7_207
# BB#189:                               # %for.body.422
                                        #   in Loop: Header=BB7_188 Depth=3
	movq	8(%rbx), %r14
	movq	24(%rbx), %r15
	cmpq	%r15, %r14
	jae	.LBB7_196
# BB#190:                               #   in Loop: Header=BB7_188 Depth=3
	movq	(%rbx), %r12
	.align	16, 0x90
.LBB7_191:                              # %for.body.i.422
                                        #   Parent Loop BB7_185 Depth=1
                                        #     Parent Loop BB7_186 Depth=2
                                        #       Parent Loop BB7_188 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	(%r14), %eax
	movl	4(%r14), %ebp
	andl	$-2, %eax
	cmpl	$-4, %eax
	je	.LBB7_193
# BB#192:                               # %lor.lhs.false.i
                                        #   in Loop: Header=BB7_191 Depth=4
	cltq
	movq	%r14, %rcx
	subq	%r12, %rcx
	cmpq	%rcx, %rax
	je	.LBB7_195
.LBB7_193:                              # %if.then.i.429
                                        #   in Loop: Header=BB7_191 Depth=4
	movq	8(%r14), %rdx
	movq	40(%rdx), %rax
	testq	%rax, %rax
	je	.LBB7_195
# BB#194:                               # %if.then.20.i
                                        #   in Loop: Header=BB7_191 Depth=4
	leaq	24(%r14), %rdi
	movl	%ebp, %esi
	movq	%r13, %rcx
	callq	*%rax
.LBB7_195:                              # %for.inc.i.433
                                        #   in Loop: Header=BB7_191 Depth=4
	addq	$31, %rbp
	movabsq	$8589934584, %rax       # imm = 0x1FFFFFFF8
	andq	%rax, %rbp
	addq	%rbp, %r14
	cmpq	%r15, %r14
	jb	.LBB7_191
	jmp	.LBB7_196
	.align	16, 0x90
.LBB7_208:                              # %for.inc.430
                                        #   in Loop: Header=BB7_185 Depth=1
	movq	96(%rsp), %rax          # 8-byte Reload
	cmpq	88(%rsp), %rax          # 8-byte Folded Reload
	leaq	1(%rax), %rax
	jl	.LBB7_185
.LBB7_209:                              # %for.end.432
	movq	32(%rsp), %rax          # 8-byte Reload
	movq	24(%rsp), %rcx          # 8-byte Reload
	cmpl	%eax, %ecx
	movl	$0, 1828(%rsp)
	jg	.LBB7_224
# BB#210:                               # %for.body.437.lr.ph
	movq	24(%rsp), %rax          # 8-byte Reload
	movslq	%eax, %rcx
	movq	32(%rsp), %rax          # 8-byte Reload
	cltq
	movq	%rax, 88(%rsp)          # 8-byte Spill
	leaq	1760(%rsp), %r13
	.align	16, 0x90
.LBB7_211:                              # %for.body.437
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_212 Depth 2
                                        #       Child Loop BB7_214 Depth 3
                                        #         Child Loop BB7_217 Depth 4
	movq	%rcx, 96(%rsp)          # 8-byte Spill
	movq	2112(%rsp,%rcx,8), %rax
	jmp	.LBB7_212
	.align	16, 0x90
.LBB7_230:                              # %for.inc.452
                                        #   in Loop: Header=BB7_212 Depth=2
	movq	104(%rsp), %rax         # 8-byte Reload
	movq	616(%rax), %rax
.LBB7_212:                              # %for.body.437
                                        #   Parent Loop BB7_211 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB7_214 Depth 3
                                        #         Child Loop BB7_217 Depth 4
	testq	%rax, %rax
	je	.LBB7_223
# BB#213:                               # %for.body.443
                                        #   in Loop: Header=BB7_212 Depth=2
	movq	%rax, 104(%rsp)         # 8-byte Spill
	movq	288(%rax), %rbx
	jmp	.LBB7_214
	.align	16, 0x90
.LBB7_222:                              # %gc_do_reloc.exit460
                                        #   in Loop: Header=BB7_214 Depth=3
	movq	80(%rbx), %rbx
.LBB7_214:                              # %for.body.443
                                        #   Parent Loop BB7_211 Depth=1
                                        #     Parent Loop BB7_212 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB7_217 Depth 4
	testq	%rbx, %rbx
	je	.LBB7_230
# BB#215:                               # %for.body.448
                                        #   in Loop: Header=BB7_214 Depth=3
	movq	8(%rbx), %r15
	movq	24(%rbx), %r14
	cmpq	%r14, %r15
	jae	.LBB7_222
# BB#216:                               #   in Loop: Header=BB7_214 Depth=3
	movq	(%rbx), %r12
	.align	16, 0x90
.LBB7_217:                              # %for.body.i.442
                                        #   Parent Loop BB7_211 Depth=1
                                        #     Parent Loop BB7_212 Depth=2
                                        #       Parent Loop BB7_214 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	(%r15), %eax
	movl	4(%r15), %ebp
	andl	$-2, %eax
	cmpl	$-4, %eax
	je	.LBB7_219
# BB#218:                               # %lor.lhs.false.i.447
                                        #   in Loop: Header=BB7_217 Depth=4
	cltq
	movq	%r15, %rcx
	subq	%r12, %rcx
	cmpq	%rcx, %rax
	je	.LBB7_221
.LBB7_219:                              # %if.then.i.451
                                        #   in Loop: Header=BB7_217 Depth=4
	movq	8(%r15), %rdx
	movq	40(%rdx), %rax
	testq	%rax, %rax
	je	.LBB7_221
# BB#220:                               # %if.then.20.i.453
                                        #   in Loop: Header=BB7_217 Depth=4
	leaq	24(%r15), %rdi
	movl	%ebp, %esi
	movq	%r13, %rcx
	callq	*%rax
.LBB7_221:                              # %for.inc.i.459
                                        #   in Loop: Header=BB7_217 Depth=4
	addq	$31, %rbp
	movabsq	$8589934584, %rax       # imm = 0x1FFFFFFF8
	andq	%rax, %rbp
	addq	%rbp, %r15
	cmpq	%r14, %r15
	jb	.LBB7_217
	jmp	.LBB7_222
	.align	16, 0x90
.LBB7_223:                              # %for.inc.456
                                        #   in Loop: Header=BB7_211 Depth=1
	movq	96(%rsp), %rcx          # 8-byte Reload
	cmpq	88(%rsp), %rcx          # 8-byte Folded Reload
	leaq	1(%rcx), %rcx
	jl	.LBB7_211
.LBB7_224:                              # %for.cond.462.preheader
	movq	32(%rsp), %rax          # 8-byte Reload
	testl	%eax, %eax
	jle	.LBB7_232
# BB#225:                               # %for.body.465.lr.ph
	movq	32(%rsp), %rax          # 8-byte Reload
	leal	1(%rax), %r14d
	movl	$1, %r15d
	movl	$ptr_ref_procs, %r12d
	leaq	1760(%rsp), %rbx
	.align	16, 0x90
.LBB7_226:                              # %for.body.465
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_227 Depth 2
	movq	2112(%rsp,%r15,8), %rax
	movq	584(%rax), %rbp
	jmp	.LBB7_227
	.align	16, 0x90
.LBB7_242:                              # %if.else.481
                                        #   in Loop: Header=BB7_227 Depth=2
	movq	16(%rbp), %rax
	movq	(%rax), %rdi
	movq	%rbx, %rsi
	callq	*16(%rcx)
	movq	16(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	(%rbp), %rbp
.LBB7_227:                              # %for.body.465
                                        #   Parent Loop BB7_226 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	testq	%rbp, %rbp
	je	.LBB7_231
# BB#228:                               # %do.end.475
                                        #   in Loop: Header=BB7_227 Depth=2
	movq	8(%rbp), %rcx
	cmpq	%r12, %rcx
	jne	.LBB7_242
# BB#229:                               # %if.then.479
                                        #   in Loop: Header=BB7_227 Depth=2
	movq	16(%rbp), %rax
	movq	(%rax), %rdi
	leaq	16(%rdi), %rsi
	movq	%rbx, %rdx
	callq	igc_reloc_refs
	movq	(%rbp), %rbp
	jmp	.LBB7_227
	.align	16, 0x90
.LBB7_231:                              # %for.inc.493
                                        #   in Loop: Header=BB7_226 Depth=1
	incq	%r15
	cmpl	%r14d, %r15d
	jne	.LBB7_226
.LBB7_232:                              # %for.cond.499.preheader
	movq	32(%rsp), %r12          # 8-byte Reload
	movq	24(%rsp), %rax          # 8-byte Reload
	cmpl	%r12d, %eax
	jg	.LBB7_276
# BB#233:                               # %for.body.502.lr.ph
	movslq	%eax, %rcx
	movslq	%r12d, %rax
	movq	%rax, 72(%rsp)          # 8-byte Spill
	.align	16, 0x90
.LBB7_234:                              # %for.body.502
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_235 Depth 2
                                        #       Child Loop BB7_238 Depth 3
                                        #         Child Loop BB7_240 Depth 4
	movq	%rcx, 80(%rsp)          # 8-byte Spill
	movq	2112(%rsp,%rcx,8), %rbp
	jmp	.LBB7_235
	.align	16, 0x90
.LBB7_270:                              # %for.end.526
                                        #   in Loop: Header=BB7_235 Depth=2
	movq	640(%rbp), %rax
	movq	%rax, 616(%rbp)
	movq	%rbp, %rdi
	callq	ialloc_reset_free
	movq	616(%rbp), %rbp
.LBB7_235:                              # %for.body.502
                                        #   Parent Loop BB7_234 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB7_238 Depth 3
                                        #         Child Loop BB7_240 Depth 4
	testq	%rbp, %rbp
	je	.LBB7_244
# BB#236:                               # %for.body.508
                                        #   in Loop: Header=BB7_235 Depth=2
	movq	%rbp, 96(%rsp)          # 8-byte Spill
	movq	288(%rbp), %r13
	testq	%r13, %r13
	je	.LBB7_270
# BB#237:                               # %do.end.516.lr.ph
                                        #   in Loop: Header=BB7_235 Depth=2
	leaq	304(%rbp), %rax
	movq	%rax, 88(%rsp)          # 8-byte Spill
	.align	16, 0x90
.LBB7_238:                              # %do.end.516
                                        #   Parent Loop BB7_234 Depth=1
                                        #     Parent Loop BB7_235 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB7_240 Depth 4
	movq	(%r13), %r12
	movq	8(%r13), %rbp
	movq	(%r12), %rbx
	movq	24(%r13), %r15
	cmpq	%r15, %rbp
	jae	.LBB7_264
# BB#239:                               # %for.body.lr.ph.i.465
                                        #   in Loop: Header=BB7_238 Depth=3
	movq	1800(%rsp), %rax
	movq	(%rax), %rax
	movq	%rax, 104(%rsp)         # 8-byte Spill
	.align	16, 0x90
.LBB7_240:                              # %for.body.i.473
                                        #   Parent Loop BB7_234 Depth=1
                                        #     Parent Loop BB7_235 Depth=2
                                        #       Parent Loop BB7_238 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	4(%rbp), %r14d
	movslq	(%rbp), %rax
	andq	$-2, %rax
	movq	%rbp, %rcx
	subq	%r12, %rcx
	cmpq	%rcx, %rax
	jne	.LBB7_258
# BB#241:                               # %for.body.for.inc_crit_edge.i
                                        #   in Loop: Header=BB7_240 Depth=4
	addq	$31, %r14
	movabsq	$8589934584, %rax       # imm = 0x1FFFFFFF8
	andq	%rax, %r14
	jmp	.LBB7_263
	.align	16, 0x90
.LBB7_258:                              # %if.then.i.477
                                        #   in Loop: Header=BB7_240 Depth=4
	movq	8(%rbp), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.LBB7_259
# BB#261:                               # %if.else.i.482
                                        #   in Loop: Header=BB7_240 Depth=4
	movq	104(%rsp), %rdi         # 8-byte Reload
	movq	%rbp, %rsi
	movq	%rbx, %rdx
	movl	%r14d, %ecx
	callq	*16(%rax)
	jmp	.LBB7_262
.LBB7_259:                              # %if.then.14.i
                                        #   in Loop: Header=BB7_240 Depth=4
	cmpq	%rbp, %rbx
	je	.LBB7_262
# BB#260:                               # %if.then.17.i.481
                                        #   in Loop: Header=BB7_240 Depth=4
	leaq	24(%r14), %rdx
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	callq	memmove
.LBB7_262:                              # %if.end.19.i
                                        #   in Loop: Header=BB7_240 Depth=4
	addq	$31, %r14
	movabsq	$8589934584, %rax       # imm = 0x1FFFFFFF8
	andq	%rax, %r14
	addq	%r14, %rbx
.LBB7_263:                              # %for.inc.i.487
                                        #   in Loop: Header=BB7_240 Depth=4
	addq	%r14, %rbp
	cmpq	%r15, %rbp
	jb	.LBB7_240
.LBB7_264:                              # %for.end.i
                                        #   in Loop: Header=BB7_238 Depth=3
	cmpq	$0, 88(%r13)
	jne	.LBB7_267
# BB#265:                               # %land.lhs.true.i.488
                                        #   in Loop: Header=BB7_238 Depth=3
	movq	8(%r13), %rax
	cmpq	%rax, (%r12)
	je	.LBB7_267
# BB#266:                               # %select.mid
                                        #   in Loop: Header=BB7_238 Depth=3
	movq	%rax, %rbx
.LBB7_267:                              # %select.end
                                        #   in Loop: Header=BB7_238 Depth=3
	movq	96(%rsp), %rbp          # 8-byte Reload
	movq	%rbx, 24(%r13)
	movq	$0, 32(%r13)
	movq	$0, 40(%r13)
	movq	%r13, %rdi
	movq	56(%rsp), %rsi          # 8-byte Reload
	callq	gc_strings_compact
	cmpq	%r13, 488(%rbp)
	jne	.LBB7_269
# BB#268:                               # %if.then.522
                                        #   in Loop: Header=BB7_238 Depth=3
	movl	$184, %edx
	movq	88(%rsp), %rdi          # 8-byte Reload
	movq	%r13, %rsi
	callq	memcpy
.LBB7_269:                              # %for.inc.524
                                        #   in Loop: Header=BB7_238 Depth=3
	movq	80(%r13), %r13
	testq	%r13, %r13
	jne	.LBB7_238
	jmp	.LBB7_270
	.align	16, 0x90
.LBB7_244:                              # %for.inc.532
                                        #   in Loop: Header=BB7_234 Depth=1
	movq	80(%rsp), %rcx          # 8-byte Reload
	cmpq	72(%rsp), %rcx          # 8-byte Folded Reload
	leaq	1(%rcx), %rcx
	jl	.LBB7_234
# BB#245:                               # %for.cond.538.preheader
	movq	32(%rsp), %r12          # 8-byte Reload
	movq	24(%rsp), %rax          # 8-byte Reload
	cmpl	%r12d, %eax
	jg	.LBB7_276
# BB#246:                               # %for.body.541.lr.ph
	movslq	%eax, %r14
	movq	%rax, %r13
	.align	16, 0x90
.LBB7_247:                              # %for.body.541
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_248 Depth 2
                                        #       Child Loop BB7_250 Depth 3
	movq	2112(%rsp,%r14,8), %r15
	jmp	.LBB7_248
	.align	16, 0x90
.LBB7_257:                              # %gc_free_empty_chunks.exit
                                        #   in Loop: Header=BB7_248 Depth=2
	movq	616(%r15), %r15
.LBB7_248:                              # %for.body.541
                                        #   Parent Loop BB7_247 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB7_250 Depth 3
	testq	%r15, %r15
	je	.LBB7_271
# BB#249:                               # %for.body.547
                                        #   in Loop: Header=BB7_248 Depth=2
	movq	296(%r15), %rbx
	jmp	.LBB7_250
.LBB7_256:                              # %if.then.8.i
                                        #   in Loop: Header=BB7_250 Depth=3
	movq	$0, 488(%r15)
	.align	16, 0x90
.LBB7_250:                              # %for.body.547
                                        #   Parent Loop BB7_247 Depth=1
                                        #     Parent Loop BB7_248 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	testq	%rbx, %rbx
	je	.LBB7_257
# BB#251:                               # %for.body.i.493
                                        #   in Loop: Header=BB7_250 Depth=3
	movq	%rbx, %rbp
	movq	24(%rbp), %rax
	movq	72(%rbp), %rbx
	cmpq	8(%rbp), %rax
	jne	.LBB7_250
# BB#252:                               # %land.lhs.true.i.495
                                        #   in Loop: Header=BB7_250 Depth=3
	movq	48(%rbp), %rax
	cmpq	56(%rbp), %rax
	jne	.LBB7_250
# BB#253:                               # %land.lhs.true.3.i
                                        #   in Loop: Header=BB7_250 Depth=3
	cmpq	$0, 88(%rbp)
	jne	.LBB7_250
# BB#254:                               # %land.lhs.true.5.i
                                        #   in Loop: Header=BB7_250 Depth=3
	cmpl	$0, 96(%rbp)
	jne	.LBB7_250
# BB#255:                               # %if.then.i.499
                                        #   in Loop: Header=BB7_250 Depth=3
	movq	%rbp, %rdi
	movq	%r15, %rsi
	callq	alloc_free_chunk
	cmpq	%rbp, 488(%r15)
	jne	.LBB7_250
	jmp	.LBB7_256
	.align	16, 0x90
.LBB7_271:                              # %for.inc.552
                                        #   in Loop: Header=BB7_247 Depth=1
	cmpq	72(%rsp), %r14          # 8-byte Folded Reload
	leaq	1(%r14), %r14
	jl	.LBB7_247
# BB#272:                               # %for.cond.558.preheader
	cmpl	%r12d, %r13d
	jg	.LBB7_276
# BB#273:                               # %for.body.561.lr.ph
	movslq	%r13d, %r14
	leaq	2208(%rsp), %r15
	.align	16, 0x90
.LBB7_274:                              # %for.body.561
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_280 Depth 2
                                        #     Child Loop BB7_282 Depth 2
	movq	2112(%rsp,%r14,8), %rax
	movq	616(%rax), %rax
	testq	%rax, %rax
	movl	$0, %ecx
	je	.LBB7_275
	.align	16, 0x90
.LBB7_280:                              # %for.body.570
                                        #   Parent Loop BB7_274 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rax, %rbp
	movq	616(%rbp), %rax
	movq	%rcx, 616(%rbp)
	testq	%rax, %rax
	movq	%rbp, %rcx
	jne	.LBB7_280
# BB#281:                               # %for.body.580.lr.ph
                                        #   in Loop: Header=BB7_274 Depth=1
	xorps	%xmm0, %xmm0
	movaps	%xmm0, 2208(%rsp)
	xorl	%eax, %eax
	.align	16, 0x90
.LBB7_282:                              # %for.body.580
                                        #   Parent Loop BB7_274 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	616(%rbp), %rbx
	movq	%rax, 616(%rbp)
	movq	2224(%rsp), %rax
	movq	%rax, 664(%rbp)
	movaps	2208(%rsp), %xmm0
	movups	%xmm0, 648(%rbp)
	movq	%rbp, %rdi
	movq	%r15, %rsi
	callq	*40(%rbp)
	movq	2208(%rsp), %rax
	addq	512(%rbp), %rax
	movq	%rax, 520(%rbp)
	testq	%rbx, %rbx
	movq	%rbp, %rax
	movq	%rbx, %rbp
	jne	.LBB7_282
	jmp	.LBB7_283
	.align	16, 0x90
.LBB7_275:                              # %for.end.576.thread
                                        #   in Loop: Header=BB7_274 Depth=1
	xorps	%xmm0, %xmm0
	movaps	%xmm0, 2208(%rsp)
.LBB7_283:                              # %for.end.591
                                        #   in Loop: Header=BB7_274 Depth=1
	movq	2112(%rsp,%r14,8), %rax
	movq	2224(%rsp), %rcx
	movq	%rcx, 664(%rax)
	movaps	2208(%rsp), %xmm0
	movups	%xmm0, 648(%rax)
	movq	2208(%rsp), %rcx
	addq	512(%rax), %rcx
	movq	%rcx, 520(%rax)
	cmpq	72(%rsp), %r14          # 8-byte Folded Reload
	leaq	1(%r14), %r14
	jl	.LBB7_274
.LBB7_276:                              # %for.cond.608.preheader
	testl	%r12d, %r12d
	jle	.LBB7_279
# BB#277:                               # %for.body.611.lr.ph
	leaq	2120(%rsp), %rbp
	leaq	1888(%rsp), %rbx
	.align	16, 0x90
.LBB7_278:                              # %for.body.611
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rbp), %rdi
	movl	$.L.str, %edx
	movq	%rbx, %rsi
	callq	*176(%rdi)
	addq	$8, %rbp
	addq	$32, %rbx
	decl	%r12d
	jne	.LBB7_278
.LBB7_279:                              # %do.end.624
	addq	$2248, %rsp             # imm = 0x8C8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gs_gc_reclaim, .Lfunc_end7-gs_gc_reclaim
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI8_0:
	.zero	16
	.text
	.align	16, 0x90
	.type	gc_trace,@function
gc_trace:                               # @gc_trace
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
	subq	$88, %rsp
.Ltmp19:
	.cfi_def_cfa_offset 144
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
	movq	%rdx, %rbp
	movl	16(%rbp), %r14d
	movq	16(%rdi), %rax
	movq	(%rax), %rbx
	xorl	%eax, %eax
	testq	%rbx, %rbx
	je	.LBB8_18
# BB#1:                                 # %if.end
	movl	64(%rsi), %r13d
	movl	%r13d, 20(%rsp)         # 4-byte Spill
	shlq	$4, %r14
	movq	80(%rsi), %rcx
	movq	%rcx, 40(%rsp)          # 8-byte Spill
	movq	%rbx, 40(%rbp)
	movq	8(%rdi), %rcx
	movl	$ptr_ref_procs, %edx
	cmpq	%rdx, %rcx
	je	.LBB8_2
# BB#3:                                 # %if.else
	movl	$0, 48(%rbp)
	movl	$0, 52(%rbp)
	movq	%rbx, 72(%rsp)
	leaq	72(%rsp), %rdi
	movq	%rsi, 56(%rsp)          # 8-byte Spill
	callq	*8(%rcx)
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %eax
	movl	%eax, 52(%rsp)          # 4-byte Spill
	jmp	.LBB8_4
.LBB8_2:                                # %if.then.4
	movq	%rsi, 56(%rsp)          # 8-byte Spill
	movabsq	$4294967297, %rax       # imm = 0x100000001
	movq	%rax, 48(%rbp)
	movl	$0, 52(%rsp)            # 4-byte Folded Spill
.LBB8_4:                                # %for.cond.preheader
	movq	%rbp, 32(%rsp)          # 8-byte Spill
	leaq	40(%rbp), %r15
	leaq	8(%rbp,%r14), %rax
	movq	%rax, 64(%rsp)          # 8-byte Spill
	jmp	.LBB8_5
	.align	16, 0x90
.LBB8_41:                               # %cleanup.240.thread153
                                        #   in Loop: Header=BB8_5 Depth=1
	movl	%r12d, 52(%rsp)         # 4-byte Spill
	addq	$-16, %r15
.LBB8_5:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_10 Depth 2
                                        #       Child Loop BB8_11 Depth 3
                                        #         Child Loop BB8_12 Depth 4
                                        #     Child Loop BB8_34 Depth 2
	cmpl	$0, 12(%r15)
	jne	.LBB8_32
.LBB8_6:                                # %do_struct.preheader
                                        #   in Loop: Header=BB8_5 Depth=1
	movq	(%r15), %rbx
	testq	%rbx, %rbx
	je	.LBB8_16
# BB#7:                                 # %do.end.32.preheader.preheader
                                        #   in Loop: Header=BB8_5 Depth=1
	movq	-16(%rbx), %r9
	movq	32(%r9), %rbp
	movl	$gs_no_struct_enum_ptrs, %eax
	cmpq	%rax, %rbp
	je	.LBB8_8
# BB#9:                                 #   in Loop: Header=BB8_5 Depth=1
	leaq	-16(%rbx), %r13
.LBB8_10:                               # %lor.lhs.false.lr.ph.lr.ph
                                        #   Parent Loop BB8_5 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB8_11 Depth 3
                                        #         Child Loop BB8_12 Depth 4
	movl	52(%rsp), %ecx          # 4-byte Reload
.LBB8_11:                               # %lor.lhs.false.lr.ph
                                        #   Parent Loop BB8_5 Depth=1
                                        #     Parent Loop BB8_10 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB8_12 Depth 4
	movl	%ecx, %r14d
	movl	8(%r15), %ecx
	.align	16, 0x90
.LBB8_12:                               # %lor.lhs.false
                                        #   Parent Loop BB8_5 Depth=1
                                        #     Parent Loop BB8_10 Depth=2
                                        #       Parent Loop BB8_11 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movq	56(%rsp), %rsi          # 8-byte Reload
	movq	40(%rsi), %rax
	movq	(%rax), %rdi
	movl	-20(%rbx), %edx
	movq	%rsi, (%rsp)
	movq	%rbx, %rsi
	leaq	72(%rsp), %r8
	callq	*%rbp
	movq	%rax, %rdx
	testq	%rdx, %rdx
	je	.LBB8_24
# BB#13:                                # %if.end.50
                                        #   in Loop: Header=BB8_12 Depth=4
	movq	72(%rsp), %r12
	movl	8(%r15), %ecx
	incl	%ecx
	movl	%ecx, 8(%r15)
	movl	$ptr_struct_procs, %eax
	cmpq	%rax, %rdx
	jne	.LBB8_25
# BB#14:                                # %if.then.57
                                        #   in Loop: Header=BB8_12 Depth=4
	cmpq	64(%rsp), %r15          # 8-byte Folded Reload
	movq	$0, 24(%r15)
	je	.LBB8_15
# BB#20:                                # %if.end.64
                                        #   in Loop: Header=BB8_12 Depth=4
	testq	%r12, %r12
	je	.LBB8_21
# BB#22:                                # %if.end.i
                                        #   in Loop: Header=BB8_12 Depth=4
	movl	-24(%r12), %eax
	cmpl	$-2, %eax
	jae	.LBB8_23
.LBB8_21:                               # %do.end.32.backedge
                                        #   in Loop: Header=BB8_12 Depth=4
	movq	(%r13), %r9
	movq	32(%r9), %rbp
	movl	$gs_no_struct_enum_ptrs, %eax
	cmpq	%rax, %rbp
	jne	.LBB8_12
	jmp	.LBB8_24
	.align	16, 0x90
.LBB8_25:                               # %if.else.72
                                        #   in Loop: Header=BB8_11 Depth=3
	movl	$ptr_ref_procs, %eax
	cmpq	%rax, %rdx
	je	.LBB8_26
# BB#29:                                # %if.else.85
                                        #   in Loop: Header=BB8_11 Depth=3
	leaq	72(%rsp), %rdi
	movq	56(%rsp), %rsi          # 8-byte Reload
	callq	*8(%rdx)
	testl	%eax, %eax
	setne	%al
	movzbl	%al, %ecx
	orl	%r14d, %ecx
	movq	(%r13), %r9
	movq	32(%r9), %rbp
	movl	$gs_no_struct_enum_ptrs, %eax
	cmpq	%rax, %rbp
	jne	.LBB8_11
	jmp	.LBB8_30
.LBB8_23:                               # %cleanup.thread151
                                        #   in Loop: Header=BB8_10 Depth=2
	andl	$1, %eax
	movl	%eax, -24(%r12)
	orl	$1, %r14d
	movq	%r12, 16(%r15)
	addq	$16, %r15
	movq	-16(%r12), %r9
	movq	%r12, %r13
	addq	$-16, %r13
	movq	32(%r9), %rbp
	movl	$gs_no_struct_enum_ptrs, %eax
	cmpq	%rax, %rbp
	movl	%r14d, 52(%rsp)         # 4-byte Spill
	movq	%r12, %rbx
	jne	.LBB8_10
	jmp	.LBB8_24
.LBB8_16:                               # %if.then.19
                                        #   in Loop: Header=BB8_5 Depth=1
	movq	32(%rsp), %rcx          # 8-byte Reload
	movq	(%rcx), %rcx
	testq	%rcx, %rcx
	je	.LBB8_17
# BB#19:                                # %if.end.22
                                        #   in Loop: Header=BB8_5 Depth=1
	movl	16(%rcx), %eax
	shlq	$4, %rax
	leaq	8(%rcx,%rax), %r15
	movq	%r15, 64(%rsp)          # 8-byte Spill
	movq	%rcx, 32(%rsp)          # 8-byte Spill
	jmp	.LBB8_5
.LBB8_8:                                #   in Loop: Header=BB8_5 Depth=1
	movl	52(%rsp), %r14d         # 4-byte Reload
.LBB8_24:                               # %do.end.49
                                        #   in Loop: Header=BB8_5 Depth=1
	addq	$-16, %r15
	movl	%r14d, 52(%rsp)         # 4-byte Spill
	movl	20(%rsp), %r13d         # 4-byte Reload
	jmp	.LBB8_5
.LBB8_15:                               #   in Loop: Header=BB8_5 Depth=1
	movl	$ptr_struct_procs, %r13d
	movl	%r14d, 52(%rsp)         # 4-byte Spill
.LBB8_59:                               # %if.then.245
                                        #   in Loop: Header=BB8_5 Depth=1
	movq	32(%rsp), %rbx          # 8-byte Reload
	movq	8(%rbx), %rbp
	testq	%rbp, %rbp
	jne	.LBB8_63
# BB#60:                                # %for.cond.preheader.i
                                        #   in Loop: Header=BB8_5 Depth=1
	movq	56(%rsp), %rbp          # 8-byte Reload
	movq	72(%rbp), %rdi
	movl	$65368, %esi            # imm = 0xFF58
	movl	$.L.str.1, %edx
	callq	*8(%rdi)
	movq	%rax, 8(%rbx)
	testq	%rax, %rax
	je	.LBB8_69
# BB#61:                                #   in Loop: Header=BB8_5 Depth=1
	movl	$4083, %ecx             # imm = 0xFF3
	jmp	.LBB8_62
.LBB8_69:                               # %for.inc.i
                                        #   in Loop: Header=BB8_5 Depth=1
	movq	72(%rbp), %rdi
	movl	$32696, %esi            # imm = 0x7FB8
	movl	$.L.str.1, %edx
	callq	*8(%rdi)
	movq	%rax, 8(%rbx)
	testq	%rax, %rax
	je	.LBB8_78
# BB#70:                                #   in Loop: Header=BB8_5 Depth=1
	movl	$2041, %ecx             # imm = 0x7F9
	jmp	.LBB8_62
.LBB8_78:                               # %for.inc.1.i
                                        #   in Loop: Header=BB8_5 Depth=1
	movq	72(%rbp), %rdi
	movl	$16360, %esi            # imm = 0x3FE8
	movl	$.L.str.1, %edx
	callq	*8(%rdi)
	movq	%rax, 8(%rbx)
	testq	%rax, %rax
	je	.LBB8_80
# BB#79:                                #   in Loop: Header=BB8_5 Depth=1
	movl	$1020, %ecx             # imm = 0x3FC
	jmp	.LBB8_62
.LBB8_26:                               # %if.then.74
                                        #   in Loop: Header=BB8_5 Depth=1
	cmpq	64(%rsp), %r15          # 8-byte Folded Reload
	movabsq	$4294967297, %rax       # imm = 0x100000001
	movq	%rax, 24(%r15)
	je	.LBB8_27
# BB#31:                                # %cleanup
                                        #   in Loop: Header=BB8_5 Depth=1
	orl	$1, %r14d
	movq	%r12, 16(%r15)
	addq	$16, %r15
	movl	%r14d, 52(%rsp)         # 4-byte Spill
	movl	20(%rsp), %r13d         # 4-byte Reload
	.align	16, 0x90
.LBB8_32:                               # %do_refs.preheader
                                        #   in Loop: Header=BB8_5 Depth=1
	movl	8(%r15), %eax
	testl	%eax, %eax
	movl	52(%rsp), %r12d         # 4-byte Reload
	je	.LBB8_41
# BB#33:                                # %if.end.96.lr.ph.lr.ph
                                        #   in Loop: Header=BB8_5 Depth=1
	movq	(%r15), %r14
	leaq	8(%r15), %rbx
	movq	%r15, %rcx
	addq	$24, %rcx
	movq	%rcx, 24(%rsp)          # 8-byte Spill
	jmp	.LBB8_34
.LBB8_68:                               # %cleanup.240
                                        #   in Loop: Header=BB8_34 Depth=2
	movq	24(%rsp), %rbx          # 8-byte Reload
	movq	%r12, 16(%r15)
	addq	$16, %r15
	leaq	24(%r15), %rcx
	movq	%rcx, 24(%rsp)          # 8-byte Spill
	movq	%r12, %r14
	movl	52(%rsp), %r12d         # 4-byte Reload
	.align	16, 0x90
.LBB8_34:                               # %if.end.96
                                        #   Parent Loop BB8_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	decl	%eax
	movl	%eax, (%rbx)
	movzwl	(%r14), %eax
	cmpl	$16384, %eax            # imm = 0x4000
	jb	.LBB8_42
# BB#35:                                # %if.then.103
                                        #   in Loop: Header=BB8_34 Depth=2
	testb	$16, %ah
	jne	.LBB8_38
# BB#36:                                # %if.then.106
                                        #   in Loop: Header=BB8_34 Depth=2
	movl	%eax, %ecx
	orl	$4096, %ecx             # imm = 0x1000
	movw	%cx, (%r14)
	orl	$1, %r12d
	cmpl	$49152, %ecx            # imm = 0xC000
	jb	.LBB8_38
# BB#37:                                # %if.then.114
                                        #   in Loop: Header=BB8_34 Depth=2
	andl	$4095, %eax             # imm = 0xFFF
	movq	40(%rsp), %rdi          # 8-byte Reload
	movl	%eax, %esi
	callq	names_mark_index
.LBB8_38:                               # %if.end.129
                                        #   in Loop: Header=BB8_34 Depth=2
	addq	$2, %r14
	jmp	.LBB8_39
	.align	16, 0x90
.LBB8_42:                               # %if.end.131
                                        #   in Loop: Header=BB8_34 Depth=2
	testb	$1, %al
	jne	.LBB8_43
# BB#44:                                # %if.end.137
                                        #   in Loop: Header=BB8_34 Depth=2
	movl	%eax, %ecx
	orl	$1, %ecx
	movw	%cx, (%r14)
	orl	$1, %r12d
	andl	$12, %eax
	leaq	16(%r14), %rbp
	cmpl	%r13d, %eax
	jb	.LBB8_40
# BB#45:                                # %if.end.152
                                        #   in Loop: Header=BB8_34 Depth=2
	movq	%rbp, (%r15)
	movzbl	1(%r14), %eax
	addl	$-2, %eax
	cmpl	$18, %eax
	ja	.LBB8_40
# BB#46:                                # %if.end.152
                                        #   in Loop: Header=BB8_34 Depth=2
	jmpq	*.LJTI8_0(,%rax,8)
.LBB8_47:                               # %rs
                                        #   in Loop: Header=BB8_34 Depth=2
	movl	%r12d, 52(%rsp)         # 4-byte Spill
	cmpq	64(%rsp), %r15          # 8-byte Folded Reload
	movq	8(%r14), %r12
	movl	$0, 28(%r15)
	movl	$0, 24(%r15)
	je	.LBB8_48
# BB#49:                                # %if.end.166
                                        #   in Loop: Header=BB8_34 Depth=2
	movq	%r12, 72(%rsp)
	testq	%r12, %r12
	je	.LBB8_50
# BB#51:                                # %if.end.i.142
                                        #   in Loop: Header=BB8_34 Depth=2
	movl	-24(%r12), %eax
	cmpl	$-2, %eax
	jae	.LBB8_53
# BB#52:                                #   in Loop: Header=BB8_34 Depth=2
	movl	52(%rsp), %r12d         # 4-byte Reload
	jmp	.LBB8_40
	.align	16, 0x90
.LBB8_43:                               # %if.then.135
                                        #   in Loop: Header=BB8_34 Depth=2
	addq	$16, %r14
.LBB8_39:                               # %tr.backedge
                                        #   in Loop: Header=BB8_34 Depth=2
	movq	%r14, %rbp
.LBB8_40:                               # %tr.backedge
                                        #   in Loop: Header=BB8_34 Depth=2
	movl	(%rbx), %eax
	testl	%eax, %eax
	movq	%rbp, %r14
	jne	.LBB8_34
	jmp	.LBB8_41
.LBB8_54:                               # %rr
                                        #   in Loop: Header=BB8_34 Depth=2
	movl	%r12d, 52(%rsp)         # 4-byte Spill
	movq	8(%r14), %r12
	movl	4(%r14), %eax
	movq	24(%rsp), %rcx          # 8-byte Reload
	movl	%eax, (%rcx)
	testl	%eax, %eax
	jne	.LBB8_57
# BB#55:                                # %if.then.190
                                        #   in Loop: Header=BB8_34 Depth=2
	movq	$0, 8(%r14)
	movl	52(%rsp), %r12d         # 4-byte Reload
	jmp	.LBB8_40
.LBB8_50:                               #   in Loop: Header=BB8_34 Depth=2
	movl	52(%rsp), %r12d         # 4-byte Reload
	jmp	.LBB8_40
.LBB8_65:                               # %do.body.206
                                        #   in Loop: Header=BB8_34 Depth=2
	movq	8(%r14), %rax
	movl	4(%r14), %esi
	movl	%esi, %ecx
	andl	$511, %ecx              # imm = 0x1FF
	shlq	$3, %rcx
	negq	%rcx
	addl	4096(%rax,%rcx), %esi
	movq	40(%rsp), %rdi          # 8-byte Reload
	callq	names_mark_index
	jmp	.LBB8_40
.LBB8_66:                               # %sw.bb.226
                                        #   in Loop: Header=BB8_34 Depth=2
	movq	8(%r14), %rdi
	movl	4(%r14), %esi
	movl	$1, %edx
	movq	56(%rsp), %rcx          # 8-byte Reload
	callq	gc_string_mark
	jmp	.LBB8_40
.LBB8_56:                               # %sw.bb.179
                                        #   in Loop: Header=BB8_34 Depth=2
	movl	%r12d, 52(%rsp)         # 4-byte Spill
	movq	8(%r14), %r12
	movq	24(%rsp), %rax          # 8-byte Reload
	movl	$5, (%rax)
	movl	$5, %eax
	jmp	.LBB8_57
.LBB8_67:                               # %sw.bb.235
                                        #   in Loop: Header=BB8_34 Depth=2
	movl	%r12d, 52(%rsp)         # 4-byte Spill
	movq	8(%r14), %r12
	movq	24(%rsp), %rax          # 8-byte Reload
	movl	$1, (%rax)
	movl	$1, %eax
.LBB8_57:                               # %rrc
                                        #   in Loop: Header=BB8_34 Depth=2
	cmpq	64(%rsp), %r15          # 8-byte Folded Reload
	movl	$1, 28(%r15)
	jne	.LBB8_68
# BB#58:                                #   in Loop: Header=BB8_5 Depth=1
	movl	$ptr_ref_procs, %r13d
	jmp	.LBB8_59
.LBB8_48:                               #   in Loop: Header=BB8_5 Depth=1
	movl	$ptr_struct_procs, %r13d
	jmp	.LBB8_59
.LBB8_53:                               # %cleanup.240.thread154
                                        #   in Loop: Header=BB8_5 Depth=1
	andl	$1, %eax
	movl	%eax, -24(%r12)
	movq	%r12, 16(%r15)
	addq	$16, %r15
	jmp	.LBB8_6
.LBB8_30:                               #   in Loop: Header=BB8_5 Depth=1
	movl	%ecx, %r14d
	jmp	.LBB8_24
.LBB8_80:                               # %for.inc.2.i
                                        #   in Loop: Header=BB8_5 Depth=1
	movq	72(%rbp), %rdi
	movl	$8200, %esi             # imm = 0x2008
	movl	$.L.str.1, %edx
	callq	*8(%rdi)
	movq	%rax, 8(%rbx)
	testq	%rax, %rax
	je	.LBB8_82
# BB#81:                                #   in Loop: Header=BB8_5 Depth=1
	movl	$510, %ecx              # imm = 0x1FE
	jmp	.LBB8_62
.LBB8_27:                               #   in Loop: Header=BB8_5 Depth=1
	movl	$ptr_ref_procs, %r13d
	movl	%r14d, 52(%rsp)         # 4-byte Spill
	jmp	.LBB8_59
.LBB8_82:                               # %for.inc.3.i
                                        #   in Loop: Header=BB8_5 Depth=1
	movq	72(%rbp), %rdi
	movl	$4120, %esi             # imm = 0x1018
	movl	$.L.str.1, %edx
	callq	*8(%rdi)
	movq	%rax, 8(%rbx)
	testq	%rax, %rax
	je	.LBB8_84
# BB#83:                                #   in Loop: Header=BB8_5 Depth=1
	movl	$255, %ecx
	jmp	.LBB8_62
.LBB8_84:                               # %for.inc.4.i
                                        #   in Loop: Header=BB8_5 Depth=1
	movq	72(%rbp), %rdi
	movl	$2072, %esi             # imm = 0x818
	movl	$.L.str.1, %edx
	callq	*8(%rdi)
	movq	%rax, 8(%rbx)
	testq	%rax, %rax
	je	.LBB8_86
# BB#85:                                #   in Loop: Header=BB8_5 Depth=1
	movl	$127, %ecx
	jmp	.LBB8_62
.LBB8_86:                               # %for.inc.5.i
                                        #   in Loop: Header=BB8_5 Depth=1
	movq	72(%rbp), %rdi
	movl	$1048, %esi             # imm = 0x418
	movl	$.L.str.1, %edx
	callq	*8(%rdi)
	movq	%rax, 8(%rbx)
	testq	%rax, %rax
	je	.LBB8_71
# BB#87:                                #   in Loop: Header=BB8_5 Depth=1
	movl	$63, %ecx
.LBB8_62:                               # %cleanup.i
                                        #   in Loop: Header=BB8_5 Depth=1
	movq	$0, 8(%rax)
	movl	%ecx, 16(%rax)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 24(%rax)
	movq	8(%rbx), %rbp
	movq	%rbx, (%rbp)
	movl	$1, 20(%rbp)
.LBB8_63:                               # %if.end.265
                                        #   in Loop: Header=BB8_5 Depth=1
	movl	16(%rbp), %eax
	shlq	$4, %rax
	leaq	8(%rbp,%rax), %rbx
	movq	64(%rsp), %rax          # 8-byte Reload
	movups	16(%rax), %xmm0
	movups	%xmm0, 40(%rbp)
	cmpl	$0, 52(%rbp)
	je	.LBB8_88
# BB#64:                                #   in Loop: Header=BB8_5 Depth=1
	movl	20(%rsp), %r13d         # 4-byte Reload
	jmp	.LBB8_90
.LBB8_88:                               # %if.then.269
                                        #   in Loop: Header=BB8_5 Depth=1
	leaq	24(%rbp), %r15
	movq	%r12, 72(%rsp)
	leaq	72(%rsp), %rdi
	movq	56(%rsp), %rsi          # 8-byte Reload
	callq	*8(%r13)
	testl	%eax, %eax
	movq	%rbx, 64(%rsp)          # 8-byte Spill
	movq	%rbp, 32(%rsp)          # 8-byte Spill
	movl	20(%rsp), %r13d         # 4-byte Reload
	je	.LBB8_5
# BB#89:                                # %if.end.275
                                        #   in Loop: Header=BB8_5 Depth=1
	orl	$1, 52(%rsp)            # 4-byte Folded Spill
.LBB8_90:                               # %if.end.277
                                        #   in Loop: Header=BB8_5 Depth=1
	leaq	40(%rbp), %r15
	movq	%r12, 40(%rbp)
	movq	%rbx, 64(%rsp)          # 8-byte Spill
	movq	%rbp, 32(%rsp)          # 8-byte Spill
	jmp	.LBB8_5
.LBB8_71:                               # %if.then.12.i
                                        #   in Loop: Header=BB8_5 Depth=1
	movl	16(%rbx), %eax
	shlq	$4, %rax
	movq	8(%rbx,%rax), %r14
	movq	%r14, %rdi
	movq	%rbp, %rsi
	callq	gc_locate
	movq	%rax, %r15
	testq	%r15, %r15
	jne	.LBB8_73
# BB#72:                                # %if.then.18.i
                                        #   in Loop: Header=BB8_5 Depth=1
	callq	gs_program_name
	movq	%rax, %r12
	callq	gs_revision_number
	movq	%r12, %rdi
	movq	%rax, %rsi
	callq	eprintf_program_ident
	movl	$.L.str.2, %edi
	movl	$1063, %esi             # imm = 0x427
	callq	lprintf_file_and_line
	movl	$.L.str.3, %edi
	xorl	%eax, %eax
	movq	%r14, %rsi
	callq	errprintf_nomem
	movq	72(%rbp), %rdi
	callq	gs_abort
.LBB8_73:                               # %if.end.23.i
                                        #   in Loop: Header=BB8_5 Depth=1
	movl	$1, %eax
	cmpq	168(%r15), %r14
	movl	20(%rsp), %r13d         # 4-byte Reload
	movl	52(%rsp), %ecx          # 4-byte Reload
	jae	.LBB8_75
# BB#74:                                # %if.then.26.i
                                        #   in Loop: Header=BB8_5 Depth=1
	movq	%r14, 168(%r15)
	movl	$-1, %eax
.LBB8_75:                               # %if.end.28.i
                                        #   in Loop: Header=BB8_5 Depth=1
	movq	%rbx, 32(%rsp)          # 8-byte Spill
	cmpq	176(%r15), %r14
	jbe	.LBB8_77
# BB#76:                                # %if.then.31.i
                                        #   in Loop: Header=BB8_5 Depth=1
	movq	%r14, 176(%r15)
	movl	$-1, %eax
.LBB8_77:                               # %cleanup.262
                                        #   in Loop: Header=BB8_5 Depth=1
	orl	%eax, %ecx
	movl	%ecx, 52(%rsp)          # 4-byte Spill
	movq	64(%rsp), %r15          # 8-byte Reload
	jmp	.LBB8_5
.LBB8_17:
	movl	52(%rsp), %eax          # 4-byte Reload
.LBB8_18:                               # %cleanup.283
	addq	$88, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gc_trace, .Lfunc_end8-gc_trace
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI8_0:
	.quad	.LBB8_56
	.quad	.LBB8_47
	.quad	.LBB8_54
	.quad	.LBB8_54
	.quad	.LBB8_54
	.quad	.LBB8_40
	.quad	.LBB8_47
	.quad	.LBB8_47
	.quad	.LBB8_47
	.quad	.LBB8_40
	.quad	.LBB8_40
	.quad	.LBB8_65
	.quad	.LBB8_40
	.quad	.LBB8_40
	.quad	.LBB8_40
	.quad	.LBB8_40
	.quad	.LBB8_66
	.quad	.LBB8_47
	.quad	.LBB8_67

	.text
	.globl	print_reloc_proc
	.align	16, 0x90
	.type	print_reloc_proc,@function
print_reloc_proc:                       # @print_reloc_proc
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rdx, %rax
	retq
.Lfunc_end9:
	.size	print_reloc_proc, .Lfunc_end9-print_reloc_proc
	.cfi_endproc

	.globl	gcst_get_memory_ptr
	.align	16, 0x90
	.type	gcst_get_memory_ptr,@function
gcst_get_memory_ptr:                    # @gcst_get_memory_ptr
	.cfi_startproc
# BB#0:                                 # %entry
	movq	40(%rdi), %rax
	movq	(%rax), %rax
	retq
.Lfunc_end10:
	.size	gcst_get_memory_ptr, .Lfunc_end10-gcst_get_memory_ptr
	.cfi_endproc

	.type	ptr_struct_procs,@object # @ptr_struct_procs
	.section	.rodata,"a",@progbits
	.globl	ptr_struct_procs
	.align	8
ptr_struct_procs:
	.quad	ptr_struct_unmark
	.quad	ptr_struct_mark
	.quad	igc_reloc_struct_ptr
	.size	ptr_struct_procs, 24

	.type	ptr_string_procs,@object # @ptr_string_procs
	.globl	ptr_string_procs
	.align	8
ptr_string_procs:
	.quad	ptr_string_unmark
	.quad	ptr_string_mark
	.quad	0
	.size	ptr_string_procs, 24

	.type	ptr_const_string_procs,@object # @ptr_const_string_procs
	.globl	ptr_const_string_procs
	.align	8
ptr_const_string_procs:
	.quad	ptr_string_unmark
	.quad	ptr_string_mark
	.quad	0
	.size	ptr_const_string_procs, 24

	.type	ptr_ref_procs,@object   # @ptr_ref_procs
	.globl	ptr_ref_procs
	.align	8
ptr_ref_procs:
	.quad	ptr_ref_unmark
	.quad	ptr_ref_mark
	.quad	0
	.size	ptr_ref_procs, 24

	.type	ptr_name_index_procs,@object # @ptr_name_index_procs
	.globl	ptr_name_index_procs
	.align	8
ptr_name_index_procs:
	.quad	ptr_name_index_unmark
	.quad	ptr_name_index_mark
	.quad	0
	.size	ptr_name_index_procs, 24

	.type	igc_procs,@object       # @igc_procs
	.align	8
igc_procs:
	.quad	igc_reloc_struct_ptr
	.quad	igc_reloc_string
	.quad	igc_reloc_const_string
	.quad	igc_reloc_param_string
	.quad	igc_reloc_ref_ptr
	.quad	igc_reloc_refs
	.size	igc_procs, 48

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"gc_top_level"
	.size	.L.str, 13

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"gc mark stack"
	.size	.L.str.1, 14

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"./psi/igc.c"
	.size	.L.str.2, 12

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"mark stack overflowed while outside collectible space at 0x%lx!\n"
	.size	.L.str.3, 65


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
