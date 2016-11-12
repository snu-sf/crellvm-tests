	.text
	.file	"gimpimage_pdb.bc"
	.globl	gimp_image_is_valid
	.align	16, 0x90
	.type	gimp_image_is_valid,@function
gimp_image_is_valid:                    # @gimp_image_is_valid
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
	.size	gimp_image_is_valid, .Lfunc_end0-gimp_image_is_valid
	.cfi_endproc

	.globl	gimp_image_list
	.align	16, 0x90
	.type	gimp_image_list,@function
gimp_image_list:                        # @gimp_image_list
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
	leaq	.L.str.1(%rip), %rax
	leaq	-20(%rbp), %rsi
	movl	$22, %edx
	movq	%rdi, -8(%rbp)
	movq	$0, -32(%rbp)
	movq	%rax, %rdi
	movb	$0, %al
	callq	gimp_run_procedure@PLT
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movl	$0, (%rax)
	movq	-16(%rbp), %rax
	cmpl	$3, 8(%rax)
	jne	.LBB1_2
# BB#1:                                 # %if.then
	movl	$4, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rcx
	movl	48(%rcx), %eax
	movq	-8(%rbp), %rcx
	movl	%eax, (%rcx)
	movq	-8(%rbp), %rcx
	movslq	(%rcx), %rdi
	callq	g_malloc_n@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	88(%rcx), %rcx
	movq	-8(%rbp), %rsi
	movslq	(%rsi), %rsi
	shlq	$2, %rsi
	movq	%rax, %rdi
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	movq	%rcx, %rsi
	movq	-40(%rbp), %rdx         # 8-byte Reload
	callq	memcpy@PLT
