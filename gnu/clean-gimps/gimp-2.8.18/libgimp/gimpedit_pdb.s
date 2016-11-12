	.text
	.file	"gimpedit_pdb.bc"
	.globl	gimp_edit_cut
	.align	16, 0x90
	.type	gimp_edit_cut,@function
gimp_edit_cut:                          # @gimp_edit_cut
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
	leaq	.L.str(%rip), %rax
	leaq	-20(%rbp), %rsi
	movl	$16, %edx
	movl	$22, %r8d
	movl	%edi, -4(%rbp)
	movl	$0, -24(%rbp)
	movl	-4(%rbp), %ecx
	movq	%rax, %rdi
	movb	$0, %al
	callq	gimp_run_procedure@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpl	$3, 8(%rax)
	jne	.LBB0_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movl	48(%rax), %ecx
	movl	%ecx, -24(%rbp)
.LBB0_2:                                # %if.end
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-24(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_edit_cut, .Lfunc_end0-gimp_edit_cut
	.cfi_endproc

	.globl	gimp_edit_copy
	.align	16, 0x90
	.type	gimp_edit_copy,@function
gimp_edit_copy:                         # @gimp_edit_copy
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
	leaq	.L.str.1(%rip), %rax
	leaq	-20(%rbp), %rsi
	movl	$16, %edx
	movl	$22, %r8d
	movl	%edi, -4(%rbp)
	movl	$0, -24(%rbp)
	movl	-4(%rbp), %ecx
	movq	%rax, %rdi
	movb	$0, %al
	callq	gimp_run_procedure@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpl	$3, 8(%rax)
	jne	.LBB1_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movl	48(%rax), %ecx
	movl	%ecx, -24(%rbp)
.LBB1_2:                                # %if.end
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-24(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_edit_copy, .Lfunc_end1-gimp_edit_copy
	.cfi_endproc

	.globl	gimp_edit_copy_visible
	.align	16, 0x90
	.type	gimp_edit_copy_visible,@function
gimp_edit_copy_visible:                 # @gimp_edit_copy_visible
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
	subq	$32, %rsp
	leaq	.L.str.2(%rip), %rax
	leaq	-20(%rbp), %rsi
	movl	$13, %edx
	movl	$22, %r8d
	movl	%edi, -4(%rbp)
	movl	$0, -24(%rbp)
	movl	-4(%rbp), %ecx
	movq	%rax, %rdi
	movb	$0, %al
	callq	gimp_run_procedure@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpl	$3, 8(%rax)
	jne	.LBB2_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movl	48(%rax), %ecx
	movl	%ecx, -24(%rbp)
.LBB2_2:                                # %if.end
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-24(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_edit_copy_visible, .Lfunc_end2-gimp_edit_copy_visible
	.cfi_endproc

	.globl	gimp_edit_paste
	.align	16, 0x90
	.type	gimp_edit_paste,@function
gimp_edit_paste:                        # @gimp_edit_paste
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
	subq	$48, %rsp
	leaq	.L.str.3(%rip), %rax
	leaq	-20(%rbp), %rcx
	movl	$16, %edx
	xorl	%r8d, %r8d
	movl	$22, %r9d
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	$-1, -24(%rbp)
	movl	-4(%rbp), %esi
	movl	-8(%rbp), %edi
	movl	%edi, -28(%rbp)         # 4-byte Spill
	movq	%rax, %rdi
	movl	%esi, -32(%rbp)         # 4-byte Spill
	movq	%rcx, %rsi
	movl	-32(%rbp), %ecx         # 4-byte Reload
	movl	-28(%rbp), %r10d        # 4-byte Reload
	movl	%r9d, -36(%rbp)         # 4-byte Spill
	movl	%r10d, %r9d
	movl	$22, (%rsp)
	movb	$0, %al
	callq	gimp_run_procedure@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpl	$3, 8(%rax)
	jne	.LBB3_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movl	48(%rax), %ecx
	movl	%ecx, -24(%rbp)
.LBB3_2:                                # %if.end
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-24(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_edit_paste, .Lfunc_end3-gimp_edit_paste
	.cfi_endproc

	.globl	gimp_edit_paste_as_new
	.align	16, 0x90
	.type	gimp_edit_paste_as_new,@function
gimp_edit_paste_as_new:                 # @gimp_edit_paste_as_new
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
	leaq	.L.str.4(%rip), %rdi
	leaq	-12(%rbp), %rsi
	movl	$22, %edx
	movl	$-1, -16(%rbp)
	movb	$0, %al
	callq	gimp_run_procedure@PLT
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	cmpl	$3, 8(%rax)
	jne	.LBB4_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movl	48(%rax), %ecx
	movl	%ecx, -16(%rbp)
.LBB4_2:                                # %if.end
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-16(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_edit_paste_as_new, .Lfunc_end4-gimp_edit_paste_as_new
	.cfi_endproc

	.globl	gimp_edit_named_cut
	.align	16, 0x90
	.type	gimp_edit_named_cut,@function
gimp_edit_named_cut:                    # @gimp_edit_named_cut
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
	subq	$80, %rsp
	leaq	.L.str.5(%rip), %rax
	leaq	-28(%rbp), %rcx
	movl	$16, %edx
	movl	$4, %r8d
	movl	$22, %r9d
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movq	$0, -40(%rbp)
	movl	-4(%rbp), %edi
	movq	-16(%rbp), %rsi
	movl	%edi, -44(%rbp)         # 4-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	movq	%rcx, %rsi
	movl	-44(%rbp), %ecx         # 4-byte Reload
	movq	-56(%rbp), %rax         # 8-byte Reload
	movl	%r9d, -60(%rbp)         # 4-byte Spill
	movq	%rax, %r9
	movl	$22, (%rsp)
	movb	$0, %al
	callq	gimp_run_procedure@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpl	$3, 8(%rax)
	jne	.LBB5_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	48(%rax), %rdi
	callq	g_strdup@PLT
	movq	%rax, -40(%rbp)
.LBB5_2:                                # %if.end
	movq	-24(%rbp), %rdi
	movl	-28(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movq	-40(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_edit_named_cut, .Lfunc_end5-gimp_edit_named_cut
	.cfi_endproc

	.globl	gimp_edit_named_copy
	.align	16, 0x90
	.type	gimp_edit_named_copy,@function
gimp_edit_named_copy:                   # @gimp_edit_named_copy
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
	subq	$80, %rsp
	leaq	.L.str.6(%rip), %rax
	leaq	-28(%rbp), %rcx
	movl	$16, %edx
	movl	$4, %r8d
	movl	$22, %r9d
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movq	$0, -40(%rbp)
	movl	-4(%rbp), %edi
	movq	-16(%rbp), %rsi
	movl	%edi, -44(%rbp)         # 4-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	movq	%rcx, %rsi
	movl	-44(%rbp), %ecx         # 4-byte Reload
	movq	-56(%rbp), %rax         # 8-byte Reload
	movl	%r9d, -60(%rbp)         # 4-byte Spill
	movq	%rax, %r9
	movl	$22, (%rsp)
	movb	$0, %al
	callq	gimp_run_procedure@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpl	$3, 8(%rax)
	jne	.LBB6_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	48(%rax), %rdi
	callq	g_strdup@PLT
	movq	%rax, -40(%rbp)
.LBB6_2:                                # %if.end
	movq	-24(%rbp), %rdi
	movl	-28(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movq	-40(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_edit_named_copy, .Lfunc_end6-gimp_edit_named_copy
	.cfi_endproc

	.globl	gimp_edit_named_copy_visible
	.align	16, 0x90
	.type	gimp_edit_named_copy_visible,@function
gimp_edit_named_copy_visible:           # @gimp_edit_named_copy_visible
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
	leaq	.L.str.7(%rip), %rax
	leaq	-28(%rbp), %rcx
	movl	$13, %edx
	movl	$4, %r8d
	movl	$22, %r9d
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movq	$0, -40(%rbp)
	movl	-4(%rbp), %edi
	movq	-16(%rbp), %rsi
	movl	%edi, -44(%rbp)         # 4-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	movq	%rcx, %rsi
	movl	-44(%rbp), %ecx         # 4-byte Reload
	movq	-56(%rbp), %rax         # 8-byte Reload
	movl	%r9d, -60(%rbp)         # 4-byte Spill
	movq	%rax, %r9
	movl	$22, (%rsp)
	movb	$0, %al
	callq	gimp_run_procedure@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpl	$3, 8(%rax)
	jne	.LBB7_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	48(%rax), %rdi
	callq	g_strdup@PLT
	movq	%rax, -40(%rbp)
.LBB7_2:                                # %if.end
	movq	-24(%rbp), %rdi
	movl	-28(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movq	-40(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_edit_named_copy_visible, .Lfunc_end7-gimp_edit_named_copy_visible
	.cfi_endproc

	.globl	gimp_edit_named_paste
	.align	16, 0x90
	.type	gimp_edit_named_paste,@function
gimp_edit_named_paste:                  # @gimp_edit_named_paste
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
	pushq	%rbx
	subq	$104, %rsp
.Ltmp27:
	.cfi_offset %rbx, -24
	leaq	.L.str.8(%rip), %rax
	leaq	-44(%rbp), %rcx
	movl	$16, %r8d
	movl	$4, %r9d
	xorl	%r10d, %r10d
	movl	$22, %r11d
	movl	%edi, -12(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movl	$-1, -48(%rbp)
	movl	-12(%rbp), %edx
	movq	-24(%rbp), %rsi
	movl	-28(%rbp), %edi
	movl	%edi, -52(%rbp)         # 4-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	movq	%rcx, %rsi
	movl	%edx, -68(%rbp)         # 4-byte Spill
	movl	%r8d, %edx
	movl	-68(%rbp), %ecx         # 4-byte Reload
	movl	%r9d, %r8d
	movq	-64(%rbp), %r9          # 8-byte Reload
	movl	$0, (%rsp)
	movl	-52(%rbp), %ebx         # 4-byte Reload
	movl	%ebx, 8(%rsp)
	movl	$22, 16(%rsp)
	movb	$0, %al
	movl	%r10d, -72(%rbp)        # 4-byte Spill
	movl	%r11d, -76(%rbp)        # 4-byte Spill
	callq	gimp_run_procedure@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	cmpl	$3, 8(%rax)
	jne	.LBB8_2
# BB#1:                                 # %if.then
	movq	-40(%rbp), %rax
	movl	48(%rax), %ecx
	movl	%ecx, -48(%rbp)
.LBB8_2:                                # %if.end
	movq	-40(%rbp), %rdi
	movl	-44(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-48(%rbp), %eax
	addq	$104, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_edit_named_paste, .Lfunc_end8-gimp_edit_named_paste
	.cfi_endproc

	.globl	gimp_edit_named_paste_as_new
	.align	16, 0x90
	.type	gimp_edit_named_paste_as_new,@function
gimp_edit_named_paste_as_new:           # @gimp_edit_named_paste_as_new
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp28:
	.cfi_def_cfa_offset 16
.Ltmp29:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp30:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	leaq	.L.str.9(%rip), %rax
	leaq	-20(%rbp), %rsi
	movl	$4, %edx
	movl	$22, %r8d
	movq	%rdi, -8(%rbp)
	movl	$-1, -24(%rbp)
	movq	-8(%rbp), %rcx
	movq	%rax, %rdi
	movb	$0, %al
	callq	gimp_run_procedure@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpl	$3, 8(%rax)
	jne	.LBB9_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movl	48(%rax), %ecx
	movl	%ecx, -24(%rbp)
.LBB9_2:                                # %if.end
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-24(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_edit_named_paste_as_new, .Lfunc_end9-gimp_edit_named_paste_as_new
	.cfi_endproc

	.globl	gimp_edit_clear
	.align	16, 0x90
	.type	gimp_edit_clear,@function
gimp_edit_clear:                        # @gimp_edit_clear
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp31:
	.cfi_def_cfa_offset 16
.Ltmp32:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp33:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	leaq	.L.str.10(%rip), %rax
	leaq	-20(%rbp), %rsi
	movl	$16, %edx
	movl	$22, %r8d
	movl	%edi, -4(%rbp)
	movl	$1, -24(%rbp)
	movl	-4(%rbp), %ecx
	movq	%rax, %rdi
	movb	$0, %al
	callq	gimp_run_procedure@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpl	$3, 8(%rax)
	sete	%r9b
	andb	$1, %r9b
	movzbl	%r9b, %ecx
	movl	%ecx, -24(%rbp)
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-24(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_edit_clear, .Lfunc_end10-gimp_edit_clear
	.cfi_endproc

	.globl	gimp_edit_fill
	.align	16, 0x90
	.type	gimp_edit_fill,@function
gimp_edit_fill:                         # @gimp_edit_fill
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp34:
	.cfi_def_cfa_offset 16
.Ltmp35:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp36:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	leaq	.L.str.11(%rip), %rax
	leaq	-20(%rbp), %rcx
	movl	$16, %edx
	xorl	%r8d, %r8d
	movl	$22, %r9d
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	$1, -24(%rbp)
	movl	-4(%rbp), %esi
	movl	-8(%rbp), %edi
	movl	%edi, -28(%rbp)         # 4-byte Spill
	movq	%rax, %rdi
	movl	%esi, -32(%rbp)         # 4-byte Spill
	movq	%rcx, %rsi
	movl	-32(%rbp), %ecx         # 4-byte Reload
	movl	-28(%rbp), %r10d        # 4-byte Reload
	movl	%r9d, -36(%rbp)         # 4-byte Spill
	movl	%r10d, %r9d
	movl	$22, (%rsp)
	movb	$0, %al
	callq	gimp_run_procedure@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpl	$3, 8(%rax)
	sete	%r11b
	andb	$1, %r11b
	movzbl	%r11b, %ecx
	movl	%ecx, -24(%rbp)
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-24(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_edit_fill, .Lfunc_end11-gimp_edit_fill
	.cfi_endproc

	.globl	gimp_edit_bucket_fill
	.align	16, 0x90
	.type	gimp_edit_bucket_fill,@function
gimp_edit_bucket_fill:                  # @gimp_edit_bucket_fill
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp37:
	.cfi_def_cfa_offset 16
.Ltmp38:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp39:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$176, %rsp
.Ltmp40:
	.cfi_offset %rbx, -32
.Ltmp41:
	.cfi_offset %r14, -24
	leaq	.L.str.12(%rip), %rax
	leaq	-84(%rbp), %r8
	movl	$16, %r9d
	xorl	%r10d, %r10d
	movl	$3, %r11d
	movl	$22, %ebx
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movsd	%xmm0, -40(%rbp)
	movsd	%xmm1, -48(%rbp)
	movl	%ecx, -52(%rbp)
	movsd	%xmm2, -64(%rbp)
	movsd	%xmm3, -72(%rbp)
	movl	$1, -88(%rbp)
	movl	-20(%rbp), %ecx
	movl	-24(%rbp), %edx
	movl	-28(%rbp), %esi
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	movl	-52(%rbp), %edi
	movsd	-64(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-72(%rbp), %xmm3        # xmm3 = mem[0],zero
	movl	%edi, -92(%rbp)         # 4-byte Spill
	movq	%rax, %rdi
	movl	%esi, -96(%rbp)         # 4-byte Spill
	movq	%r8, %rsi
	movl	%edx, -100(%rbp)        # 4-byte Spill
	movl	%r9d, %edx
	movl	%r10d, %r8d
	movl	-100(%rbp), %r9d        # 4-byte Reload
	movl	$0, (%rsp)
	movl	-96(%rbp), %r10d        # 4-byte Reload
	movl	%r10d, 8(%rsp)
	movl	$3, 16(%rsp)
	movl	$3, 24(%rsp)
	movl	$0, 32(%rsp)
	movl	-92(%rbp), %r10d        # 4-byte Reload
	movl	%r10d, 40(%rsp)
	movl	$3, 48(%rsp)
	movl	$3, 56(%rsp)
	movl	$22, 64(%rsp)
	movb	$4, %al
	movl	%ebx, -104(%rbp)        # 4-byte Spill
	movl	%r11d, -108(%rbp)       # 4-byte Spill
	callq	gimp_run_procedure@PLT
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	cmpl	$3, 8(%rax)
	sete	%r14b
	andb	$1, %r14b
	movzbl	%r14b, %ecx
	movl	%ecx, -88(%rbp)
	movq	-80(%rbp), %rdi
	movl	-84(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-88(%rbp), %eax
	addq	$176, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_edit_bucket_fill, .Lfunc_end12-gimp_edit_bucket_fill
	.cfi_endproc

	.globl	gimp_edit_bucket_fill_full
	.align	16, 0x90
	.type	gimp_edit_bucket_fill_full,@function
gimp_edit_bucket_fill_full:             # @gimp_edit_bucket_fill_full
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp42:
	.cfi_def_cfa_offset 16
.Ltmp43:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp44:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$208, %rsp
.Ltmp45:
	.cfi_offset %rbx, -48
.Ltmp46:
	.cfi_offset %r12, -40
.Ltmp47:
	.cfi_offset %r14, -32
.Ltmp48:
	.cfi_offset %r15, -24
	leaq	.L.str.13(%rip), %rax
	leaq	-108(%rbp), %r10
	movl	$16, %r11d
	xorl	%ebx, %ebx
	movl	$3, %r14d
	movl	$22, %r15d
	movl	%edi, -36(%rbp)
	movl	%esi, -40(%rbp)
	movl	%edx, -44(%rbp)
	movsd	%xmm0, -56(%rbp)
	movsd	%xmm1, -64(%rbp)
	movl	%ecx, -68(%rbp)
	movl	%r8d, -72(%rbp)
	movl	%r9d, -76(%rbp)
	movsd	%xmm2, -88(%rbp)
	movsd	%xmm3, -96(%rbp)
	movl	$1, -112(%rbp)
	movl	-36(%rbp), %ecx
	movl	-40(%rbp), %r9d
	movl	-44(%rbp), %edx
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-64(%rbp), %xmm1        # xmm1 = mem[0],zero
	movl	-68(%rbp), %esi
	movl	-72(%rbp), %edi
	movl	-76(%rbp), %r8d
	movsd	-88(%rbp), %xmm2        # xmm2 = mem[0],zero
	movsd	-96(%rbp), %xmm3        # xmm3 = mem[0],zero
	movl	%edi, -116(%rbp)        # 4-byte Spill
	movq	%rax, %rdi
	movl	%esi, -120(%rbp)        # 4-byte Spill
	movq	%r10, %rsi
	movl	%edx, -124(%rbp)        # 4-byte Spill
	movl	%r11d, %edx
	movl	%r8d, -128(%rbp)        # 4-byte Spill
	movl	%ebx, %r8d
	movl	$0, (%rsp)
	movl	-124(%rbp), %r11d       # 4-byte Reload
	movl	%r11d, 8(%rsp)
	movl	$3, 16(%rsp)
	movl	$3, 24(%rsp)
	movl	$0, 32(%rsp)
	movl	-120(%rbp), %r11d       # 4-byte Reload
	movl	%r11d, 40(%rsp)
	movl	$0, 48(%rsp)
	movl	-116(%rbp), %r11d       # 4-byte Reload
	movl	%r11d, 56(%rsp)
	movl	$0, 64(%rsp)
	movl	-128(%rbp), %r11d       # 4-byte Reload
	movl	%r11d, 72(%rsp)
	movl	$3, 80(%rsp)
	movl	$3, 88(%rsp)
	movl	$22, 96(%rsp)
	movb	$4, %al
	movl	%r14d, -132(%rbp)       # 4-byte Spill
	movl	%r15d, -136(%rbp)       # 4-byte Spill
	callq	gimp_run_procedure@PLT
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	cmpl	$3, 8(%rax)
	sete	%r12b
	andb	$1, %r12b
	movzbl	%r12b, %ecx
	movl	%ecx, -112(%rbp)
	movq	-104(%rbp), %rdi
	movl	-108(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-112(%rbp), %eax
	addq	$208, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_edit_bucket_fill_full, .Lfunc_end13-gimp_edit_bucket_fill_full
	.cfi_endproc

	.globl	gimp_edit_blend
	.align	16, 0x90
	.type	gimp_edit_blend,@function
gimp_edit_blend:                        # @gimp_edit_blend
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp49:
	.cfi_def_cfa_offset 16
.Ltmp50:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp51:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$328, %rsp              # imm = 0x148
.Ltmp52:
	.cfi_offset %rbx, -56
.Ltmp53:
	.cfi_offset %r12, -48
.Ltmp54:
	.cfi_offset %r13, -40
.Ltmp55:
	.cfi_offset %r14, -32
.Ltmp56:
	.cfi_offset %r15, -24
	movl	32(%rbp), %eax
	movl	24(%rbp), %r10d
	movl	16(%rbp), %r11d
	leaq	.L.str.14(%rip), %rbx
	leaq	-148(%rbp), %r14
	movl	$16, %r15d
	xorl	%r12d, %r12d
	movl	$3, %r13d
	movl	%eax, -156(%rbp)        # 4-byte Spill
	movl	$22, %eax
	movl	%edi, -44(%rbp)
	movl	%esi, -48(%rbp)
	movl	%edx, -52(%rbp)
	movl	%ecx, -56(%rbp)
	movsd	%xmm0, -64(%rbp)
	movsd	%xmm1, -72(%rbp)
	movl	%r8d, -76(%rbp)
	movl	%r9d, -80(%rbp)
	movl	%r11d, -84(%rbp)
	movl	%r10d, -88(%rbp)
	movsd	%xmm2, -96(%rbp)
	movl	-156(%rbp), %ecx        # 4-byte Reload
	movl	%ecx, -100(%rbp)
	movsd	%xmm3, -112(%rbp)
	movsd	%xmm4, -120(%rbp)
	movsd	%xmm5, -128(%rbp)
	movsd	%xmm6, -136(%rbp)
	movl	$1, -152(%rbp)
	movl	-44(%rbp), %ecx
	movl	-48(%rbp), %r9d
	movl	-52(%rbp), %edx
	movl	-56(%rbp), %esi
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-72(%rbp), %xmm1        # xmm1 = mem[0],zero
	movl	-76(%rbp), %edi
	movl	-80(%rbp), %r8d
	movl	-84(%rbp), %r10d
	movl	-88(%rbp), %r11d
	movsd	-96(%rbp), %xmm2        # xmm2 = mem[0],zero
	movl	%eax, -160(%rbp)        # 4-byte Spill
	movl	-100(%rbp), %eax
	movsd	-112(%rbp), %xmm3       # xmm3 = mem[0],zero
	movsd	-120(%rbp), %xmm4       # xmm4 = mem[0],zero
	movsd	-128(%rbp), %xmm5       # xmm5 = mem[0],zero
	movsd	-136(%rbp), %xmm6       # xmm6 = mem[0],zero
	movl	%edi, -164(%rbp)        # 4-byte Spill
	movq	%rbx, %rdi
	movl	%esi, -168(%rbp)        # 4-byte Spill
	movq	%r14, %rsi
	movl	%edx, -172(%rbp)        # 4-byte Spill
	movl	%r15d, %edx
	movl	%r8d, -176(%rbp)        # 4-byte Spill
	movl	%r12d, %r8d
	movl	$0, (%rsp)
	movl	-172(%rbp), %r15d       # 4-byte Reload
	movl	%r15d, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	-168(%rbp), %r15d       # 4-byte Reload
	movl	%r15d, 24(%rsp)
	movl	$3, 32(%rsp)
	movl	$3, 40(%rsp)
	movl	$0, 48(%rsp)
	movl	-164(%rbp), %r15d       # 4-byte Reload
	movl	%r15d, 56(%rsp)
	movl	$0, 64(%rsp)
	movl	-176(%rbp), %r15d       # 4-byte Reload
	movl	%r15d, 72(%rsp)
	movl	$0, 80(%rsp)
	movl	%r10d, 88(%rsp)
	movl	$0, 96(%rsp)
	movl	%r11d, 104(%rsp)
	movl	$3, 112(%rsp)
	movl	$0, 120(%rsp)
	movl	%eax, 128(%rsp)
	movl	$3, 136(%rsp)
	movl	$3, 144(%rsp)
	movl	$3, 152(%rsp)
	movl	$3, 160(%rsp)
	movl	$22, 168(%rsp)
	movb	$7, %al
	movl	%r13d, -180(%rbp)       # 4-byte Spill
	callq	gimp_run_procedure@PLT
	movq	%rax, -144(%rbp)
	movq	-144(%rbp), %rax
	cmpl	$3, 8(%rax)
	sete	%al
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -152(%rbp)
	movq	-144(%rbp), %rdi
	movl	-148(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-152(%rbp), %eax
	addq	$328, %rsp              # imm = 0x148
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_edit_blend, .Lfunc_end14-gimp_edit_blend
	.cfi_endproc

	.globl	gimp_edit_stroke
	.align	16, 0x90
	.type	gimp_edit_stroke,@function
gimp_edit_stroke:                       # @gimp_edit_stroke
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp57:
	.cfi_def_cfa_offset 16
.Ltmp58:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp59:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	leaq	.L.str.15(%rip), %rax
	leaq	-20(%rbp), %rsi
	movl	$16, %edx
	movl	$22, %r8d
	movl	%edi, -4(%rbp)
	movl	$1, -24(%rbp)
	movl	-4(%rbp), %ecx
	movq	%rax, %rdi
	movb	$0, %al
	callq	gimp_run_procedure@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpl	$3, 8(%rax)
	sete	%r9b
	andb	$1, %r9b
	movzbl	%r9b, %ecx
	movl	%ecx, -24(%rbp)
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-24(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	gimp_edit_stroke, .Lfunc_end15-gimp_edit_stroke
	.cfi_endproc

	.globl	gimp_edit_stroke_vectors
	.align	16, 0x90
	.type	gimp_edit_stroke_vectors,@function
gimp_edit_stroke_vectors:               # @gimp_edit_stroke_vectors
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp60:
	.cfi_def_cfa_offset 16
.Ltmp61:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp62:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	leaq	.L.str.16(%rip), %rax
	leaq	-20(%rbp), %rcx
	movl	$16, %edx
	movl	$19, %r8d
	movl	$22, %r9d
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	$1, -24(%rbp)
	movl	-4(%rbp), %esi
	movl	-8(%rbp), %edi
	movl	%edi, -28(%rbp)         # 4-byte Spill
	movq	%rax, %rdi
	movl	%esi, -32(%rbp)         # 4-byte Spill
	movq	%rcx, %rsi
	movl	-32(%rbp), %ecx         # 4-byte Reload
	movl	-28(%rbp), %r10d        # 4-byte Reload
	movl	%r9d, -36(%rbp)         # 4-byte Spill
	movl	%r10d, %r9d
	movl	$22, (%rsp)
	movb	$0, %al
	callq	gimp_run_procedure@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpl	$3, 8(%rax)
	sete	%r11b
	andb	$1, %r11b
	movzbl	%r11b, %ecx
	movl	%ecx, -24(%rbp)
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-24(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gimp_edit_stroke_vectors, .Lfunc_end16-gimp_edit_stroke_vectors
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"gimp-edit-cut"
	.size	.L.str, 14

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"gimp-edit-copy"
	.size	.L.str.1, 15

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"gimp-edit-copy-visible"
	.size	.L.str.2, 23

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"gimp-edit-paste"
	.size	.L.str.3, 16

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"gimp-edit-paste-as-new"
	.size	.L.str.4, 23

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"gimp-edit-named-cut"
	.size	.L.str.5, 20

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"gimp-edit-named-copy"
	.size	.L.str.6, 21

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"gimp-edit-named-copy-visible"
	.size	.L.str.7, 29

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"gimp-edit-named-paste"
	.size	.L.str.8, 22

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"gimp-edit-named-paste-as-new"
	.size	.L.str.9, 29

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"gimp-edit-clear"
	.size	.L.str.10, 16

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"gimp-edit-fill"
	.size	.L.str.11, 15

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"gimp-edit-bucket-fill"
	.size	.L.str.12, 22

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"gimp-edit-bucket-fill-full"
	.size	.L.str.13, 27

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"gimp-edit-blend"
	.size	.L.str.14, 16

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"gimp-edit-stroke"
	.size	.L.str.15, 17

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"gimp-edit-stroke-vectors"
	.size	.L.str.16, 25


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
