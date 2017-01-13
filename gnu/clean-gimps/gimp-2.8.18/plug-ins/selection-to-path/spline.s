	.text
	.file	"spline.bc"
	.globl	new_spline
	.align	16, 0x90
	.type	new_spline,@function
new_spline:                             # @new_spline
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
	subq	$112, %rsp
	movq	%rdi, %rax
	movl	$80, %ecx
	movl	%ecx, %edx
	leaq	-96(%rbp), %rsi
	xorps	%xmm0, %xmm0
	movq	.Lnew_spline.coord, %r8
	movq	%r8, -16(%rbp)
	movq	.Lnew_spline.coord+8, %r8
	movq	%r8, -8(%rbp)
	movq	-16(%rbp), %r8
	movq	%r8, -48(%rbp)
	movq	-8(%rbp), %r8
	movq	%r8, -40(%rbp)
	movq	-48(%rbp), %r8
	movq	%r8, -64(%rbp)
	movq	-40(%rbp), %r8
	movq	%r8, -56(%rbp)
	movq	-64(%rbp), %r8
	movq	%r8, -80(%rbp)
	movq	-56(%rbp), %r8
	movq	%r8, -72(%rbp)
	movq	-80(%rbp), %r8
	movq	%r8, -96(%rbp)
	movq	-72(%rbp), %r8
	movq	%r8, -88(%rbp)
	movl	$-1, -32(%rbp)
	movsd	%xmm0, -24(%rbp)
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	memcpy
	movq	-104(%rbp), %rax        # 8-byte Reload
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	new_spline, .Lfunc_end0-new_spline
	.cfi_endproc

	.globl	print_spline
	.align	16, 0x90
	.type	print_spline,@function
print_spline:                           # @print_spline
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
	subq	$32, %rsp
	leaq	16(%rbp), %rax
	movq	%rdi, -8(%rbp)
	cmpl	$1, 64(%rax)
	movq	%rax, -16(%rbp)         # 8-byte Spill
	jne	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$.L.str, %rsi
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax         # 8-byte Reload
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movsd	8(%rax), %xmm1          # xmm1 = mem[0],zero
	movsd	48(%rax), %xmm2         # xmm2 = mem[0],zero
	movsd	56(%rax), %xmm3         # xmm3 = mem[0],zero
	movb	$4, %al
	callq	fprintf
	movl	%eax, -20(%rbp)         # 4-byte Spill
	jmp	.LBB1_6
.LBB1_2:                                # %if.else
	movq	-16(%rbp), %rax         # 8-byte Reload
	cmpl	$3, 64(%rax)
	jne	.LBB1_4
# BB#3:                                 # %if.then.11
	movabsq	$.L.str.1, %rsi
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax         # 8-byte Reload
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	movsd	8(%rax), %xmm1          # xmm1 = mem[0],zero
	movsd	16(%rax), %xmm2         # xmm2 = mem[0],zero
	movsd	24(%rax), %xmm3         # xmm3 = mem[0],zero
	movsd	32(%rax), %xmm4         # xmm4 = mem[0],zero
	movsd	40(%rax), %xmm5         # xmm5 = mem[0],zero
	movsd	48(%rax), %xmm6         # xmm6 = mem[0],zero
	movsd	56(%rax), %xmm7         # xmm7 = mem[0],zero
	movb	$8, %al
	callq	fprintf
	movl	%eax, -24(%rbp)         # 4-byte Spill
	jmp	.LBB1_5
.LBB1_4:                                # %if.else.37
	jmp	.LBB1_5
.LBB1_5:                                # %if.end
	jmp	.LBB1_6
.LBB1_6:                                # %if.end.38
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	print_spline, .Lfunc_end1-print_spline
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI2_0:
	.quad	4607182418800017408     # double 1
	.text
	.globl	evaluate_spline
	.align	16, 0x90
	.type	evaluate_spline,@function
