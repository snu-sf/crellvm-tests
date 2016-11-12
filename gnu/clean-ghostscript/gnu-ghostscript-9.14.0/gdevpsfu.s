	.text
	.file	"gdevpsfu.bc"
	.globl	psf_enumerate_list_begin
	.align	16, 0x90
	.type	psf_enumerate_list_begin,@function
psf_enumerate_list_begin:               # @psf_enumerate_list_begin
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rsi, (%rdi)
	movq	%rdx, 8(%rdi)
	movl	%ecx, 16(%rdi)
	movl	%r8d, 24(%rdi)
	testl	%ecx, %ecx
	movl	$enumerate_range_next, %eax
	movl	$enumerate_font_next, %ecx
	cmovneq	%rax, %rcx
	testq	%rdx, %rdx
	movl	$enumerate_glyphs_next, %eax
	cmoveq	%rcx, %rax
	movq	%rax, 40(%rdi)
	movq	$0, 32(%rdi)
	retq
.Lfunc_end0:
	.size	psf_enumerate_list_begin, .Lfunc_end0-psf_enumerate_list_begin
	.cfi_endproc

	.align	16, 0x90
	.type	enumerate_glyphs_next,@function
enumerate_glyphs_next:                  # @enumerate_glyphs_next
	.cfi_startproc
# BB#0:                                 # %entry
	movq	32(%rdi), %rcx
	movl	16(%rdi), %edx
	movl	$1, %eax
	cmpq	%rdx, %rcx
	jae	.LBB1_2
# BB#1:                                 # %if.end
	leaq	1(%rcx), %rax
	movq	%rax, 32(%rdi)
	movq	8(%rdi), %rax
	movq	(%rax,%rcx,8), %rax
	movq	%rax, (%rsi)
	xorl	%eax, %eax
.LBB1_2:                                # %return
	retq
.Lfunc_end1:
	.size	enumerate_glyphs_next, .Lfunc_end1-enumerate_glyphs_next
	.cfi_endproc

	.align	16, 0x90
	.type	enumerate_range_next,@function
enumerate_range_next:                   # @enumerate_range_next
	.cfi_startproc
# BB#0:                                 # %entry
	movq	32(%rdi), %rcx
	movl	16(%rdi), %edx
	movl	$1, %eax
	cmpq	%rdx, %rcx
	jae	.LBB2_2
# BB#1:                                 # %if.end
	leaq	1(%rcx), %rax
	movq	%rax, 32(%rdi)
	subq	$-2147483648, %rcx      # imm = 0xFFFFFFFF80000000
	movq	%rcx, (%rsi)
	xorl	%eax, %eax
.LBB2_2:                                # %return
	retq
.Lfunc_end2:
	.size	enumerate_range_next, .Lfunc_end2-enumerate_range_next
	.cfi_endproc

	.align	16, 0x90
	.type	enumerate_font_next,@function
enumerate_font_next:                    # @enumerate_font_next
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp0:
	.cfi_def_cfa_offset 16
	subq	$16, %rsp
.Ltmp1:
	.cfi_def_cfa_offset 32
.Ltmp2:
	.cfi_offset %rbx, -16
	movq	%rsi, %rax
	movq	%rdi, %rbx
	movq	(%rbx), %rdi
	movl	32(%rbx), %ecx
	movl	%ecx, 12(%rsp)
	movl	24(%rbx), %edx
	leaq	12(%rsp), %rsi
	movq	%rax, %rcx
	callq	*216(%rdi)
	movl	%eax, %ecx
	sarl	$31, %ecx
	movslq	12(%rsp), %rdx
	andl	%eax, %ecx
	testq	%rdx, %rdx
	movq	%rdx, 32(%rbx)
	movl	$1, %eax
	cmovel	%eax, %ecx
	movl	%ecx, %eax
	addq	$16, %rsp
	popq	%rbx
	retq
