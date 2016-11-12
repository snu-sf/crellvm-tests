	.text
	.file	"gimpink-blob.bc"
	.globl	gimp_blob_polygon
	.align	16, 0x90
	.type	gimp_blob_polygon,@function
gimp_blob_polygon:                      # @gimp_blob_polygon
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rdi
	movl	4(%rdi), %esi
	movl	%esi, -52(%rbp)
	movq	-8(%rbp), %rdi
	movl	4(%rdi), %esi
	movl	%esi, -48(%rbp)
	movl	$1, -36(%rbp)
.LBB0_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-36(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB0_8
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB0_1 Depth=1
	movslq	-36(%rbp), %rax
	movq	-8(%rbp), %rcx
	movl	4(%rcx,%rax,8), %edx
	cmpl	-52(%rbp), %edx
	jle	.LBB0_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB0_1 Depth=1
	movslq	-36(%rbp), %rax
	movq	-8(%rbp), %rcx
	movl	4(%rcx,%rax,8), %edx
	movl	%edx, -52(%rbp)
.LBB0_4:                                # %if.end
                                        #   in Loop: Header=BB0_1 Depth=1
	movslq	-36(%rbp), %rax
	movq	-8(%rbp), %rcx
	movl	4(%rcx,%rax,8), %edx
	cmpl	-48(%rbp), %edx
	jge	.LBB0_6
# BB#5:                                 # %if.then.13
                                        #   in Loop: Header=BB0_1 Depth=1
	movslq	-36(%rbp), %rax
	movq	-8(%rbp), %rcx
	movl	4(%rcx,%rax,8), %edx
	movl	%edx, -48(%rbp)
.LBB0_6:                                # %if.end.17
                                        #   in Loop: Header=BB0_1 Depth=1
	jmp	.LBB0_7
.LBB0_7:                                # %for.inc
                                        #   in Loop: Header=BB0_1 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB0_1
.LBB0_8:                                # %for.end
	movl	-48(%rbp), %edi
	movl	-52(%rbp), %eax
	subl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, %esi
	callq	gimp_blob_new
	movl	$4, %esi
                                        # kill: RSI<def> ESI<kill>
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movslq	4(%rax), %rdi
	callq	g_malloc0_n
	movq	%rax, -32(%rbp)
	movl	-12(%rbp), %ecx
	subl	$1, %ecx
	movl	%ecx, -40(%rbp)
	movl	$0, -36(%rbp)
	movl	$1, -44(%rbp)
.LBB0_9:                                # %for.cond.20
                                        # =>This Inner Loop Header: Depth=1
	movl	-36(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB0_40
# BB#10:                                # %for.body.23
                                        #   in Loop: Header=BB0_9 Depth=1
	movl	$0, -56(%rbp)
	movslq	-36(%rbp), %rax
	movq	-8(%rbp), %rcx
	movl	4(%rcx,%rax,8), %edx
	subl	-48(%rbp), %edx
	movl	%edx, -60(%rbp)
	movslq	-36(%rbp), %rax
	movq	-8(%rbp), %rcx
	movl	4(%rcx,%rax,8), %edx
	movslq	-40(%rbp), %rax
	movq	-8(%rbp), %rcx
	cmpl	4(%rcx,%rax,8), %edx
	jge	.LBB0_12
# BB#11:                                # %if.then.36
                                        #   in Loop: Header=BB0_9 Depth=1
	movl	-56(%rbp), %eax
	orl	$2, %eax
	movl	%eax, -56(%rbp)
	jmp	.LBB0_15
.LBB0_12:                               # %if.else
                                        #   in Loop: Header=BB0_9 Depth=1
	movslq	-36(%rbp), %rax
	movq	-8(%rbp), %rcx
	movl	4(%rcx,%rax,8), %edx
	movslq	-40(%rbp), %rax
	movq	-8(%rbp), %rcx
	cmpl	4(%rcx,%rax,8), %edx
	jle	.LBB0_14
# BB#13:                                # %if.then.45
                                        #   in Loop: Header=BB0_9 Depth=1
	movl	-56(%rbp), %eax
	orl	$1, %eax
	movl	%eax, -56(%rbp)
.LBB0_14:                               # %if.end.47
                                        #   in Loop: Header=BB0_9 Depth=1
	jmp	.LBB0_15
.LBB0_15:                               # %if.end.48
                                        #   in Loop: Header=BB0_9 Depth=1
	movslq	-44(%rbp), %rax
	movq	-8(%rbp), %rcx
	movl	4(%rcx,%rax,8), %edx
	movslq	-36(%rbp), %rax
	movq	-8(%rbp), %rcx
	cmpl	4(%rcx,%rax,8), %edx
	jge	.LBB0_17
# BB#16:                                # %if.then.57
                                        #   in Loop: Header=BB0_9 Depth=1
	movl	-56(%rbp), %eax
	orl	$2, %eax
	movl	%eax, -56(%rbp)
	jmp	.LBB0_20
.LBB0_17:                               # %if.else.59
                                        #   in Loop: Header=BB0_9 Depth=1
	movslq	-44(%rbp), %rax
	movq	-8(%rbp), %rcx
	movl	4(%rcx,%rax,8), %edx
	movslq	-36(%rbp), %rax
	movq	-8(%rbp), %rcx
	cmpl	4(%rcx,%rax,8), %edx
	jle	.LBB0_19
# BB#18:                                # %if.then.68
                                        #   in Loop: Header=BB0_9 Depth=1
	movl	-56(%rbp), %eax
	orl	$1, %eax
	movl	%eax, -56(%rbp)
.LBB0_19:                               # %if.end.70
                                        #   in Loop: Header=BB0_9 Depth=1
	jmp	.LBB0_20
.LBB0_20:                               # %if.end.71
                                        #   in Loop: Header=BB0_9 Depth=1
	movl	-56(%rbp), %eax
	andl	$2, %eax
	cmpl	$0, %eax
	je	.LBB0_28
# BB#21:                                # %if.then.72
                                        #   in Loop: Header=BB0_9 Depth=1
	movslq	-60(%rbp), %rax
	movq	-32(%rbp), %rcx
	movl	(%rcx,%rax,4), %edx
	andl	$2, %edx
	cmpl	$0, %edx
	je	.LBB0_26
# BB#22:                                # %if.then.77
                                        #   in Loop: Header=BB0_9 Depth=1
	movslq	-60(%rbp), %rax
	movq	-24(%rbp), %rcx
	movl	12(%rcx,%rax,8), %edx
	movslq	-36(%rbp), %rax
	movq	-8(%rbp), %rcx
	cmpl	(%rcx,%rax,8), %edx
	jle	.LBB0_24
# BB#23:                                # %cond.true
                                        #   in Loop: Header=BB0_9 Depth=1
	movslq	-60(%rbp), %rax
	movq	-24(%rbp), %rcx
	movl	12(%rcx,%rax,8), %edx
	movl	%edx, -64(%rbp)         # 4-byte Spill
	jmp	.LBB0_25
.LBB0_24:                               # %cond.false
                                        #   in Loop: Header=BB0_9 Depth=1
	movslq	-36(%rbp), %rax
	movq	-8(%rbp), %rcx
	movl	(%rcx,%rax,8), %edx
	movl	%edx, -64(%rbp)         # 4-byte Spill
.LBB0_25:                               # %cond.end
                                        #   in Loop: Header=BB0_9 Depth=1
	movl	-64(%rbp), %eax         # 4-byte Reload
	movslq	-60(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movl	%eax, 12(%rdx,%rcx,8)
	jmp	.LBB0_27
.LBB0_26:                               # %if.else.95
                                        #   in Loop: Header=BB0_9 Depth=1
	movslq	-60(%rbp), %rax
	movq	-32(%rbp), %rcx
	movl	(%rcx,%rax,4), %edx
	orl	$2, %edx
	movl	%edx, (%rcx,%rax,4)
	movslq	-36(%rbp), %rax
	movq	-8(%rbp), %rcx
	movl	(%rcx,%rax,8), %edx
	movslq	-60(%rbp), %rax
	movq	-24(%rbp), %rcx
	movl	%edx, 12(%rcx,%rax,8)
.LBB0_27:                               # %if.end.106
                                        #   in Loop: Header=BB0_9 Depth=1
	jmp	.LBB0_28
.LBB0_28:                               # %if.end.107
                                        #   in Loop: Header=BB0_9 Depth=1
	movl	-56(%rbp), %eax
	andl	$1, %eax
	cmpl	$0, %eax
	je	.LBB0_36
# BB#29:                                # %if.then.110
                                        #   in Loop: Header=BB0_9 Depth=1
	movslq	-60(%rbp), %rax
	movq	-32(%rbp), %rcx
	movl	(%rcx,%rax,4), %edx
	andl	$1, %edx
	cmpl	$0, %edx
	je	.LBB0_34
# BB#30:                                # %if.then.115
                                        #   in Loop: Header=BB0_9 Depth=1
	movslq	-60(%rbp), %rax
	movq	-24(%rbp), %rcx
	movl	8(%rcx,%rax,8), %edx
	movslq	-36(%rbp), %rax
	movq	-8(%rbp), %rcx
	cmpl	(%rcx,%rax,8), %edx
	jge	.LBB0_32
# BB#31:                                # %cond.true.124
                                        #   in Loop: Header=BB0_9 Depth=1
	movslq	-60(%rbp), %rax
	movq	-24(%rbp), %rcx
	movl	8(%rcx,%rax,8), %edx
	movl	%edx, -68(%rbp)         # 4-byte Spill
	jmp	.LBB0_33
.LBB0_32:                               # %cond.false.129
                                        #   in Loop: Header=BB0_9 Depth=1
	movslq	-36(%rbp), %rax
	movq	-8(%rbp), %rcx
	movl	(%rcx,%rax,8), %edx
	movl	%edx, -68(%rbp)         # 4-byte Spill
.LBB0_33:                               # %cond.end.133
                                        #   in Loop: Header=BB0_9 Depth=1
	movl	-68(%rbp), %eax         # 4-byte Reload
	movslq	-60(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movl	%eax, 8(%rdx,%rcx,8)
	jmp	.LBB0_35
.LBB0_34:                               # %if.else.139
                                        #   in Loop: Header=BB0_9 Depth=1
	movslq	-60(%rbp), %rax
	movq	-32(%rbp), %rcx
	movl	(%rcx,%rax,4), %edx
	orl	$1, %edx
	movl	%edx, (%rcx,%rax,4)
	movslq	-36(%rbp), %rax
	movq	-8(%rbp), %rcx
	movl	(%rcx,%rax,8), %edx
	movslq	-60(%rbp), %rax
	movq	-24(%rbp), %rcx
	movl	%edx, 8(%rcx,%rax,8)
.LBB0_35:                               # %if.end.150
                                        #   in Loop: Header=BB0_9 Depth=1
	jmp	.LBB0_36
.LBB0_36:                               # %if.end.151
                                        #   in Loop: Header=BB0_9 Depth=1
	movl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	movl	-44(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jne	.LBB0_38
# BB#37:                                # %if.then.155
                                        #   in Loop: Header=BB0_9 Depth=1
	movl	$0, -44(%rbp)
.LBB0_38:                               # %if.end.156
                                        #   in Loop: Header=BB0_9 Depth=1
	jmp	.LBB0_39
.LBB0_39:                               # %for.inc.157
                                        #   in Loop: Header=BB0_9 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB0_9
.LBB0_40:                               # %for.end.159
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	gimp_blob_fill
	movq	-32(%rbp), %rsi
	movq	%rsi, %rdi
	callq	g_free
	movq	-24(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_blob_polygon, .Lfunc_end0-gimp_blob_polygon
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_blob_new,@function
gimp_blob_new:                          # @gimp_blob_new
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
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	-8(%rbp), %esi
	subl	$1, %esi
	movslq	%esi, %rax
	shlq	$3, %rax
	addq	$16, %rax
	movq	%rax, %rdi
	callq	g_malloc
	movq	%rax, -16(%rbp)
	movl	-4(%rbp), %esi
	movq	-16(%rbp), %rax
	movl	%esi, (%rax)
	movl	-8(%rbp), %esi
	movq	-16(%rbp), %rax
	movl	%esi, 4(%rax)
	movq	-16(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_blob_new, .Lfunc_end1-gimp_blob_new
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_blob_fill,@function
gimp_blob_fill:                         # @gimp_blob_fill
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$0, -20(%rbp)
.LBB2_1:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movslq	-20(%rbp), %rax
	movq	-16(%rbp), %rcx
	cmpl	$0, (%rcx,%rax,4)
	setne	%dl
	xorb	$-1, %dl
	testb	$1, %dl
	jne	.LBB2_2
	jmp	.LBB2_3
.LBB2_2:                                # %while.body
                                        #   in Loop: Header=BB2_1 Depth=1
	movslq	-20(%rbp), %rax
	movq	-8(%rbp), %rcx
	movl	$0, 8(%rcx,%rax,8)
	movslq	-20(%rbp), %rax
	movq	-8(%rbp), %rcx
	movl	$-1, 12(%rcx,%rax,8)
	movl	-20(%rbp), %edx
	addl	$1, %edx
	movl	%edx, -20(%rbp)
	jmp	.LBB2_1
.LBB2_3:                                # %while.end
	movslq	-20(%rbp), %rax
	movq	-16(%rbp), %rcx
	cmpl	$3, (%rcx,%rax,4)
	je	.LBB2_8
# BB#4:                                 # %if.then
	movslq	-20(%rbp), %rax
	movq	-16(%rbp), %rcx
	cmpl	$2, (%rcx,%rax,4)
	jne	.LBB2_6
# BB#5:                                 # %if.then.11
	movslq	-20(%rbp), %rax
	movq	-8(%rbp), %rcx
	movl	12(%rcx,%rax,8), %edx
	movslq	-20(%rbp), %rax
	movq	-8(%rbp), %rcx
	movl	%edx, 8(%rcx,%rax,8)
	jmp	.LBB2_7
.LBB2_6:                                # %if.else
	movslq	-20(%rbp), %rax
	movq	-8(%rbp), %rcx
	movl	8(%rcx,%rax,8), %edx
	movslq	-20(%rbp), %rax
	movq	-8(%rbp), %rcx
	movl	%edx, 12(%rcx,%rax,8)
.LBB2_7:                                # %if.end
	movslq	-20(%rbp), %rax
	movq	-16(%rbp), %rcx
	movl	$3, (%rcx,%rax,4)
.LBB2_8:                                # %if.end.30
	movq	-8(%rbp), %rax
	movl	4(%rax), %ecx
	subl	$1, %ecx
	movl	%ecx, -40(%rbp)
.LBB2_9:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movslq	-40(%rbp), %rax
	movq	-16(%rbp), %rcx
	cmpl	$0, (%rcx,%rax,4)
	setne	%dl
	xorb	$-1, %dl
	testb	$1, %dl
	jne	.LBB2_10
	jmp	.LBB2_12
.LBB2_10:                               # %for.body
                                        #   in Loop: Header=BB2_9 Depth=1
	movslq	-40(%rbp), %rax
	movq	-8(%rbp), %rcx
	movl	$0, 8(%rcx,%rax,8)
	movslq	-40(%rbp), %rax
	movq	-8(%rbp), %rcx
	movl	$-1, 12(%rcx,%rax,8)
# BB#11:                                # %for.inc
                                        #   in Loop: Header=BB2_9 Depth=1
	movl	-40(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB2_9
.LBB2_12:                               # %for.end
	movslq	-40(%rbp), %rax
	movq	-16(%rbp), %rcx
	cmpl	$3, (%rcx,%rax,4)
	je	.LBB2_17
# BB#13:                                # %if.then.46
	movslq	-40(%rbp), %rax
	movq	-16(%rbp), %rcx
	cmpl	$2, (%rcx,%rax,4)
	jne	.LBB2_15
# BB#14:                                # %if.then.50
	movslq	-40(%rbp), %rax
	movq	-8(%rbp), %rcx
	movl	12(%rcx,%rax,8), %edx
	movslq	-40(%rbp), %rax
	movq	-8(%rbp), %rcx
	movl	%edx, 8(%rcx,%rax,8)
	jmp	.LBB2_16
.LBB2_15:                               # %if.else.59
	movslq	-40(%rbp), %rax
	movq	-8(%rbp), %rcx
	movl	8(%rcx,%rax,8), %edx
	movslq	-40(%rbp), %rax
	movq	-8(%rbp), %rcx
	movl	%edx, 12(%rcx,%rax,8)
.LBB2_16:                               # %if.end.68
	movslq	-40(%rbp), %rax
	movq	-16(%rbp), %rcx
	movl	$3, (%rcx,%rax,4)
.LBB2_17:                               # %if.end.71
	movl	-20(%rbp), %eax
	movl	%eax, -32(%rbp)
.LBB2_18:                               # %for.cond.72
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_21 Depth 2
                                        #     Child Loop BB2_30 Depth 2
	movl	-32(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	4(%rcx), %edx
	subl	$2, %edx
	cmpl	%edx, %eax
	jge	.LBB2_43
# BB#19:                                # %for.body.76
                                        #   in Loop: Header=BB2_18 Depth=1
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdx
	movl	(%rdx,%rcx,4), %eax
	andl	$1, %eax
	cmpl	$0, %eax
	jne	.LBB2_41
# BB#20:                                # %if.then.80
                                        #   in Loop: Header=BB2_18 Depth=1
	movl	-32(%rbp), %eax
	addl	$2, %eax
	movl	%eax, -36(%rbp)
.LBB2_21:                               # %while.cond.82
                                        #   Parent Loop BB2_18 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movl	-36(%rbp), %eax
	movq	-8(%rbp), %rdx
	cmpl	4(%rdx), %eax
	movb	%cl, -81(%rbp)          # 1-byte Spill
	jge	.LBB2_23
# BB#22:                                # %land.rhs
                                        #   in Loop: Header=BB2_21 Depth=2
	movslq	-36(%rbp), %rax
	movq	-16(%rbp), %rcx
	movl	(%rcx,%rax,4), %edx
	andl	$1, %edx
	cmpl	$0, %edx
	setne	%sil
	xorb	$-1, %sil
	movb	%sil, -81(%rbp)         # 1-byte Spill
.LBB2_23:                               # %land.end
                                        #   in Loop: Header=BB2_21 Depth=2
	movb	-81(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB2_24
	jmp	.LBB2_25
.LBB2_24:                               # %while.body.90
                                        #   in Loop: Header=BB2_21 Depth=2
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB2_21
.LBB2_25:                               # %while.end.92
                                        #   in Loop: Header=BB2_18 Depth=1
	movl	-36(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	4(%rcx), %eax
	jge	.LBB2_40
# BB#26:                                # %if.then.95
                                        #   in Loop: Header=BB2_18 Depth=1
	movl	-36(%rbp), %eax
	subl	-32(%rbp), %eax
	movl	%eax, -48(%rbp)
	movslq	-32(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movl	8(%rdx,%rcx,8), %eax
	movl	%eax, -24(%rbp)
	movslq	-36(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movl	8(%rdx,%rcx,8), %eax
	movl	%eax, -28(%rbp)
	movl	-28(%rbp), %eax
	subl	-24(%rbp), %eax
	cltd
	idivl	-48(%rbp)
	movl	%eax, -52(%rbp)
	movl	-28(%rbp), %eax
	subl	-24(%rbp), %eax
	movl	-52(%rbp), %esi
	imull	-48(%rbp), %esi
	subl	%esi, %eax
	movl	%eax, -56(%rbp)
	cmpl	$0, -56(%rbp)
	jge	.LBB2_28
# BB#27:                                # %if.then.109
                                        #   in Loop: Header=BB2_18 Depth=1
	xorl	%eax, %eax
	subl	-56(%rbp), %eax
	movl	%eax, -56(%rbp)
	movl	$1, -60(%rbp)
	jmp	.LBB2_29
.LBB2_28:                               # %if.else.111
                                        #   in Loop: Header=BB2_18 Depth=1
	movl	$0, -60(%rbp)
.LBB2_29:                               # %if.end.112
                                        #   in Loop: Header=BB2_18 Depth=1
	movl	$0, -44(%rbp)
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
.LBB2_30:                               # %for.cond.114
                                        #   Parent Loop BB2_18 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-40(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jge	.LBB2_39
# BB#31:                                # %for.body.116
                                        #   in Loop: Header=BB2_30 Depth=2
	movl	-52(%rbp), %eax
	addl	-24(%rbp), %eax
	movl	%eax, -24(%rbp)
	movl	-56(%rbp), %eax
	addl	-44(%rbp), %eax
	movl	%eax, -44(%rbp)
	movl	-44(%rbp), %eax
	cmpl	-48(%rbp), %eax
	jl	.LBB2_33
# BB#32:                                # %if.then.120
                                        #   in Loop: Header=BB2_30 Depth=2
	movl	$1, %eax
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movl	-48(%rbp), %edx
	movl	-44(%rbp), %esi
	subl	%edx, %esi
	movl	%esi, -44(%rbp)
	cmpl	$0, -60(%rbp)
	cmovnel	%ecx, %eax
	addl	-24(%rbp), %eax
	movl	%eax, -24(%rbp)
.LBB2_33:                               # %if.end.124
                                        #   in Loop: Header=BB2_30 Depth=2
	cmpl	$0, -44(%rbp)
	je	.LBB2_35
# BB#34:                                # %lor.lhs.false
                                        #   in Loop: Header=BB2_30 Depth=2
	cmpl	$0, -60(%rbp)
	je	.LBB2_36
.LBB2_35:                               # %if.then.127
                                        #   in Loop: Header=BB2_30 Depth=2
	movl	-24(%rbp), %eax
	movslq	-40(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movl	%eax, 8(%rdx,%rcx,8)
	jmp	.LBB2_37
.LBB2_36:                               # %if.else.132
                                        #   in Loop: Header=BB2_30 Depth=2
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movslq	-40(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movl	%eax, 8(%rdx,%rcx,8)
.LBB2_37:                               # %if.end.138
                                        #   in Loop: Header=BB2_30 Depth=2
	jmp	.LBB2_38
.LBB2_38:                               # %for.inc.139
                                        #   in Loop: Header=BB2_30 Depth=2
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB2_30
.LBB2_39:                               # %for.end.141
                                        #   in Loop: Header=BB2_18 Depth=1
	jmp	.LBB2_40
.LBB2_40:                               # %if.end.142
                                        #   in Loop: Header=BB2_18 Depth=1
	movl	-36(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -32(%rbp)
.LBB2_41:                               # %if.end.144
                                        #   in Loop: Header=BB2_18 Depth=1
	jmp	.LBB2_42
.LBB2_42:                               # %for.inc.145
                                        #   in Loop: Header=BB2_18 Depth=1
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB2_18
.LBB2_43:                               # %for.end.147
	movl	-20(%rbp), %eax
	movl	%eax, -32(%rbp)
.LBB2_44:                               # %for.cond.148
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_47 Depth 2
                                        #     Child Loop BB2_56 Depth 2
	movl	-32(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	4(%rcx), %edx
	subl	$2, %edx
	cmpl	%edx, %eax
	jge	.LBB2_69
# BB#45:                                # %for.body.152
                                        #   in Loop: Header=BB2_44 Depth=1
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdx
	movl	(%rdx,%rcx,4), %eax
	andl	$2, %eax
	cmpl	$0, %eax
	jne	.LBB2_67
# BB#46:                                # %if.then.158
                                        #   in Loop: Header=BB2_44 Depth=1
	movl	-32(%rbp), %eax
	addl	$2, %eax
	movl	%eax, -36(%rbp)
.LBB2_47:                               # %while.cond.165
                                        #   Parent Loop BB2_44 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	movl	-36(%rbp), %eax
	movq	-8(%rbp), %rdx
	cmpl	4(%rdx), %eax
	movb	%cl, -82(%rbp)          # 1-byte Spill
	jge	.LBB2_49
# BB#48:                                # %land.rhs.168
                                        #   in Loop: Header=BB2_47 Depth=2
	movslq	-36(%rbp), %rax
	movq	-16(%rbp), %rcx
	movl	(%rcx,%rax,4), %edx
	andl	$2, %edx
	cmpl	$0, %edx
	setne	%sil
	xorb	$-1, %sil
	movb	%sil, -82(%rbp)         # 1-byte Spill
.LBB2_49:                               # %land.end.174
                                        #   in Loop: Header=BB2_47 Depth=2
	movb	-82(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB2_50
	jmp	.LBB2_51
.LBB2_50:                               # %while.body.175
                                        #   in Loop: Header=BB2_47 Depth=2
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB2_47
.LBB2_51:                               # %while.end.177
                                        #   in Loop: Header=BB2_44 Depth=1
	movl	-36(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	4(%rcx), %eax
	jge	.LBB2_66
# BB#52:                                # %if.then.180
                                        #   in Loop: Header=BB2_44 Depth=1
	movl	-36(%rbp), %eax
	subl	-32(%rbp), %eax
	movl	%eax, -68(%rbp)
	movslq	-32(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movl	12(%rdx,%rcx,8), %eax
	movl	%eax, -24(%rbp)
	movslq	-36(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movl	12(%rdx,%rcx,8), %eax
	movl	%eax, -28(%rbp)
	movl	-28(%rbp), %eax
	subl	-24(%rbp), %eax
	cltd
	idivl	-68(%rbp)
	movl	%eax, -72(%rbp)
	movl	-28(%rbp), %eax
	subl	-24(%rbp), %eax
	movl	-72(%rbp), %esi
	imull	-68(%rbp), %esi
	subl	%esi, %eax
	movl	%eax, -76(%rbp)
	cmpl	$0, -76(%rbp)
	jge	.LBB2_54
# BB#53:                                # %if.then.196
                                        #   in Loop: Header=BB2_44 Depth=1
	xorl	%eax, %eax
	subl	-76(%rbp), %eax
	movl	%eax, -76(%rbp)
	movl	$1, -80(%rbp)
	jmp	.LBB2_55
.LBB2_54:                               # %if.else.198
                                        #   in Loop: Header=BB2_44 Depth=1
	movl	$0, -80(%rbp)
.LBB2_55:                               # %if.end.199
                                        #   in Loop: Header=BB2_44 Depth=1
	movl	$0, -64(%rbp)
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
.LBB2_56:                               # %for.cond.201
                                        #   Parent Loop BB2_44 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-40(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jge	.LBB2_65
# BB#57:                                # %for.body.203
                                        #   in Loop: Header=BB2_56 Depth=2
	movl	-72(%rbp), %eax
	addl	-24(%rbp), %eax
	movl	%eax, -24(%rbp)
	movl	-76(%rbp), %eax
	addl	-64(%rbp), %eax
	movl	%eax, -64(%rbp)
	movl	-64(%rbp), %eax
	cmpl	-68(%rbp), %eax
	jl	.LBB2_59
# BB#58:                                # %if.then.207
                                        #   in Loop: Header=BB2_56 Depth=2
	movl	$1, %eax
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movl	-68(%rbp), %edx
	movl	-64(%rbp), %esi
	subl	%edx, %esi
	movl	%esi, -64(%rbp)
	cmpl	$0, -80(%rbp)
	cmovnel	%ecx, %eax
	addl	-24(%rbp), %eax
	movl	%eax, -24(%rbp)
.LBB2_59:                               # %if.end.212
                                        #   in Loop: Header=BB2_56 Depth=2
	cmpl	$0, -80(%rbp)
	je	.LBB2_62
# BB#60:                                # %land.lhs.true
                                        #   in Loop: Header=BB2_56 Depth=2
	cmpl	$0, -64(%rbp)
	je	.LBB2_62
# BB#61:                                # %if.then.215
                                        #   in Loop: Header=BB2_56 Depth=2
	movl	-24(%rbp), %eax
	subl	$1, %eax
	movslq	-40(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movl	%eax, 12(%rdx,%rcx,8)
	jmp	.LBB2_63
.LBB2_62:                               # %if.else.221
                                        #   in Loop: Header=BB2_56 Depth=2
	movl	-24(%rbp), %eax
	movslq	-40(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movl	%eax, 12(%rdx,%rcx,8)
.LBB2_63:                               # %if.end.226
                                        #   in Loop: Header=BB2_56 Depth=2
	jmp	.LBB2_64
.LBB2_64:                               # %for.inc.227
                                        #   in Loop: Header=BB2_56 Depth=2
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB2_56
.LBB2_65:                               # %for.end.229
                                        #   in Loop: Header=BB2_44 Depth=1
	jmp	.LBB2_66
.LBB2_66:                               # %if.end.230
                                        #   in Loop: Header=BB2_44 Depth=1
	movl	-36(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -32(%rbp)
.LBB2_67:                               # %if.end.232
                                        #   in Loop: Header=BB2_44 Depth=1
	jmp	.LBB2_68
.LBB2_68:                               # %for.inc.233
                                        #   in Loop: Header=BB2_44 Depth=1
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB2_44
.LBB2_69:                               # %for.end.235
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_blob_fill, .Lfunc_end2-gimp_blob_fill
	.cfi_endproc

	.globl	gimp_blob_square
	.align	16, 0x90
	.type	gimp_blob_square,@function
gimp_blob_square:                       # @gimp_blob_square
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
	subq	$80, %rsp
	xorps	%xmm6, %xmm6
	movsd	%xmm0, -8(%rbp)
	movsd	%xmm1, -16(%rbp)
	movsd	%xmm2, -24(%rbp)
	movsd	%xmm3, -32(%rbp)
	movsd	%xmm4, -40(%rbp)
	movsd	%xmm5, -48(%rbp)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	mulsd	-48(%rbp), %xmm0
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	mulsd	-24(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	ucomisd	%xmm0, %xmm6
	jbe	.LBB3_2
# BB#1:                                 # %if.then
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movd	%xmm0, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	movd	%rax, %xmm0
	movsd	%xmm0, -40(%rbp)
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movd	%xmm0, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	movd	%rax, %xmm0
	movsd	%xmm0, -48(%rbp)
.LBB3_2:                                # %if.end
	movl	$4, %esi
	leaq	-80(%rbp), %rdi
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	addsd	-24(%rbp), %xmm0
	addsd	-40(%rbp), %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, -80(%rbp)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	addsd	-32(%rbp), %xmm0
	addsd	-48(%rbp), %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, -76(%rbp)
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	addsd	-24(%rbp), %xmm0
	subsd	-40(%rbp), %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, -72(%rbp)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	addsd	-32(%rbp), %xmm0
	subsd	-48(%rbp), %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, -68(%rbp)
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	subsd	-24(%rbp), %xmm0
	subsd	-40(%rbp), %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, -64(%rbp)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	subsd	-32(%rbp), %xmm0
	subsd	-48(%rbp), %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, -60(%rbp)
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	subsd	-24(%rbp), %xmm0
	addsd	-40(%rbp), %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, -56(%rbp)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	subsd	-32(%rbp), %xmm0
	addsd	-48(%rbp), %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, -52(%rbp)
	callq	gimp_blob_polygon
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_blob_square, .Lfunc_end3-gimp_blob_square
	.cfi_endproc

	.globl	gimp_blob_diamond
	.align	16, 0x90
	.type	gimp_blob_diamond,@function
gimp_blob_diamond:                      # @gimp_blob_diamond
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp12:
	.cfi_def_cfa_offset 16
.Ltmp13:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp14:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	xorps	%xmm6, %xmm6
	movsd	%xmm0, -8(%rbp)
	movsd	%xmm1, -16(%rbp)
	movsd	%xmm2, -24(%rbp)
	movsd	%xmm3, -32(%rbp)
	movsd	%xmm4, -40(%rbp)
	movsd	%xmm5, -48(%rbp)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	mulsd	-48(%rbp), %xmm0
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	mulsd	-24(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	ucomisd	%xmm0, %xmm6
	jbe	.LBB4_2
# BB#1:                                 # %if.then
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movd	%xmm0, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	movd	%rax, %xmm0
	movsd	%xmm0, -40(%rbp)
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movd	%xmm0, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	movd	%rax, %xmm0
	movsd	%xmm0, -48(%rbp)
.LBB4_2:                                # %if.end
	movl	$4, %esi
	leaq	-80(%rbp), %rdi
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	addsd	-24(%rbp), %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, -80(%rbp)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	addsd	-32(%rbp), %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, -76(%rbp)
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	subsd	-40(%rbp), %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, -72(%rbp)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	subsd	-48(%rbp), %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, -68(%rbp)
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	subsd	-24(%rbp), %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, -64(%rbp)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	subsd	-32(%rbp), %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, -60(%rbp)
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	addsd	-40(%rbp), %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, -56(%rbp)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	addsd	-48(%rbp), %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, -52(%rbp)
	callq	gimp_blob_polygon
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_blob_diamond, .Lfunc_end4-gimp_blob_diamond
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI5_0:
	.quad	4602678819172646912     # double 0.5
.LCPI5_1:
	.quad	4661225614328463360     # double 4096
.LCPI5_2:
	.quad	4582731459160452376     # double 0.024543692606170259
.LCPI5_4:
	.quad	4616189618054758400     # double 4
.LCPI5_5:
	.quad	4670232813583204352     # double 16384
	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI5_3:
	.quad	9223372036854775807     # 0x7fffffffffffffff
	.quad	9223372036854775807     # 0x7fffffffffffffff
	.text
	.globl	gimp_blob_ellipse
	.align	16, 0x90
	.type	gimp_blob_ellipse,@function
gimp_blob_ellipse:                      # @gimp_blob_ellipse
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp15:
	.cfi_def_cfa_offset 16
.Ltmp16:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp17:
	.cfi_def_cfa_register %rbp
	subq	$208, %rsp
	movsd	%xmm0, -8(%rbp)
	movsd	%xmm1, -16(%rbp)
	movsd	%xmm2, -24(%rbp)
	movsd	%xmm3, -32(%rbp)
	movsd	%xmm4, -40(%rbp)
	movsd	%xmm5, -48(%rbp)
	cmpl	$0, trig_initialized
	jne	.LBB5_6
# BB#1:                                 # %if.then
	movl	$1, trig_initialized
	movl	$0, -68(%rbp)
.LBB5_2:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$256, -68(%rbp)         # imm = 0x100
	jge	.LBB5_5
# BB#3:                                 # %for.body
                                        #   in Loop: Header=BB5_2 Depth=1
	movsd	.LCPI5_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI5_1, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI5_2, %xmm2         # xmm2 = mem[0],zero
	cvtsi2sdl	-68(%rbp), %xmm3
	mulsd	%xmm2, %xmm3
	movsd	%xmm0, -176(%rbp)       # 8-byte Spill
	movaps	%xmm3, %xmm0
	movsd	%xmm1, -184(%rbp)       # 8-byte Spill
	callq	sin
	movsd	-184(%rbp), %xmm1       # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movsd	-176(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movslq	-68(%rbp), %rcx
	movl	%eax, trig_table(,%rcx,4)
# BB#4:                                 # %for.inc
                                        #   in Loop: Header=BB5_2 Depth=1
	movl	-68(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -68(%rbp)
	jmp	.LBB5_2
.LBB5_5:                                # %for.end
	jmp	.LBB5_6
.LBB5_6:                                # %if.end
	xorps	%xmm0, %xmm0
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	mulsd	-48(%rbp), %xmm1
	movsd	-48(%rbp), %xmm2        # xmm2 = mem[0],zero
	mulsd	-24(%rbp), %xmm2
	subsd	%xmm2, %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	.LBB5_8
# BB#7:                                 # %if.then.7
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movd	%xmm0, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	movd	%rax, %xmm0
	movsd	%xmm0, -40(%rbp)
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movd	%xmm0, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rcx, %rax
	movd	%rax, %xmm0
	movsd	%xmm0, -48(%rbp)
.LBB5_8:                                # %if.end.10
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	movapd	.LCPI5_3(%rip), %xmm2   # xmm2 = [9223372036854775807,9223372036854775807]
	andpd	%xmm2, %xmm1
	addsd	%xmm1, %xmm0
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	movapd	.LCPI5_3(%rip), %xmm2   # xmm2 = [9223372036854775807,9223372036854775807]
	andpd	%xmm2, %xmm1
	addsd	%xmm1, %xmm0
	callq	ceil
	cvttsd2si	%xmm0, %eax
	movl	%eax, -92(%rbp)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	movapd	.LCPI5_3(%rip), %xmm2   # xmm2 = [9223372036854775807,9223372036854775807]
	andpd	%xmm2, %xmm1
	subsd	%xmm1, %xmm0
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	movapd	.LCPI5_3(%rip), %xmm2   # xmm2 = [9223372036854775807,9223372036854775807]
	andpd	%xmm2, %xmm1
	subsd	%xmm1, %xmm0
	callq	floor
	cvttsd2si	%xmm0, %eax
	movl	%eax, -96(%rbp)
	movl	-96(%rbp), %edi
	movl	-92(%rbp), %eax
	subl	-96(%rbp), %eax
	addl	$1, %eax
	movl	%eax, %esi
	callq	gimp_blob_new
	movl	$4, %esi
                                        # kill: RSI<def> ESI<kill>
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movslq	4(%rax), %rdi
	callq	g_malloc0_n
	movq	%rax, -64(%rbp)
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	callq	floor
	cvttsd2si	%xmm0, %ecx
	movl	%ecx, -140(%rbp)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	floor
	cvttsd2si	%xmm0, %ecx
	movl	%ecx, -144(%rbp)
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	mulsd	-24(%rbp), %xmm0
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	mulsd	-32(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	callq	sqrt
	movsd	%xmm0, -80(%rbp)
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	mulsd	-40(%rbp), %xmm0
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	mulsd	-48(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	callq	sqrt
	movsd	%xmm0, -88(%rbp)
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	ucomisd	-88(%rbp), %xmm0
	jbe	.LBB5_10
# BB#9:                                 # %cond.true
	movsd	-80(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -192(%rbp)       # 8-byte Spill
	jmp	.LBB5_11
.LBB5_10:                               # %cond.false
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, -192(%rbp)       # 8-byte Spill
.LBB5_11:                               # %cond.end
	movsd	-192(%rbp), %xmm0       # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -112(%rbp)
	movl	$256, -100(%rbp)        # imm = 0x100
.LBB5_12:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$1, -100(%rbp)
	movb	%cl, -193(%rbp)         # 1-byte Spill
	jle	.LBB5_14
# BB#13:                                # %land.rhs
                                        #   in Loop: Header=BB5_12 Depth=1
	movsd	.LCPI5_4, %xmm0         # xmm0 = mem[0],zero
	movl	$256, %eax              # imm = 0x100
	cltd
	idivl	-100(%rbp)
	cvtsi2sdl	%eax, %xmm1
	mulsd	-112(%rbp), %xmm0
	ucomisd	%xmm1, %xmm0
	seta	%cl
	movb	%cl, -193(%rbp)         # 1-byte Spill
.LBB5_14:                               # %land.end
                                        #   in Loop: Header=BB5_12 Depth=1
	movb	-193(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB5_15
	jmp	.LBB5_16
.LBB5_15:                               # %while.body
                                        #   in Loop: Header=BB5_12 Depth=1
	movl	-100(%rbp), %eax
	sarl	$1, %eax
	movl	%eax, -100(%rbp)
	jmp	.LBB5_12
.LBB5_16:                               # %while.end
	movsd	.LCPI5_0, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI5_4, %xmm1         # xmm1 = mem[0],zero
	movsd	.LCPI5_5, %xmm2         # xmm2 = mem[0],zero
	movsd	-8(%rbp), %xmm3         # xmm3 = mem[0],zero
	cvtsi2sdl	-140(%rbp), %xmm4
	subsd	%xmm4, %xmm3
	mulsd	%xmm2, %xmm3
	movaps	%xmm0, %xmm4
	addsd	%xmm3, %xmm4
	cvttsd2si	%xmm4, %eax
	movl	%eax, -116(%rbp)
	movsd	-16(%rbp), %xmm3        # xmm3 = mem[0],zero
	cvtsi2sdl	-144(%rbp), %xmm4
	subsd	%xmm4, %xmm3
	mulsd	%xmm2, %xmm3
	movaps	%xmm0, %xmm2
	addsd	%xmm3, %xmm2
	cvttsd2si	%xmm2, %eax
	movl	%eax, -120(%rbp)
	movaps	%xmm1, %xmm2
	mulsd	-24(%rbp), %xmm2
	movaps	%xmm0, %xmm3
	addsd	%xmm2, %xmm3
	cvttsd2si	%xmm3, %eax
	movl	%eax, -124(%rbp)
	movaps	%xmm1, %xmm2
	mulsd	-32(%rbp), %xmm2
	movaps	%xmm0, %xmm3
	addsd	%xmm2, %xmm3
	cvttsd2si	%xmm3, %eax
	movl	%eax, -128(%rbp)
	movaps	%xmm1, %xmm2
	mulsd	-40(%rbp), %xmm2
	movaps	%xmm0, %xmm3
	addsd	%xmm2, %xmm3
	cvttsd2si	%xmm3, %eax
	movl	%eax, -132(%rbp)
	mulsd	-48(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, -136(%rbp)
	movl	$0, -68(%rbp)
.LBB5_17:                               # %for.cond.70
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$256, -68(%rbp)         # imm = 0x100
	jge	.LBB5_36
# BB#18:                                # %for.body.73
                                        #   in Loop: Header=BB5_17 Depth=1
	movl	$256, %eax              # imm = 0x100
	movl	$320, %ecx              # imm = 0x140
	movslq	-68(%rbp), %rdx
	movl	trig_table(,%rdx,4), %esi
	movl	%esi, -148(%rbp)
	subl	-68(%rbp), %ecx
	movl	%eax, -200(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-200(%rbp), %ecx        # 4-byte Reload
	idivl	%ecx
	movslq	%edx, %rdi
	movl	trig_table(,%rdi,4), %edx
	movl	%edx, -152(%rbp)
	movl	-116(%rbp), %edx
	movl	-152(%rbp), %esi
	imull	-124(%rbp), %esi
	addl	%esi, %edx
	movl	-148(%rbp), %esi
	imull	-132(%rbp), %esi
	addl	%esi, %edx
	addl	$8192, %edx             # imm = 0x2000
	sarl	$14, %edx
	addl	-140(%rbp), %edx
	movl	%edx, -156(%rbp)
	movl	-120(%rbp), %edx
	movl	-152(%rbp), %esi
	imull	-128(%rbp), %esi
	addl	%esi, %edx
	movl	-148(%rbp), %esi
	imull	-136(%rbp), %esi
	addl	%esi, %edx
	addl	$8192, %edx             # imm = 0x2000
	sarl	$14, %edx
	addl	-144(%rbp), %edx
	movq	-56(%rbp), %rdi
	subl	(%rdi), %edx
	movl	%edx, -160(%rbp)
	movl	-152(%rbp), %edx
	imull	-136(%rbp), %edx
	movl	-148(%rbp), %esi
	imull	-128(%rbp), %esi
	subl	%esi, %edx
	movl	%edx, -164(%rbp)
	cmpl	$0, -164(%rbp)
	jg	.LBB5_26
# BB#19:                                # %if.then.100
                                        #   in Loop: Header=BB5_17 Depth=1
	movslq	-160(%rbp), %rax
	movq	-64(%rbp), %rcx
	movl	(%rcx,%rax,4), %edx
	andl	$1, %edx
	cmpl	$0, %edx
	je	.LBB5_24
# BB#20:                                # %if.then.104
                                        #   in Loop: Header=BB5_17 Depth=1
	movslq	-160(%rbp), %rax
	movq	-56(%rbp), %rcx
	movl	8(%rcx,%rax,8), %edx
	cmpl	-156(%rbp), %edx
	jge	.LBB5_22
# BB#21:                                # %cond.true.109
                                        #   in Loop: Header=BB5_17 Depth=1
	movslq	-160(%rbp), %rax
	movq	-56(%rbp), %rcx
	movl	8(%rcx,%rax,8), %edx
	movl	%edx, -204(%rbp)        # 4-byte Spill
	jmp	.LBB5_23
.LBB5_22:                               # %cond.false.114
                                        #   in Loop: Header=BB5_17 Depth=1
	movl	-156(%rbp), %eax
	movl	%eax, -204(%rbp)        # 4-byte Spill
.LBB5_23:                               # %cond.end.115
                                        #   in Loop: Header=BB5_17 Depth=1
	movl	-204(%rbp), %eax        # 4-byte Reload
	movslq	-160(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movl	%eax, 8(%rdx,%rcx,8)
	jmp	.LBB5_25
.LBB5_24:                               # %if.else
                                        #   in Loop: Header=BB5_17 Depth=1
	movslq	-160(%rbp), %rax
	movq	-64(%rbp), %rcx
	movl	(%rcx,%rax,4), %edx
	orl	$1, %edx
	movl	%edx, (%rcx,%rax,4)
	movl	-156(%rbp), %edx
	movslq	-160(%rbp), %rax
	movq	-56(%rbp), %rcx
	movl	%edx, 8(%rcx,%rax,8)
.LBB5_25:                               # %if.end.127
                                        #   in Loop: Header=BB5_17 Depth=1
	jmp	.LBB5_26
.LBB5_26:                               # %if.end.128
                                        #   in Loop: Header=BB5_17 Depth=1
	cmpl	$0, -164(%rbp)
	jl	.LBB5_34
# BB#27:                                # %if.then.131
                                        #   in Loop: Header=BB5_17 Depth=1
	movslq	-160(%rbp), %rax
	movq	-64(%rbp), %rcx
	movl	(%rcx,%rax,4), %edx
	andl	$2, %edx
	cmpl	$0, %edx
	je	.LBB5_32
# BB#28:                                # %if.then.136
                                        #   in Loop: Header=BB5_17 Depth=1
	movslq	-160(%rbp), %rax
	movq	-56(%rbp), %rcx
	movl	12(%rcx,%rax,8), %edx
	cmpl	-156(%rbp), %edx
	jle	.LBB5_30
# BB#29:                                # %cond.true.142
                                        #   in Loop: Header=BB5_17 Depth=1
	movslq	-160(%rbp), %rax
	movq	-56(%rbp), %rcx
	movl	12(%rcx,%rax,8), %edx
	movl	%edx, -208(%rbp)        # 4-byte Spill
	jmp	.LBB5_31
.LBB5_30:                               # %cond.false.147
                                        #   in Loop: Header=BB5_17 Depth=1
	movl	-156(%rbp), %eax
	movl	%eax, -208(%rbp)        # 4-byte Spill
.LBB5_31:                               # %cond.end.148
                                        #   in Loop: Header=BB5_17 Depth=1
	movl	-208(%rbp), %eax        # 4-byte Reload
	movslq	-160(%rbp), %rcx
	movq	-56(%rbp), %rdx
	movl	%eax, 12(%rdx,%rcx,8)
	jmp	.LBB5_33
.LBB5_32:                               # %if.else.154
                                        #   in Loop: Header=BB5_17 Depth=1
	movslq	-160(%rbp), %rax
	movq	-64(%rbp), %rcx
	movl	(%rcx,%rax,4), %edx
	orl	$2, %edx
	movl	%edx, (%rcx,%rax,4)
	movl	-156(%rbp), %edx
	movslq	-160(%rbp), %rax
	movq	-56(%rbp), %rcx
	movl	%edx, 12(%rcx,%rax,8)
.LBB5_33:                               # %if.end.162
                                        #   in Loop: Header=BB5_17 Depth=1
	jmp	.LBB5_34
.LBB5_34:                               # %if.end.163
                                        #   in Loop: Header=BB5_17 Depth=1
	jmp	.LBB5_35
.LBB5_35:                               # %for.inc.164
                                        #   in Loop: Header=BB5_17 Depth=1
	movl	-100(%rbp), %eax
	addl	-68(%rbp), %eax
	movl	%eax, -68(%rbp)
	jmp	.LBB5_17
.LBB5_36:                               # %for.end.166
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	gimp_blob_fill
	movq	-64(%rbp), %rsi
	movq	%rsi, %rdi
	callq	g_free
	movq	-56(%rbp), %rax
	addq	$208, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_blob_ellipse, .Lfunc_end5-gimp_blob_ellipse
	.cfi_endproc

	.globl	gimp_blob_bounds
	.align	16, 0x90
	.type	gimp_blob_bounds,@function
gimp_blob_bounds:                       # @gimp_blob_bounds
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp18:
	.cfi_def_cfa_offset 16
.Ltmp19:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp20:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movl	$0, -44(%rbp)
.LBB6_1:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movl	-44(%rbp), %eax
	movq	-8(%rbp), %rdx
	cmpl	4(%rdx), %eax
	movb	%cl, -61(%rbp)          # 1-byte Spill
	jge	.LBB6_3
# BB#2:                                 # %land.rhs
                                        #   in Loop: Header=BB6_1 Depth=1
	movslq	-44(%rbp), %rax
	movq	-8(%rbp), %rcx
	movl	8(%rcx,%rax,8), %edx
	movslq	-44(%rbp), %rax
	movq	-8(%rbp), %rcx
	cmpl	12(%rcx,%rax,8), %edx
	setg	%sil
	movb	%sil, -61(%rbp)         # 1-byte Spill
.LBB6_3:                                # %land.end
                                        #   in Loop: Header=BB6_1 Depth=1
	movb	-61(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB6_4
	jmp	.LBB6_5
.LBB6_4:                                # %while.body
                                        #   in Loop: Header=BB6_1 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB6_1
.LBB6_5:                                # %while.end
	movl	-44(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	4(%rcx), %eax
	jge	.LBB6_18
# BB#6:                                 # %if.then
	movq	-8(%rbp), %rax
	movl	(%rax), %ecx
	addl	-44(%rbp), %ecx
	movl	%ecx, -56(%rbp)
	movslq	-44(%rbp), %rax
	movq	-8(%rbp), %rdx
	movl	8(%rdx,%rax,8), %ecx
	movl	%ecx, -48(%rbp)
	movslq	-44(%rbp), %rax
	movq	-8(%rbp), %rdx
	movl	12(%rdx,%rax,8), %ecx
	addl	$1, %ecx
	movl	%ecx, -52(%rbp)
.LBB6_7:                                # %while.cond.18
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movl	-44(%rbp), %eax
	movq	-8(%rbp), %rdx
	cmpl	4(%rdx), %eax
	movb	%cl, -62(%rbp)          # 1-byte Spill
	jge	.LBB6_9
# BB#8:                                 # %land.rhs.21
                                        #   in Loop: Header=BB6_7 Depth=1
	movslq	-44(%rbp), %rax
	movq	-8(%rbp), %rcx
	movl	8(%rcx,%rax,8), %edx
	movslq	-44(%rbp), %rax
	movq	-8(%rbp), %rcx
	cmpl	12(%rcx,%rax,8), %edx
	setle	%sil
	movb	%sil, -62(%rbp)         # 1-byte Spill
.LBB6_9:                                # %land.end.31
                                        #   in Loop: Header=BB6_7 Depth=1
	movb	-62(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB6_10
	jmp	.LBB6_17
.LBB6_10:                               # %while.body.32
                                        #   in Loop: Header=BB6_7 Depth=1
	movslq	-44(%rbp), %rax
	movq	-8(%rbp), %rcx
	movl	8(%rcx,%rax,8), %edx
	cmpl	-48(%rbp), %edx
	jge	.LBB6_12
# BB#11:                                # %cond.true
                                        #   in Loop: Header=BB6_7 Depth=1
	movslq	-44(%rbp), %rax
	movq	-8(%rbp), %rcx
	movl	8(%rcx,%rax,8), %edx
	movl	%edx, -68(%rbp)         # 4-byte Spill
	jmp	.LBB6_13
.LBB6_12:                               # %cond.false
                                        #   in Loop: Header=BB6_7 Depth=1
	movl	-48(%rbp), %eax
	movl	%eax, -68(%rbp)         # 4-byte Spill
.LBB6_13:                               # %cond.end
                                        #   in Loop: Header=BB6_7 Depth=1
	movl	-68(%rbp), %eax         # 4-byte Reload
	movl	%eax, -48(%rbp)
	movslq	-44(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movl	12(%rdx,%rcx,8), %eax
	addl	$1, %eax
	cmpl	-52(%rbp), %eax
	jle	.LBB6_15
# BB#14:                                # %cond.true.48
                                        #   in Loop: Header=BB6_7 Depth=1
	movslq	-44(%rbp), %rax
	movq	-8(%rbp), %rcx
	movl	12(%rcx,%rax,8), %edx
	addl	$1, %edx
	movl	%edx, -72(%rbp)         # 4-byte Spill
	jmp	.LBB6_16
.LBB6_15:                               # %cond.false.54
                                        #   in Loop: Header=BB6_7 Depth=1
	movl	-52(%rbp), %eax
	movl	%eax, -72(%rbp)         # 4-byte Spill
.LBB6_16:                               # %cond.end.55
                                        #   in Loop: Header=BB6_7 Depth=1
	movl	-72(%rbp), %eax         # 4-byte Reload
	movl	%eax, -52(%rbp)
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB6_7
.LBB6_17:                               # %while.end.58
	movq	-8(%rbp), %rax
	movl	(%rax), %ecx
	addl	-44(%rbp), %ecx
	movl	%ecx, -60(%rbp)
	jmp	.LBB6_19
.LBB6_18:                               # %if.else
	movl	$0, -56(%rbp)
	movl	$0, -48(%rbp)
	movl	$0, -60(%rbp)
	movl	$0, -52(%rbp)
.LBB6_19:                               # %if.end
	movl	-48(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, (%rcx)
	movl	-56(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	%eax, (%rcx)
	movl	-52(%rbp), %eax
	subl	-48(%rbp), %eax
	movq	-32(%rbp), %rcx
	movl	%eax, (%rcx)
	movl	-60(%rbp), %eax
	subl	-56(%rbp), %eax
	movq	-40(%rbp), %rcx
	movl	%eax, (%rcx)
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_blob_bounds, .Lfunc_end6-gimp_blob_bounds
	.cfi_endproc

	.globl	gimp_blob_convex_union
	.align	16, 0x90
	.type	gimp_blob_convex_union,@function
gimp_blob_convex_union:                 # @gimp_blob_convex_union
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp21:
	.cfi_def_cfa_offset 16
.Ltmp22:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp23:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	movl	(%rsi), %eax
	movq	-24(%rbp), %rsi
	cmpl	(%rsi), %eax
	jge	.LBB7_2
# BB#1:                                 # %cond.true
	movq	-16(%rbp), %rax
	movl	(%rax), %ecx
	movl	%ecx, -60(%rbp)         # 4-byte Spill
	jmp	.LBB7_3
.LBB7_2:                                # %cond.false
	movq	-24(%rbp), %rax
	movl	(%rax), %ecx
	movl	%ecx, -60(%rbp)         # 4-byte Spill
.LBB7_3:                                # %cond.end
	movl	-60(%rbp), %eax         # 4-byte Reload
	movl	%eax, -36(%rbp)
	movl	-36(%rbp), %edi
	movq	-16(%rbp), %rcx
	movl	(%rcx), %eax
	movq	-16(%rbp), %rcx
	addl	4(%rcx), %eax
	movq	-24(%rbp), %rcx
	movl	(%rcx), %edx
	movq	-24(%rbp), %rcx
	addl	4(%rcx), %edx
	cmpl	%edx, %eax
	movl	%edi, -64(%rbp)         # 4-byte Spill
	jle	.LBB7_5
# BB#4:                                 # %cond.true.10
	movq	-16(%rbp), %rax
	movl	(%rax), %ecx
	movq	-16(%rbp), %rax
	addl	4(%rax), %ecx
	movl	%ecx, -68(%rbp)         # 4-byte Spill
	jmp	.LBB7_6
.LBB7_5:                                # %cond.false.14
	movq	-24(%rbp), %rax
	movl	(%rax), %ecx
	movq	-24(%rbp), %rax
	addl	4(%rax), %ecx
	movl	%ecx, -68(%rbp)         # 4-byte Spill
.LBB7_6:                                # %cond.end.18
	movl	-68(%rbp), %eax         # 4-byte Reload
	subl	-36(%rbp), %eax
	movl	-64(%rbp), %edi         # 4-byte Reload
	movl	%eax, %esi
	callq	gimp_blob_new
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	cmpl	$0, 4(%rax)
	jne	.LBB7_8
# BB#7:                                 # %if.then
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB7_28
.LBB7_8:                                # %if.end
	movl	$4, %eax
	movl	%eax, %esi
	movq	-32(%rbp), %rcx
	movslq	4(%rcx), %rdi
	callq	g_malloc0_n
	movq	%rax, -56(%rbp)
	movl	$0, -40(%rbp)
	movq	-16(%rbp), %rax
	movl	(%rax), %edx
	subl	-36(%rbp), %edx
	movl	%edx, -44(%rbp)
.LBB7_9:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-40(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	4(%rcx), %eax
	jge	.LBB7_14
# BB#10:                                # %for.body
                                        #   in Loop: Header=BB7_9 Depth=1
	movslq	-40(%rbp), %rax
	movq	-16(%rbp), %rcx
	movl	12(%rcx,%rax,8), %edx
	movslq	-40(%rbp), %rax
	movq	-16(%rbp), %rcx
	cmpl	8(%rcx,%rax,8), %edx
	jl	.LBB7_12
# BB#11:                                # %if.then.34
                                        #   in Loop: Header=BB7_9 Depth=1
	movslq	-44(%rbp), %rax
	movq	-56(%rbp), %rcx
	movl	$3, (%rcx,%rax,4)
	movslq	-40(%rbp), %rax
	movq	-16(%rbp), %rcx
	movl	8(%rcx,%rax,8), %edx
	movslq	-44(%rbp), %rax
	movq	-32(%rbp), %rcx
	movl	%edx, 8(%rcx,%rax,8)
	movslq	-40(%rbp), %rax
	movq	-16(%rbp), %rcx
	movl	12(%rcx,%rax,8), %edx
	movslq	-44(%rbp), %rax
	movq	-32(%rbp), %rcx
	movl	%edx, 12(%rcx,%rax,8)
.LBB7_12:                               # %if.end.53
                                        #   in Loop: Header=BB7_9 Depth=1
	jmp	.LBB7_13
.LBB7_13:                               # %for.inc
                                        #   in Loop: Header=BB7_9 Depth=1
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB7_9
.LBB7_14:                               # %for.end
	movl	$0, -40(%rbp)
	movq	-24(%rbp), %rax
	movl	(%rax), %ecx
	subl	-36(%rbp), %ecx
	movl	%ecx, -44(%rbp)
.LBB7_15:                               # %for.cond.57
                                        # =>This Inner Loop Header: Depth=1
	movl	-40(%rbp), %eax
	movq	-24(%rbp), %rcx
	cmpl	4(%rcx), %eax
	jge	.LBB7_27
# BB#16:                                # %for.body.61
                                        #   in Loop: Header=BB7_15 Depth=1
	movslq	-40(%rbp), %rax
	movq	-24(%rbp), %rcx
	movl	12(%rcx,%rax,8), %edx
	movslq	-40(%rbp), %rax
	movq	-24(%rbp), %rcx
	cmpl	8(%rcx,%rax,8), %edx
	jl	.LBB7_25
# BB#17:                                # %if.then.72
                                        #   in Loop: Header=BB7_15 Depth=1
	movslq	-44(%rbp), %rax
	movq	-56(%rbp), %rcx
	cmpl	$0, (%rcx,%rax,4)
	je	.LBB7_23
# BB#18:                                # %if.then.75
                                        #   in Loop: Header=BB7_15 Depth=1
	movslq	-44(%rbp), %rax
	movq	-32(%rbp), %rcx
	movl	8(%rcx,%rax,8), %edx
	movslq	-40(%rbp), %rax
	movq	-24(%rbp), %rcx
	cmpl	8(%rcx,%rax,8), %edx
	jle	.LBB7_20
# BB#19:                                # %if.then.86
                                        #   in Loop: Header=BB7_15 Depth=1
	movslq	-40(%rbp), %rax
	movq	-24(%rbp), %rcx
	movl	8(%rcx,%rax,8), %edx
	movslq	-44(%rbp), %rax
	movq	-32(%rbp), %rcx
	movl	%edx, 8(%rcx,%rax,8)
.LBB7_20:                               # %if.end.95
                                        #   in Loop: Header=BB7_15 Depth=1
	movslq	-44(%rbp), %rax
	movq	-32(%rbp), %rcx
	movl	12(%rcx,%rax,8), %edx
	movslq	-40(%rbp), %rax
	movq	-24(%rbp), %rcx
	cmpl	12(%rcx,%rax,8), %edx
	jge	.LBB7_22
# BB#21:                                # %if.then.106
                                        #   in Loop: Header=BB7_15 Depth=1
	movslq	-40(%rbp), %rax
	movq	-24(%rbp), %rcx
	movl	12(%rcx,%rax,8), %edx
	movslq	-44(%rbp), %rax
	movq	-32(%rbp), %rcx
	movl	%edx, 12(%rcx,%rax,8)
.LBB7_22:                               # %if.end.115
                                        #   in Loop: Header=BB7_15 Depth=1
	jmp	.LBB7_24
.LBB7_23:                               # %if.else
                                        #   in Loop: Header=BB7_15 Depth=1
	movslq	-44(%rbp), %rax
	movq	-56(%rbp), %rcx
	movl	$3, (%rcx,%rax,4)
	movslq	-40(%rbp), %rax
	movq	-24(%rbp), %rcx
	movl	8(%rcx,%rax,8), %edx
	movslq	-44(%rbp), %rax
	movq	-32(%rbp), %rcx
	movl	%edx, 8(%rcx,%rax,8)
	movslq	-40(%rbp), %rax
	movq	-24(%rbp), %rcx
	movl	12(%rcx,%rax,8), %edx
	movslq	-44(%rbp), %rax
	movq	-32(%rbp), %rcx
	movl	%edx, 12(%rcx,%rax,8)
.LBB7_24:                               # %if.end.134
                                        #   in Loop: Header=BB7_15 Depth=1
	jmp	.LBB7_25
.LBB7_25:                               # %if.end.135
                                        #   in Loop: Header=BB7_15 Depth=1
	jmp	.LBB7_26
.LBB7_26:                               # %for.inc.136
                                        #   in Loop: Header=BB7_15 Depth=1
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB7_15
.LBB7_27:                               # %for.end.139
	movq	-32(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	gimp_blob_make_convex
	movq	-56(%rbp), %rsi
	movq	%rsi, %rdi
	callq	g_free
	movq	-32(%rbp), %rsi
	movq	%rsi, -8(%rbp)
.LBB7_28:                               # %return
	movq	-8(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_blob_convex_union, .Lfunc_end7-gimp_blob_convex_union
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_blob_make_convex,@function
gimp_blob_make_convex:                  # @gimp_blob_make_convex
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp24:
	.cfi_def_cfa_offset 16
.Ltmp25:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp26:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$0, -48(%rbp)
.LBB8_1:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movslq	-48(%rbp), %rax
	movq	-16(%rbp), %rcx
	cmpl	$0, (%rcx,%rax,4)
	setne	%dl
	xorb	$-1, %dl
	testb	$1, %dl
	jne	.LBB8_2
	jmp	.LBB8_3
.LBB8_2:                                # %while.body
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB8_1
.LBB8_3:                                # %while.end
	movl	-48(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -36(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, -40(%rbp)
	movslq	-48(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movl	8(%rdx,%rcx,8), %eax
	movslq	-48(%rbp), %rcx
	movq	-8(%rbp), %rdx
	subl	12(%rdx,%rcx,8), %eax
	movl	%eax, -20(%rbp)
	movl	$0, -28(%rbp)
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
.LBB8_4:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_8 Depth 2
                                        #       Child Loop BB8_10 Depth 3
	movl	-44(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	4(%rcx), %eax
	jge	.LBB8_20
# BB#5:                                 # %for.body
                                        #   in Loop: Header=BB8_4 Depth=1
	movslq	-44(%rbp), %rax
	movq	-16(%rbp), %rcx
	movl	(%rcx,%rax,4), %edx
	andl	$1, %edx
	cmpl	$0, %edx
	jne	.LBB8_7
# BB#6:                                 # %if.then
                                        #   in Loop: Header=BB8_4 Depth=1
	jmp	.LBB8_19
.LBB8_7:                                # %if.end
                                        #   in Loop: Header=BB8_4 Depth=1
	movslq	-44(%rbp), %rax
	movq	-8(%rbp), %rcx
	movl	8(%rcx,%rax,8), %edx
	movslq	-40(%rbp), %rax
	movq	-8(%rbp), %rcx
	subl	8(%rcx,%rax,8), %edx
	movl	%edx, -24(%rbp)
	movl	-44(%rbp), %edx
	subl	-40(%rbp), %edx
	movl	%edx, -32(%rbp)
.LBB8_8:                                # %while.cond.20
                                        #   Parent Loop BB8_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB8_10 Depth 3
	movl	-24(%rbp), %eax
	imull	-28(%rbp), %eax
	movl	-20(%rbp), %ecx
	imull	-32(%rbp), %ecx
	subl	%ecx, %eax
	cmpl	$0, %eax
	jge	.LBB8_18
# BB#9:                                 # %while.body.24
                                        #   in Loop: Header=BB8_8 Depth=2
	movslq	-40(%rbp), %rax
	movq	-16(%rbp), %rcx
	movl	(%rcx,%rax,4), %edx
	andl	$-2, %edx
	movl	%edx, (%rcx,%rax,4)
	movl	-36(%rbp), %edx
	movl	%edx, -40(%rbp)
.LBB8_10:                               # %while.cond.28
                                        #   Parent Loop BB8_4 Depth=1
                                        #     Parent Loop BB8_8 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	xorl	%eax, %eax
	movb	%al, %cl
	movl	-36(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -36(%rbp)
	cmpl	-48(%rbp), %eax
	movb	%cl, -49(%rbp)          # 1-byte Spill
	jl	.LBB8_12
# BB#11:                                # %land.rhs
                                        #   in Loop: Header=BB8_10 Depth=3
	movslq	-36(%rbp), %rax
	movq	-16(%rbp), %rcx
	movl	(%rcx,%rax,4), %edx
	andl	$1, %edx
	cmpl	$0, %edx
	setne	%sil
	xorb	$-1, %sil
	movb	%sil, -49(%rbp)         # 1-byte Spill
.LBB8_12:                               # %land.end
                                        #   in Loop: Header=BB8_10 Depth=3
	movb	-49(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB8_13
	jmp	.LBB8_14
.LBB8_13:                               # %while.body.35
                                        #   in Loop: Header=BB8_10 Depth=3
	jmp	.LBB8_10
.LBB8_14:                               # %while.end.36
                                        #   in Loop: Header=BB8_8 Depth=2
	movl	-36(%rbp), %eax
	cmpl	-48(%rbp), %eax
	jge	.LBB8_16
# BB#15:                                # %if.then.38
                                        #   in Loop: Header=BB8_8 Depth=2
	movslq	-48(%rbp), %rax
	movq	-8(%rbp), %rcx
	movl	8(%rcx,%rax,8), %edx
	movslq	-48(%rbp), %rax
	movq	-8(%rbp), %rcx
	subl	12(%rcx,%rax,8), %edx
	movl	%edx, -20(%rbp)
	movl	$0, -28(%rbp)
	jmp	.LBB8_17
.LBB8_16:                               # %if.else
                                        #   in Loop: Header=BB8_8 Depth=2
	movslq	-40(%rbp), %rax
	movq	-8(%rbp), %rcx
	movl	8(%rcx,%rax,8), %edx
	movslq	-36(%rbp), %rax
	movq	-8(%rbp), %rcx
	subl	8(%rcx,%rax,8), %edx
	movl	%edx, -20(%rbp)
	movl	-40(%rbp), %edx
	subl	-36(%rbp), %edx
	movl	%edx, -28(%rbp)
.LBB8_17:                               # %if.end.58
                                        #   in Loop: Header=BB8_8 Depth=2
	movslq	-44(%rbp), %rax
	movq	-8(%rbp), %rcx
	movl	8(%rcx,%rax,8), %edx
	movslq	-40(%rbp), %rax
	movq	-8(%rbp), %rcx
	subl	8(%rcx,%rax,8), %edx
	movl	%edx, -24(%rbp)
	movl	-44(%rbp), %edx
	subl	-40(%rbp), %edx
	movl	%edx, -32(%rbp)
	jmp	.LBB8_8
.LBB8_18:                               # %while.end.69
                                        #   in Loop: Header=BB8_4 Depth=1
	movl	-24(%rbp), %eax
	movl	%eax, -20(%rbp)
	movl	-32(%rbp), %eax
	movl	%eax, -28(%rbp)
	movl	-40(%rbp), %eax
	movl	%eax, -36(%rbp)
	movl	-44(%rbp), %eax
	movl	%eax, -40(%rbp)
.LBB8_19:                               # %for.inc
                                        #   in Loop: Header=BB8_4 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB8_4
.LBB8_20:                               # %for.end
	movl	-48(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -36(%rbp)
	movl	-48(%rbp), %eax
	movl	%eax, -40(%rbp)
	movslq	-48(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movl	12(%rdx,%rcx,8), %eax
	movslq	-48(%rbp), %rcx
	movq	-8(%rbp), %rdx
	subl	8(%rdx,%rcx,8), %eax
	movl	%eax, -20(%rbp)
	movl	$0, -28(%rbp)
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
.LBB8_21:                               # %for.cond.82
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_25 Depth 2
                                        #       Child Loop BB8_27 Depth 3
	movl	-44(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	4(%rcx), %eax
	jge	.LBB8_37
# BB#22:                                # %for.body.85
                                        #   in Loop: Header=BB8_21 Depth=1
	movslq	-44(%rbp), %rax
	movq	-16(%rbp), %rcx
	movl	(%rcx,%rax,4), %edx
	andl	$2, %edx
	cmpl	$0, %edx
	jne	.LBB8_24
# BB#23:                                # %if.then.90
                                        #   in Loop: Header=BB8_21 Depth=1
	jmp	.LBB8_36
.LBB8_24:                               # %if.end.91
                                        #   in Loop: Header=BB8_21 Depth=1
	movslq	-44(%rbp), %rax
	movq	-8(%rbp), %rcx
	movl	12(%rcx,%rax,8), %edx
	movslq	-40(%rbp), %rax
	movq	-8(%rbp), %rcx
	subl	12(%rcx,%rax,8), %edx
	movl	%edx, -24(%rbp)
	movl	-44(%rbp), %edx
	subl	-40(%rbp), %edx
	movl	%edx, -32(%rbp)
.LBB8_25:                               # %while.cond.102
                                        #   Parent Loop BB8_21 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB8_27 Depth 3
	movl	-24(%rbp), %eax
	imull	-28(%rbp), %eax
	movl	-20(%rbp), %ecx
	imull	-32(%rbp), %ecx
	subl	%ecx, %eax
	cmpl	$0, %eax
	jle	.LBB8_35
# BB#26:                                # %while.body.107
                                        #   in Loop: Header=BB8_25 Depth=2
	movslq	-40(%rbp), %rax
	movq	-16(%rbp), %rcx
	movl	(%rcx,%rax,4), %edx
	andl	$-3, %edx
	movl	%edx, (%rcx,%rax,4)
	movl	-36(%rbp), %edx
	movl	%edx, -40(%rbp)
.LBB8_27:                               # %while.cond.111
                                        #   Parent Loop BB8_21 Depth=1
                                        #     Parent Loop BB8_25 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	xorl	%eax, %eax
	movb	%al, %cl
	movl	-36(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -36(%rbp)
	cmpl	-48(%rbp), %eax
	movb	%cl, -50(%rbp)          # 1-byte Spill
	jl	.LBB8_29
# BB#28:                                # %land.rhs.114
                                        #   in Loop: Header=BB8_27 Depth=3
	movslq	-36(%rbp), %rax
	movq	-16(%rbp), %rcx
	movl	(%rcx,%rax,4), %edx
	andl	$2, %edx
	cmpl	$0, %edx
	setne	%sil
	xorb	$-1, %sil
	movb	%sil, -50(%rbp)         # 1-byte Spill
.LBB8_29:                               # %land.end.120
                                        #   in Loop: Header=BB8_27 Depth=3
	movb	-50(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB8_30
	jmp	.LBB8_31
.LBB8_30:                               # %while.body.121
                                        #   in Loop: Header=BB8_27 Depth=3
	jmp	.LBB8_27
.LBB8_31:                               # %while.end.122
                                        #   in Loop: Header=BB8_25 Depth=2
	movl	-36(%rbp), %eax
	cmpl	-48(%rbp), %eax
	jge	.LBB8_33
# BB#32:                                # %if.then.124
                                        #   in Loop: Header=BB8_25 Depth=2
	movslq	-48(%rbp), %rax
	movq	-8(%rbp), %rcx
	movl	12(%rcx,%rax,8), %edx
	movslq	-48(%rbp), %rax
	movq	-8(%rbp), %rcx
	subl	8(%rcx,%rax,8), %edx
	movl	%edx, -20(%rbp)
	movl	$0, -28(%rbp)
	jmp	.LBB8_34
.LBB8_33:                               # %if.else.134
                                        #   in Loop: Header=BB8_25 Depth=2
	movslq	-40(%rbp), %rax
	movq	-8(%rbp), %rcx
	movl	12(%rcx,%rax,8), %edx
	movslq	-36(%rbp), %rax
	movq	-8(%rbp), %rcx
	subl	12(%rcx,%rax,8), %edx
	movl	%edx, -20(%rbp)
	movl	-40(%rbp), %edx
	subl	-36(%rbp), %edx
	movl	%edx, -28(%rbp)
.LBB8_34:                               # %if.end.145
                                        #   in Loop: Header=BB8_25 Depth=2
	movslq	-44(%rbp), %rax
	movq	-8(%rbp), %rcx
	movl	12(%rcx,%rax,8), %edx
	movslq	-40(%rbp), %rax
	movq	-8(%rbp), %rcx
	subl	12(%rcx,%rax,8), %edx
	movl	%edx, -24(%rbp)
	movl	-44(%rbp), %edx
	subl	-40(%rbp), %edx
	movl	%edx, -32(%rbp)
	jmp	.LBB8_25
.LBB8_35:                               # %while.end.156
                                        #   in Loop: Header=BB8_21 Depth=1
	movl	-24(%rbp), %eax
	movl	%eax, -20(%rbp)
	movl	-32(%rbp), %eax
	movl	%eax, -28(%rbp)
	movl	-40(%rbp), %eax
	movl	%eax, -36(%rbp)
	movl	-44(%rbp), %eax
	movl	%eax, -40(%rbp)
.LBB8_36:                               # %for.inc.157
                                        #   in Loop: Header=BB8_21 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB8_21
.LBB8_37:                               # %for.end.159
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	gimp_blob_fill
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_blob_make_convex, .Lfunc_end8-gimp_blob_make_convex
	.cfi_endproc

	.globl	gimp_blob_duplicate
	.align	16, 0x90
	.type	gimp_blob_duplicate,@function
gimp_blob_duplicate:                    # @gimp_blob_duplicate
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp27:
	.cfi_def_cfa_offset 16
.Ltmp28:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp29:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -16(%rbp)
	je	.LBB9_3
# BB#2:                                 # %if.then
	jmp	.LBB9_4
.LBB9_3:                                # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_blob_duplicate, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB9_6
.LBB9_4:                                # %if.end
	jmp	.LBB9_5
.LBB9_5:                                # %do.end
	movq	-16(%rbp), %rax
	movq	-16(%rbp), %rcx
	movl	4(%rcx), %edx
	subl	$1, %edx
	movslq	%edx, %rcx
	shlq	$3, %rcx
	addq	$16, %rcx
	movl	%ecx, %edx
	movq	%rax, %rdi
	movl	%edx, %esi
	callq	g_memdup
	movq	%rax, -8(%rbp)
.LBB9_6:                                # %return
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_blob_duplicate, .Lfunc_end9-gimp_blob_duplicate
	.cfi_endproc

	.type	trig_initialized,@object # @trig_initialized
	.local	trig_initialized
	.comm	trig_initialized,4,4
	.type	trig_table,@object      # @trig_table
	.local	trig_table
	.comm	trig_table,1024,16
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gimp-Paint"
	.size	.L.str, 11

	.type	.L__func__.gimp_blob_duplicate,@object # @__func__.gimp_blob_duplicate
.L__func__.gimp_blob_duplicate:
	.asciz	"gimp_blob_duplicate"
	.size	.L__func__.gimp_blob_duplicate, 20

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"b != NULL"
	.size	.L.str.1, 10


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
