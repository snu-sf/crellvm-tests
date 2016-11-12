	.text
	.file	"gimparea.bc"
	.globl	gimp_area_new
	.align	16, 0x90
	.type	gimp_area_new,@function
gimp_area_new:                          # @gimp_area_new
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp0:
	.cfi_def_cfa_offset 16
.Ltmp1:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp2:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movl	$16, %eax
	movl	%eax, %r8d
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -12(%rbp)
	movl	%ecx, -16(%rbp)
	movq	%r8, %rdi
	callq	g_slice_alloc
	movq	%rax, -24(%rbp)
	movl	-4(%rbp), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, (%rax)
	movl	-8(%rbp), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, 4(%rax)
	movl	-12(%rbp), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, 8(%rax)
	movl	-16(%rbp), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, 12(%rax)
	movq	-24(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_area_new, .Lfunc_end0-gimp_area_new
	.cfi_endproc

	.globl	gimp_area_free
	.align	16, 0x90
	.type	gimp_area_free,@function
gimp_area_free:                         # @gimp_area_free
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp3:
	.cfi_def_cfa_offset 16
.Ltmp4:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp5:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movl	$16, %eax
	movl	%eax, %edi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rsi
	callq	g_slice_free1
# BB#2:                                 # %do.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_area_free, .Lfunc_end1-gimp_area_free
	.cfi_endproc

	.globl	gimp_area_list_process
	.align	16, 0x90
	.type	gimp_area_list_process,@function
gimp_area_list_process:                 # @gimp_area_list_process
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp6:
	.cfi_def_cfa_offset 16
.Ltmp7:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp8:
	.cfi_def_cfa_register %rbp
	subq	$112, %rsp
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_slist_prepend
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
.LBB2_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB2_36
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rax
	movl	8(%rax), %ecx
	movq	-16(%rbp), %rax
	subl	(%rax), %ecx
	movq	-16(%rbp), %rax
	movl	12(%rax), %edx
	movq	-16(%rbp), %rax
	subl	4(%rax), %edx
	imull	%edx, %ecx
	addl	$25, %ecx
	movl	%ecx, -44(%rbp)
	movq	-40(%rbp), %rax
	movl	8(%rax), %ecx
	movq	-40(%rbp), %rax
	subl	(%rax), %ecx
	movq	-40(%rbp), %rax
	movl	12(%rax), %edx
	movq	-40(%rbp), %rax
	subl	4(%rax), %edx
	imull	%edx, %ecx
	addl	$25, %ecx
	movl	%ecx, -48(%rbp)
	movq	-40(%rbp), %rax
	movl	8(%rax), %ecx
	movq	-16(%rbp), %rax
	cmpl	8(%rax), %ecx
	jle	.LBB2_4
# BB#3:                                 # %cond.true
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	-40(%rbp), %rax
	movl	8(%rax), %ecx
	movl	%ecx, -56(%rbp)         # 4-byte Spill
	jmp	.LBB2_5
.LBB2_4:                                # %cond.false
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	-16(%rbp), %rax
	movl	8(%rax), %ecx
	movl	%ecx, -56(%rbp)         # 4-byte Spill
.LBB2_5:                                # %cond.end
                                        #   in Loop: Header=BB2_1 Depth=1
	movl	-56(%rbp), %eax         # 4-byte Reload
	movq	-40(%rbp), %rcx
	movl	(%rcx), %edx
	movq	-16(%rbp), %rcx
	cmpl	(%rcx), %edx
	movl	%eax, -60(%rbp)         # 4-byte Spill
	jge	.LBB2_7
# BB#6:                                 # %cond.true.18
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	-40(%rbp), %rax
	movl	(%rax), %ecx
	movl	%ecx, -64(%rbp)         # 4-byte Spill
	jmp	.LBB2_8
.LBB2_7:                                # %cond.false.20
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	-16(%rbp), %rax
	movl	(%rax), %ecx
	movl	%ecx, -64(%rbp)         # 4-byte Spill
.LBB2_8:                                # %cond.end.22
                                        #   in Loop: Header=BB2_1 Depth=1
	movl	-64(%rbp), %eax         # 4-byte Reload
	movl	-60(%rbp), %ecx         # 4-byte Reload
	subl	%eax, %ecx
	movq	-40(%rbp), %rdx
	movl	12(%rdx), %eax
	movq	-16(%rbp), %rdx
	cmpl	12(%rdx), %eax
	movl	%ecx, -68(%rbp)         # 4-byte Spill
	jle	.LBB2_10
# BB#9:                                 # %cond.true.28
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	-40(%rbp), %rax
	movl	12(%rax), %ecx
	movl	%ecx, -72(%rbp)         # 4-byte Spill
	jmp	.LBB2_11
.LBB2_10:                               # %cond.false.30
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	-16(%rbp), %rax
	movl	12(%rax), %ecx
	movl	%ecx, -72(%rbp)         # 4-byte Spill
.LBB2_11:                               # %cond.end.32
                                        #   in Loop: Header=BB2_1 Depth=1
	movl	-72(%rbp), %eax         # 4-byte Reload
	movq	-40(%rbp), %rcx
	movl	4(%rcx), %edx
	movq	-16(%rbp), %rcx
	cmpl	4(%rcx), %edx
	movl	%eax, -76(%rbp)         # 4-byte Spill
	jge	.LBB2_13
# BB#12:                                # %cond.true.37
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	-40(%rbp), %rax
	movl	4(%rax), %ecx
	movl	%ecx, -80(%rbp)         # 4-byte Spill
	jmp	.LBB2_14
.LBB2_13:                               # %cond.false.39
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	-16(%rbp), %rax
	movl	4(%rax), %ecx
	movl	%ecx, -80(%rbp)         # 4-byte Spill
.LBB2_14:                               # %cond.end.41
                                        #   in Loop: Header=BB2_1 Depth=1
	movl	-80(%rbp), %eax         # 4-byte Reload
	movl	-76(%rbp), %ecx         # 4-byte Reload
	subl	%eax, %ecx
	movl	-68(%rbp), %eax         # 4-byte Reload
	imull	%ecx, %eax
	addl	$25, %eax
	movl	%eax, -52(%rbp)
	movl	-44(%rbp), %eax
	addl	-48(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jge	.LBB2_16
# BB#15:                                # %if.then
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	-24(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	callq	g_slist_prepend
	movq	%rax, -24(%rbp)
	jmp	.LBB2_31
.LBB2_16:                               # %if.else
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	-16(%rbp), %rax
	movl	(%rax), %ecx
	movq	-40(%rbp), %rax
	cmpl	(%rax), %ecx
	jge	.LBB2_18
# BB#17:                                # %cond.true.52
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	-16(%rbp), %rax
	movl	(%rax), %ecx
	movl	%ecx, -84(%rbp)         # 4-byte Spill
	jmp	.LBB2_19
.LBB2_18:                               # %cond.false.54
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	-40(%rbp), %rax
	movl	(%rax), %ecx
	movl	%ecx, -84(%rbp)         # 4-byte Spill
.LBB2_19:                               # %cond.end.56
                                        #   in Loop: Header=BB2_1 Depth=1
	movl	-84(%rbp), %eax         # 4-byte Reload
	movq	-16(%rbp), %rcx
	movl	%eax, (%rcx)
	movq	-16(%rbp), %rcx
	movl	4(%rcx), %eax
	movq	-40(%rbp), %rcx
	cmpl	4(%rcx), %eax
	jge	.LBB2_21
# BB#20:                                # %cond.true.62
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	-16(%rbp), %rax
	movl	4(%rax), %ecx
	movl	%ecx, -88(%rbp)         # 4-byte Spill
	jmp	.LBB2_22
.LBB2_21:                               # %cond.false.64
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	-40(%rbp), %rax
	movl	4(%rax), %ecx
	movl	%ecx, -88(%rbp)         # 4-byte Spill
.LBB2_22:                               # %cond.end.66
                                        #   in Loop: Header=BB2_1 Depth=1
	movl	-88(%rbp), %eax         # 4-byte Reload
	movq	-16(%rbp), %rcx
	movl	%eax, 4(%rcx)
	movq	-16(%rbp), %rcx
	movl	8(%rcx), %eax
	movq	-40(%rbp), %rcx
	cmpl	8(%rcx), %eax
	jle	.LBB2_24
# BB#23:                                # %cond.true.72
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	-16(%rbp), %rax
	movl	8(%rax), %ecx
	movl	%ecx, -92(%rbp)         # 4-byte Spill
	jmp	.LBB2_25
.LBB2_24:                               # %cond.false.74
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	-40(%rbp), %rax
	movl	8(%rax), %ecx
	movl	%ecx, -92(%rbp)         # 4-byte Spill
.LBB2_25:                               # %cond.end.76
                                        #   in Loop: Header=BB2_1 Depth=1
	movl	-92(%rbp), %eax         # 4-byte Reload
	movq	-16(%rbp), %rcx
	movl	%eax, 8(%rcx)
	movq	-16(%rbp), %rcx
	movl	12(%rcx), %eax
	movq	-40(%rbp), %rcx
	cmpl	12(%rcx), %eax
	jle	.LBB2_27
# BB#26:                                # %cond.true.82
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	-16(%rbp), %rax
	movl	12(%rax), %ecx
	movl	%ecx, -96(%rbp)         # 4-byte Spill
	jmp	.LBB2_28
.LBB2_27:                               # %cond.false.84
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	-40(%rbp), %rax
	movl	12(%rax), %ecx
	movl	%ecx, -96(%rbp)         # 4-byte Spill
.LBB2_28:                               # %cond.end.86
                                        #   in Loop: Header=BB2_1 Depth=1
	movl	-96(%rbp), %eax         # 4-byte Reload
	movq	-16(%rbp), %rcx
	movl	%eax, 12(%rcx)
# BB#29:                                # %do.body
                                        #   in Loop: Header=BB2_1 Depth=1
	movl	$16, %eax
	movl	%eax, %edi
	movq	-40(%rbp), %rcx
	movq	%rcx, %rsi
	callq	g_slice_free1
# BB#30:                                # %do.end
                                        #   in Loop: Header=BB2_1 Depth=1
	jmp	.LBB2_31
.LBB2_31:                               # %if.end
                                        #   in Loop: Header=BB2_1 Depth=1
	jmp	.LBB2_32
.LBB2_32:                               # %for.inc
                                        #   in Loop: Header=BB2_1 Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB2_34
# BB#33:                                # %cond.true.90
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	jmp	.LBB2_35
.LBB2_34:                               # %cond.false.91
                                        #   in Loop: Header=BB2_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	jmp	.LBB2_35
.LBB2_35:                               # %cond.end.92
                                        #   in Loop: Header=BB2_1 Depth=1
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	%rax, -32(%rbp)
	jmp	.LBB2_1
.LBB2_36:                               # %for.end
	cmpq	$0, -8(%rbp)
	je	.LBB2_38
# BB#37:                                # %if.then.95
	movq	-8(%rbp), %rdi
	callq	g_slist_free
.LBB2_38:                               # %if.end.96
	movq	-24(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_area_list_process, .Lfunc_end2-gimp_area_list_process
	.cfi_endproc

	.globl	gimp_area_list_free
	.align	16, 0x90
	.type	gimp_area_list_free,@function
gimp_area_list_free:                    # @gimp_area_list_free
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp9:
	.cfi_def_cfa_offset 16
.Ltmp10:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp11:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)
.LBB3_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -16(%rbp)
	je	.LBB3_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB3_1 Depth=1
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	callq	gimp_area_free
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB3_1 Depth=1
	movq	-16(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB3_1
.LBB3_4:                                # %for.end
	movq	-8(%rbp), %rdi
	callq	g_slist_free
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_area_list_free, .Lfunc_end3-gimp_area_list_free
	.cfi_endproc


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