.Lfunc_end3:
	.size	enumerate_font_next, .Lfunc_end3-enumerate_font_next
	.cfi_endproc

	.globl	psf_enumerate_glyphs_reset
	.align	16, 0x90
	.type	psf_enumerate_glyphs_reset,@function
psf_enumerate_glyphs_reset:             # @psf_enumerate_glyphs_reset
	.cfi_startproc
# BB#0:                                 # %entry
	movq	$0, 32(%rdi)
	retq
.Lfunc_end4:
	.size	psf_enumerate_glyphs_reset, .Lfunc_end4-psf_enumerate_glyphs_reset
	.cfi_endproc

	.globl	psf_enumerate_bits_begin
	.align	16, 0x90
	.type	psf_enumerate_bits_begin,@function
psf_enumerate_bits_begin:               # @psf_enumerate_bits_begin
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rsi, (%rdi)
	movq	%rdx, 8(%rdi)
	movl	%ecx, 16(%rdi)
	movl	%r8d, 24(%rdi)
	testl	%ecx, %ecx
	movl	$enumerate_range_next, %eax
	movl	$enumerate_font_next, %ecx
	cmovneq	%rax, %rcx
	testq	%rdx, %rdx
	movl	$enumerate_bits_next, %eax
	cmoveq	%rcx, %rax
	movq	%rax, 40(%rdi)
	movq	$0, 32(%rdi)
	retq
.Lfunc_end5:
	.size	psf_enumerate_bits_begin, .Lfunc_end5-psf_enumerate_bits_begin
	.cfi_endproc

	.align	16, 0x90
	.type	enumerate_bits_next,@function
enumerate_bits_next:                    # @enumerate_bits_next
	.cfi_startproc
# BB#0:                                 # %entry
	movq	32(%rdi), %rcx
	movl	16(%rdi), %r8d
	.align	16, 0x90
.LBB6_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	%rcx, %rdx
	movl	$1, %eax
	cmpq	%r8, %rdx
	jae	.LBB6_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB6_1 Depth=1
	movq	%rdx, %rax
	shrq	$3, %rax
	movq	8(%rdi), %rcx
	movzbl	(%rcx,%rax), %r9d
	movb	%dl, %cl
	andb	$7, %cl
	movl	$128, %eax
	shrl	%cl, %eax
	leaq	1(%rdx), %rcx
	testl	%eax, %r9d
	movq	%rcx, 32(%rdi)
	je	.LBB6_1
# BB#3:                                 # %if.then
	subq	$-2147483648, %rdx      # imm = 0xFFFFFFFF80000000
	movq	%rdx, (%rsi)
	xorl	%eax, %eax
.LBB6_4:                                # %return
	retq
.Lfunc_end6:
	.size	enumerate_bits_next, .Lfunc_end6-enumerate_bits_next
	.cfi_endproc

	.globl	psf_enumerate_glyphs_next
	.align	16, 0x90
	.type	psf_enumerate_glyphs_next,@function
psf_enumerate_glyphs_next:              # @psf_enumerate_glyphs_next
	.cfi_startproc
# BB#0:                                 # %entry
	movq	40(%rdi), %rax
	jmpq	*%rax                   # TAILCALL
.Lfunc_end7:
	.size	psf_enumerate_glyphs_next, .Lfunc_end7-psf_enumerate_glyphs_next
	.cfi_endproc

	.globl	psf_add_subset_pieces
	.align	16, 0x90
	.type	psf_add_subset_pieces,@function
psf_add_subset_pieces:                  # @psf_add_subset_pieces
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp3:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp4:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp5:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp6:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp7:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp8:
	.cfi_def_cfa_offset 56
	subq	$120, %rsp
.Ltmp9:
	.cfi_def_cfa_offset 176
.Ltmp10:
	.cfi_offset %rbx, -56
.Ltmp11:
	.cfi_offset %r12, -48
.Ltmp12:
	.cfi_offset %r13, -40
.Ltmp13:
	.cfi_offset %r14, -32
.Ltmp14:
	.cfi_offset %r15, -24
