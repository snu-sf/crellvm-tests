	.text
	.file	"gimptextlayer_pdb.bc"
	.globl	gimp_text_layer_new
	.align	16, 0x90
	.type	gimp_text_layer_new,@function
gimp_text_layer_new:                    # @gimp_text_layer_new
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
	pushq	%r14
	pushq	%rbx
	subq	$144, %rsp
.Ltmp3:
	.cfi_offset %rbx, -32
.Ltmp4:
	.cfi_offset %r14, -24
	leaq	.L.str(%rip), %rax
	leaq	-68(%rbp), %r8
	movl	$13, %r9d
	movl	$4, %r10d
	movl	$3, %r11d
	xorl	%ebx, %ebx
	movl	$22, %r14d
	movl	%edi, -20(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movsd	%xmm0, -48(%rbp)
	movl	%ecx, -52(%rbp)
	movl	$-1, -72(%rbp)
	movl	-20(%rbp), %ecx
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rsi
	movsd	-48(%rbp), %xmm0        # xmm0 = mem[0],zero
	movl	-52(%rbp), %edi
	movl	%edi, -76(%rbp)         # 4-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -88(%rbp)         # 8-byte Spill
	movq	%r8, %rsi
	movq	%rdx, -96(%rbp)         # 8-byte Spill
	movl	%r9d, %edx
	movl	%r10d, %r8d
	movq	-96(%rbp), %r9          # 8-byte Reload
	movl	$4, (%rsp)
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	%rax, 8(%rsp)
	movl	$3, 16(%rsp)
	movl	$0, 24(%rsp)
	movl	-76(%rbp), %r10d        # 4-byte Reload
	movl	%r10d, 32(%rsp)
	movl	$22, 40(%rsp)
	movb	$1, %al
	movl	%r14d, -100(%rbp)       # 4-byte Spill
	movl	%r11d, -104(%rbp)       # 4-byte Spill
	movl	%ebx, -108(%rbp)        # 4-byte Spill
	callq	gimp_run_procedure@PLT
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rax
	cmpl	$3, 8(%rax)
	jne	.LBB0_2
# BB#1:                                 # %if.then
	movq	-64(%rbp), %rax
	movl	48(%rax), %ecx
	movl	%ecx, -72(%rbp)
.LBB0_2:                                # %if.end
	movq	-64(%rbp), %rdi
	movl	-68(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-72(%rbp), %eax
	addq	$144, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_text_layer_new, .Lfunc_end0-gimp_text_layer_new
	.cfi_endproc

	.globl	gimp_text_layer_get_text
	.align	16, 0x90
	.type	gimp_text_layer_get_text,@function
gimp_text_layer_get_text:               # @gimp_text_layer_get_text
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp5:
	.cfi_def_cfa_offset 16
.Ltmp6:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp7:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	leaq	.L.str.1(%rip), %rax
	leaq	-20(%rbp), %rsi
	movl	$14, %edx
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
	jne	.LBB1_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	48(%rax), %rdi
	callq	g_strdup@PLT
	movq	%rax, -32(%rbp)
.LBB1_2:                                # %if.end
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movq	-32(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_text_layer_get_text, .Lfunc_end1-gimp_text_layer_get_text
	.cfi_endproc

	.globl	gimp_text_layer_set_text
	.align	16, 0x90
	.type	gimp_text_layer_set_text,@function
gimp_text_layer_set_text:               # @gimp_text_layer_set_text
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp8:
	.cfi_def_cfa_offset 16
.Ltmp9:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp10:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	leaq	.L.str.2(%rip), %rax
	leaq	-28(%rbp), %rcx
	movl	$14, %edx
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
.Lfunc_end2:
	.size	gimp_text_layer_set_text, .Lfunc_end2-gimp_text_layer_set_text
	.cfi_endproc

	.globl	gimp_text_layer_get_markup
	.align	16, 0x90
	.type	gimp_text_layer_get_markup,@function
gimp_text_layer_get_markup:             # @gimp_text_layer_get_markup
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp11:
	.cfi_def_cfa_offset 16
.Ltmp12:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp13:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	leaq	.L.str.3(%rip), %rax
	leaq	-20(%rbp), %rsi
	movl	$14, %edx
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
	jne	.LBB3_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	48(%rax), %rdi
	callq	g_strdup@PLT
	movq	%rax, -32(%rbp)
.LBB3_2:                                # %if.end
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movq	-32(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_text_layer_get_markup, .Lfunc_end3-gimp_text_layer_get_markup
	.cfi_endproc

	.globl	gimp_text_layer_get_font
	.align	16, 0x90
	.type	gimp_text_layer_get_font,@function
gimp_text_layer_get_font:               # @gimp_text_layer_get_font
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp14:
	.cfi_def_cfa_offset 16
.Ltmp15:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp16:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	leaq	.L.str.4(%rip), %rax
	leaq	-20(%rbp), %rsi
	movl	$14, %edx
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
	jne	.LBB4_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	48(%rax), %rdi
	callq	g_strdup@PLT
	movq	%rax, -32(%rbp)
.LBB4_2:                                # %if.end
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movq	-32(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_text_layer_get_font, .Lfunc_end4-gimp_text_layer_get_font
	.cfi_endproc

	.globl	gimp_text_layer_set_font
	.align	16, 0x90
	.type	gimp_text_layer_set_font,@function
gimp_text_layer_set_font:               # @gimp_text_layer_set_font
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp17:
	.cfi_def_cfa_offset 16
.Ltmp18:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp19:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	leaq	.L.str.5(%rip), %rax
	leaq	-28(%rbp), %rcx
	movl	$14, %edx
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
.Lfunc_end5:
	.size	gimp_text_layer_set_font, .Lfunc_end5-gimp_text_layer_set_font
	.cfi_endproc

	.globl	gimp_text_layer_get_font_size
	.align	16, 0x90
	.type	gimp_text_layer_get_font_size,@function
gimp_text_layer_get_font_size:          # @gimp_text_layer_get_font_size
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp20:
	.cfi_def_cfa_offset 16
.Ltmp21:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp22:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	leaq	.L.str.6(%rip), %rax
	leaq	-28(%rbp), %rcx
	movl	$14, %edx
	movl	$22, %r8d
	xorps	%xmm0, %xmm0
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movsd	%xmm0, -40(%rbp)
	movl	-4(%rbp), %edi
	movl	%edi, -44(%rbp)         # 4-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rsi
	movl	-44(%rbp), %ecx         # 4-byte Reload
	movb	$0, %al
	callq	gimp_run_procedure@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpl	$3, 8(%rax)
	jne	.LBB6_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movsd	48(%rax), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -40(%rbp)
	movq	-24(%rbp), %rax
	movl	88(%rax), %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, (%rax)
.LBB6_2:                                # %if.end
	movq	-24(%rbp), %rdi
	movl	-28(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_text_layer_get_font_size, .Lfunc_end6-gimp_text_layer_get_font_size
	.cfi_endproc

	.globl	gimp_text_layer_set_font_size
	.align	16, 0x90
	.type	gimp_text_layer_set_font_size,@function
gimp_text_layer_set_font_size:          # @gimp_text_layer_set_font_size
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp23:
	.cfi_def_cfa_offset 16
.Ltmp24:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp25:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$72, %rsp
.Ltmp26:
	.cfi_offset %rbx, -24
	leaq	.L.str.7(%rip), %rax
	leaq	-44(%rbp), %rcx
	movl	$14, %edx
	movl	$3, %r8d
	xorl	%r9d, %r9d
	movl	$22, %r10d
	movl	%edi, -12(%rbp)
	movsd	%xmm0, -24(%rbp)
	movl	%esi, -28(%rbp)
	movl	$1, -48(%rbp)
	movl	-12(%rbp), %esi
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movl	-28(%rbp), %edi
	movl	%edi, -52(%rbp)         # 4-byte Spill
	movq	%rax, %rdi
	movl	%esi, -56(%rbp)         # 4-byte Spill
	movq	%rcx, %rsi
	movl	-56(%rbp), %ecx         # 4-byte Reload
	movl	-52(%rbp), %r11d        # 4-byte Reload
	movl	%r11d, (%rsp)
	movl	$22, 8(%rsp)
	movb	$1, %al
	movl	%r10d, -60(%rbp)        # 4-byte Spill
	callq	gimp_run_procedure@PLT
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	cmpl	$3, 8(%rax)
	sete	%bl
	andb	$1, %bl
	movzbl	%bl, %ecx
	movl	%ecx, -48(%rbp)
	movq	-40(%rbp), %rdi
	movl	-44(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-48(%rbp), %eax
	addq	$72, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_text_layer_set_font_size, .Lfunc_end7-gimp_text_layer_set_font_size
	.cfi_endproc

	.globl	gimp_text_layer_get_antialias
	.align	16, 0x90
	.type	gimp_text_layer_get_antialias,@function
gimp_text_layer_get_antialias:          # @gimp_text_layer_get_antialias
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
	subq	$32, %rsp
	leaq	.L.str.8(%rip), %rax
	leaq	-20(%rbp), %rsi
	movl	$14, %edx
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
	jne	.LBB8_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movl	48(%rax), %ecx
	movl	%ecx, -24(%rbp)
.LBB8_2:                                # %if.end
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-24(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_text_layer_get_antialias, .Lfunc_end8-gimp_text_layer_get_antialias
	.cfi_endproc

	.globl	gimp_text_layer_set_antialias
	.align	16, 0x90
	.type	gimp_text_layer_set_antialias,@function
gimp_text_layer_set_antialias:          # @gimp_text_layer_set_antialias
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
	subq	$48, %rsp
	leaq	.L.str.9(%rip), %rax
	leaq	-20(%rbp), %rcx
	movl	$14, %edx
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
.Lfunc_end9:
	.size	gimp_text_layer_set_antialias, .Lfunc_end9-gimp_text_layer_set_antialias
	.cfi_endproc

	.globl	gimp_text_layer_get_hint_style
	.align	16, 0x90
	.type	gimp_text_layer_get_hint_style,@function
gimp_text_layer_get_hint_style:         # @gimp_text_layer_get_hint_style
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
	leaq	.L.str.10(%rip), %rax
	leaq	-20(%rbp), %rsi
	movl	$14, %edx
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
	jne	.LBB10_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movl	48(%rax), %ecx
	movl	%ecx, -24(%rbp)
.LBB10_2:                               # %if.end
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-24(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_text_layer_get_hint_style, .Lfunc_end10-gimp_text_layer_get_hint_style
	.cfi_endproc

	.globl	gimp_text_layer_set_hint_style
	.align	16, 0x90
	.type	gimp_text_layer_set_hint_style,@function
gimp_text_layer_set_hint_style:         # @gimp_text_layer_set_hint_style
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp36:
	.cfi_def_cfa_offset 16
.Ltmp37:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp38:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	leaq	.L.str.11(%rip), %rax
	leaq	-20(%rbp), %rcx
	movl	$14, %edx
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
	.size	gimp_text_layer_set_hint_style, .Lfunc_end11-gimp_text_layer_set_hint_style
	.cfi_endproc

	.globl	gimp_text_layer_get_kerning
	.align	16, 0x90
	.type	gimp_text_layer_get_kerning,@function
gimp_text_layer_get_kerning:            # @gimp_text_layer_get_kerning
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
	subq	$32, %rsp
	leaq	.L.str.12(%rip), %rax
	leaq	-20(%rbp), %rsi
	movl	$14, %edx
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
	jne	.LBB12_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movl	48(%rax), %ecx
	movl	%ecx, -24(%rbp)
.LBB12_2:                               # %if.end
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-24(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	gimp_text_layer_get_kerning, .Lfunc_end12-gimp_text_layer_get_kerning
	.cfi_endproc

	.globl	gimp_text_layer_set_kerning
	.align	16, 0x90
	.type	gimp_text_layer_set_kerning,@function
gimp_text_layer_set_kerning:            # @gimp_text_layer_set_kerning
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
	subq	$48, %rsp
	leaq	.L.str.13(%rip), %rax
	leaq	-20(%rbp), %rcx
	movl	$14, %edx
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
.Lfunc_end13:
	.size	gimp_text_layer_set_kerning, .Lfunc_end13-gimp_text_layer_set_kerning
	.cfi_endproc

	.globl	gimp_text_layer_get_language
	.align	16, 0x90
	.type	gimp_text_layer_get_language,@function
gimp_text_layer_get_language:           # @gimp_text_layer_get_language
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp45:
	.cfi_def_cfa_offset 16
.Ltmp46:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp47:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	leaq	.L.str.14(%rip), %rax
	leaq	-20(%rbp), %rsi
	movl	$14, %edx
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
	jne	.LBB14_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	48(%rax), %rdi
	callq	g_strdup@PLT
	movq	%rax, -32(%rbp)
.LBB14_2:                               # %if.end
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movq	-32(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	gimp_text_layer_get_language, .Lfunc_end14-gimp_text_layer_get_language
	.cfi_endproc

	.globl	gimp_text_layer_set_language
	.align	16, 0x90
	.type	gimp_text_layer_set_language,@function
gimp_text_layer_set_language:           # @gimp_text_layer_set_language
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
	subq	$64, %rsp
	leaq	.L.str.15(%rip), %rax
	leaq	-28(%rbp), %rcx
	movl	$14, %edx
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
.Lfunc_end15:
	.size	gimp_text_layer_set_language, .Lfunc_end15-gimp_text_layer_set_language
	.cfi_endproc

	.globl	gimp_text_layer_get_base_direction
	.align	16, 0x90
	.type	gimp_text_layer_get_base_direction,@function
gimp_text_layer_get_base_direction:     # @gimp_text_layer_get_base_direction
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
	subq	$32, %rsp
	leaq	.L.str.16(%rip), %rax
	leaq	-20(%rbp), %rsi
	movl	$14, %edx
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
	jne	.LBB16_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movl	48(%rax), %ecx
	movl	%ecx, -24(%rbp)
.LBB16_2:                               # %if.end
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-24(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	gimp_text_layer_get_base_direction, .Lfunc_end16-gimp_text_layer_get_base_direction
	.cfi_endproc

	.globl	gimp_text_layer_set_base_direction
	.align	16, 0x90
	.type	gimp_text_layer_set_base_direction,@function
gimp_text_layer_set_base_direction:     # @gimp_text_layer_set_base_direction
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
	subq	$48, %rsp
	leaq	.L.str.17(%rip), %rax
	leaq	-20(%rbp), %rcx
	movl	$14, %edx
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
.Lfunc_end17:
	.size	gimp_text_layer_set_base_direction, .Lfunc_end17-gimp_text_layer_set_base_direction
	.cfi_endproc

	.globl	gimp_text_layer_get_justification
	.align	16, 0x90
	.type	gimp_text_layer_get_justification,@function
gimp_text_layer_get_justification:      # @gimp_text_layer_get_justification
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
	leaq	.L.str.18(%rip), %rax
	leaq	-20(%rbp), %rsi
	movl	$14, %edx
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
	jne	.LBB18_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movl	48(%rax), %ecx
	movl	%ecx, -24(%rbp)
.LBB18_2:                               # %if.end
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-24(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	gimp_text_layer_get_justification, .Lfunc_end18-gimp_text_layer_get_justification
	.cfi_endproc

	.globl	gimp_text_layer_set_justification
	.align	16, 0x90
	.type	gimp_text_layer_set_justification,@function
gimp_text_layer_set_justification:      # @gimp_text_layer_set_justification
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
	leaq	.L.str.19(%rip), %rax
	leaq	-20(%rbp), %rcx
	movl	$14, %edx
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
.Lfunc_end19:
	.size	gimp_text_layer_set_justification, .Lfunc_end19-gimp_text_layer_set_justification
	.cfi_endproc

	.globl	gimp_text_layer_get_color
	.align	16, 0x90
	.type	gimp_text_layer_get_color,@function
gimp_text_layer_get_color:              # @gimp_text_layer_get_color
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
	subq	$48, %rsp
	leaq	.L.str.20(%rip), %rax
	leaq	-28(%rbp), %rcx
	movl	$14, %edx
	movl	$22, %r8d
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$1, -32(%rbp)
	movl	-4(%rbp), %edi
	movl	%edi, -36(%rbp)         # 4-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rsi
	movl	-36(%rbp), %ecx         # 4-byte Reload
	movb	$0, %al
	callq	gimp_run_procedure@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpl	$3, 8(%rax)
	sete	%r9b
	andb	$1, %r9b
	movzbl	%r9b, %ecx
	movl	%ecx, -32(%rbp)
	cmpl	$0, -32(%rbp)
	je	.LBB20_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	48(%rcx), %rdx
	movq	%rdx, (%rax)
	movq	56(%rcx), %rdx
	movq	%rdx, 8(%rax)
	movq	64(%rcx), %rdx
	movq	%rdx, 16(%rax)
	movq	72(%rcx), %rcx
	movq	%rcx, 24(%rax)
.LBB20_2:                               # %if.end
	movq	-24(%rbp), %rdi
	movl	-28(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-32(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	gimp_text_layer_get_color, .Lfunc_end20-gimp_text_layer_get_color
	.cfi_endproc

	.globl	gimp_text_layer_set_color
	.align	16, 0x90
	.type	gimp_text_layer_set_color,@function
gimp_text_layer_set_color:              # @gimp_text_layer_set_color
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
	subq	$64, %rsp
	leaq	.L.str.21(%rip), %rax
	leaq	-28(%rbp), %rcx
	movl	$14, %edx
	movl	$10, %r8d
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
.Lfunc_end21:
	.size	gimp_text_layer_set_color, .Lfunc_end21-gimp_text_layer_set_color
	.cfi_endproc

	.globl	gimp_text_layer_get_indent
	.align	16, 0x90
	.type	gimp_text_layer_get_indent,@function
gimp_text_layer_get_indent:             # @gimp_text_layer_get_indent
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
	leaq	.L.str.22(%rip), %rax
	leaq	-20(%rbp), %rsi
	movl	$14, %edx
	movl	$22, %r8d
	xorps	%xmm0, %xmm0
	movl	%edi, -4(%rbp)
	movsd	%xmm0, -32(%rbp)
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
	movsd	48(%rax), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -32(%rbp)
.LBB22_2:                               # %if.end
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	gimp_text_layer_get_indent, .Lfunc_end22-gimp_text_layer_get_indent
	.cfi_endproc

	.globl	gimp_text_layer_set_indent
	.align	16, 0x90
	.type	gimp_text_layer_set_indent,@function
gimp_text_layer_set_indent:             # @gimp_text_layer_set_indent
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
	leaq	.L.str.23(%rip), %rax
	leaq	-28(%rbp), %rsi
	movl	$14, %edx
	movl	$3, %r8d
	movl	$22, %r9d
	movl	%edi, -4(%rbp)
	movsd	%xmm0, -16(%rbp)
	movl	$1, -32(%rbp)
	movl	-4(%rbp), %ecx
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	%rax, %rdi
	movb	$1, %al
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
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end23:
	.size	gimp_text_layer_set_indent, .Lfunc_end23-gimp_text_layer_set_indent
	.cfi_endproc

	.globl	gimp_text_layer_get_line_spacing
	.align	16, 0x90
	.type	gimp_text_layer_get_line_spacing,@function
gimp_text_layer_get_line_spacing:       # @gimp_text_layer_get_line_spacing
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
	subq	$32, %rsp
	leaq	.L.str.24(%rip), %rax
	leaq	-20(%rbp), %rsi
	movl	$14, %edx
	movl	$22, %r8d
	xorps	%xmm0, %xmm0
	movl	%edi, -4(%rbp)
	movsd	%xmm0, -32(%rbp)
	movl	-4(%rbp), %ecx
	movq	%rax, %rdi
	movb	$0, %al
	callq	gimp_run_procedure@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpl	$3, 8(%rax)
	jne	.LBB24_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movsd	48(%rax), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -32(%rbp)
.LBB24_2:                               # %if.end
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end24:
	.size	gimp_text_layer_get_line_spacing, .Lfunc_end24-gimp_text_layer_get_line_spacing
	.cfi_endproc

	.globl	gimp_text_layer_set_line_spacing
	.align	16, 0x90
	.type	gimp_text_layer_set_line_spacing,@function
gimp_text_layer_set_line_spacing:       # @gimp_text_layer_set_line_spacing
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp78:
	.cfi_def_cfa_offset 16
.Ltmp79:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp80:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	leaq	.L.str.25(%rip), %rax
	leaq	-28(%rbp), %rsi
	movl	$14, %edx
	movl	$3, %r8d
	movl	$22, %r9d
	movl	%edi, -4(%rbp)
	movsd	%xmm0, -16(%rbp)
	movl	$1, -32(%rbp)
	movl	-4(%rbp), %ecx
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	%rax, %rdi
	movb	$1, %al
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
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end25:
	.size	gimp_text_layer_set_line_spacing, .Lfunc_end25-gimp_text_layer_set_line_spacing
	.cfi_endproc

	.globl	gimp_text_layer_get_letter_spacing
	.align	16, 0x90
	.type	gimp_text_layer_get_letter_spacing,@function
gimp_text_layer_get_letter_spacing:     # @gimp_text_layer_get_letter_spacing
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp81:
	.cfi_def_cfa_offset 16
.Ltmp82:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp83:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	leaq	.L.str.26(%rip), %rax
	leaq	-20(%rbp), %rsi
	movl	$14, %edx
	movl	$22, %r8d
	xorps	%xmm0, %xmm0
	movl	%edi, -4(%rbp)
	movsd	%xmm0, -32(%rbp)
	movl	-4(%rbp), %ecx
	movq	%rax, %rdi
	movb	$0, %al
	callq	gimp_run_procedure@PLT
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpl	$3, 8(%rax)
	jne	.LBB26_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movsd	48(%rax), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -32(%rbp)
.LBB26_2:                               # %if.end
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end26:
	.size	gimp_text_layer_get_letter_spacing, .Lfunc_end26-gimp_text_layer_get_letter_spacing
	.cfi_endproc

	.globl	gimp_text_layer_set_letter_spacing
	.align	16, 0x90
	.type	gimp_text_layer_set_letter_spacing,@function
gimp_text_layer_set_letter_spacing:     # @gimp_text_layer_set_letter_spacing
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp84:
	.cfi_def_cfa_offset 16
.Ltmp85:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp86:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	leaq	.L.str.27(%rip), %rax
	leaq	-28(%rbp), %rsi
	movl	$14, %edx
	movl	$3, %r8d
	movl	$22, %r9d
	movl	%edi, -4(%rbp)
	movsd	%xmm0, -16(%rbp)
	movl	$1, -32(%rbp)
	movl	-4(%rbp), %ecx
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	%rax, %rdi
	movb	$1, %al
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
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end27:
	.size	gimp_text_layer_set_letter_spacing, .Lfunc_end27-gimp_text_layer_set_letter_spacing
	.cfi_endproc

	.globl	gimp_text_layer_resize
	.align	16, 0x90
	.type	gimp_text_layer_resize,@function
gimp_text_layer_resize:                 # @gimp_text_layer_resize
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp87:
	.cfi_def_cfa_offset 16
.Ltmp88:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp89:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	leaq	.L.str.28(%rip), %rax
	leaq	-36(%rbp), %rsi
	movl	$14, %edx
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
.Lfunc_end28:
	.size	gimp_text_layer_resize, .Lfunc_end28-gimp_text_layer_resize
	.cfi_endproc

	.globl	gimp_text_layer_get_hinting
	.align	16, 0x90
	.type	gimp_text_layer_get_hinting,@function
gimp_text_layer_get_hinting:            # @gimp_text_layer_get_hinting
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
	subq	$48, %rsp
	leaq	.L.str.29(%rip), %rax
	leaq	-28(%rbp), %rcx
	movl	$14, %edx
	movl	$22, %r8d
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$0, -32(%rbp)
	movl	-4(%rbp), %edi
	movl	%edi, -36(%rbp)         # 4-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rsi
	movl	-36(%rbp), %ecx         # 4-byte Reload
	movb	$0, %al
	callq	gimp_run_procedure@PLT
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	cmpl	$3, 8(%rax)
	jne	.LBB29_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movl	48(%rax), %ecx
	movl	%ecx, -32(%rbp)
	movq	-24(%rbp), %rax
	movl	88(%rax), %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, (%rax)
.LBB29_2:                               # %if.end
	movq	-24(%rbp), %rdi
	movl	-28(%rbp), %esi
	callq	gimp_destroy_params@PLT
	movl	-32(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end29:
	.size	gimp_text_layer_get_hinting, .Lfunc_end29-gimp_text_layer_get_hinting
	.cfi_endproc

	.globl	gimp_text_layer_set_hinting
	.align	16, 0x90
	.type	gimp_text_layer_set_hinting,@function
gimp_text_layer_set_hinting:            # @gimp_text_layer_set_hinting
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp93:
	.cfi_def_cfa_offset 16
.Ltmp94:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp95:
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$72, %rsp
.Ltmp96:
	.cfi_offset %rbx, -24
	leaq	.L.str.30(%rip), %rax
	leaq	-36(%rbp), %rcx
	movl	$14, %r8d
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
.Lfunc_end30:
	.size	gimp_text_layer_set_hinting, .Lfunc_end30-gimp_text_layer_set_hinting
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"gimp-text-layer-new"
	.size	.L.str, 20

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"gimp-text-layer-get-text"
	.size	.L.str.1, 25

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"gimp-text-layer-set-text"
	.size	.L.str.2, 25

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"gimp-text-layer-get-markup"
	.size	.L.str.3, 27

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"gimp-text-layer-get-font"
	.size	.L.str.4, 25

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"gimp-text-layer-set-font"
	.size	.L.str.5, 25

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"gimp-text-layer-get-font-size"
	.size	.L.str.6, 30

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"gimp-text-layer-set-font-size"
	.size	.L.str.7, 30

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"gimp-text-layer-get-antialias"
	.size	.L.str.8, 30

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"gimp-text-layer-set-antialias"
	.size	.L.str.9, 30

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"gimp-text-layer-get-hint-style"
	.size	.L.str.10, 31

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"gimp-text-layer-set-hint-style"
	.size	.L.str.11, 31

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"gimp-text-layer-get-kerning"
	.size	.L.str.12, 28

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"gimp-text-layer-set-kerning"
	.size	.L.str.13, 28

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"gimp-text-layer-get-language"
	.size	.L.str.14, 29

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"gimp-text-layer-set-language"
	.size	.L.str.15, 29

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"gimp-text-layer-get-base-direction"
	.size	.L.str.16, 35

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"gimp-text-layer-set-base-direction"
	.size	.L.str.17, 35

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"gimp-text-layer-get-justification"
	.size	.L.str.18, 34

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"gimp-text-layer-set-justification"
	.size	.L.str.19, 34

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"gimp-text-layer-get-color"
	.size	.L.str.20, 26

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"gimp-text-layer-set-color"
	.size	.L.str.21, 26

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"gimp-text-layer-get-indent"
	.size	.L.str.22, 27

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"gimp-text-layer-set-indent"
	.size	.L.str.23, 27

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"gimp-text-layer-get-line-spacing"
	.size	.L.str.24, 33

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"gimp-text-layer-set-line-spacing"
	.size	.L.str.25, 33

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"gimp-text-layer-get-letter-spacing"
	.size	.L.str.26, 35

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"gimp-text-layer-set-letter-spacing"
	.size	.L.str.27, 35

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"gimp-text-layer-resize"
	.size	.L.str.28, 23

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"gimp-text-layer-get-hinting"
	.size	.L.str.29, 28

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"gimp-text-layer-set-hinting"
	.size	.L.str.30, 28


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