.LBB1_2:                                # %if.end
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movq	-32(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_image_list, .Lfunc_end1-gimp_image_list
	.cfi_endproc

	.globl	gimp_image_new
	.align	16, 0x90
	.type	gimp_image_new,@function
gimp_image_new:                         # @gimp_image_new
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
	subq	$80, %rsp
	leaq	.L.str.2(%rip), %rax
	leaq	-28(%rbp), %rcx
	xorl	%r8d, %r8d
	movl	$22, %r9d
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -12(%rbp)
	movl	$-1, -32(%rbp)
	movl	-4(%rbp), %edx
	movl	-8(%rbp), %esi
	movl	-12(%rbp), %edi
	movl	%edi, -36(%rbp)         # 4-byte Spill
	movq	%rax, %rdi
	movl	%esi, -40(%rbp)         # 4-byte Spill
	movq	%rcx, %rsi
	movl	%edx, -44(%rbp)         # 4-byte Spill
	movl	%r8d, %edx
	movl	-44(%rbp), %ecx         # 4-byte Reload
	movl	-40(%rbp), %r10d        # 4-byte Reload
	movl	%r9d, -48(%rbp)         # 4-byte Spill
	movl	%r10d, %r9d
	movl	$0, (%rsp)
	movl	-36(%rbp), %r11d        # 4-byte Reload
	movl	%r11d, 8(%rsp)
	movl	$22, 16(%rsp)
	movb	$0, %al
	callq	gimp_run_procedure@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpl	$3, 8(%rax)
	jne	.LBB2_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movl	48(%rax), %ecx
	movl	%ecx, -32(%rbp)
.LBB2_2:                                # %if.end
	movq	-24(%rbp), %rdi
	movl	-28(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-32(%rbp), %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_image_new, .Lfunc_end2-gimp_image_new
	.cfi_endproc

	.globl	gimp_image_duplicate
	.align	16, 0x90
	.type	gimp_image_duplicate,@function
gimp_image_duplicate:                   # @gimp_image_duplicate
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
	subq	$32, %rsp
	leaq	.L.str.3(%rip), %rax
	leaq	-20(%rbp), %rsi
	movl	$13, %edx
	movl	$22, %r8d
	movl	%edi, -4(%rbp)
	movl	$-1, -24(%rbp)
	movl	-4(%rbp), %ecx
	movq	%rax, %rdi
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
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_image_duplicate, .Lfunc_end3-gimp_image_duplicate
	.cfi_endproc

	.globl	gimp_image_delete
	.align	16, 0x90
	.type	gimp_image_delete,@function
gimp_image_delete:                      # @gimp_image_delete
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
	subq	$32, %rsp
	leaq	.L.str.4(%rip), %rax
	leaq	-20(%rbp), %rsi
	movl	$13, %edx
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
.Lfunc_end4:
	.size	gimp_image_delete, .Lfunc_end4-gimp_image_delete
	.cfi_endproc

	.globl	gimp_image_base_type
	.align	16, 0x90
	.type	gimp_image_base_type,@function
gimp_image_base_type:                   # @gimp_image_base_type
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
	leaq	.L.str.5(%rip), %rax
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
	jne	.LBB5_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movl	48(%rax), %ecx
	movl	%ecx, -24(%rbp)
.LBB5_2:                                # %if.end
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-24(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_image_base_type, .Lfunc_end5-gimp_image_base_type
	.cfi_endproc

	.globl	gimp_image_width
	.align	16, 0x90
	.type	gimp_image_width,@function
gimp_image_width:                       # @gimp_image_width
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
	subq	$32, %rsp
	leaq	.L.str.6(%rip), %rax
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
	jne	.LBB6_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movl	48(%rax), %ecx
	movl	%ecx, -24(%rbp)
.LBB6_2:                                # %if.end
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-24(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_image_width, .Lfunc_end6-gimp_image_width
	.cfi_endproc

	.globl	gimp_image_height
	.align	16, 0x90
	.type	gimp_image_height,@function
gimp_image_height:                      # @gimp_image_height
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
	subq	$32, %rsp
	leaq	.L.str.7(%rip), %rax
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
	jne	.LBB7_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movl	48(%rax), %ecx
	movl	%ecx, -24(%rbp)
.LBB7_2:                                # %if.end
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-24(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_image_height, .Lfunc_end7-gimp_image_height
	.cfi_endproc

	.globl	gimp_image_free_shadow
	.align	16, 0x90
	.type	gimp_image_free_shadow,@function
gimp_image_free_shadow:                 # @gimp_image_free_shadow
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
	leaq	.L.str.8(%rip), %rax
	leaq	-20(%rbp), %rsi
	movl	$13, %edx
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
.Lfunc_end8:
	.size	gimp_image_free_shadow, .Lfunc_end8-gimp_image_free_shadow
	.cfi_endproc

	.globl	gimp_image_resize
	.align	16, 0x90
	.type	gimp_image_resize,@function
gimp_image_resize:                      # @gimp_image_resize
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
	pushq	%r14
	pushq	%rbx
	subq	$128, %rsp
.Ltmp30:
	.cfi_offset %rbx, -32
.Ltmp31:
	.cfi_offset %r14, -24
	leaq	.L.str.9(%rip), %rax
	leaq	-52(%rbp), %r9
	movl	$13, %r10d
	xorl	%r11d, %r11d
	movl	$22, %ebx
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movl	%ecx, -32(%rbp)
	movl	%r8d, -36(%rbp)
	movl	$1, -56(%rbp)
	movl	-20(%rbp), %ecx
	movl	-24(%rbp), %edx
	movl	-28(%rbp), %esi
	movl	-32(%rbp), %edi
	movl	-36(%rbp), %r8d
	movl	%edi, -60(%rbp)         # 4-byte Spill
	movq	%rax, %rdi
	movl	%esi, -64(%rbp)         # 4-byte Spill
	movq	%r9, %rsi
	movl	%edx, -68(%rbp)         # 4-byte Spill
	movl	%r10d, %edx
	movl	%r8d, -72(%rbp)         # 4-byte Spill
	movl	%r11d, %r8d
	movl	-68(%rbp), %r9d         # 4-byte Reload
	movl	$0, (%rsp)
	movl	-64(%rbp), %r10d        # 4-byte Reload
	movl	%r10d, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	-60(%rbp), %r10d        # 4-byte Reload
	movl	%r10d, 24(%rsp)
	movl	$0, 32(%rsp)
	movl	-72(%rbp), %r10d        # 4-byte Reload
	movl	%r10d, 40(%rsp)
	movl	$22, 48(%rsp)
	movb	$0, %al
	movl	%ebx, -76(%rbp)         # 4-byte Spill
	callq	gimp_run_procedure@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	cmpl	$3, 8(%rax)
	sete	%r14b
	andb	$1, %r14b
	movzbl	%r14b, %ecx
	movl	%ecx, -56(%rbp)
	movq	-48(%rbp), %rdi
	movl	-52(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-56(%rbp), %eax
	addq	$128, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_image_resize, .Lfunc_end9-gimp_image_resize
	.cfi_endproc

	.globl	gimp_image_resize_to_layers
	.align	16, 0x90
	.type	gimp_image_resize_to_layers,@function
gimp_image_resize_to_layers:            # @gimp_image_resize_to_layers
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp32:
	.cfi_def_cfa_offset 16
.Ltmp33:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp34:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	leaq	.L.str.10(%rip), %rax
	leaq	-20(%rbp), %rsi
	movl	$13, %edx
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
	.size	gimp_image_resize_to_layers, .Lfunc_end10-gimp_image_resize_to_layers
	.cfi_endproc

	.globl	gimp_image_scale
	.align	16, 0x90
	.type	gimp_image_scale,@function
gimp_image_scale:                       # @gimp_image_scale
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp35:
	.cfi_def_cfa_offset 16
.Ltmp36:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp37:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$72, %rsp
.Ltmp38:
	.cfi_offset %rbx, -24
	leaq	.L.str.11(%rip), %rax
	leaq	-36(%rbp), %rcx
	movl	$13, %r8d
	xorl	%r9d, %r9d
	movl	$22, %r10d
	movl	%edi, -12(%rbp)
	movl	%esi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	$1, -40(%rbp)
	movl	-12(%rbp), %edx
	movl	-16(%rbp), %esi
	movl	-20(%rbp), %edi
	movl	%edi, -44(%rbp)         # 4-byte Spill
	movq	%rax, %rdi
	movl	%esi, -48(%rbp)         # 4-byte Spill
	movq	%rcx, %rsi
	movl	%edx, -52(%rbp)         # 4-byte Spill
	movl	%r8d, %edx
	movl	-52(%rbp), %ecx         # 4-byte Reload
	movl	%r9d, %r8d
	movl	-48(%rbp), %r9d         # 4-byte Reload
	movl	$0, (%rsp)
	movl	-44(%rbp), %r11d        # 4-byte Reload
	movl	%r11d, 8(%rsp)
	movl	$22, 16(%rsp)
	movb	$0, %al
	movl	%r10d, -56(%rbp)        # 4-byte Spill
	callq	gimp_run_procedure@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	cmpl	$3, 8(%rax)
	sete	%bl
	andb	$1, %bl
	movzbl	%bl, %ecx
	movl	%ecx, -40(%rbp)
	movq	-32(%rbp), %rdi
	movl	-36(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-40(%rbp), %eax
	addq	$72, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end11:
	.size	gimp_image_scale, .Lfunc_end11-gimp_image_scale
	.cfi_endproc

	.globl	gimp_image_scale_full
	.align	16, 0x90
	.type	gimp_image_scale_full,@function
gimp_image_scale_full:                  # @gimp_image_scale_full
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp39:
	.cfi_def_cfa_offset 16
.Ltmp40:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp41:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$88, %rsp
.Ltmp42:
	.cfi_offset %rbx, -24
	leaq	.L.str.12(%rip), %rax
	leaq	-36(%rbp), %r8
	movl	$13, %r9d
	xorl	%r10d, %r10d
	movl	$22, %r11d
	movl	%edi, -12(%rbp)
	movl	%esi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movl	$1, -40(%rbp)
	movl	-12(%rbp), %ecx
	movl	-16(%rbp), %edx
	movl	-20(%rbp), %esi
	movl	-24(%rbp), %edi
	movl	%edi, -44(%rbp)         # 4-byte Spill
	movq	%rax, %rdi
	movl	%esi, -48(%rbp)         # 4-byte Spill
	movq	%r8, %rsi
	movl	%edx, -52(%rbp)         # 4-byte Spill
	movl	%r9d, %edx
	movl	%r10d, %r8d
	movl	-52(%rbp), %r9d         # 4-byte Reload
	movl	$0, (%rsp)
	movl	-48(%rbp), %r10d        # 4-byte Reload
	movl	%r10d, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	-44(%rbp), %r10d        # 4-byte Reload
	movl	%r10d, 24(%rsp)
	movl	$22, 32(%rsp)
	movb	$0, %al
	movl	%r11d, -56(%rbp)        # 4-byte Spill
	callq	gimp_run_procedure@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	cmpl	$3, 8(%rax)
	sete	%bl
	andb	$1, %bl
	movzbl	%bl, %ecx
	movl	%ecx, -40(%rbp)
	movq	-32(%rbp), %rdi
	movl	-36(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-40(%rbp), %eax
	addq	$88, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_image_scale_full, .Lfunc_end12-gimp_image_scale_full
	.cfi_endproc

	.globl	gimp_image_crop
	.align	16, 0x90
	.type	gimp_image_crop,@function
gimp_image_crop:                        # @gimp_image_crop
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp43:
	.cfi_def_cfa_offset 16
.Ltmp44:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp45:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$128, %rsp
.Ltmp46:
	.cfi_offset %rbx, -32
.Ltmp47:
	.cfi_offset %r14, -24
	leaq	.L.str.13(%rip), %rax
	leaq	-52(%rbp), %r9
	movl	$13, %r10d
	xorl	%r11d, %r11d
	movl	$22, %ebx
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movl	%ecx, -32(%rbp)
	movl	%r8d, -36(%rbp)
	movl	$1, -56(%rbp)
	movl	-20(%rbp), %ecx
	movl	-24(%rbp), %edx
	movl	-28(%rbp), %esi
	movl	-32(%rbp), %edi
	movl	-36(%rbp), %r8d
	movl	%edi, -60(%rbp)         # 4-byte Spill
	movq	%rax, %rdi
	movl	%esi, -64(%rbp)         # 4-byte Spill
	movq	%r9, %rsi
	movl	%edx, -68(%rbp)         # 4-byte Spill
	movl	%r10d, %edx
	movl	%r8d, -72(%rbp)         # 4-byte Spill
	movl	%r11d, %r8d
	movl	-68(%rbp), %r9d         # 4-byte Reload
	movl	$0, (%rsp)
	movl	-64(%rbp), %r10d        # 4-byte Reload
	movl	%r10d, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	-60(%rbp), %r10d        # 4-byte Reload
	movl	%r10d, 24(%rsp)
	movl	$0, 32(%rsp)
	movl	-72(%rbp), %r10d        # 4-byte Reload
	movl	%r10d, 40(%rsp)
	movl	$22, 48(%rsp)
	movb	$0, %al
	movl	%ebx, -76(%rbp)         # 4-byte Spill
	callq	gimp_run_procedure@PLT
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	cmpl	$3, 8(%rax)
	sete	%r14b
	andb	$1, %r14b
	movzbl	%r14b, %ecx
	movl	%ecx, -56(%rbp)
	movq	-48(%rbp), %rdi
	movl	-52(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-56(%rbp), %eax
	addq	$128, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end13:
	.size	gimp_image_crop, .Lfunc_end13-gimp_image_crop
	.cfi_endproc

	.globl	gimp_image_flip
	.align	16, 0x90
	.type	gimp_image_flip,@function
gimp_image_flip:                        # @gimp_image_flip
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp48:
	.cfi_def_cfa_offset 16
.Ltmp49:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp50:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	leaq	.L.str.14(%rip), %rax
	leaq	-20(%rbp), %rcx
	movl	$13, %edx
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
.Lfunc_end14:
	.size	gimp_image_flip, .Lfunc_end14-gimp_image_flip
	.cfi_endproc

	.globl	gimp_image_rotate
	.align	16, 0x90
	.type	gimp_image_rotate,@function
gimp_image_rotate:                      # @gimp_image_rotate
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp51:
	.cfi_def_cfa_offset 16
.Ltmp52:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp53:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	leaq	.L.str.15(%rip), %rax
	leaq	-20(%rbp), %rcx
	movl	$13, %edx
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
.Lfunc_end15:
	.size	gimp_image_rotate, .Lfunc_end15-gimp_image_rotate
	.cfi_endproc

	.globl	gimp_image_get_layers
	.align	16, 0x90
	.type	gimp_image_get_layers,@function
gimp_image_get_layers:                  # @gimp_image_get_layers
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp54:
	.cfi_def_cfa_offset 16
.Ltmp55:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp56:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	leaq	.L.str.16(%rip), %rax
	leaq	-28(%rbp), %rcx
	movl	$13, %edx
	movl	$22, %r8d
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movq	$0, -40(%rbp)
	movl	-4(%rbp), %edi
	movl	%edi, -44(%rbp)         # 4-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rsi
	movl	-44(%rbp), %ecx         # 4-byte Reload
	movb	$0, %al
	callq	gimp_run_procedure@PLT
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movl	$0, (%rax)
	movq	-24(%rbp), %rax
	cmpl	$3, 8(%rax)
	jne	.LBB16_2
# BB#1:                                 # %if.then
	movl	$4, %eax
	movl	%eax, %esi
	movq	-24(%rbp), %rcx
	movl	48(%rcx), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, (%rcx)
	movq	-16(%rbp), %rcx
	movslq	(%rcx), %rdi
	callq	g_malloc_n@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	88(%rcx), %rcx
	movq	-16(%rbp), %rsi
	movslq	(%rsi), %rsi
	shlq	$2, %rsi
	movq	%rax, %rdi
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	movq	%rcx, %rsi
	movq	-56(%rbp), %rdx         # 8-byte Reload
	callq	memcpy@PLT
.LBB16_2:                               # %if.end
	movq	-24(%rbp), %rdi
	movl	-28(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movq	-40(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gimp_image_get_layers, .Lfunc_end16-gimp_image_get_layers
	.cfi_endproc

	.globl	gimp_image_get_channels
	.align	16, 0x90
	.type	gimp_image_get_channels,@function
gimp_image_get_channels:                # @gimp_image_get_channels
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
	subq	$64, %rsp
	leaq	.L.str.17(%rip), %rax
	leaq	-28(%rbp), %rcx
	movl	$13, %edx
	movl	$22, %r8d
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movq	$0, -40(%rbp)
	movl	-4(%rbp), %edi
	movl	%edi, -44(%rbp)         # 4-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rsi
	movl	-44(%rbp), %ecx         # 4-byte Reload
	movb	$0, %al
	callq	gimp_run_procedure@PLT
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movl	$0, (%rax)
	movq	-24(%rbp), %rax
	cmpl	$3, 8(%rax)
	jne	.LBB17_2
# BB#1:                                 # %if.then
	movl	$4, %eax
	movl	%eax, %esi
	movq	-24(%rbp), %rcx
	movl	48(%rcx), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, (%rcx)
	movq	-16(%rbp), %rcx
	movslq	(%rcx), %rdi
	callq	g_malloc_n@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	88(%rcx), %rcx
	movq	-16(%rbp), %rsi
	movslq	(%rsi), %rsi
	shlq	$2, %rsi
	movq	%rax, %rdi
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	movq	%rcx, %rsi
	movq	-56(%rbp), %rdx         # 8-byte Reload
	callq	memcpy@PLT
.LBB17_2:                               # %if.end
	movq	-24(%rbp), %rdi
	movl	-28(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movq	-40(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	gimp_image_get_channels, .Lfunc_end17-gimp_image_get_channels
	.cfi_endproc

	.globl	gimp_image_get_vectors
	.align	16, 0x90
	.type	gimp_image_get_vectors,@function
gimp_image_get_vectors:                 # @gimp_image_get_vectors
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
	subq	$64, %rsp
	leaq	.L.str.18(%rip), %rax
	leaq	-28(%rbp), %rcx
	movl	$13, %edx
	movl	$22, %r8d
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movq	$0, -40(%rbp)
	movl	-4(%rbp), %edi
	movl	%edi, -44(%rbp)         # 4-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rsi
	movl	-44(%rbp), %ecx         # 4-byte Reload
	movb	$0, %al
	callq	gimp_run_procedure@PLT
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movl	$0, (%rax)
	movq	-24(%rbp), %rax
	cmpl	$3, 8(%rax)
	jne	.LBB18_2
# BB#1:                                 # %if.then
	movl	$4, %eax
	movl	%eax, %esi
	movq	-24(%rbp), %rcx
	movl	48(%rcx), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, (%rcx)
	movq	-16(%rbp), %rcx
	movslq	(%rcx), %rdi
	callq	g_malloc_n@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	88(%rcx), %rcx
	movq	-16(%rbp), %rsi
	movslq	(%rsi), %rsi
	shlq	$2, %rsi
	movq	%rax, %rdi
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	movq	%rcx, %rsi
	movq	-56(%rbp), %rdx         # 8-byte Reload
	callq	memcpy@PLT
.LBB18_2:                               # %if.end
	movq	-24(%rbp), %rdi
	movl	-28(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movq	-40(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	gimp_image_get_vectors, .Lfunc_end18-gimp_image_get_vectors
	.cfi_endproc

	.globl	gimp_image_get_active_drawable
	.align	16, 0x90
	.type	gimp_image_get_active_drawable,@function
gimp_image_get_active_drawable:         # @gimp_image_get_active_drawable
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp63:
	.cfi_def_cfa_offset 16
.Ltmp64:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp65:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	leaq	.L.str.19(%rip), %rax
	leaq	-20(%rbp), %rsi
	movl	$13, %edx
	movl	$22, %r8d
	movl	%edi, -4(%rbp)
	movl	$-1, -24(%rbp)
	movl	-4(%rbp), %ecx
	movq	%rax, %rdi
	movb	$0, %al
	callq	gimp_run_procedure@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpl	$3, 8(%rax)
	jne	.LBB19_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movl	48(%rax), %ecx
	movl	%ecx, -24(%rbp)
.LBB19_2:                               # %if.end
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-24(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	gimp_image_get_active_drawable, .Lfunc_end19-gimp_image_get_active_drawable
	.cfi_endproc

	.globl	gimp_image_unset_active_channel
	.align	16, 0x90
	.type	gimp_image_unset_active_channel,@function
gimp_image_unset_active_channel:        # @gimp_image_unset_active_channel
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp66:
	.cfi_def_cfa_offset 16
.Ltmp67:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp68:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	leaq	.L.str.20(%rip), %rax
	leaq	-20(%rbp), %rsi
	movl	$13, %edx
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
.Lfunc_end20:
	.size	gimp_image_unset_active_channel, .Lfunc_end20-gimp_image_unset_active_channel
	.cfi_endproc

	.globl	gimp_image_get_floating_sel
	.align	16, 0x90
	.type	gimp_image_get_floating_sel,@function
gimp_image_get_floating_sel:            # @gimp_image_get_floating_sel
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp69:
	.cfi_def_cfa_offset 16
.Ltmp70:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp71:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	leaq	.L.str.21(%rip), %rax
	leaq	-20(%rbp), %rsi
	movl	$13, %edx
	movl	$22, %r8d
	movl	%edi, -4(%rbp)
	movl	$-1, -24(%rbp)
	movl	-4(%rbp), %ecx
	movq	%rax, %rdi
	movb	$0, %al
	callq	gimp_run_procedure@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpl	$3, 8(%rax)
	jne	.LBB21_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movl	48(%rax), %ecx
	movl	%ecx, -24(%rbp)
.LBB21_2:                               # %if.end
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-24(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	gimp_image_get_floating_sel, .Lfunc_end21-gimp_image_get_floating_sel
	.cfi_endproc

	.globl	gimp_image_floating_sel_attached_to
	.align	16, 0x90
	.type	gimp_image_floating_sel_attached_to,@function
gimp_image_floating_sel_attached_to:    # @gimp_image_floating_sel_attached_to
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp72:
	.cfi_def_cfa_offset 16
.Ltmp73:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp74:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	leaq	.L.str.22(%rip), %rax
	leaq	-20(%rbp), %rsi
	movl	$13, %edx
	movl	$22, %r8d
	movl	%edi, -4(%rbp)
	movl	$-1, -24(%rbp)
	movl	-4(%rbp), %ecx
	movq	%rax, %rdi
	movb	$0, %al
	callq	gimp_run_procedure@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpl	$3, 8(%rax)
	jne	.LBB22_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movl	48(%rax), %ecx
	movl	%ecx, -24(%rbp)
.LBB22_2:                               # %if.end
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-24(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	gimp_image_floating_sel_attached_to, .Lfunc_end22-gimp_image_floating_sel_attached_to
	.cfi_endproc

	.globl	gimp_image_pick_color
	.align	16, 0x90
	.type	gimp_image_pick_color,@function
gimp_image_pick_color:                  # @gimp_image_pick_color
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp75:
	.cfi_def_cfa_offset 16
.Ltmp76:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp77:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$160, %rsp
.Ltmp78:
	.cfi_offset %rbx, -48
.Ltmp79:
	.cfi_offset %r12, -40
.Ltmp80:
	.cfi_offset %r14, -32
.Ltmp81:
	.cfi_offset %r15, -24
	leaq	.L.str.23(%rip), %rax
	leaq	-92(%rbp), %r9
	movl	$13, %r10d
	movl	$16, %r11d
	movl	$3, %ebx
	xorl	%r14d, %r14d
	movl	$22, %r15d
	movl	%edi, -36(%rbp)
	movl	%esi, -40(%rbp)
	movsd	%xmm0, -48(%rbp)
	movsd	%xmm1, -56(%rbp)
	movl	%edx, -60(%rbp)
	movl	%ecx, -64(%rbp)
	movsd	%xmm2, -72(%rbp)
	movq	%r8, -80(%rbp)
	movl	$1, -96(%rbp)
	movl	-36(%rbp), %ecx
	movl	-40(%rbp), %edx
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-56(%rbp), %xmm1        # xmm1 = mem[0],zero
	movl	-60(%rbp), %esi
	movl	-64(%rbp), %edi
	movsd	-72(%rbp), %xmm2        # xmm2 = mem[0],zero
	movl	%edi, -100(%rbp)        # 4-byte Spill
	movq	%rax, %rdi
	movl	%esi, -104(%rbp)        # 4-byte Spill
	movq	%r9, %rsi
	movl	%edx, -108(%rbp)        # 4-byte Spill
	movl	%r10d, %edx
	movl	%r11d, %r8d
	movl	-108(%rbp), %r9d        # 4-byte Reload
	movl	$3, (%rsp)
	movl	$3, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	-104(%rbp), %r10d       # 4-byte Reload
	movl	%r10d, 24(%rsp)
	movl	$0, 32(%rsp)
	movl	-100(%rbp), %r10d       # 4-byte Reload
	movl	%r10d, 40(%rsp)
	movl	$3, 48(%rsp)
	movl	$22, 56(%rsp)
	movb	$3, %al
	movl	%r15d, -112(%rbp)       # 4-byte Spill
	movl	%ebx, -116(%rbp)        # 4-byte Spill
	movl	%r14d, -120(%rbp)       # 4-byte Spill
	callq	gimp_run_procedure@PLT
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	cmpl	$3, 8(%rax)
	sete	%r12b
	andb	$1, %r12b
	movzbl	%r12b, %ecx
	movl	%ecx, -96(%rbp)
	cmpl	$0, -96(%rbp)
	je	.LBB23_2
# BB#1:                                 # %if.then
	movq	-80(%rbp), %rax
	movq	-88(%rbp), %rcx
	movq	48(%rcx), %rdx
	movq	%rdx, (%rax)
	movq	56(%rcx), %rdx
	movq	%rdx, 8(%rax)
	movq	64(%rcx), %rdx
	movq	%rdx, 16(%rax)
	movq	72(%rcx), %rcx
	movq	%rcx, 24(%rax)
.LBB23_2:                               # %if.end
	movq	-88(%rbp), %rdi
	movl	-92(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-96(%rbp), %eax
	addq	$160, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end23:
	.size	gimp_image_pick_color, .Lfunc_end23-gimp_image_pick_color
	.cfi_endproc

	.globl	gimp_image_pick_correlate_layer
	.align	16, 0x90
	.type	gimp_image_pick_correlate_layer,@function
gimp_image_pick_correlate_layer:        # @gimp_image_pick_correlate_layer
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp82:
	.cfi_def_cfa_offset 16
.Ltmp83:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp84:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	leaq	.L.str.24(%rip), %rax
	leaq	-28(%rbp), %rcx
	movl	$13, %r8d
	xorl	%r9d, %r9d
	movl	$22, %r10d
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -12(%rbp)
	movl	$-1, -32(%rbp)
	movl	-4(%rbp), %edx
	movl	-8(%rbp), %esi
	movl	-12(%rbp), %edi
	movl	%edi, -36(%rbp)         # 4-byte Spill
	movq	%rax, %rdi
	movl	%esi, -40(%rbp)         # 4-byte Spill
	movq	%rcx, %rsi
	movl	%edx, -44(%rbp)         # 4-byte Spill
	movl	%r8d, %edx
	movl	-44(%rbp), %ecx         # 4-byte Reload
	movl	%r9d, %r8d
	movl	-40(%rbp), %r9d         # 4-byte Reload
	movl	$0, (%rsp)
	movl	-36(%rbp), %r11d        # 4-byte Reload
	movl	%r11d, 8(%rsp)
	movl	$22, 16(%rsp)
	movb	$0, %al
	movl	%r10d, -48(%rbp)        # 4-byte Spill
	callq	gimp_run_procedure@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpl	$3, 8(%rax)
	jne	.LBB24_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movl	48(%rax), %ecx
	movl	%ecx, -32(%rbp)
.LBB24_2:                               # %if.end
	movq	-24(%rbp), %rdi
	movl	-28(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-32(%rbp), %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end24:
	.size	gimp_image_pick_correlate_layer, .Lfunc_end24-gimp_image_pick_correlate_layer
	.cfi_endproc

	.globl	gimp_image_add_layer
	.align	16, 0x90
	.type	gimp_image_add_layer,@function
gimp_image_add_layer:                   # @gimp_image_add_layer
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp85:
	.cfi_def_cfa_offset 16
.Ltmp86:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp87:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$80, %rsp
.Ltmp88:
	.cfi_offset %rbx, -32
.Ltmp89:
	.cfi_offset %r14, -24
	leaq	.L.str.25(%rip), %rax
	leaq	-44(%rbp), %rcx
	movl	$13, %r8d
	movl	$14, %r9d
	xorl	%r10d, %r10d
	movl	$22, %r11d
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movl	$1, -48(%rbp)
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %esi
	movl	-28(%rbp), %edi
	movl	%edi, -52(%rbp)         # 4-byte Spill
	movq	%rax, %rdi
	movl	%esi, -56(%rbp)         # 4-byte Spill
	movq	%rcx, %rsi
	movl	%edx, -60(%rbp)         # 4-byte Spill
	movl	%r8d, %edx
	movl	-60(%rbp), %ecx         # 4-byte Reload
	movl	%r9d, %r8d
	movl	-56(%rbp), %r9d         # 4-byte Reload
	movl	$0, (%rsp)
	movl	-52(%rbp), %ebx         # 4-byte Reload
	movl	%ebx, 8(%rsp)
	movl	$22, 16(%rsp)
	movb	$0, %al
	movl	%r10d, -64(%rbp)        # 4-byte Spill
	movl	%r11d, -68(%rbp)        # 4-byte Spill
	callq	gimp_run_procedure@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	cmpl	$3, 8(%rax)
	sete	%r14b
	andb	$1, %r14b
	movzbl	%r14b, %ecx
	movl	%ecx, -48(%rbp)
	movq	-40(%rbp), %rdi
	movl	-44(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-48(%rbp), %eax
	addq	$80, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end25:
	.size	gimp_image_add_layer, .Lfunc_end25-gimp_image_add_layer
	.cfi_endproc

	.globl	gimp_image_insert_layer
	.align	16, 0x90
	.type	gimp_image_insert_layer,@function
gimp_image_insert_layer:                # @gimp_image_insert_layer
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp90:
	.cfi_def_cfa_offset 16
.Ltmp91:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp92:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$96, %rsp
.Ltmp93:
	.cfi_offset %rbx, -32
.Ltmp94:
	.cfi_offset %r14, -24
	leaq	.L.str.26(%rip), %rax
	leaq	-44(%rbp), %r8
	movl	$13, %r9d
	movl	$14, %r10d
	xorl	%r11d, %r11d
	movl	$22, %ebx
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movl	%ecx, -32(%rbp)
	movl	$1, -48(%rbp)
	movl	-20(%rbp), %ecx
	movl	-24(%rbp), %edx
	movl	-28(%rbp), %esi
	movl	-32(%rbp), %edi
	movl	%edi, -52(%rbp)         # 4-byte Spill
	movq	%rax, %rdi
	movl	%esi, -56(%rbp)         # 4-byte Spill
	movq	%r8, %rsi
	movl	%edx, -60(%rbp)         # 4-byte Spill
	movl	%r9d, %edx
	movl	%r10d, %r8d
	movl	-60(%rbp), %r9d         # 4-byte Reload
	movl	$14, (%rsp)
	movl	-56(%rbp), %r10d        # 4-byte Reload
	movl	%r10d, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	-52(%rbp), %r10d        # 4-byte Reload
	movl	%r10d, 24(%rsp)
	movl	$22, 32(%rsp)
	movb	$0, %al
	movl	%ebx, -64(%rbp)         # 4-byte Spill
	movl	%r11d, -68(%rbp)        # 4-byte Spill
	callq	gimp_run_procedure@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	cmpl	$3, 8(%rax)
	sete	%r14b
	andb	$1, %r14b
	movzbl	%r14b, %ecx
	movl	%ecx, -48(%rbp)
	movq	-40(%rbp), %rdi
	movl	-44(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-48(%rbp), %eax
	addq	$96, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end26:
	.size	gimp_image_insert_layer, .Lfunc_end26-gimp_image_insert_layer
	.cfi_endproc

	.globl	gimp_image_remove_layer
	.align	16, 0x90
	.type	gimp_image_remove_layer,@function
gimp_image_remove_layer:                # @gimp_image_remove_layer
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp95:
	.cfi_def_cfa_offset 16
.Ltmp96:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp97:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	leaq	.L.str.27(%rip), %rax
	leaq	-20(%rbp), %rcx
	movl	$13, %edx
	movl	$14, %r8d
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
.Lfunc_end27:
	.size	gimp_image_remove_layer, .Lfunc_end27-gimp_image_remove_layer
	.cfi_endproc

	.globl	gimp_image_add_channel
	.align	16, 0x90
	.type	gimp_image_add_channel,@function
gimp_image_add_channel:                 # @gimp_image_add_channel
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp98:
	.cfi_def_cfa_offset 16
.Ltmp99:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp100:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$80, %rsp
.Ltmp101:
	.cfi_offset %rbx, -32
.Ltmp102:
	.cfi_offset %r14, -24
	leaq	.L.str.28(%rip), %rax
	leaq	-44(%rbp), %rcx
	movl	$13, %r8d
	movl	$15, %r9d
	xorl	%r10d, %r10d
	movl	$22, %r11d
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movl	$1, -48(%rbp)
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %esi
	movl	-28(%rbp), %edi
	movl	%edi, -52(%rbp)         # 4-byte Spill
	movq	%rax, %rdi
	movl	%esi, -56(%rbp)         # 4-byte Spill
	movq	%rcx, %rsi
	movl	%edx, -60(%rbp)         # 4-byte Spill
	movl	%r8d, %edx
	movl	-60(%rbp), %ecx         # 4-byte Reload
	movl	%r9d, %r8d
	movl	-56(%rbp), %r9d         # 4-byte Reload
	movl	$0, (%rsp)
	movl	-52(%rbp), %ebx         # 4-byte Reload
	movl	%ebx, 8(%rsp)
	movl	$22, 16(%rsp)
	movb	$0, %al
	movl	%r10d, -64(%rbp)        # 4-byte Spill
	movl	%r11d, -68(%rbp)        # 4-byte Spill
	callq	gimp_run_procedure@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	cmpl	$3, 8(%rax)
	sete	%r14b
	andb	$1, %r14b
	movzbl	%r14b, %ecx
	movl	%ecx, -48(%rbp)
	movq	-40(%rbp), %rdi
	movl	-44(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-48(%rbp), %eax
	addq	$80, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end28:
	.size	gimp_image_add_channel, .Lfunc_end28-gimp_image_add_channel
	.cfi_endproc

	.globl	gimp_image_insert_channel
	.align	16, 0x90
	.type	gimp_image_insert_channel,@function
gimp_image_insert_channel:              # @gimp_image_insert_channel
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp103:
	.cfi_def_cfa_offset 16
.Ltmp104:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp105:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$96, %rsp
.Ltmp106:
	.cfi_offset %rbx, -32
.Ltmp107:
	.cfi_offset %r14, -24
	leaq	.L.str.29(%rip), %rax
	leaq	-44(%rbp), %r8
	movl	$13, %r9d
	movl	$15, %r10d
	xorl	%r11d, %r11d
	movl	$22, %ebx
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movl	%ecx, -32(%rbp)
	movl	$1, -48(%rbp)
	movl	-20(%rbp), %ecx
	movl	-24(%rbp), %edx
	movl	-28(%rbp), %esi
	movl	-32(%rbp), %edi
	movl	%edi, -52(%rbp)         # 4-byte Spill
	movq	%rax, %rdi
	movl	%esi, -56(%rbp)         # 4-byte Spill
	movq	%r8, %rsi
	movl	%edx, -60(%rbp)         # 4-byte Spill
	movl	%r9d, %edx
	movl	%r10d, %r8d
	movl	-60(%rbp), %r9d         # 4-byte Reload
	movl	$15, (%rsp)
	movl	-56(%rbp), %r10d        # 4-byte Reload
	movl	%r10d, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	-52(%rbp), %r10d        # 4-byte Reload
	movl	%r10d, 24(%rsp)
	movl	$22, 32(%rsp)
	movb	$0, %al
	movl	%ebx, -64(%rbp)         # 4-byte Spill
	movl	%r11d, -68(%rbp)        # 4-byte Spill
	callq	gimp_run_procedure@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	cmpl	$3, 8(%rax)
	sete	%r14b
	andb	$1, %r14b
	movzbl	%r14b, %ecx
	movl	%ecx, -48(%rbp)
	movq	-40(%rbp), %rdi
	movl	-44(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-48(%rbp), %eax
	addq	$96, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end29:
	.size	gimp_image_insert_channel, .Lfunc_end29-gimp_image_insert_channel
	.cfi_endproc

	.globl	gimp_image_remove_channel
	.align	16, 0x90
	.type	gimp_image_remove_channel,@function
gimp_image_remove_channel:              # @gimp_image_remove_channel
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp108:
	.cfi_def_cfa_offset 16
.Ltmp109:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp110:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	leaq	.L.str.30(%rip), %rax
	leaq	-20(%rbp), %rcx
	movl	$13, %edx
	movl	$15, %r8d
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
.Lfunc_end30:
	.size	gimp_image_remove_channel, .Lfunc_end30-gimp_image_remove_channel
	.cfi_endproc

	.globl	gimp_image_add_vectors
	.align	16, 0x90
	.type	gimp_image_add_vectors,@function
gimp_image_add_vectors:                 # @gimp_image_add_vectors
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp111:
	.cfi_def_cfa_offset 16
.Ltmp112:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp113:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$80, %rsp
.Ltmp114:
	.cfi_offset %rbx, -32
.Ltmp115:
	.cfi_offset %r14, -24
	leaq	.L.str.31(%rip), %rax
	leaq	-44(%rbp), %rcx
	movl	$13, %r8d
	movl	$19, %r9d
	xorl	%r10d, %r10d
	movl	$22, %r11d
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movl	$1, -48(%rbp)
	movl	-20(%rbp), %edx
	movl	-24(%rbp), %esi
	movl	-28(%rbp), %edi
	movl	%edi, -52(%rbp)         # 4-byte Spill
	movq	%rax, %rdi
	movl	%esi, -56(%rbp)         # 4-byte Spill
	movq	%rcx, %rsi
	movl	%edx, -60(%rbp)         # 4-byte Spill
	movl	%r8d, %edx
	movl	-60(%rbp), %ecx         # 4-byte Reload
	movl	%r9d, %r8d
	movl	-56(%rbp), %r9d         # 4-byte Reload
	movl	$0, (%rsp)
	movl	-52(%rbp), %ebx         # 4-byte Reload
	movl	%ebx, 8(%rsp)
	movl	$22, 16(%rsp)
	movb	$0, %al
	movl	%r10d, -64(%rbp)        # 4-byte Spill
	movl	%r11d, -68(%rbp)        # 4-byte Spill
	callq	gimp_run_procedure@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	cmpl	$3, 8(%rax)
	sete	%r14b
	andb	$1, %r14b
	movzbl	%r14b, %ecx
	movl	%ecx, -48(%rbp)
	movq	-40(%rbp), %rdi
	movl	-44(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-48(%rbp), %eax
	addq	$80, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end31:
	.size	gimp_image_add_vectors, .Lfunc_end31-gimp_image_add_vectors
	.cfi_endproc

	.globl	gimp_image_insert_vectors
	.align	16, 0x90
	.type	gimp_image_insert_vectors,@function
gimp_image_insert_vectors:              # @gimp_image_insert_vectors
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp116:
	.cfi_def_cfa_offset 16
.Ltmp117:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp118:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$96, %rsp
.Ltmp119:
	.cfi_offset %rbx, -32
.Ltmp120:
	.cfi_offset %r14, -24
	leaq	.L.str.32(%rip), %rax
	leaq	-44(%rbp), %r8
	movl	$13, %r9d
	movl	$19, %r10d
	xorl	%r11d, %r11d
	movl	$22, %ebx
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movl	%ecx, -32(%rbp)
	movl	$1, -48(%rbp)
	movl	-20(%rbp), %ecx
	movl	-24(%rbp), %edx
	movl	-28(%rbp), %esi
	movl	-32(%rbp), %edi
	movl	%edi, -52(%rbp)         # 4-byte Spill
	movq	%rax, %rdi
	movl	%esi, -56(%rbp)         # 4-byte Spill
	movq	%r8, %rsi
	movl	%edx, -60(%rbp)         # 4-byte Spill
	movl	%r9d, %edx
	movl	%r10d, %r8d
	movl	-60(%rbp), %r9d         # 4-byte Reload
	movl	$19, (%rsp)
	movl	-56(%rbp), %r10d        # 4-byte Reload
	movl	%r10d, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	-52(%rbp), %r10d        # 4-byte Reload
	movl	%r10d, 24(%rsp)
	movl	$22, 32(%rsp)
	movb	$0, %al
	movl	%ebx, -64(%rbp)         # 4-byte Spill
	movl	%r11d, -68(%rbp)        # 4-byte Spill
	callq	gimp_run_procedure@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	cmpl	$3, 8(%rax)
	sete	%r14b
	andb	$1, %r14b
	movzbl	%r14b, %ecx
	movl	%ecx, -48(%rbp)
	movq	-40(%rbp), %rdi
	movl	-44(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-48(%rbp), %eax
	addq	$96, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end32:
	.size	gimp_image_insert_vectors, .Lfunc_end32-gimp_image_insert_vectors
	.cfi_endproc

	.globl	gimp_image_remove_vectors
	.align	16, 0x90
	.type	gimp_image_remove_vectors,@function
gimp_image_remove_vectors:              # @gimp_image_remove_vectors
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp121:
	.cfi_def_cfa_offset 16
.Ltmp122:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp123:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	leaq	.L.str.33(%rip), %rax
	leaq	-20(%rbp), %rcx
	movl	$13, %edx
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
.Lfunc_end33:
	.size	gimp_image_remove_vectors, .Lfunc_end33-gimp_image_remove_vectors
	.cfi_endproc

	.globl	gimp_image_get_item_position
	.align	16, 0x90
	.type	gimp_image_get_item_position,@function
gimp_image_get_item_position:           # @gimp_image_get_item_position
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp124:
	.cfi_def_cfa_offset 16
.Ltmp125:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp126:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	leaq	.L.str.34(%rip), %rax
	leaq	-20(%rbp), %rcx
	movl	$13, %edx
	movl	$11, %r8d
	movl	$22, %r9d
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	$0, -24(%rbp)
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
	jne	.LBB34_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movl	48(%rax), %ecx
	movl	%ecx, -24(%rbp)
.LBB34_2:                               # %if.end
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-24(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end34:
	.size	gimp_image_get_item_position, .Lfunc_end34-gimp_image_get_item_position
	.cfi_endproc

	.globl	gimp_image_raise_item
	.align	16, 0x90
	.type	gimp_image_raise_item,@function
gimp_image_raise_item:                  # @gimp_image_raise_item
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp127:
	.cfi_def_cfa_offset 16
.Ltmp128:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp129:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	leaq	.L.str.35(%rip), %rax
	leaq	-20(%rbp), %rcx
	movl	$13, %edx
	movl	$11, %r8d
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
.Lfunc_end35:
	.size	gimp_image_raise_item, .Lfunc_end35-gimp_image_raise_item
	.cfi_endproc

	.globl	gimp_image_lower_item
	.align	16, 0x90
	.type	gimp_image_lower_item,@function
gimp_image_lower_item:                  # @gimp_image_lower_item
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp130:
	.cfi_def_cfa_offset 16
.Ltmp131:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp132:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	leaq	.L.str.36(%rip), %rax
	leaq	-20(%rbp), %rcx
	movl	$13, %edx
	movl	$11, %r8d
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
.Lfunc_end36:
	.size	gimp_image_lower_item, .Lfunc_end36-gimp_image_lower_item
	.cfi_endproc

	.globl	gimp_image_raise_item_to_top
	.align	16, 0x90
	.type	gimp_image_raise_item_to_top,@function
gimp_image_raise_item_to_top:           # @gimp_image_raise_item_to_top
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp133:
	.cfi_def_cfa_offset 16
.Ltmp134:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp135:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	leaq	.L.str.37(%rip), %rax
	leaq	-20(%rbp), %rcx
	movl	$13, %edx
	movl	$11, %r8d
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
.Lfunc_end37:
	.size	gimp_image_raise_item_to_top, .Lfunc_end37-gimp_image_raise_item_to_top
	.cfi_endproc

	.globl	gimp_image_lower_item_to_bottom
	.align	16, 0x90
	.type	gimp_image_lower_item_to_bottom,@function
gimp_image_lower_item_to_bottom:        # @gimp_image_lower_item_to_bottom
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp136:
	.cfi_def_cfa_offset 16
.Ltmp137:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp138:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	leaq	.L.str.38(%rip), %rax
	leaq	-20(%rbp), %rcx
	movl	$13, %edx
	movl	$11, %r8d
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
.Lfunc_end38:
	.size	gimp_image_lower_item_to_bottom, .Lfunc_end38-gimp_image_lower_item_to_bottom
	.cfi_endproc

	.globl	gimp_image_reorder_item
	.align	16, 0x90
	.type	gimp_image_reorder_item,@function
gimp_image_reorder_item:                # @gimp_image_reorder_item
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp139:
	.cfi_def_cfa_offset 16
.Ltmp140:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp141:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
	subq	$96, %rsp
.Ltmp142:
	.cfi_offset %rbx, -32
.Ltmp143:
	.cfi_offset %r14, -24
	leaq	.L.str.39(%rip), %rax
	leaq	-44(%rbp), %r8
	movl	$13, %r9d
	movl	$11, %r10d
	xorl	%r11d, %r11d
	movl	$22, %ebx
	movl	%edi, -20(%rbp)
	movl	%esi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movl	%ecx, -32(%rbp)
	movl	$1, -48(%rbp)
	movl	-20(%rbp), %ecx
	movl	-24(%rbp), %edx
	movl	-28(%rbp), %esi
	movl	-32(%rbp), %edi
	movl	%edi, -52(%rbp)         # 4-byte Spill
	movq	%rax, %rdi
	movl	%esi, -56(%rbp)         # 4-byte Spill
	movq	%r8, %rsi
	movl	%edx, -60(%rbp)         # 4-byte Spill
	movl	%r9d, %edx
	movl	%r10d, %r8d
	movl	-60(%rbp), %r9d         # 4-byte Reload
	movl	$11, (%rsp)
	movl	-56(%rbp), %r10d        # 4-byte Reload
	movl	%r10d, 8(%rsp)
	movl	$0, 16(%rsp)
	movl	-52(%rbp), %r10d        # 4-byte Reload
	movl	%r10d, 24(%rsp)
	movl	$22, 32(%rsp)
	movb	$0, %al
	movl	%ebx, -64(%rbp)         # 4-byte Spill
	movl	%r11d, -68(%rbp)        # 4-byte Spill
	callq	gimp_run_procedure@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	cmpl	$3, 8(%rax)
	sete	%r14b
	andb	$1, %r14b
	movzbl	%r14b, %ecx
	movl	%ecx, -48(%rbp)
	movq	-40(%rbp), %rdi
	movl	-44(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-48(%rbp), %eax
	addq	$96, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end39:
	.size	gimp_image_reorder_item, .Lfunc_end39-gimp_image_reorder_item
	.cfi_endproc

	.globl	gimp_image_flatten
	.align	16, 0x90
	.type	gimp_image_flatten,@function
gimp_image_flatten:                     # @gimp_image_flatten
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp144:
	.cfi_def_cfa_offset 16
.Ltmp145:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp146:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	leaq	.L.str.40(%rip), %rax
	leaq	-20(%rbp), %rsi
	movl	$13, %edx
	movl	$22, %r8d
	movl	%edi, -4(%rbp)
	movl	$-1, -24(%rbp)
	movl	-4(%rbp), %ecx
	movq	%rax, %rdi
	movb	$0, %al
	callq	gimp_run_procedure@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpl	$3, 8(%rax)
	jne	.LBB40_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movl	48(%rax), %ecx
	movl	%ecx, -24(%rbp)
.LBB40_2:                               # %if.end
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-24(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end40:
	.size	gimp_image_flatten, .Lfunc_end40-gimp_image_flatten
	.cfi_endproc

	.globl	gimp_image_merge_visible_layers
	.align	16, 0x90
	.type	gimp_image_merge_visible_layers,@function
gimp_image_merge_visible_layers:        # @gimp_image_merge_visible_layers
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp147:
	.cfi_def_cfa_offset 16
.Ltmp148:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp149:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	leaq	.L.str.41(%rip), %rax
	leaq	-20(%rbp), %rcx
	movl	$13, %edx
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
	jne	.LBB41_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movl	48(%rax), %ecx
	movl	%ecx, -24(%rbp)
.LBB41_2:                               # %if.end
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-24(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end41:
	.size	gimp_image_merge_visible_layers, .Lfunc_end41-gimp_image_merge_visible_layers
	.cfi_endproc

	.globl	gimp_image_merge_down
	.align	16, 0x90
	.type	gimp_image_merge_down,@function
gimp_image_merge_down:                  # @gimp_image_merge_down
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp150:
	.cfi_def_cfa_offset 16
.Ltmp151:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp152:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$88, %rsp
.Ltmp153:
	.cfi_offset %rbx, -24
	leaq	.L.str.42(%rip), %rax
	leaq	-36(%rbp), %rcx
	movl	$13, %r8d
	movl	$14, %r9d
	xorl	%r10d, %r10d
	movl	$22, %r11d
	movl	%edi, -12(%rbp)
	movl	%esi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	$-1, -40(%rbp)
	movl	-12(%rbp), %edx
	movl	-16(%rbp), %esi
	movl	-20(%rbp), %edi
	movl	%edi, -44(%rbp)         # 4-byte Spill
	movq	%rax, %rdi
	movl	%esi, -48(%rbp)         # 4-byte Spill
	movq	%rcx, %rsi
	movl	%edx, -52(%rbp)         # 4-byte Spill
	movl	%r8d, %edx
	movl	-52(%rbp), %ecx         # 4-byte Reload
	movl	%r9d, %r8d
	movl	-48(%rbp), %r9d         # 4-byte Reload
	movl	$0, (%rsp)
	movl	-44(%rbp), %ebx         # 4-byte Reload
	movl	%ebx, 8(%rsp)
	movl	$22, 16(%rsp)
	movb	$0, %al
	movl	%r10d, -56(%rbp)        # 4-byte Spill
	movl	%r11d, -60(%rbp)        # 4-byte Spill
	callq	gimp_run_procedure@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	cmpl	$3, 8(%rax)
	jne	.LBB42_2
# BB#1:                                 # %if.then
	movq	-32(%rbp), %rax
	movl	48(%rax), %ecx
	movl	%ecx, -40(%rbp)
.LBB42_2:                               # %if.end
	movq	-32(%rbp), %rdi
	movl	-36(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-40(%rbp), %eax
	addq	$88, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end42:
	.size	gimp_image_merge_down, .Lfunc_end42-gimp_image_merge_down
	.cfi_endproc

	.hidden	_gimp_image_get_colormap
	.globl	_gimp_image_get_colormap
	.align	16, 0x90
	.type	_gimp_image_get_colormap,@function
_gimp_image_get_colormap:               # @_gimp_image_get_colormap
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp154:
	.cfi_def_cfa_offset 16
.Ltmp155:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp156:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	leaq	.L.str.43(%rip), %rax
	leaq	-28(%rbp), %rcx
	movl	$13, %edx
	movl	$22, %r8d
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movq	$0, -40(%rbp)
	movl	-4(%rbp), %edi
	movl	%edi, -44(%rbp)         # 4-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rsi
	movl	-44(%rbp), %ecx         # 4-byte Reload
	movb	$0, %al
	callq	gimp_run_procedure@PLT
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movl	$0, (%rax)
	movq	-24(%rbp), %rax
	cmpl	$3, 8(%rax)
	jne	.LBB43_2
# BB#1:                                 # %if.then
	movl	$1, %eax
	movl	%eax, %esi
	movq	-24(%rbp), %rcx
	movl	48(%rcx), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, (%rcx)
	movq	-16(%rbp), %rcx
	movslq	(%rcx), %rdi
	callq	g_malloc_n@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	88(%rax), %rsi
	movq	-16(%rbp), %rax
	movslq	(%rax), %rax
	shlq	$0, %rax
	movq	%rax, %rdx
	callq	memcpy@PLT
.LBB43_2:                               # %if.end
	movq	-24(%rbp), %rdi
	movl	-28(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movq	-40(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end43:
	.size	_gimp_image_get_colormap, .Lfunc_end43-_gimp_image_get_colormap
	.cfi_endproc

	.hidden	_gimp_image_set_colormap
	.globl	_gimp_image_set_colormap
	.align	16, 0x90
	.type	_gimp_image_set_colormap,@function
_gimp_image_set_colormap:               # @_gimp_image_set_colormap
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp157:
	.cfi_def_cfa_offset 16
.Ltmp158:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp159:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$88, %rsp
.Ltmp160:
	.cfi_offset %rbx, -24
	leaq	.L.str.44(%rip), %rax
	leaq	-36(%rbp), %rcx
	movl	$13, %r8d
	xorl	%r9d, %r9d
	movl	$7, %r10d
	movl	$22, %r11d
	movl	%edi, -12(%rbp)
	movl	%esi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	$1, -40(%rbp)
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edi
	movq	-24(%rbp), %rdx
	movl	%edi, -44(%rbp)         # 4-byte Spill
	movq	%rax, %rdi
	movl	%esi, -48(%rbp)         # 4-byte Spill
	movq	%rcx, %rsi
	movq	%rdx, -56(%rbp)         # 8-byte Spill
	movl	%r8d, %edx
	movl	-48(%rbp), %ecx         # 4-byte Reload
	movl	%r9d, %r8d
	movl	-44(%rbp), %r9d         # 4-byte Reload
	movl	$7, (%rsp)
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	%rax, 8(%rsp)
	movl	$22, 16(%rsp)
	movb	$0, %al
	movl	%r10d, -60(%rbp)        # 4-byte Spill
	movl	%r11d, -64(%rbp)        # 4-byte Spill
	callq	gimp_run_procedure@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	cmpl	$3, 8(%rax)
	sete	%bl
	andb	$1, %bl
	movzbl	%bl, %ecx
	movl	%ecx, -40(%rbp)
	movq	-32(%rbp), %rdi
	movl	-36(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-40(%rbp), %eax
	addq	$88, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end44:
	.size	_gimp_image_set_colormap, .Lfunc_end44-_gimp_image_set_colormap
	.cfi_endproc

	.globl	gimp_image_clean_all
	.align	16, 0x90
	.type	gimp_image_clean_all,@function
gimp_image_clean_all:                   # @gimp_image_clean_all
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp161:
	.cfi_def_cfa_offset 16
.Ltmp162:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp163:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	leaq	.L.str.45(%rip), %rax
	leaq	-20(%rbp), %rsi
	movl	$13, %edx
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
.Lfunc_end45:
	.size	gimp_image_clean_all, .Lfunc_end45-gimp_image_clean_all
	.cfi_endproc

	.globl	gimp_image_is_dirty
	.align	16, 0x90
	.type	gimp_image_is_dirty,@function
gimp_image_is_dirty:                    # @gimp_image_is_dirty
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp164:
	.cfi_def_cfa_offset 16
.Ltmp165:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp166:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	leaq	.L.str.46(%rip), %rax
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
	jne	.LBB46_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movl	48(%rax), %ecx
	movl	%ecx, -24(%rbp)
.LBB46_2:                               # %if.end
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-24(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end46:
	.size	gimp_image_is_dirty, .Lfunc_end46-gimp_image_is_dirty
	.cfi_endproc

	.hidden	_gimp_image_thumbnail
	.globl	_gimp_image_thumbnail
	.align	16, 0x90
	.type	_gimp_image_thumbnail,@function
_gimp_image_thumbnail:                  # @_gimp_image_thumbnail
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp167:
	.cfi_def_cfa_offset 16
.Ltmp168:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp169:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$104, %rsp
.Ltmp170:
	.cfi_offset %rbx, -56
.Ltmp171:
	.cfi_offset %r12, -48
.Ltmp172:
	.cfi_offset %r13, -40
.Ltmp173:
	.cfi_offset %r14, -32
.Ltmp174:
	.cfi_offset %r15, -24
	movq	24(%rbp), %rax
	movq	16(%rbp), %r10
	leaq	.L.str.47(%rip), %r11
	leaq	-108(%rbp), %rbx
	movl	$13, %r14d
	xorl	%r15d, %r15d
	movl	$22, %r12d
	movl	%edi, -44(%rbp)
	movl	%esi, -48(%rbp)
	movl	%edx, -52(%rbp)
	movq	%rcx, -64(%rbp)
	movq	%r8, -72(%rbp)
	movq	%r9, -80(%rbp)
	movq	%r10, -88(%rbp)
	movq	%rax, -96(%rbp)
	movl	$1, -112(%rbp)
	movl	-44(%rbp), %ecx
	movl	-48(%rbp), %r9d
	movl	-52(%rbp), %edx
	movq	%r11, %rdi
	movq	%rbx, %rsi
	movl	%edx, -116(%rbp)        # 4-byte Spill
	movl	%r14d, %edx
	movl	%r15d, %r8d
	movl	$0, (%rsp)
	movl	-116(%rbp), %r14d       # 4-byte Reload
	movl	%r14d, 8(%rsp)
	movl	$22, 16(%rsp)
	movb	$0, %al
	movl	%r12d, -120(%rbp)       # 4-byte Spill
	callq	gimp_run_procedure@PLT
	movq	%rax, -104(%rbp)
	movq	-64(%rbp), %rax
	movl	$0, (%rax)
	movq	-72(%rbp), %rax
	movl	$0, (%rax)
	movq	-80(%rbp), %rax
	movl	$0, (%rax)
	movq	-88(%rbp), %rax
	movl	$0, (%rax)
	movq	-96(%rbp), %rax
	movq	$0, (%rax)
	movq	-104(%rbp), %rax
	cmpl	$3, 8(%rax)
	sete	%r13b
	andb	$1, %r13b
	movzbl	%r13b, %ecx
	movl	%ecx, -112(%rbp)
	cmpl	$0, -112(%rbp)
	je	.LBB47_2
# BB#1:                                 # %if.then
	movl	$1, %eax
	movl	%eax, %esi
	movq	-104(%rbp), %rcx
	movl	48(%rcx), %eax
	movq	-64(%rbp), %rcx
	movl	%eax, (%rcx)
	movq	-104(%rbp), %rcx
	movl	88(%rcx), %eax
	movq	-72(%rbp), %rcx
	movl	%eax, (%rcx)
	movq	-104(%rbp), %rcx
	movl	128(%rcx), %eax
	movq	-80(%rbp), %rcx
	movl	%eax, (%rcx)
	movq	-104(%rbp), %rcx
	movl	168(%rcx), %eax
	movq	-88(%rbp), %rcx
	movl	%eax, (%rcx)
	movq	-88(%rbp), %rcx
	movslq	(%rcx), %rdi
	callq	g_malloc_n@PLT
	movq	-96(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-96(%rbp), %rax
	movq	(%rax), %rdi
	movq	-104(%rbp), %rax
	movq	208(%rax), %rsi
	movq	-88(%rbp), %rax
	movslq	(%rax), %rax
	shlq	$0, %rax
	movq	%rax, %rdx
	callq	memcpy@PLT
.LBB47_2:                               # %if.end
	movq	-104(%rbp), %rdi
	movl	-108(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-112(%rbp), %eax
	addq	$104, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end47:
	.size	_gimp_image_thumbnail, .Lfunc_end47-_gimp_image_thumbnail
	.cfi_endproc

	.globl	gimp_image_get_active_layer
	.align	16, 0x90
	.type	gimp_image_get_active_layer,@function
gimp_image_get_active_layer:            # @gimp_image_get_active_layer
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp175:
	.cfi_def_cfa_offset 16
.Ltmp176:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp177:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	leaq	.L.str.48(%rip), %rax
	leaq	-20(%rbp), %rsi
	movl	$13, %edx
	movl	$22, %r8d
	movl	%edi, -4(%rbp)
	movl	$-1, -24(%rbp)
	movl	-4(%rbp), %ecx
	movq	%rax, %rdi
	movb	$0, %al
	callq	gimp_run_procedure@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpl	$3, 8(%rax)
	jne	.LBB48_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movl	48(%rax), %ecx
	movl	%ecx, -24(%rbp)
.LBB48_2:                               # %if.end
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-24(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end48:
	.size	gimp_image_get_active_layer, .Lfunc_end48-gimp_image_get_active_layer
	.cfi_endproc

	.globl	gimp_image_set_active_layer
	.align	16, 0x90
	.type	gimp_image_set_active_layer,@function
gimp_image_set_active_layer:            # @gimp_image_set_active_layer
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp178:
	.cfi_def_cfa_offset 16
.Ltmp179:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp180:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	leaq	.L.str.49(%rip), %rax
	leaq	-20(%rbp), %rcx
	movl	$13, %edx
	movl	$14, %r8d
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
.Lfunc_end49:
	.size	gimp_image_set_active_layer, .Lfunc_end49-gimp_image_set_active_layer
	.cfi_endproc

	.globl	gimp_image_get_active_channel
	.align	16, 0x90
	.type	gimp_image_get_active_channel,@function
gimp_image_get_active_channel:          # @gimp_image_get_active_channel
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp181:
	.cfi_def_cfa_offset 16
.Ltmp182:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp183:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	leaq	.L.str.50(%rip), %rax
	leaq	-20(%rbp), %rsi
	movl	$13, %edx
	movl	$22, %r8d
	movl	%edi, -4(%rbp)
	movl	$-1, -24(%rbp)
	movl	-4(%rbp), %ecx
	movq	%rax, %rdi
	movb	$0, %al
	callq	gimp_run_procedure@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpl	$3, 8(%rax)
	jne	.LBB50_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movl	48(%rax), %ecx
	movl	%ecx, -24(%rbp)
.LBB50_2:                               # %if.end
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-24(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end50:
	.size	gimp_image_get_active_channel, .Lfunc_end50-gimp_image_get_active_channel
	.cfi_endproc

	.globl	gimp_image_set_active_channel
	.align	16, 0x90
	.type	gimp_image_set_active_channel,@function
gimp_image_set_active_channel:          # @gimp_image_set_active_channel
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp184:
	.cfi_def_cfa_offset 16
.Ltmp185:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp186:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	leaq	.L.str.51(%rip), %rax
	leaq	-20(%rbp), %rcx
	movl	$13, %edx
	movl	$15, %r8d
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
.Lfunc_end51:
	.size	gimp_image_set_active_channel, .Lfunc_end51-gimp_image_set_active_channel
	.cfi_endproc

	.globl	gimp_image_get_active_vectors
	.align	16, 0x90
	.type	gimp_image_get_active_vectors,@function
gimp_image_get_active_vectors:          # @gimp_image_get_active_vectors
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp187:
	.cfi_def_cfa_offset 16
.Ltmp188:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp189:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	leaq	.L.str.52(%rip), %rax
	leaq	-20(%rbp), %rsi
	movl	$13, %edx
	movl	$22, %r8d
	movl	%edi, -4(%rbp)
	movl	$-1, -24(%rbp)
	movl	-4(%rbp), %ecx
	movq	%rax, %rdi
	movb	$0, %al
	callq	gimp_run_procedure@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpl	$3, 8(%rax)
	jne	.LBB52_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movl	48(%rax), %ecx
	movl	%ecx, -24(%rbp)
.LBB52_2:                               # %if.end
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-24(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end52:
	.size	gimp_image_get_active_vectors, .Lfunc_end52-gimp_image_get_active_vectors
	.cfi_endproc

	.globl	gimp_image_set_active_vectors
	.align	16, 0x90
	.type	gimp_image_set_active_vectors,@function
gimp_image_set_active_vectors:          # @gimp_image_set_active_vectors
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp190:
	.cfi_def_cfa_offset 16
.Ltmp191:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp192:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	leaq	.L.str.53(%rip), %rax
	leaq	-20(%rbp), %rcx
	movl	$13, %edx
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
.Lfunc_end53:
	.size	gimp_image_set_active_vectors, .Lfunc_end53-gimp_image_set_active_vectors
	.cfi_endproc

	.globl	gimp_image_get_selection
	.align	16, 0x90
	.type	gimp_image_get_selection,@function
gimp_image_get_selection:               # @gimp_image_get_selection
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp193:
	.cfi_def_cfa_offset 16
.Ltmp194:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp195:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	leaq	.L.str.54(%rip), %rax
	leaq	-20(%rbp), %rsi
	movl	$13, %edx
	movl	$22, %r8d
	movl	%edi, -4(%rbp)
	movl	$-1, -24(%rbp)
	movl	-4(%rbp), %ecx
	movq	%rax, %rdi
	movb	$0, %al
	callq	gimp_run_procedure@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpl	$3, 8(%rax)
	jne	.LBB54_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movl	48(%rax), %ecx
	movl	%ecx, -24(%rbp)
.LBB54_2:                               # %if.end
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-24(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end54:
	.size	gimp_image_get_selection, .Lfunc_end54-gimp_image_get_selection
	.cfi_endproc

	.globl	gimp_image_get_component_active
	.align	16, 0x90
	.type	gimp_image_get_component_active,@function
gimp_image_get_component_active:        # @gimp_image_get_component_active
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp196:
	.cfi_def_cfa_offset 16
.Ltmp197:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp198:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	leaq	.L.str.55(%rip), %rax
	leaq	-20(%rbp), %rcx
	movl	$13, %edx
	xorl	%r8d, %r8d
	movl	$22, %r9d
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	$0, -24(%rbp)
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
	jne	.LBB55_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movl	48(%rax), %ecx
	movl	%ecx, -24(%rbp)
.LBB55_2:                               # %if.end
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-24(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end55:
	.size	gimp_image_get_component_active, .Lfunc_end55-gimp_image_get_component_active
	.cfi_endproc

	.globl	gimp_image_set_component_active
	.align	16, 0x90
	.type	gimp_image_set_component_active,@function
gimp_image_set_component_active:        # @gimp_image_set_component_active
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp199:
	.cfi_def_cfa_offset 16
.Ltmp200:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp201:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$72, %rsp
.Ltmp202:
	.cfi_offset %rbx, -24
	leaq	.L.str.56(%rip), %rax
	leaq	-36(%rbp), %rcx
	movl	$13, %r8d
	xorl	%r9d, %r9d
	movl	$22, %r10d
	movl	%edi, -12(%rbp)
	movl	%esi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	$1, -40(%rbp)
	movl	-12(%rbp), %edx
	movl	-16(%rbp), %esi
	movl	-20(%rbp), %edi
	movl	%edi, -44(%rbp)         # 4-byte Spill
	movq	%rax, %rdi
	movl	%esi, -48(%rbp)         # 4-byte Spill
	movq	%rcx, %rsi
	movl	%edx, -52(%rbp)         # 4-byte Spill
	movl	%r8d, %edx
	movl	-52(%rbp), %ecx         # 4-byte Reload
	movl	%r9d, %r8d
	movl	-48(%rbp), %r9d         # 4-byte Reload
	movl	$0, (%rsp)
	movl	-44(%rbp), %r11d        # 4-byte Reload
	movl	%r11d, 8(%rsp)
	movl	$22, 16(%rsp)
	movb	$0, %al
	movl	%r10d, -56(%rbp)        # 4-byte Spill
	callq	gimp_run_procedure@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	cmpl	$3, 8(%rax)
	sete	%bl
	andb	$1, %bl
	movzbl	%bl, %ecx
	movl	%ecx, -40(%rbp)
	movq	-32(%rbp), %rdi
	movl	-36(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-40(%rbp), %eax
	addq	$72, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end56:
	.size	gimp_image_set_component_active, .Lfunc_end56-gimp_image_set_component_active
	.cfi_endproc

	.globl	gimp_image_get_component_visible
	.align	16, 0x90
	.type	gimp_image_get_component_visible,@function
gimp_image_get_component_visible:       # @gimp_image_get_component_visible
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp203:
	.cfi_def_cfa_offset 16
.Ltmp204:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp205:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	leaq	.L.str.57(%rip), %rax
	leaq	-20(%rbp), %rcx
	movl	$13, %edx
	xorl	%r8d, %r8d
	movl	$22, %r9d
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	$0, -24(%rbp)
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
	jne	.LBB57_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movl	48(%rax), %ecx
	movl	%ecx, -24(%rbp)
.LBB57_2:                               # %if.end
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-24(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end57:
	.size	gimp_image_get_component_visible, .Lfunc_end57-gimp_image_get_component_visible
	.cfi_endproc

	.globl	gimp_image_set_component_visible
	.align	16, 0x90
	.type	gimp_image_set_component_visible,@function
gimp_image_set_component_visible:       # @gimp_image_set_component_visible
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp206:
	.cfi_def_cfa_offset 16
.Ltmp207:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp208:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$72, %rsp
.Ltmp209:
	.cfi_offset %rbx, -24
	leaq	.L.str.58(%rip), %rax
	leaq	-36(%rbp), %rcx
	movl	$13, %r8d
	xorl	%r9d, %r9d
	movl	$22, %r10d
	movl	%edi, -12(%rbp)
	movl	%esi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	$1, -40(%rbp)
	movl	-12(%rbp), %edx
	movl	-16(%rbp), %esi
	movl	-20(%rbp), %edi
	movl	%edi, -44(%rbp)         # 4-byte Spill
	movq	%rax, %rdi
	movl	%esi, -48(%rbp)         # 4-byte Spill
	movq	%rcx, %rsi
	movl	%edx, -52(%rbp)         # 4-byte Spill
	movl	%r8d, %edx
	movl	-52(%rbp), %ecx         # 4-byte Reload
	movl	%r9d, %r8d
	movl	-48(%rbp), %r9d         # 4-byte Reload
	movl	$0, (%rsp)
	movl	-44(%rbp), %r11d        # 4-byte Reload
	movl	%r11d, 8(%rsp)
	movl	$22, 16(%rsp)
	movb	$0, %al
	movl	%r10d, -56(%rbp)        # 4-byte Spill
	callq	gimp_run_procedure@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	cmpl	$3, 8(%rax)
	sete	%bl
	andb	$1, %bl
	movzbl	%bl, %ecx
	movl	%ecx, -40(%rbp)
	movq	-32(%rbp), %rdi
	movl	-36(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-40(%rbp), %eax
	addq	$72, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end58:
	.size	gimp_image_set_component_visible, .Lfunc_end58-gimp_image_set_component_visible
	.cfi_endproc

	.globl	gimp_image_get_filename
	.align	16, 0x90
	.type	gimp_image_get_filename,@function
gimp_image_get_filename:                # @gimp_image_get_filename
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp210:
	.cfi_def_cfa_offset 16
.Ltmp211:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp212:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	leaq	.L.str.59(%rip), %rax
	leaq	-20(%rbp), %rsi
	movl	$13, %edx
	movl	$22, %r8d
	movl	%edi, -4(%rbp)
	movq	$0, -32(%rbp)
	movl	-4(%rbp), %ecx
	movq	%rax, %rdi
	movb	$0, %al
	callq	gimp_run_procedure@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpl	$3, 8(%rax)
	jne	.LBB59_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	48(%rax), %rdi
	callq	g_strdup@PLT
	movq	%rax, -32(%rbp)
.LBB59_2:                               # %if.end
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movq	-32(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end59:
	.size	gimp_image_get_filename, .Lfunc_end59-gimp_image_get_filename
	.cfi_endproc

	.globl	gimp_image_set_filename
	.align	16, 0x90
	.type	gimp_image_set_filename,@function
gimp_image_set_filename:                # @gimp_image_set_filename
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp213:
	.cfi_def_cfa_offset 16
.Ltmp214:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp215:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	leaq	.L.str.60(%rip), %rax
	leaq	-28(%rbp), %rcx
	movl	$13, %edx
	movl	$4, %r8d
	movl	$22, %r9d
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$1, -32(%rbp)
	movl	-4(%rbp), %edi
	movq	-16(%rbp), %rsi
	movl	%edi, -36(%rbp)         # 4-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	movq	%rcx, %rsi
	movl	-36(%rbp), %ecx         # 4-byte Reload
	movq	-48(%rbp), %rax         # 8-byte Reload
	movl	%r9d, -52(%rbp)         # 4-byte Spill
	movq	%rax, %r9
	movl	$22, (%rsp)
	movb	$0, %al
	callq	gimp_run_procedure@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpl	$3, 8(%rax)
	sete	%r10b
	andb	$1, %r10b
	movzbl	%r10b, %ecx
	movl	%ecx, -32(%rbp)
	movq	-24(%rbp), %rdi
	movl	-28(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-32(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end60:
	.size	gimp_image_set_filename, .Lfunc_end60-gimp_image_set_filename
	.cfi_endproc

	.globl	gimp_image_get_uri
	.align	16, 0x90
	.type	gimp_image_get_uri,@function
gimp_image_get_uri:                     # @gimp_image_get_uri
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp216:
	.cfi_def_cfa_offset 16
.Ltmp217:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp218:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	leaq	.L.str.61(%rip), %rax
	leaq	-20(%rbp), %rsi
	movl	$13, %edx
	movl	$22, %r8d
	movl	%edi, -4(%rbp)
	movq	$0, -32(%rbp)
	movl	-4(%rbp), %ecx
	movq	%rax, %rdi
	movb	$0, %al
	callq	gimp_run_procedure@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpl	$3, 8(%rax)
	jne	.LBB61_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	48(%rax), %rdi
	callq	g_strdup@PLT
	movq	%rax, -32(%rbp)
.LBB61_2:                               # %if.end
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movq	-32(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end61:
	.size	gimp_image_get_uri, .Lfunc_end61-gimp_image_get_uri
	.cfi_endproc

	.globl	gimp_image_get_xcf_uri
	.align	16, 0x90
	.type	gimp_image_get_xcf_uri,@function
gimp_image_get_xcf_uri:                 # @gimp_image_get_xcf_uri
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp219:
	.cfi_def_cfa_offset 16
.Ltmp220:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp221:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	leaq	.L.str.62(%rip), %rax
	leaq	-20(%rbp), %rsi
	movl	$13, %edx
	movl	$22, %r8d
	movl	%edi, -4(%rbp)
	movq	$0, -32(%rbp)
	movl	-4(%rbp), %ecx
	movq	%rax, %rdi
	movb	$0, %al
	callq	gimp_run_procedure@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpl	$3, 8(%rax)
	jne	.LBB62_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	48(%rax), %rdi
	callq	g_strdup@PLT
	movq	%rax, -32(%rbp)
.LBB62_2:                               # %if.end
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movq	-32(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end62:
	.size	gimp_image_get_xcf_uri, .Lfunc_end62-gimp_image_get_xcf_uri
	.cfi_endproc

	.globl	gimp_image_get_imported_uri
	.align	16, 0x90
	.type	gimp_image_get_imported_uri,@function
gimp_image_get_imported_uri:            # @gimp_image_get_imported_uri
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp222:
	.cfi_def_cfa_offset 16
.Ltmp223:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp224:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	leaq	.L.str.63(%rip), %rax
	leaq	-20(%rbp), %rsi
	movl	$13, %edx
	movl	$22, %r8d
	movl	%edi, -4(%rbp)
	movq	$0, -32(%rbp)
	movl	-4(%rbp), %ecx
	movq	%rax, %rdi
	movb	$0, %al
	callq	gimp_run_procedure@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpl	$3, 8(%rax)
	jne	.LBB63_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	48(%rax), %rdi
	callq	g_strdup@PLT
	movq	%rax, -32(%rbp)
.LBB63_2:                               # %if.end
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movq	-32(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end63:
	.size	gimp_image_get_imported_uri, .Lfunc_end63-gimp_image_get_imported_uri
	.cfi_endproc

	.globl	gimp_image_get_exported_uri
	.align	16, 0x90
	.type	gimp_image_get_exported_uri,@function
gimp_image_get_exported_uri:            # @gimp_image_get_exported_uri
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp225:
	.cfi_def_cfa_offset 16
.Ltmp226:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp227:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	leaq	.L.str.64(%rip), %rax
	leaq	-20(%rbp), %rsi
	movl	$13, %edx
	movl	$22, %r8d
	movl	%edi, -4(%rbp)
	movq	$0, -32(%rbp)
	movl	-4(%rbp), %ecx
	movq	%rax, %rdi
	movb	$0, %al
	callq	gimp_run_procedure@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpl	$3, 8(%rax)
	jne	.LBB64_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	48(%rax), %rdi
	callq	g_strdup@PLT
	movq	%rax, -32(%rbp)
.LBB64_2:                               # %if.end
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movq	-32(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end64:
	.size	gimp_image_get_exported_uri, .Lfunc_end64-gimp_image_get_exported_uri
	.cfi_endproc

	.globl	gimp_image_get_name
	.align	16, 0x90
	.type	gimp_image_get_name,@function
gimp_image_get_name:                    # @gimp_image_get_name
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp228:
	.cfi_def_cfa_offset 16
.Ltmp229:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp230:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	leaq	.L.str.65(%rip), %rax
	leaq	-20(%rbp), %rsi
	movl	$13, %edx
	movl	$22, %r8d
	movl	%edi, -4(%rbp)
	movq	$0, -32(%rbp)
	movl	-4(%rbp), %ecx
	movq	%rax, %rdi
	movb	$0, %al
	callq	gimp_run_procedure@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpl	$3, 8(%rax)
	jne	.LBB65_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	48(%rax), %rdi
	callq	g_strdup@PLT
	movq	%rax, -32(%rbp)
.LBB65_2:                               # %if.end
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movq	-32(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end65:
	.size	gimp_image_get_name, .Lfunc_end65-gimp_image_get_name
	.cfi_endproc

	.globl	gimp_image_get_resolution
	.align	16, 0x90
	.type	gimp_image_get_resolution,@function
gimp_image_get_resolution:              # @gimp_image_get_resolution
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp231:
	.cfi_def_cfa_offset 16
.Ltmp232:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp233:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	leaq	.L.str.66(%rip), %rax
	leaq	-36(%rbp), %rcx
	movl	$13, %r8d
	movl	$22, %r9d
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	$1, -40(%rbp)
	movl	-4(%rbp), %edi
	movl	%edi, -44(%rbp)         # 4-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rsi
	movl	%r8d, %edx
	movl	-44(%rbp), %ecx         # 4-byte Reload
	movl	%r9d, %r8d
	movb	$0, %al
	callq	gimp_run_procedure@PLT
	xorps	%xmm0, %xmm0
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movsd	%xmm0, (%rax)
	movq	-24(%rbp), %rax
	movsd	%xmm0, (%rax)
	movq	-32(%rbp), %rax
	cmpl	$3, 8(%rax)
	sete	%r10b
	andb	$1, %r10b
	movzbl	%r10b, %ecx
	movl	%ecx, -40(%rbp)
	cmpl	$0, -40(%rbp)
	je	.LBB66_2
# BB#1:                                 # %if.then
	movq	-32(%rbp), %rax
	movsd	48(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-16(%rbp), %rax
	movsd	%xmm0, (%rax)
	movq	-32(%rbp), %rax
	movsd	88(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movsd	%xmm0, (%rax)
.LBB66_2:                               # %if.end
	movq	-32(%rbp), %rdi
	movl	-36(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-40(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end66:
	.size	gimp_image_get_resolution, .Lfunc_end66-gimp_image_get_resolution
	.cfi_endproc

	.globl	gimp_image_set_resolution
	.align	16, 0x90
	.type	gimp_image_set_resolution,@function
gimp_image_set_resolution:              # @gimp_image_set_resolution
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp234:
	.cfi_def_cfa_offset 16
.Ltmp235:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp236:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	leaq	.L.str.67(%rip), %rax
	leaq	-36(%rbp), %rsi
	movl	$13, %edx
	movl	$3, %ecx
	movl	$22, %r8d
	movl	%edi, -4(%rbp)
	movsd	%xmm0, -16(%rbp)
	movsd	%xmm1, -24(%rbp)
	movl	$1, -40(%rbp)
	movl	-4(%rbp), %edi
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	movl	%edi, -44(%rbp)         # 4-byte Spill
	movq	%rax, %rdi
	movl	-44(%rbp), %r9d         # 4-byte Reload
	movl	%ecx, -48(%rbp)         # 4-byte Spill
	movl	%r9d, %ecx
	movl	-48(%rbp), %r10d        # 4-byte Reload
	movl	%r8d, -52(%rbp)         # 4-byte Spill
	movl	%r10d, %r8d
	movl	%r10d, %r9d
	movl	$22, (%rsp)
	movb	$2, %al
	callq	gimp_run_procedure@PLT
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	cmpl	$3, 8(%rax)
	sete	%r11b
	andb	$1, %r11b
	movzbl	%r11b, %ecx
	movl	%ecx, -40(%rbp)
	movq	-32(%rbp), %rdi
	movl	-36(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-40(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end67:
	.size	gimp_image_set_resolution, .Lfunc_end67-gimp_image_set_resolution
	.cfi_endproc

	.globl	gimp_image_get_unit
	.align	16, 0x90
	.type	gimp_image_get_unit,@function
gimp_image_get_unit:                    # @gimp_image_get_unit
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp237:
	.cfi_def_cfa_offset 16
.Ltmp238:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp239:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	leaq	.L.str.68(%rip), %rax
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
	jne	.LBB68_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movl	48(%rax), %ecx
	movl	%ecx, -24(%rbp)
.LBB68_2:                               # %if.end
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-24(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end68:
	.size	gimp_image_get_unit, .Lfunc_end68-gimp_image_get_unit
	.cfi_endproc

	.globl	gimp_image_set_unit
	.align	16, 0x90
	.type	gimp_image_set_unit,@function
gimp_image_set_unit:                    # @gimp_image_set_unit
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp240:
	.cfi_def_cfa_offset 16
.Ltmp241:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp242:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	leaq	.L.str.69(%rip), %rax
	leaq	-20(%rbp), %rcx
	movl	$13, %edx
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
.Lfunc_end69:
	.size	gimp_image_set_unit, .Lfunc_end69-gimp_image_set_unit
	.cfi_endproc

	.globl	gimp_image_get_tattoo_state
	.align	16, 0x90
	.type	gimp_image_get_tattoo_state,@function
gimp_image_get_tattoo_state:            # @gimp_image_get_tattoo_state
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp243:
	.cfi_def_cfa_offset 16
.Ltmp244:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp245:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	leaq	.L.str.70(%rip), %rax
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
	jne	.LBB70_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movl	48(%rax), %ecx
	movl	%ecx, -24(%rbp)
.LBB70_2:                               # %if.end
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-24(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end70:
	.size	gimp_image_get_tattoo_state, .Lfunc_end70-gimp_image_get_tattoo_state
	.cfi_endproc

	.globl	gimp_image_set_tattoo_state
	.align	16, 0x90
	.type	gimp_image_set_tattoo_state,@function
gimp_image_set_tattoo_state:            # @gimp_image_set_tattoo_state
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp246:
	.cfi_def_cfa_offset 16
.Ltmp247:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp248:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	leaq	.L.str.71(%rip), %rax
	leaq	-20(%rbp), %rcx
	movl	$13, %edx
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
.Lfunc_end71:
	.size	gimp_image_set_tattoo_state, .Lfunc_end71-gimp_image_set_tattoo_state
	.cfi_endproc

	.globl	gimp_image_get_layer_by_tattoo
	.align	16, 0x90
	.type	gimp_image_get_layer_by_tattoo,@function
gimp_image_get_layer_by_tattoo:         # @gimp_image_get_layer_by_tattoo
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp249:
	.cfi_def_cfa_offset 16
.Ltmp250:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp251:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	leaq	.L.str.72(%rip), %rax
	leaq	-20(%rbp), %rcx
	movl	$13, %edx
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
	jne	.LBB72_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movl	48(%rax), %ecx
	movl	%ecx, -24(%rbp)
.LBB72_2:                               # %if.end
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-24(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end72:
	.size	gimp_image_get_layer_by_tattoo, .Lfunc_end72-gimp_image_get_layer_by_tattoo
	.cfi_endproc

	.globl	gimp_image_get_channel_by_tattoo
	.align	16, 0x90
	.type	gimp_image_get_channel_by_tattoo,@function
gimp_image_get_channel_by_tattoo:       # @gimp_image_get_channel_by_tattoo
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp252:
	.cfi_def_cfa_offset 16
.Ltmp253:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp254:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	leaq	.L.str.73(%rip), %rax
	leaq	-20(%rbp), %rcx
	movl	$13, %edx
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
	jne	.LBB73_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movl	48(%rax), %ecx
	movl	%ecx, -24(%rbp)
.LBB73_2:                               # %if.end
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-24(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end73:
	.size	gimp_image_get_channel_by_tattoo, .Lfunc_end73-gimp_image_get_channel_by_tattoo
	.cfi_endproc

	.globl	gimp_image_get_vectors_by_tattoo
	.align	16, 0x90
	.type	gimp_image_get_vectors_by_tattoo,@function
gimp_image_get_vectors_by_tattoo:       # @gimp_image_get_vectors_by_tattoo
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp255:
	.cfi_def_cfa_offset 16
.Ltmp256:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp257:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	leaq	.L.str.74(%rip), %rax
	leaq	-20(%rbp), %rcx
	movl	$13, %edx
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
	jne	.LBB74_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movl	48(%rax), %ecx
	movl	%ecx, -24(%rbp)
.LBB74_2:                               # %if.end
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-24(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end74:
	.size	gimp_image_get_vectors_by_tattoo, .Lfunc_end74-gimp_image_get_vectors_by_tattoo
	.cfi_endproc

	.globl	gimp_image_get_layer_by_name
	.align	16, 0x90
	.type	gimp_image_get_layer_by_name,@function
gimp_image_get_layer_by_name:           # @gimp_image_get_layer_by_name
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp258:
	.cfi_def_cfa_offset 16
.Ltmp259:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp260:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	leaq	.L.str.75(%rip), %rax
	leaq	-28(%rbp), %rcx
	movl	$13, %edx
	movl	$4, %r8d
	movl	$22, %r9d
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$-1, -32(%rbp)
	movl	-4(%rbp), %edi
	movq	-16(%rbp), %rsi
	movl	%edi, -36(%rbp)         # 4-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	movq	%rcx, %rsi
	movl	-36(%rbp), %ecx         # 4-byte Reload
	movq	-48(%rbp), %rax         # 8-byte Reload
	movl	%r9d, -52(%rbp)         # 4-byte Spill
	movq	%rax, %r9
	movl	$22, (%rsp)
	movb	$0, %al
	callq	gimp_run_procedure@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpl	$3, 8(%rax)
	jne	.LBB75_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movl	48(%rax), %ecx
	movl	%ecx, -32(%rbp)
.LBB75_2:                               # %if.end
	movq	-24(%rbp), %rdi
	movl	-28(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-32(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end75:
	.size	gimp_image_get_layer_by_name, .Lfunc_end75-gimp_image_get_layer_by_name
	.cfi_endproc

	.globl	gimp_image_get_channel_by_name
	.align	16, 0x90
	.type	gimp_image_get_channel_by_name,@function
gimp_image_get_channel_by_name:         # @gimp_image_get_channel_by_name
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp261:
	.cfi_def_cfa_offset 16
.Ltmp262:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp263:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	leaq	.L.str.76(%rip), %rax
	leaq	-28(%rbp), %rcx
	movl	$13, %edx
	movl	$4, %r8d
	movl	$22, %r9d
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$-1, -32(%rbp)
	movl	-4(%rbp), %edi
	movq	-16(%rbp), %rsi
	movl	%edi, -36(%rbp)         # 4-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	movq	%rcx, %rsi
	movl	-36(%rbp), %ecx         # 4-byte Reload
	movq	-48(%rbp), %rax         # 8-byte Reload
	movl	%r9d, -52(%rbp)         # 4-byte Spill
	movq	%rax, %r9
	movl	$22, (%rsp)
	movb	$0, %al
	callq	gimp_run_procedure@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpl	$3, 8(%rax)
	jne	.LBB76_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movl	48(%rax), %ecx
	movl	%ecx, -32(%rbp)
.LBB76_2:                               # %if.end
	movq	-24(%rbp), %rdi
	movl	-28(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-32(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end76:
	.size	gimp_image_get_channel_by_name, .Lfunc_end76-gimp_image_get_channel_by_name
	.cfi_endproc

	.globl	gimp_image_get_vectors_by_name
	.align	16, 0x90
	.type	gimp_image_get_vectors_by_name,@function
gimp_image_get_vectors_by_name:         # @gimp_image_get_vectors_by_name
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp264:
	.cfi_def_cfa_offset 16
.Ltmp265:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp266:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	leaq	.L.str.77(%rip), %rax
	leaq	-28(%rbp), %rcx
	movl	$13, %edx
	movl	$4, %r8d
	movl	$22, %r9d
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$-1, -32(%rbp)
	movl	-4(%rbp), %edi
	movq	-16(%rbp), %rsi
	movl	%edi, -36(%rbp)         # 4-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	movq	%rcx, %rsi
	movl	-36(%rbp), %ecx         # 4-byte Reload
	movq	-48(%rbp), %rax         # 8-byte Reload
	movl	%r9d, -52(%rbp)         # 4-byte Spill
	movq	%rax, %r9
	movl	$22, (%rsp)
	movb	$0, %al
	callq	gimp_run_procedure@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpl	$3, 8(%rax)
	jne	.LBB77_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movl	48(%rax), %ecx
	movl	%ecx, -32(%rbp)
.LBB77_2:                               # %if.end
	movq	-24(%rbp), %rdi
	movl	-28(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-32(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end77:
	.size	gimp_image_get_vectors_by_name, .Lfunc_end77-gimp_image_get_vectors_by_name
	.cfi_endproc

	.globl	gimp_image_attach_parasite
	.align	16, 0x90
	.type	gimp_image_attach_parasite,@function
gimp_image_attach_parasite:             # @gimp_image_attach_parasite
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp267:
	.cfi_def_cfa_offset 16
.Ltmp268:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp269:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	leaq	.L.str.78(%rip), %rax
	leaq	-28(%rbp), %rcx
	movl	$13, %edx
	movl	$20, %r8d
	movl	$22, %r9d
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$1, -32(%rbp)
	movl	-4(%rbp), %edi
	movq	-16(%rbp), %rsi
	movl	%edi, -36(%rbp)         # 4-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	movq	%rcx, %rsi
	movl	-36(%rbp), %ecx         # 4-byte Reload
	movq	-48(%rbp), %rax         # 8-byte Reload
	movl	%r9d, -52(%rbp)         # 4-byte Spill
	movq	%rax, %r9
	movl	$22, (%rsp)
	movb	$0, %al
	callq	gimp_run_procedure@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpl	$3, 8(%rax)
	sete	%r10b
	andb	$1, %r10b
	movzbl	%r10b, %ecx
	movl	%ecx, -32(%rbp)
	movq	-24(%rbp), %rdi
	movl	-28(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-32(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end78:
	.size	gimp_image_attach_parasite, .Lfunc_end78-gimp_image_attach_parasite
	.cfi_endproc

	.globl	gimp_image_detach_parasite
	.align	16, 0x90
	.type	gimp_image_detach_parasite,@function
gimp_image_detach_parasite:             # @gimp_image_detach_parasite
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp270:
	.cfi_def_cfa_offset 16
.Ltmp271:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp272:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	leaq	.L.str.79(%rip), %rax
	leaq	-28(%rbp), %rcx
	movl	$13, %edx
	movl	$4, %r8d
	movl	$22, %r9d
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$1, -32(%rbp)
	movl	-4(%rbp), %edi
	movq	-16(%rbp), %rsi
	movl	%edi, -36(%rbp)         # 4-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	movq	%rcx, %rsi
	movl	-36(%rbp), %ecx         # 4-byte Reload
	movq	-48(%rbp), %rax         # 8-byte Reload
	movl	%r9d, -52(%rbp)         # 4-byte Spill
	movq	%rax, %r9
	movl	$22, (%rsp)
	movb	$0, %al
	callq	gimp_run_procedure@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpl	$3, 8(%rax)
	sete	%r10b
	andb	$1, %r10b
	movzbl	%r10b, %ecx
	movl	%ecx, -32(%rbp)
	movq	-24(%rbp), %rdi
	movl	-28(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-32(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end79:
	.size	gimp_image_detach_parasite, .Lfunc_end79-gimp_image_detach_parasite
	.cfi_endproc

	.globl	gimp_image_get_parasite
	.align	16, 0x90
	.type	gimp_image_get_parasite,@function
gimp_image_get_parasite:                # @gimp_image_get_parasite
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp273:
	.cfi_def_cfa_offset 16
.Ltmp274:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp275:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	leaq	.L.str.80(%rip), %rax
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
	jne	.LBB80_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	addq	$40, %rax
	addq	$8, %rax
	movq	%rax, %rdi
	callq	gimp_parasite_copy@PLT
	movq	%rax, -40(%rbp)
.LBB80_2:                               # %if.end
	movq	-24(%rbp), %rdi
	movl	-28(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movq	-40(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end80:
	.size	gimp_image_get_parasite, .Lfunc_end80-gimp_image_get_parasite
	.cfi_endproc

	.globl	gimp_image_get_parasite_list
	.align	16, 0x90
	.type	gimp_image_get_parasite_list,@function
gimp_image_get_parasite_list:           # @gimp_image_get_parasite_list
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp276:
	.cfi_def_cfa_offset 16
.Ltmp277:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp278:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	leaq	.L.str.81(%rip), %rax
	leaq	-28(%rbp), %rcx
	movl	$13, %edx
	movl	$22, %r8d
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movq	$0, -40(%rbp)
	movl	-4(%rbp), %edi
	movl	%edi, -48(%rbp)         # 4-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rsi
	movl	-48(%rbp), %ecx         # 4-byte Reload
	movb	$0, %al
	callq	gimp_run_procedure@PLT
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movl	$0, (%rax)
	movq	-24(%rbp), %rax
	cmpl	$3, 8(%rax)
	jne	.LBB81_6
# BB#1:                                 # %if.then
	movl	$8, %eax
	movl	%eax, %esi
	movq	-24(%rbp), %rcx
	movl	48(%rcx), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, (%rcx)
	movq	-16(%rbp), %rcx
	movslq	(%rcx), %rdi
	callq	g_malloc_n@PLT
	movq	%rax, -40(%rbp)
	movl	$0, -44(%rbp)
.LBB81_2:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-44(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	(%rcx), %eax
	jge	.LBB81_5
# BB#3:                                 # %for.body
                                        #   in Loop: Header=BB81_2 Depth=1
	movslq	-44(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	88(%rcx), %rcx
	movq	(%rcx,%rax,8), %rdi
	callq	g_strdup@PLT
	movslq	-44(%rbp), %rcx
	movq	-40(%rbp), %rdi
	movq	%rax, (%rdi,%rcx,8)
# BB#4:                                 # %for.inc
                                        #   in Loop: Header=BB81_2 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB81_2
.LBB81_5:                               # %for.end
	jmp	.LBB81_6
.LBB81_6:                               # %if.end
	movq	-24(%rbp), %rdi
	movl	-28(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movq	-40(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end81:
	.size	gimp_image_get_parasite_list, .Lfunc_end81-gimp_image_get_parasite_list
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"gimp-image-is-valid"
	.size	.L.str, 20

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"gimp-image-list"
	.size	.L.str.1, 16

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"gimp-image-new"
	.size	.L.str.2, 15

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"gimp-image-duplicate"
	.size	.L.str.3, 21

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"gimp-image-delete"
	.size	.L.str.4, 18

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"gimp-image-base-type"
	.size	.L.str.5, 21

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"gimp-image-width"
	.size	.L.str.6, 17

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"gimp-image-height"
	.size	.L.str.7, 18

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"gimp-image-free-shadow"
	.size	.L.str.8, 23

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"gimp-image-resize"
	.size	.L.str.9, 18

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"gimp-image-resize-to-layers"
	.size	.L.str.10, 28

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"gimp-image-scale"
	.size	.L.str.11, 17

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"gimp-image-scale-full"
	.size	.L.str.12, 22

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"gimp-image-crop"
	.size	.L.str.13, 16

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"gimp-image-flip"
	.size	.L.str.14, 16

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"gimp-image-rotate"
	.size	.L.str.15, 18

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"gimp-image-get-layers"
	.size	.L.str.16, 22

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"gimp-image-get-channels"
	.size	.L.str.17, 24

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"gimp-image-get-vectors"
	.size	.L.str.18, 23

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"gimp-image-get-active-drawable"
	.size	.L.str.19, 31

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"gimp-image-unset-active-channel"
	.size	.L.str.20, 32

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"gimp-image-get-floating-sel"
	.size	.L.str.21, 28

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"gimp-image-floating-sel-attached-to"
	.size	.L.str.22, 36

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"gimp-image-pick-color"
	.size	.L.str.23, 22

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"gimp-image-pick-correlate-layer"
	.size	.L.str.24, 32

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"gimp-image-add-layer"
	.size	.L.str.25, 21

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"gimp-image-insert-layer"
	.size	.L.str.26, 24

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"gimp-image-remove-layer"
	.size	.L.str.27, 24

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"gimp-image-add-channel"
	.size	.L.str.28, 23

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"gimp-image-insert-channel"
	.size	.L.str.29, 26

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"gimp-image-remove-channel"
	.size	.L.str.30, 26

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"gimp-image-add-vectors"
	.size	.L.str.31, 23

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"gimp-image-insert-vectors"
	.size	.L.str.32, 26

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"gimp-image-remove-vectors"
	.size	.L.str.33, 26

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"gimp-image-get-item-position"
	.size	.L.str.34, 29

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"gimp-image-raise-item"
	.size	.L.str.35, 22

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"gimp-image-lower-item"
	.size	.L.str.36, 22

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"gimp-image-raise-item-to-top"
	.size	.L.str.37, 29

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"gimp-image-lower-item-to-bottom"
	.size	.L.str.38, 32

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"gimp-image-reorder-item"
	.size	.L.str.39, 24

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"gimp-image-flatten"
	.size	.L.str.40, 19

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"gimp-image-merge-visible-layers"
	.size	.L.str.41, 32

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"gimp-image-merge-down"
	.size	.L.str.42, 22

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"gimp-image-get-colormap"
	.size	.L.str.43, 24

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"gimp-image-set-colormap"
	.size	.L.str.44, 24

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"gimp-image-clean-all"
	.size	.L.str.45, 21

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"gimp-image-is-dirty"
	.size	.L.str.46, 20

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"gimp-image-thumbnail"
	.size	.L.str.47, 21

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"gimp-image-get-active-layer"
	.size	.L.str.48, 28

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"gimp-image-set-active-layer"
	.size	.L.str.49, 28

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"gimp-image-get-active-channel"
	.size	.L.str.50, 30

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"gimp-image-set-active-channel"
	.size	.L.str.51, 30

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"gimp-image-get-active-vectors"
	.size	.L.str.52, 30

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"gimp-image-set-active-vectors"
	.size	.L.str.53, 30

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"gimp-image-get-selection"
	.size	.L.str.54, 25

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"gimp-image-get-component-active"
	.size	.L.str.55, 32

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"gimp-image-set-component-active"
	.size	.L.str.56, 32

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"gimp-image-get-component-visible"
	.size	.L.str.57, 33

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"gimp-image-set-component-visible"
	.size	.L.str.58, 33

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"gimp-image-get-filename"
	.size	.L.str.59, 24

	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	"gimp-image-set-filename"
	.size	.L.str.60, 24

	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.asciz	"gimp-image-get-uri"
	.size	.L.str.61, 19

	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	"gimp-image-get-xcf-uri"
	.size	.L.str.62, 23

	.type	.L.str.63,@object       # @.str.63
.L.str.63:
	.asciz	"gimp-image-get-imported-uri"
	.size	.L.str.63, 28

	.type	.L.str.64,@object       # @.str.64
.L.str.64:
	.asciz	"gimp-image-get-exported-uri"
	.size	.L.str.64, 28

	.type	.L.str.65,@object       # @.str.65
.L.str.65:
	.asciz	"gimp-image-get-name"
	.size	.L.str.65, 20

	.type	.L.str.66,@object       # @.str.66
.L.str.66:
	.asciz	"gimp-image-get-resolution"
	.size	.L.str.66, 26

	.type	.L.str.67,@object       # @.str.67
.L.str.67:
	.asciz	"gimp-image-set-resolution"
	.size	.L.str.67, 26

	.type	.L.str.68,@object       # @.str.68
.L.str.68:
	.asciz	"gimp-image-get-unit"
	.size	.L.str.68, 20

	.type	.L.str.69,@object       # @.str.69
.L.str.69:
	.asciz	"gimp-image-set-unit"
	.size	.L.str.69, 20

	.type	.L.str.70,@object       # @.str.70
.L.str.70:
	.asciz	"gimp-image-get-tattoo-state"
	.size	.L.str.70, 28

	.type	.L.str.71,@object       # @.str.71
.L.str.71:
	.asciz	"gimp-image-set-tattoo-state"
	.size	.L.str.71, 28

	.type	.L.str.72,@object       # @.str.72
.L.str.72:
	.asciz	"gimp-image-get-layer-by-tattoo"
	.size	.L.str.72, 31

	.type	.L.str.73,@object       # @.str.73
.L.str.73:
	.asciz	"gimp-image-get-channel-by-tattoo"
	.size	.L.str.73, 33

	.type	.L.str.74,@object       # @.str.74
.L.str.74:
	.asciz	"gimp-image-get-vectors-by-tattoo"
	.size	.L.str.74, 33

	.type	.L.str.75,@object       # @.str.75
.L.str.75:
	.asciz	"gimp-image-get-layer-by-name"
	.size	.L.str.75, 29

	.type	.L.str.76,@object       # @.str.76
.L.str.76:
	.asciz	"gimp-image-get-channel-by-name"
	.size	.L.str.76, 31

	.type	.L.str.77,@object       # @.str.77
.L.str.77:
	.asciz	"gimp-image-get-vectors-by-name"
	.size	.L.str.77, 31

	.type	.L.str.78,@object       # @.str.78
.L.str.78:
	.asciz	"gimp-image-attach-parasite"
	.size	.L.str.78, 27

	.type	.L.str.79,@object       # @.str.79
.L.str.79:
	.asciz	"gimp-image-detach-parasite"
	.size	.L.str.79, 27

	.type	.L.str.80,@object       # @.str.80
.L.str.80:
	.asciz	"gimp-image-get-parasite"
	.size	.L.str.80, 24

	.type	.L.str.81,@object       # @.str.81
.L.str.81:
	.asciz	"gimp-image-get-parasite-list"
	.size	.L.str.81, 29


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