.Ltmp15:
	.cfi_offset %rbp, -16
	movq	%r8, %rbx
	movl	%ecx, %ebp
	movl	%edx, 12(%rsp)          # 4-byte Spill
	movq	%rsi, (%rsp)            # 8-byte Spill
	movq	%rdi, %r13
	movl	(%rsi), %eax
	testl	%eax, %eax
	movl	$0, %r15d
	je	.LBB8_9
# BB#1:                                 # %for.body.lr.ph
	movl	%eax, %r15d
	xorl	%r14d, %r14d
	.align	16, 0x90
.LBB8_2:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	leal	(%r15,%rbp), %eax
	cmpl	12(%rsp), %eax          # 4-byte Folded Reload
	jbe	.LBB8_3
# BB#4:                                 # %if.then
                                        #   in Loop: Header=BB8_2 Depth=1
	movl	%r14d, %r12d
	movq	(%r13,%r12,8), %rsi
	xorl	%edx, %edx
	movl	$8, %ecx
	movq	%rbx, %rdi
	leaq	16(%rsp), %r8
	callq	*224(%rbx)
	testl	%eax, %eax
	js	.LBB8_8
# BB#5:                                 # %if.end
                                        #   in Loop: Header=BB8_2 Depth=1
	movl	104(%rsp), %eax
	addl	%r15d, %eax
	cmpl	12(%rsp), %eax          # 4-byte Folded Reload
	ja	.LBB8_11
# BB#6:                                 #   in Loop: Header=BB8_2 Depth=1
	leaq	(%r13,%r12,8), %rax
	jmp	.LBB8_7
	.align	16, 0x90
.LBB8_3:                                # %for.body.if.end.8_crit_edge
                                        #   in Loop: Header=BB8_2 Depth=1
	movl	%r14d, %eax
	leaq	(%r13,%rax,8), %rax
.LBB8_7:                                # %if.end.8
                                        #   in Loop: Header=BB8_2 Depth=1
	movl	%r15d, %ecx
	leaq	(%r13,%rcx,8), %rcx
	movq	%rcx, 112(%rsp)
	movq	(%rax), %rsi
	xorl	%edx, %edx
	movl	$24, %ecx
	movq	%rbx, %rdi
	leaq	16(%rsp), %r8
	callq	*224(%rbx)
	testl	%eax, %eax
	movl	104(%rsp), %eax
	movl	$0, %ecx
	cmovsl	%ecx, %eax
	addl	%r15d, %eax
	movl	%eax, %r15d
.LBB8_8:                                # %for.inc
                                        #   in Loop: Header=BB8_2 Depth=1
	incl	%r14d
	cmpl	%r15d, %r14d
	jb	.LBB8_2
.LBB8_9:                                # %for.end
	movq	(%rsp), %rax            # 8-byte Reload
	movl	%r15d, (%rax)
	xorl	%eax, %eax
.LBB8_10:                               # %cleanup.22
	addq	$120, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB8_11:                               # %cleanup
	movl	$-15, %eax
	jmp	.LBB8_10
.Lfunc_end8:
	.size	psf_add_subset_pieces, .Lfunc_end8-psf_add_subset_pieces
	.cfi_endproc

	.globl	psf_sort_glyphs
	.align	16, 0x90
	.type	psf_sort_glyphs,@function
psf_sort_glyphs:                        # @psf_sort_glyphs
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp16:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp17:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp18:
	.cfi_def_cfa_offset 32
.Ltmp19:
	.cfi_offset %rbx, -32
.Ltmp20:
	.cfi_offset %r14, -24
.Ltmp21:
	.cfi_offset %rbp, -16
	movl	%esi, %r14d
	movq	%rdi, %rbx
	movslq	%r14d, %rbp
	movl	$8, %edx
	movl	$compare_glyphs, %ecx
	movq	%rbp, %rsi
	callq	qsort
	xorl	%eax, %eax
	testl	%ebp, %ebp
	jle	.LBB9_6
