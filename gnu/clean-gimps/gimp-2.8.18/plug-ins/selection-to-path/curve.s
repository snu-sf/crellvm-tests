	.text
	.file	"curve.bc"
	.globl	new_curve
	.align	16, 0x90
	.type	new_curve,@function
new_curve:                              # @new_curve
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
	subq	$16, %rsp
	movl	$1, %eax
	movl	%eax, %edi
	movl	$48, %eax
	movl	%eax, %esi
	callq	g_malloc_n
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	movq	-8(%rbp), %rax
	movl	$0, 8(%rax)
	movq	-8(%rbp), %rax
	movl	$0, 12(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 24(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 16(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 40(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 32(%rax)
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	new_curve, .Lfunc_end0-new_curve
	.cfi_endproc

	.globl	init_curve
	.align	16, 0x90
	.type	init_curve,@function
init_curve:                             # @init_curve
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	callq	new_curve
	movl	$1, %ecx
	movl	%ecx, %edi
	movl	$24, %ecx
	movl	%ecx, %esi
	movq	%rax, -16(%rbp)
	callq	g_malloc_n
	movq	-16(%rbp), %rsi
	movq	%rax, (%rsi)
	movq	-16(%rbp), %rax
	movl	$1, 8(%rax)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	int_to_real_coord
	movsd	%xmm0, -32(%rbp)
	movsd	%xmm1, -24(%rbp)
	movq	-32(%rbp), %rax
	movq	-40(%rbp), %rsi         # 8-byte Reload
	movq	%rax, (%rsi)
	movq	-24(%rbp), %rax
	movq	%rax, 8(%rsi)
	movq	-16(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	init_curve, .Lfunc_end1-init_curve
	.cfi_endproc

	.globl	copy_most_of_curve
	.align	16, 0x90
	.type	copy_most_of_curve,@function
copy_most_of_curve:                     # @copy_most_of_curve
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	callq	new_curve
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movl	12(%rax), %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, 12(%rax)
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	-16(%rbp), %rdi
	movq	%rax, 32(%rdi)
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	-16(%rbp), %rdi
	movq	%rax, 40(%rdi)
	movq	-16(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	copy_most_of_curve, .Lfunc_end2-copy_most_of_curve
	.cfi_endproc

	.globl	free_curve
	.align	16, 0x90
	.type	free_curve,@function
free_curve:                             # @free_curve
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
	cmpl	$0, 8(%rdi)
	jle	.LBB3_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	safe_free
.LBB3_2:                                # %if.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	free_curve, .Lfunc_end3-free_curve
	.cfi_endproc

	.globl	append_pixel
	.align	16, 0x90
	.type	append_pixel,@function
append_pixel:                           # @append_pixel
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
	subq	$48, %rsp
	movq	%rsi, -8(%rbp)
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	movq	%rsi, %rdi
	callq	int_to_real_coord
	movsd	%xmm0, -32(%rbp)
	movsd	%xmm1, -24(%rbp)
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	movq	-40(%rbp), %rdi         # 8-byte Reload
	callq	append_point
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	append_pixel, .Lfunc_end4-append_pixel
	.cfi_endproc

	.globl	append_point
	.align	16, 0x90
	.type	append_point,@function
append_point:                           # @append_point
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
	subq	$32, %rsp
	movsd	%xmm0, -16(%rbp)
	movsd	%xmm1, -8(%rbp)
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rdi
	movl	8(%rdi), %eax
	addl	$1, %eax
	movl	%eax, 8(%rdi)
	movq	-24(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	-24(%rbp), %rcx
	movslq	8(%rcx), %rcx
	imulq	$24, %rcx, %rsi
	callq	g_realloc
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-24(%rbp), %rax
	movl	8(%rax), %edx
	subl	$1, %edx
	movslq	%edx, %rax
	movq	-24(%rbp), %rcx
	imulq	$24, %rax, %rax
	addq	(%rcx), %rax
	movq	-16(%rbp), %rcx
	movq	%rcx, (%rax)
	movq	-8(%rbp), %rcx
	movq	%rcx, 8(%rax)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	append_point, .Lfunc_end5-append_point
	.cfi_endproc

	.globl	new_curve_list
	.align	16, 0x90
	.type	new_curve_list,@function
new_curve_list:                         # @new_curve_list
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
	movl	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movl	$0, -20(%rbp)
	movups	-32(%rbp), %xmm0
	movaps	%xmm0, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	popq	%rbp
	retq
.Lfunc_end6:
	.size	new_curve_list, .Lfunc_end6-new_curve_list
	.cfi_endproc

	.globl	free_curve_list
	.align	16, 0x90
	.type	free_curve_list,@function
free_curve_list:                        # @free_curve_list
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	$0, -12(%rbp)
.LBB7_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	8(%rcx), %eax
	jae	.LBB7_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB7_1 Depth=1
	movl	-12(%rbp), %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	(%rdx,%rcx,8), %rdi
	callq	free_curve
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB7_1 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB7_1
.LBB7_4:                                # %for.end
	movq	-8(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB7_6
# BB#5:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	safe_free
.LBB7_6:                                # %if.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	free_curve_list, .Lfunc_end7-free_curve_list
	.cfi_endproc

	.globl	append_curve
	.align	16, 0x90
	.type	append_curve,@function
append_curve:                           # @append_curve
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movl	8(%rsi), %eax
	addl	$1, %eax
	movl	%eax, 8(%rsi)
	movq	-8(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	-8(%rbp), %rdi
	movl	8(%rdi), %eax
	movl	%eax, %edi
	shlq	$3, %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	movq	%rsi, %rdi
	movq	-24(%rbp), %rsi         # 8-byte Reload
	callq	g_realloc
	movq	-8(%rbp), %rsi
	movq	%rax, (%rsi)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rsi
	movl	8(%rsi), %ecx
	subl	$1, %ecx
	movl	%ecx, %ecx
	movl	%ecx, %esi
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	%rax, (%rdi,%rsi,8)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	append_curve, .Lfunc_end8-append_curve
	.cfi_endproc

	.globl	new_curve_list_array
	.align	16, 0x90
	.type	new_curve_list_array,@function
new_curve_list_array:                   # @new_curve_list_array
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
	movl	$0, -24(%rbp)
	movq	$0, -32(%rbp)
	movups	-32(%rbp), %xmm0
	movaps	%xmm0, -16(%rbp)
	movq	-16(%rbp), %rax
	movl	-8(%rbp), %edx
	popq	%rbp
	retq
.Lfunc_end9:
	.size	new_curve_list_array, .Lfunc_end9-new_curve_list_array
	.cfi_endproc

	.globl	free_curve_list_array
	.align	16, 0x90
	.type	free_curve_list_array,@function
free_curve_list_array:                  # @free_curve_list_array
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	$0, -12(%rbp)
.LBB10_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	8(%rcx), %eax
	jae	.LBB10_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB10_1 Depth=1
	movl	-12(%rbp), %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	shlq	$4, %rcx
	addq	(%rdx), %rcx
	movq	%rcx, %rdi
	callq	free_curve_list
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB10_1 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB10_1
.LBB10_4:                               # %for.end
	movq	-8(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB10_6
# BB#5:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	safe_free
.LBB10_6:                               # %if.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	free_curve_list_array, .Lfunc_end10-free_curve_list_array
	.cfi_endproc

	.globl	append_curve_list
	.align	16, 0x90
	.type	append_curve_list,@function
append_curve_list:                      # @append_curve_list
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp33:
	.cfi_def_cfa_offset 16
.Ltmp34:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp35:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rsi, -16(%rbp)
	movq	%rdx, -8(%rbp)
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rdx
	movl	8(%rdx), %eax
	addl	$1, %eax
	movl	%eax, 8(%rdx)
	movq	-24(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	-24(%rbp), %rsi
	movl	8(%rsi), %eax
	movl	%eax, %esi
	shlq	$4, %rsi
	movq	%rdx, %rdi
	callq	g_realloc
	movq	-24(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-24(%rbp), %rax
	movl	8(%rax), %ecx
	subl	$1, %ecx
	movl	%ecx, %ecx
	movl	%ecx, %eax
	movq	-24(%rbp), %rdx
	shlq	$4, %rax
	addq	(%rdx), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rdx
	movq	%rdx, 8(%rax)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	append_curve_list, .Lfunc_end11-append_curve_list
	.cfi_endproc


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