evaluate_spline:                        # @evaluate_spline
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
	subq	$304, %rsp              # imm = 0x130
	leaq	16(%rbp), %rax
	movsd	.LCPI2_0, %xmm1         # xmm1 = mem[0],zero
	movsd	%xmm0, -24(%rbp)
	subsd	-24(%rbp), %xmm1
	movsd	%xmm1, -368(%rbp)
	movl	64(%rax), %ecx
	movl	%ecx, -372(%rbp)
	movl	$0, -356(%rbp)
	movq	%rax, -432(%rbp)        # 8-byte Spill
.LBB2_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-356(%rbp), %eax
	cmpl	-372(%rbp), %eax
	ja	.LBB2_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB2_1 Depth=1
	leaq	-352(%rbp), %rax
	movl	-356(%rbp), %ecx
	movl	%ecx, %edx
	shlq	$4, %rdx
	addq	%rdx, %rax
	movl	-356(%rbp), %ecx
	movl	%ecx, %edx
	shlq	$4, %rdx
	movq	-432(%rbp), %rsi        # 8-byte Reload
	addq	%rdx, %rsi
	movq	(%rsi), %rdx
	movq	%rdx, (%rax)
	movq	8(%rsi), %rdx
	movq	%rdx, 8(%rax)
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB2_1 Depth=1
	movl	-356(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -356(%rbp)
	jmp	.LBB2_1
.LBB2_4:                                # %for.end
	movl	$1, -360(%rbp)
.LBB2_5:                                # %for.cond.6
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_7 Depth 2
	movl	-360(%rbp), %eax
	cmpl	-372(%rbp), %eax
	ja	.LBB2_12
# BB#6:                                 # %for.body.8
                                        #   in Loop: Header=BB2_5 Depth=1
	movl	$0, -356(%rbp)
.LBB2_7:                                # %for.cond.9
                                        #   Parent Loop BB2_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-356(%rbp), %eax
	movl	-372(%rbp), %ecx
	subl	-360(%rbp), %ecx
	cmpl	%ecx, %eax
	ja	.LBB2_10
# BB#8:                                 # %for.body.12
                                        #   in Loop: Header=BB2_7 Depth=2
	leaq	-352(%rbp), %rax
	movl	-356(%rbp), %ecx
	movl	%ecx, %edx
	movl	-360(%rbp), %ecx
	subl	$1, %ecx
	movl	%ecx, %ecx
	movl	%ecx, %esi
	imulq	$80, %rsi, %rsi
	movq	%rax, %rdi
	addq	%rsi, %rdi
	shlq	$4, %rdx
	addq	%rdx, %rdi
	movsd	(%rdi), %xmm0           # xmm0 = mem[0],zero
	mulsd	-368(%rbp), %xmm0
	movsd	%xmm0, -392(%rbp)
	movl	-356(%rbp), %ecx
	movl	%ecx, %edx
	movl	-360(%rbp), %ecx
	subl	$1, %ecx
	movl	%ecx, %ecx
	movl	%ecx, %esi
	imulq	$80, %rsi, %rsi
	movq	%rax, %rdi
	addq	%rsi, %rdi
	shlq	$4, %rdx
	addq	%rdx, %rdi
	movsd	8(%rdi), %xmm0          # xmm0 = mem[0],zero
	mulsd	-368(%rbp), %xmm0
	movsd	%xmm0, -384(%rbp)
	movl	-356(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, %ecx
	movl	%ecx, %edx
	movl	-360(%rbp), %ecx
	subl	$1, %ecx
	movl	%ecx, %ecx
	movl	%ecx, %esi
	imulq	$80, %rsi, %rsi
	movq	%rax, %rdi
	addq	%rsi, %rdi
	shlq	$4, %rdx
	addq	%rdx, %rdi
	movsd	(%rdi), %xmm0           # xmm0 = mem[0],zero
	mulsd	-24(%rbp), %xmm0
	movsd	%xmm0, -408(%rbp)
	movl	-356(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, %ecx
	movl	%ecx, %edx
	movl	-360(%rbp), %ecx
	subl	$1, %ecx
	movl	%ecx, %ecx
	movl	%ecx, %esi
	imulq	$80, %rsi, %rsi
	movq	%rax, %rdi
	addq	%rsi, %rdi
	shlq	$4, %rdx
	addq	%rdx, %rdi
	movsd	8(%rdi), %xmm0          # xmm0 = mem[0],zero
	mulsd	-24(%rbp), %xmm0
	movsd	%xmm0, -400(%rbp)
	movl	-356(%rbp), %ecx
	movl	%ecx, %edx
	movl	-360(%rbp), %ecx
	movl	%ecx, %esi
	imulq	$80, %rsi, %rsi
	addq	%rsi, %rax
	shlq	$4, %rdx
	addq	%rdx, %rax
	movsd	-392(%rbp), %xmm0       # xmm0 = mem[0],zero
	addsd	-408(%rbp), %xmm0
	movsd	%xmm0, -424(%rbp)
	movsd	-384(%rbp), %xmm0       # xmm0 = mem[0],zero
	addsd	-400(%rbp), %xmm0
	movsd	%xmm0, -416(%rbp)
	movq	-424(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-416(%rbp), %rdx
	movq	%rdx, 8(%rax)
# BB#9:                                 # %for.inc.60
                                        #   in Loop: Header=BB2_7 Depth=2
	movl	-356(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -356(%rbp)
	jmp	.LBB2_7
.LBB2_10:                               # %for.end.62
                                        #   in Loop: Header=BB2_5 Depth=1
	jmp	.LBB2_11
.LBB2_11:                               # %for.inc.63
                                        #   in Loop: Header=BB2_5 Depth=1
	movl	-360(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -360(%rbp)
	jmp	.LBB2_5
.LBB2_12:                               # %for.end.65
	movl	-372(%rbp), %eax
	movl	%eax, %ecx
	leaq	(%rcx,%rcx,4), %rcx
	shlq	$4, %rcx
	movups	-352(%rbp,%rcx), %xmm0
	movaps	%xmm0, -16(%rbp)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-8(%rbp), %xmm1         # xmm1 = mem[0],zero
	addq	$304, %rsp              # imm = 0x130
	popq	%rbp
	retq
.Lfunc_end2:
	.size	evaluate_spline, .Lfunc_end2-evaluate_spline
	.cfi_endproc

	.globl	new_spline_list
	.align	16, 0x90
	.type	new_spline_list,@function
new_spline_list:                        # @new_spline_list
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
	movl	$1, %eax
	movl	%eax, %edi
	movl	$16, %eax
	movl	%eax, %esi
	callq	g_malloc_n
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	movq	-8(%rbp), %rax
	movl	$0, 8(%rax)
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	new_spline_list, .Lfunc_end3-new_spline_list
	.cfi_endproc

	.globl	init_spline_list
	.align	16, 0x90
	.type	init_spline_list,@function
init_spline_list:                       # @init_spline_list
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
	subq	$16, %rsp
	leaq	16(%rbp), %rax
	movl	$1, %ecx
	movl	%ecx, %edi
	movl	$16, %ecx
	movl	%ecx, %esi
	movq	%rax, -16(%rbp)         # 8-byte Spill
	callq	g_malloc_n
	movl	$1, %ecx
	movl	%ecx, %edi
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	%rax, -8(%rbp)
	callq	g_malloc_n
	movl	$80, %ecx
	movl	%ecx, %edx
	movq	-8(%rbp), %rsi
	movq	%rax, (%rsi)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdi
	callq	memcpy
	movq	-8(%rbp), %rax
	movl	$1, 8(%rax)
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	init_spline_list, .Lfunc_end4-init_spline_list
	.cfi_endproc

	.globl	free_spline_list
	.align	16, 0x90
	.type	free_spline_list,@function
free_spline_list:                       # @free_spline_list
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	cmpq	$0, (%rdi)
	je	.LBB5_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	safe_free
.LBB5_2:                                # %if.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	free_spline_list, .Lfunc_end5-free_spline_list
	.cfi_endproc

	.globl	append_spline
	.align	16, 0x90
	.type	append_spline,@function
append_spline:                          # @append_spline
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
	subq	$16, %rsp
	leaq	16(%rbp), %rax
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	movq	%rax, -16(%rbp)         # 8-byte Spill
	je	.LBB6_2
# BB#1:                                 # %cond.true
	jmp	.LBB6_3
.LBB6_2:                                # %cond.false
	movabsq	$.L.str.2, %rdi
	movabsq	$.L.str.3, %rsi
	movl	$162, %edx
	movabsq	$.L__PRETTY_FUNCTION__.append_spline, %rcx
	callq	__assert_fail
.LBB6_3:                                # %cond.end
	movq	-8(%rbp), %rax
	movl	8(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 8(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rdx
	movl	8(%rdx), %ecx
	movl	%ecx, %edx
	imulq	$80, %rdx, %rsi
	movq	%rax, %rdi
	callq	g_realloc
	movl	$80, %ecx
	movl	%ecx, %edx
	movq	-8(%rbp), %rsi
	movq	%rax, (%rsi)
	movq	-8(%rbp), %rax
	movl	8(%rax), %ecx
	subl	$1, %ecx
	movl	%ecx, %ecx
	movl	%ecx, %eax
	movq	-8(%rbp), %rsi
	imulq	$80, %rax, %rax
	addq	(%rsi), %rax
	movq	-16(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdi
	callq	memcpy
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	append_spline, .Lfunc_end6-append_spline
	.cfi_endproc

	.globl	concat_spline_lists
	.align	16, 0x90
	.type	concat_spline_lists,@function
concat_spline_lists:                    # @concat_spline_lists
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
	subq	$48, %rsp
	movq	%rsi, -16(%rbp)
	movl	%edx, -8(%rbp)
	movq	%rdi, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB7_2
# BB#1:                                 # %cond.true
	jmp	.LBB7_3
.LBB7_2:                                # %cond.false
	movabsq	$.L.str.4, %rdi
	movabsq	$.L.str.3, %rsi
	movl	$180, %edx
	movabsq	$.L__PRETTY_FUNCTION__.concat_spline_lists, %rcx
	callq	__assert_fail
.LBB7_3:                                # %cond.end
	movq	-24(%rbp), %rax
	movl	8(%rax), %ecx
	addl	-8(%rbp), %ecx
	movl	%ecx, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	-32(%rbp), %ecx
	movl	%ecx, %edx
	imulq	$80, %rdx, %rsi
	movq	%rax, %rdi
	callq	g_realloc
	movq	-24(%rbp), %rdx
	movq	%rax, (%rdx)
	movl	$0, -28(%rbp)
.LBB7_4:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-28(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jae	.LBB7_7
# BB#5:                                 # %for.body
                                        #   in Loop: Header=BB7_4 Depth=1
	movl	$80, %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rcx
	movl	8(%rcx), %eax
	movl	%eax, %esi
	addl	$1, %esi
	movl	%esi, 8(%rcx)
	movl	%eax, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdi
	imulq	$80, %rcx, %rcx
	addq	(%rdi), %rcx
	movl	-28(%rbp), %eax
	movl	%eax, %edi
	imulq	$80, %rdi, %rdi
	addq	-16(%rbp), %rdi
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	movq	%rcx, %rdi
	movq	-40(%rbp), %rsi         # 8-byte Reload
	callq	memcpy
# BB#6:                                 # %for.inc
                                        #   in Loop: Header=BB7_4 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB7_4
.LBB7_7:                                # %for.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	concat_spline_lists, .Lfunc_end7-concat_spline_lists
	.cfi_endproc

	.globl	new_spline_list_array
	.align	16, 0x90
	.type	new_spline_list_array,@function
new_spline_list_array:                  # @new_spline_list_array
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
	movq	$0, -32(%rbp)
	movl	$0, -24(%rbp)
	movups	-32(%rbp), %xmm0
	movaps	%xmm0, -16(%rbp)
	movq	-16(%rbp), %rax
	movl	-8(%rbp), %edx
	popq	%rbp
	retq
.Lfunc_end8:
	.size	new_spline_list_array, .Lfunc_end8-new_spline_list_array
	.cfi_endproc

	.globl	free_spline_list_array
	.align	16, 0x90
	.type	free_spline_list_array,@function
free_spline_list_array:                 # @free_spline_list_array
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
	movq	%rdi, -8(%rbp)
	movl	$0, -12(%rbp)
.LBB9_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	8(%rcx), %eax
	jae	.LBB9_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	-12(%rbp), %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	shlq	$4, %rcx
	addq	(%rdx), %rcx
	movq	%rcx, %rdi
	callq	free_spline_list
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB9_1 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB9_1
.LBB9_4:                                # %for.end
	movq	-8(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB9_6
# BB#5:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	safe_free
.LBB9_6:                                # %if.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	free_spline_list_array, .Lfunc_end9-free_spline_list_array
	.cfi_endproc

	.globl	append_spline_list
	.align	16, 0x90
	.type	append_spline_list,@function
append_spline_list:                     # @append_spline_list
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp30:
	.cfi_def_cfa_offset 16
.Ltmp31:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp32:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rsi, -16(%rbp)
	movl	%edx, -8(%rbp)
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rsi
	movl	8(%rsi), %edx
	addl	$1, %edx
	movl	%edx, 8(%rsi)
	movq	-24(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	-24(%rbp), %rdi
	movl	8(%rdi), %edx
	movl	%edx, %edi
	shlq	$4, %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movq	%rsi, %rdi
	movq	-32(%rbp), %rsi         # 8-byte Reload
	callq	g_realloc
	movq	-24(%rbp), %rsi
	movq	%rax, (%rsi)
	movq	-24(%rbp), %rax
	movl	8(%rax), %edx
	subl	$1, %edx
	movl	%edx, %edx
	movl	%edx, %eax
	movq	-24(%rbp), %rsi
	shlq	$4, %rax
	addq	(%rsi), %rax
	movq	-16(%rbp), %rsi
	movq	%rsi, (%rax)
	movq	-8(%rbp), %rsi
	movq	%rsi, 8(%rax)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	append_spline_list, .Lfunc_end10-append_spline_list
	.cfi_endproc

	.type	.Lnew_spline.coord,@object # @new_spline.coord
	.section	.rodata.cst16,"aM",@progbits,16
	.align	8
.Lnew_spline.coord:
	.quad	-4586634745500139520    # double -100
	.quad	-4586634745500139520    # double -100
	.size	.Lnew_spline.coord, 16

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"(%.3f,%.3f)--(%.3f,%.3f).\n"
	.size	.L.str, 27

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"(%.3f,%.3f)..ctrls(%.3f,%.3f)&(%.3f,%.3f)..(%.3f,%.3f).\n"
	.size	.L.str.1, 57

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"l != ((void*)0)"
	.size	.L.str.2, 16

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"spline.c"
	.size	.L.str.3, 9

	.type	.L__PRETTY_FUNCTION__.append_spline,@object # @__PRETTY_FUNCTION__.append_spline
.L__PRETTY_FUNCTION__.append_spline:
	.asciz	"void append_spline(spline_list_type *, spline_type)"
	.size	.L__PRETTY_FUNCTION__.append_spline, 52

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"s1 != ((void*)0)"
	.size	.L.str.4, 17

	.type	.L__PRETTY_FUNCTION__.concat_spline_lists,@object # @__PRETTY_FUNCTION__.concat_spline_lists
.L__PRETTY_FUNCTION__.concat_spline_lists:
	.asciz	"void concat_spline_lists(spline_list_type *, spline_list_type)"
	.size	.L__PRETTY_FUNCTION__.concat_spline_lists, 63


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