# BB#1:                                 # %for.body.preheader
	movl	%r14d, %ecx
	xorl	%edx, %edx
	xorl	%eax, %eax
	.align	16, 0x90
.LBB9_2:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	testl	%edx, %edx
	movq	(%rbx,%rdx,8), %rsi
	je	.LBB9_4
# BB#3:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB9_2 Depth=1
	cmpq	-8(%rbx,%rdx,8), %rsi
	je	.LBB9_5
.LBB9_4:                                # %if.then
                                        #   in Loop: Header=BB9_2 Depth=1
	movslq	%eax, %rdi
	incl	%eax
	movq	%rsi, (%rbx,%rdi,8)
.LBB9_5:                                # %for.inc
                                        #   in Loop: Header=BB9_2 Depth=1
	incq	%rdx
	cmpl	%edx, %ecx
	jne	.LBB9_2
.LBB9_6:                                # %for.end
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end9:
	.size	psf_sort_glyphs, .Lfunc_end9-psf_sort_glyphs
	.cfi_endproc

	.align	16, 0x90
	.type	compare_glyphs,@function
compare_glyphs:                         # @compare_glyphs
	.cfi_startproc
# BB#0:                                 # %entry
	movq	(%rdi), %rax
	cmpq	(%rsi), %rax
	seta	%al
	movzbl	%al, %ecx
	movl	$-1, %eax
	cmovael	%ecx, %eax
	retq
.Lfunc_end10:
	.size	compare_glyphs, .Lfunc_end10-compare_glyphs
	.cfi_endproc

	.globl	psf_sorted_glyphs_index_of
	.align	16, 0x90
	.type	psf_sorted_glyphs_index_of,@function
psf_sorted_glyphs_index_of:             # @psf_sorted_glyphs_index_of
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$-1, %eax
	testl	%esi, %esi
	jle	.LBB11_10
# BB#1:                                 # %if.end
	movq	(%rdi), %r8
	cmpq	%rdx, %r8
	ja	.LBB11_10
# BB#2:                                 # %lor.lhs.false
	decl	%esi
	movslq	%esi, %rcx
	cmpq	%rdx, (%rdi,%rcx,8)
	jb	.LBB11_10
# BB#3:                                 # %while.cond.preheader
	xorl	%eax, %eax
	cmpl	$2, %esi
	jl	.LBB11_6
	.align	16, 0x90
.LBB11_4:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	leal	(%rsi,%rax), %ecx
	sarl	%ecx
	movslq	%ecx, %rcx
	cmpq	%rdx, (%rdi,%rcx,8)
	cmovbel	%ecx, %eax
	cmoval	%ecx, %esi
	movl	%esi, %ecx
	subl	%eax, %ecx
	cmpl	$1, %ecx
	jg	.LBB11_4
# BB#5:                                 # %while.cond.while.end_crit_edge
	movslq	%eax, %rcx
	movq	(%rdi,%rcx,8), %r8
.LBB11_6:                               # %while.end
	cmpq	%rdx, %r8
	je	.LBB11_10
# BB#7:                                 # %cond.false
	movslq	%esi, %rax
	cmpq	%rdx, (%rdi,%rax,8)
	je	.LBB11_9
# BB#8:                                 # %select.mid
	movl	$-1, %esi
.LBB11_9:                               # %select.end
	movl	%esi, %eax
.LBB11_10:                              # %cleanup
	retq
.Lfunc_end11:
	.size	psf_sorted_glyphs_index_of, .Lfunc_end11-psf_sorted_glyphs_index_of
	.cfi_endproc

	.globl	psf_sorted_glyphs_include
	.align	16, 0x90
	.type	psf_sorted_glyphs_include,@function
psf_sorted_glyphs_include:              # @psf_sorted_glyphs_include
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$-1, %eax
	testl	%esi, %esi
	jle	.LBB12_10
# BB#1:                                 # %if.end.i
	movq	(%rdi), %r8
	cmpq	%rdx, %r8
	ja	.LBB12_10
# BB#2:                                 # %lor.lhs.false.i
	decl	%esi
	movslq	%esi, %rcx
	cmpq	%rdx, (%rdi,%rcx,8)
	jb	.LBB12_10
# BB#3:                                 # %while.cond.preheader.i
	xorl	%eax, %eax
	cmpl	$2, %esi
	jl	.LBB12_6
	.align	16, 0x90
.LBB12_4:                               # %while.body.i
                                        # =>This Inner Loop Header: Depth=1
	leal	(%rax,%rsi), %ecx
	sarl	%ecx
	movslq	%ecx, %rcx
	cmpq	%rdx, (%rdi,%rcx,8)
	cmovbel	%ecx, %eax
	cmoval	%ecx, %esi
	movl	%esi, %ecx
	subl	%eax, %ecx
	cmpl	$1, %ecx
	jg	.LBB12_4
# BB#5:                                 # %while.cond.while.end_crit_edge.i
	movslq	%eax, %rcx
	movq	(%rdi,%rcx,8), %r8
.LBB12_6:                               # %while.end.i
	cmpq	%rdx, %r8
	je	.LBB12_10
# BB#7:                                 # %cond.false.i
	movslq	%esi, %rax
	cmpq	%rdx, (%rdi,%rax,8)
	je	.LBB12_9
# BB#8:                                 # %select.mid
	movl	$-1, %esi
.LBB12_9:                               # %select.end
	movl	%esi, %eax
.LBB12_10:                              # %psf_sorted_glyphs_index_of.exit
	shrl	$31, %eax
	xorl	$1, %eax
	retq
.Lfunc_end12:
	.size	psf_sorted_glyphs_include, .Lfunc_end12-psf_sorted_glyphs_include
	.cfi_endproc

	.globl	psf_check_outline_glyphs
	.align	16, 0x90
	.type	psf_check_outline_glyphs,@function
psf_check_outline_glyphs:               # @psf_check_outline_glyphs
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
	subq	$200, %rsp
.Ltmp28:
	.cfi_def_cfa_offset 256
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
	movq	%rdx, 24(%rsp)          # 8-byte Spill
	movq	%rsi, %r15
	movq	%rdi, %rbx
	movb	148(%rbx), %cl
	movl	$1, %r14d
	shll	%cl, %r14d
	leaq	192(%rsp), %rsi
	movq	%r15, %rdi
	callq	*40(%r15)
	xorl	%ecx, %ecx
	cmpl	$1, %eax
	movl	$0, %r13d
	je	.LBB13_13
# BB#1:                                 # %while.body.lr.ph.lr.ph
	xorl	%r13d, %r13d
	leaq	144(%rsp), %r12
	leaq	136(%rsp), %rbp
                                        # implicit-def: ECX
	movl	%ecx, 12(%rsp)          # 4-byte Spill
.LBB13_2:                               # %while.body.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB13_3 Depth 2
	movq	%r13, 16(%rsp)          # 8-byte Spill
	movq	%rbp, %r13
	movq	24(%rsp), %rbp          # 8-byte Reload
	.align	16, 0x90
.LBB13_3:                               # %while.body
                                        #   Parent Loop BB13_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	testl	%eax, %eax
	js	.LBB13_14
# BB#4:                                 # %if.end
                                        #   in Loop: Header=BB13_3 Depth=2
	movq	16(%rbx), %rax
	movq	%rax, 184(%rsp)
	movq	192(%rsp), %rsi
	movq	%rbx, %rdi
	movq	%r12, %rdx
	movq	%r13, %rcx
	callq	*%rbp
	testl	%eax, %eax
	js	.LBB13_5
# BB#6:                                 # %if.end.9
                                        #   in Loop: Header=BB13_3 Depth=2
	movl	$.L.str, %esi
	movq	%r12, %rdi
	callq	gs_glyph_data_free
	movq	192(%rsp), %rsi
	xorl	%edx, %edx
	movq	%rbx, %rdi
	movl	%r14d, %ecx
	leaq	32(%rsp), %r8
	callq	*224(%rbx)
	cmpl	$-10, %eax
	jne	.LBB13_9
# BB#7:                                 # %cleanup.thread18
                                        #   in Loop: Header=BB13_3 Depth=2
	movq	%r15, %rdi
	leaq	192(%rsp), %rsi
	callq	*40(%r15)
	cmpl	$1, %eax
	jne	.LBB13_3
	jmp	.LBB13_8
	.align	16, 0x90
.LBB13_5:                               # %if.then.5
                                        #   in Loop: Header=BB13_2 Depth=1
	movq	%r13, %rbp
	cmpl	$-21, %eax
	sete	%cl
	movl	12(%rsp), %edx          # 4-byte Reload
	cmovnel	%eax, %edx
	movl	%edx, 12(%rsp)          # 4-byte Spill
	movzbl	%cl, %eax
	incl	%eax
	movq	16(%rsp), %r13          # 8-byte Reload
	jmp	.LBB13_10
	.align	16, 0x90
.LBB13_9:                               # %if.end.13
                                        #   in Loop: Header=BB13_2 Depth=1
	movq	%r13, %rbp
	testl	%eax, %eax
	movl	12(%rsp), %ecx          # 4-byte Reload
	cmovsl	%eax, %ecx
	movl	%ecx, 12(%rsp)          # 4-byte Spill
	shrl	$31, %eax
	movl	%eax, %ecx
	xorl	$1, %ecx
	movq	16(%rsp), %r13          # 8-byte Reload
	addl	%ecx, %r13d
.LBB13_10:                              # %cleanup
                                        #   in Loop: Header=BB13_2 Depth=1
	orl	$2, %eax
	cmpl	$2, %eax
	jne	.LBB13_11
# BB#12:                                # %while.cond.outer.backedge
                                        #   in Loop: Header=BB13_2 Depth=1
	movq	%r15, %rdi
	leaq	192(%rsp), %rsi
	callq	*40(%r15)
	cmpl	$1, %eax
	movl	$0, %ecx
	jne	.LBB13_2
	jmp	.LBB13_13
.LBB13_8:
	xorl	%ecx, %ecx
	movq	16(%rsp), %r13          # 8-byte Reload
.LBB13_13:                              # %while.end
	testl	%r13d, %r13d
	movl	$-10, %eax
	cmovel	%eax, %ecx
	movl	%ecx, %eax
.LBB13_14:                              # %cleanup.20
	addq	$200, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB13_11:
	movl	12(%rsp), %eax          # 4-byte Reload
	jmp	.LBB13_14
.Lfunc_end13:
	.size	psf_check_outline_glyphs, .Lfunc_end13-psf_check_outline_glyphs
	.cfi_endproc

	.globl	psf_get_outline_glyphs
	.align	16, 0x90
	.type	psf_get_outline_glyphs,@function
psf_get_outline_glyphs:                 # @psf_get_outline_glyphs
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
	subq	$136, %rsp
.Ltmp41:
	.cfi_def_cfa_offset 192
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
	movq	%r8, %r13
	movq	%rsi, %r12
	movq	%rdi, %r15
	xorl	%ebp, %ebp
	testq	%rdx, %rdx
	movl	$0, %r14d
	je	.LBB14_3
# BB#1:                                 # %if.then
	movl	$-13, %eax
	cmpl	$1, %ecx
	movl	%ecx, %ebx
	ja	.LBB14_32
# BB#2:                                 # %if.end
	movl	%ebx, %eax
	movq	8(%r15), %rdi
	shlq	$3, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdx
	callq	memcpy
	movq	8(%r15), %r14
	movl	%ebx, %ecx
.LBB14_3:                               # %if.end.5
	testq	%r14, %r14
	cmovnel	%ecx, %ebp
	testl	%ebp, %ebp
	movl	$enumerate_range_next, %eax
	movl	$enumerate_font_next, %edx
	cmovneq	%rax, %rdx
	testq	%r14, %r14
	movq	%r12, 32(%rsp)
	movq	%r14, 40(%rsp)
	movl	%ebp, 48(%rsp)
	movl	$0, 56(%rsp)
	movl	$enumerate_glyphs_next, %eax
	cmoveq	%rdx, %rax
	movq	%rax, 72(%rsp)
	movq	$0, 64(%rsp)
	leaq	32(%rsp), %rsi
	movq	%r12, %rdi
	movq	%r13, %rdx
	movl	%ecx, %ebx
	callq	psf_check_outline_glyphs
	testl	%eax, %eax
	js	.LBB14_32
# BB#4:                                 # %cleanup.cont
	movl	%ebx, 20(%rsp)          # 4-byte Spill
	movq	%r12, 32(%rsp)
	movq	$0, 40(%rsp)
	movl	$0, 48(%rsp)
	movl	$0, 56(%rsp)
	movq	$enumerate_font_next, 72(%rsp)
	movq	$0, 64(%rsp)
	leaq	32(%rsp), %rdi
	leaq	24(%rsp), %rsi
	callq	enumerate_font_next
	movl	$2147483647, %r13d      # imm = 0x7FFFFFFF
	cmpl	$1, %eax
	je	.LBB14_9
# BB#5:
	leaq	32(%rsp), %rbx
	leaq	24(%rsp), %rbp
	movl	$2147483647, %r13d      # imm = 0x7FFFFFFF
	.align	16, 0x90
.LBB14_6:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movq	24(%rsp), %rsi
	movq	%r12, %rdi
	callq	gs_font_glyph_is_notdef
	testl	%eax, %eax
	jne	.LBB14_8
# BB#7:                                 # %while.body.while.cond_crit_edge
                                        #   in Loop: Header=BB14_6 Depth=1
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	callq	*72(%rsp)
	cmpl	$1, %eax
	jne	.LBB14_6
	jmp	.LBB14_9
.LBB14_8:                               # %if.then.20
	movq	24(%rsp), %r13
.LBB14_9:                               # %while.end
	testq	%r14, %r14
	movl	20(%rsp), %esi          # 4-byte Reload
	je	.LBB14_31
# BB#10:                                # %if.then.23
	movq	%r13, 8(%rsp)           # 8-byte Spill
	movq	%r15, (%rsp)            # 8-byte Spill
	xorl	%r13d, %r13d
	testl	%esi, %esi
	je	.LBB14_19
# BB#11:                                # %for.body.lr.ph.i
	leaq	32(%rsp), %r15
	movl	%esi, %r13d
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB14_12:                              # %for.body.i.47
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$-2, %r13d
	jne	.LBB14_14
# BB#13:                                # %for.body.if.end.8_crit_edge.i
                                        #   in Loop: Header=BB14_12 Depth=1
	movl	%ebp, %eax
	leaq	(%r14,%rax,8), %rax
	jmp	.LBB14_17
	.align	16, 0x90
.LBB14_14:                              # %if.then.i.51
                                        #   in Loop: Header=BB14_12 Depth=1
	movl	%ebp, %ebx
	movq	(%r14,%rbx,8), %rsi
	xorl	%edx, %edx
	movl	$8, %ecx
	movq	%r12, %rdi
	movq	%r15, %r8
	callq	*224(%r12)
	testl	%eax, %eax
	js	.LBB14_18
# BB#15:                                # %if.end.i
                                        #   in Loop: Header=BB14_12 Depth=1
	movl	120(%rsp), %eax
	addl	%r13d, %eax
	jne	.LBB14_33
# BB#16:                                #   in Loop: Header=BB14_12 Depth=1
	leaq	(%r14,%rbx,8), %rax
.LBB14_17:                              # %if.end.8.i
                                        #   in Loop: Header=BB14_12 Depth=1
	movl	%r13d, %ecx
	leaq	(%r14,%rcx,8), %rcx
	movq	%rcx, 128(%rsp)
	movq	(%rax), %rsi
	xorl	%edx, %edx
	movl	$24, %ecx
	movq	%r12, %rdi
	movq	%r15, %r8
	callq	*224(%r12)
	testl	%eax, %eax
	movl	120(%rsp), %eax
	movl	$0, %ecx
	cmovsl	%ecx, %eax
	addl	%eax, %r13d
.LBB14_18:                              # %for.inc.i.53
                                        #   in Loop: Header=BB14_12 Depth=1
	incl	%ebp
	cmpl	%r13d, %ebp
	jb	.LBB14_12
.LBB14_19:                              # %if.end.29
	movl	$-15, %eax
	movq	8(%rsp), %rcx           # 8-byte Reload
	cmpq	$2147483647, %rcx       # imm = 0x7FFFFFFF
	je	.LBB14_32
# BB#20:                                # %for.cond.preheader
	testl	%r13d, %r13d
	movl	$0, %ebx
	je	.LBB14_25
# BB#21:                                # %for.body.lr.ph
	xorl	%ebx, %ebx
	movq	%r14, %r15
	.align	16, 0x90
.LBB14_22:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	(%r15), %rbp
	xorl	%edx, %edx
	movl	$8, %ecx
	movq	%r12, %rdi
	movq	%rbp, %rsi
	leaq	32(%rsp), %r8
	callq	*224(%r12)
	testl	%eax, %eax
	js	.LBB14_24
# BB#23:                                # %if.then.40
                                        #   in Loop: Header=BB14_22 Depth=1
	movl	%ebx, %eax
	incl	%ebx
	movq	%rbp, (%r14,%rax,8)
.LBB14_24:                              # %if.end.43
                                        #   in Loop: Header=BB14_22 Depth=1
	addq	$8, %r15
	decl	%r13d
	jne	.LBB14_22
.LBB14_25:                              # %for.end
	movl	%ebx, %eax
	incl	%ebx
	movq	8(%rsp), %r13           # 8-byte Reload
	movq	%r13, (%r14,%rax,8)
	movslq	%ebx, %rbp
	movl	$8, %edx
	movl	$compare_glyphs, %ecx
	movq	%r14, %rdi
	movq	%rbp, %rsi
	callq	qsort
	testl	%ebp, %ebp
	movq	(%rsp), %r15            # 8-byte Reload
	movl	$0, %esi
	jle	.LBB14_31
# BB#26:                                # %for.body.i.preheader
	xorl	%eax, %eax
	xorl	%esi, %esi
	.align	16, 0x90
.LBB14_27:                              # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	testl	%eax, %eax
	movq	(%r14,%rax,8), %rcx
	je	.LBB14_29
# BB#28:                                # %lor.lhs.false.i
                                        #   in Loop: Header=BB14_27 Depth=1
	cmpq	-8(%r14,%rax,8), %rcx
	je	.LBB14_30
.LBB14_29:                              # %if.then.i
                                        #   in Loop: Header=BB14_27 Depth=1
	movslq	%esi, %rdx
	incl	%esi
	movq	%rcx, (%r14,%rdx,8)
.LBB14_30:                              # %for.inc.i
                                        #   in Loop: Header=BB14_27 Depth=1
	incq	%rax
	cmpl	%eax, %ebx
	jne	.LBB14_27
.LBB14_31:                              # %if.end.54
	movq	%r13, (%r15)
	movq	%r14, 16(%r15)
	movl	%esi, 24(%r15)
	xorl	%eax, %eax
.LBB14_32:                              # %cleanup.58
	addq	$136, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB14_33:                              # %psf_add_subset_pieces.exit
	movl	$-15, %eax
	jmp	.LBB14_32
.Lfunc_end14:
	.size	psf_get_outline_glyphs, .Lfunc_end14-psf_get_outline_glyphs
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"psf_check_outline_glyphs"
	.size	.L.str, 25


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
