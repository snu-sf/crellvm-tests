	.text
	.file	"output.bc"
	.globl	output_new
	.align	16, 0x90
	.type	output_new,@function
output_new:                             # @output_new
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
	movl	$32, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	%rcx, %rdi
	callq	xmalloc
	movl	$51200, %edx            # imm = 0xC800
	movl	%edx, %edi
	movl	$2, %esi
	movl	$2, %edx
                                        # kill: RDX<def> EDX<kill>
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	callq	ds_new
	movabsq	$.L.str, %rdi
	movl	$10, %esi
                                        # kill: RSI<def> ESI<kill>
	movl	$2, %edx
	movl	$2, %r8d
	movl	%r8d, %ecx
	movabsq	$derivation_self_print, %r9
	xorl	%r8d, %r8d
	movl	%r8d, %r10d
	movq	-16(%rbp), %r11
	movq	%rax, 8(%r11)
	movq	%r9, %r8
	movq	%r10, %r9
	callq	da_new
	movq	-16(%rbp), %rcx
	movq	%rax, 16(%rcx)
	movq	-16(%rbp), %rax
	movl	$0, 24(%rax)
	movq	-16(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	output_new, .Lfunc_end0-output_new
	.cfi_endproc

	.align	16, 0x90
	.type	derivation_self_print,@function
derivation_self_print:                  # @derivation_self_print
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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	-8(%rbp), %edx
	movl	$.L.str.27, %eax
	movl	%eax, %edi
	xorl	%eax, %eax
	movb	%al, %cl
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	movq	%rsi, %rdi
	movq	-24(%rbp), %rsi         # 8-byte Reload
	movb	%cl, %al
	callq	fprintf
	movq	-8(%rbp), %rsi
	movl	(%rsi), %edx
	movl	%edx, %esi
	movq	%rsi, %rdi
	subq	$4, %rdi
	movl	%eax, -28(%rbp)         # 4-byte Spill
	movq	%rsi, -40(%rbp)         # 8-byte Spill
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	ja	.LBB1_9
# BB#10:                                # %entry
	movq	-40(%rbp), %rax         # 8-byte Reload
	movq	.LJTI1_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB1_1:                                # %sw.bb
	movabsq	$.L.str.28, %rsi
	movq	-16(%rbp), %rdi
	movb	$0, %al
	callq	fprintf
	movl	%eax, -52(%rbp)         # 4-byte Spill
	jmp	.LBB1_9
.LBB1_2:                                # %sw.bb.2
	movabsq	$.L.str.29, %rsi
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movl	(%rax), %edx
	movb	$0, %al
	callq	fprintf
	movl	%eax, -56(%rbp)         # 4-byte Spill
	jmp	.LBB1_9
.LBB1_3:                                # %sw.bb.4
	movabsq	$.L.str.30, %rsi
	movq	-16(%rbp), %rdi
	movb	$0, %al
	callq	fprintf
	movq	-8(%rbp), %rsi
	movq	40(%rsi), %rsi
	cmpq	$0, (%rsi)
	movl	%eax, -60(%rbp)         # 4-byte Spill
	je	.LBB1_5
# BB#4:                                 # %if.then
	movabsq	$.L.str.31, %rsi
	movq	stderr, %rdi
	movq	-8(%rbp), %rax
	movq	40(%rax), %rax
	movq	(%rax), %rdx
	movb	$0, %al
	callq	fprintf
	movl	%eax, -64(%rbp)         # 4-byte Spill
	jmp	.LBB1_6
.LBB1_5:                                # %if.else
	movabsq	$.L.str.32, %rsi
	movq	stderr, %rdi
	movb	$0, %al
	callq	fprintf
	movl	%eax, -68(%rbp)         # 4-byte Spill
.LBB1_6:                                # %if.end
	jmp	.LBB1_9
.LBB1_7:                                # %sw.bb.9
	movabsq	$.L.str.33, %rsi
	movq	-16(%rbp), %rdi
	movb	$0, %al
	callq	fprintf
	movl	%eax, -72(%rbp)         # 4-byte Spill
	jmp	.LBB1_9
.LBB1_8:                                # %sw.bb.11
	movabsq	$.L.str.34, %rsi
	movq	-16(%rbp), %rdi
	movb	$0, %al
	callq	fprintf
	movl	%eax, -76(%rbp)         # 4-byte Spill
.LBB1_9:                                # %sw.epilog
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	derivation_self_print, .Lfunc_end1-derivation_self_print
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI1_0:
	.quad	.LBB1_1
	.quad	.LBB1_2
	.quad	.LBB1_3
	.quad	.LBB1_7
	.quad	.LBB1_8

	.text
	.globl	output_free
	.align	16, 0x90
	.type	output_free,@function
output_free:                            # @output_free
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
	movq	-8(%rbp), %rdi
	movq	8(%rdi), %rdi
	callq	ds_erase
	movabsq	$free, %rsi
	movq	-8(%rbp), %rdi
	movq	16(%rdi), %rdi
	callq	da_free
	movq	-8(%rbp), %rsi
	movq	%rsi, %rdi
	callq	free
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	output_free, .Lfunc_end2-output_free
	.cfi_endproc

	.globl	output_report
	.align	16, 0x90
	.type	output_report,@function
output_report:                          # @output_report
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
	movabsq	$.L.str.1, %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movq	(%rsi), %rdx
	movq	%rax, %rsi
	movb	$0, %al
	callq	fprintf
	movq	-8(%rbp), %rdx
	movq	8(%rdx), %rdi
	movq	-16(%rbp), %rsi
	movl	%eax, -20(%rbp)         # 4-byte Spill
	callq	ds_print_stats
	movq	-8(%rbp), %rdx
	movq	16(%rdx), %rdi
	movq	-16(%rbp), %rsi
	callq	da_print_stats
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	output_report, .Lfunc_end3-output_report
	.cfi_endproc

	.globl	output_to_void
	.align	16, 0x90
	.type	output_to_void,@function
output_to_void:                         # @output_to_void
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
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %esi
	movq	-8(%rbp), %rdi
	movl	%esi, 24(%rdi)
	popq	%rbp
	retq
.Lfunc_end4:
	.size	output_to_void, .Lfunc_end4-output_to_void
	.cfi_endproc

	.globl	output_is_to_void
	.align	16, 0x90
	.type	output_is_to_void,@function
output_is_to_void:                      # @output_is_to_void
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movl	24(%rdi), %eax
	popq	%rbp
	retq
.Lfunc_end5:
	.size	output_is_to_void, .Lfunc_end5-output_is_to_void
	.cfi_endproc

	.globl	output
	.align	16, 0x90
	.type	output,@function
output:                                 # @output
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
	subq	$416, %rsp              # imm = 0x1A0
	testb	%al, %al
	movaps	%xmm7, -240(%rbp)       # 16-byte Spill
	movaps	%xmm6, -256(%rbp)       # 16-byte Spill
	movaps	%xmm5, -272(%rbp)       # 16-byte Spill
	movaps	%xmm4, -288(%rbp)       # 16-byte Spill
	movaps	%xmm3, -304(%rbp)       # 16-byte Spill
	movaps	%xmm2, -320(%rbp)       # 16-byte Spill
	movaps	%xmm1, -336(%rbp)       # 16-byte Spill
	movaps	%xmm0, -352(%rbp)       # 16-byte Spill
	movq	%rdi, -360(%rbp)        # 8-byte Spill
	movq	%r9, -368(%rbp)         # 8-byte Spill
	movq	%r8, -376(%rbp)         # 8-byte Spill
	movq	%rcx, -384(%rbp)        # 8-byte Spill
	movq	%rdx, -392(%rbp)        # 8-byte Spill
	movq	%rsi, -400(%rbp)        # 8-byte Spill
	je	.LBB6_5
# BB#4:                                 # %entry
	movaps	-352(%rbp), %xmm0       # 16-byte Reload
	movaps	%xmm0, -176(%rbp)
	movaps	-336(%rbp), %xmm1       # 16-byte Reload
	movaps	%xmm1, -160(%rbp)
	movaps	-320(%rbp), %xmm2       # 16-byte Reload
	movaps	%xmm2, -144(%rbp)
	movaps	-304(%rbp), %xmm3       # 16-byte Reload
	movaps	%xmm3, -128(%rbp)
	movaps	-288(%rbp), %xmm4       # 16-byte Reload
	movaps	%xmm4, -112(%rbp)
	movaps	-272(%rbp), %xmm5       # 16-byte Reload
	movaps	%xmm5, -96(%rbp)
	movaps	-256(%rbp), %xmm6       # 16-byte Reload
	movaps	%xmm6, -80(%rbp)
	movaps	-240(%rbp), %xmm7       # 16-byte Reload
	movaps	%xmm7, -64(%rbp)
.LBB6_5:                                # %entry
	movq	-368(%rbp), %rax        # 8-byte Reload
	movq	%rax, -184(%rbp)
	movq	-376(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, -192(%rbp)
	movq	-384(%rbp), %rdx        # 8-byte Reload
	movq	%rdx, -200(%rbp)
	movq	-392(%rbp), %rsi        # 8-byte Reload
	movq	%rsi, -208(%rbp)
	movq	-400(%rbp), %rdi        # 8-byte Reload
	movq	-360(%rbp), %r8         # 8-byte Reload
	leaq	-48(%rbp), %r9
	movq	%r8, -8(%rbp)
	movq	%rdi, -16(%rbp)
	leaq	-224(%rbp), %rdi
	movq	%rdi, 16(%r9)
	leaq	16(%rbp), %rdi
	movq	%rdi, 8(%r9)
	movl	$48, 4(%r9)
	movl	$16, (%r9)
	movq	-8(%rbp), %rdi
	cmpl	$0, 24(%rdi)
	je	.LBB6_2
# BB#1:                                 # %if.then
	jmp	.LBB6_3
.LBB6_2:                                # %if.end
	leaq	-48(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdi
	movq	-16(%rbp), %rsi
	callq	ds_unsafe_cat_vsprintf
	leaq	-48(%rbp), %rax
	movq	%rax, -408(%rbp)        # 8-byte Spill
.LBB6_3:                                # %return
	addq	$416, %rsp              # imm = 0x1A0
	popq	%rbp
	retq
.Lfunc_end6:
	.size	output, .Lfunc_end6-output
	.cfi_endproc

	.globl	output_char
	.align	16, 0x90
	.type	output_char,@function
output_char:                            # @output_char
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
	movb	%sil, %al
	movq	%rdi, -8(%rbp)
	movb	%al, -9(%rbp)
	movq	-8(%rbp), %rdi
	cmpl	$0, 24(%rdi)
	je	.LBB7_2
# BB#1:                                 # %if.then
	jmp	.LBB7_3
.LBB7_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdi
	movsbl	-9(%rbp), %esi
	callq	ds_strccat
.LBB7_3:                                # %return
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	output_char, .Lfunc_end7-output_char
	.cfi_endproc

	.globl	output_delayed_routine
	.align	16, 0x90
	.type	output_delayed_routine,@function
output_delayed_routine:                 # @output_delayed_routine
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
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	cmpl	$0, 24(%rdx)
	je	.LBB8_2
# BB#1:                                 # %if.then
	jmp	.LBB8_3
.LBB8_2:                                # %if.end
	movl	$3, %edi
	callq	new_derivation
	xorl	%esi, %esi
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, 16(%rcx)
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, 24(%rcx)
	movq	-8(%rbp), %rdi
	callq	output_char
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdi
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	callq	da_append
.LBB8_3:                                # %return
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	output_delayed_routine, .Lfunc_end8-output_delayed_routine
	.cfi_endproc

	.align	16, 0x90
	.type	new_derivation,@function
new_derivation:                         # @new_derivation
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
	movl	$56, %eax
	movl	%eax, %ecx
	movl	%edi, -4(%rbp)
	movq	%rcx, %rdi
	callq	xmalloc
	movq	%rax, -16(%rbp)
	movl	-4(%rbp), %edx
	movq	-16(%rbp), %rax
	movl	%edx, (%rax)
	movq	-16(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	new_derivation, .Lfunc_end9-new_derivation
	.cfi_endproc

	.globl	output_delayed_chunk
	.align	16, 0x90
	.type	output_delayed_chunk,@function
output_delayed_chunk:                   # @output_delayed_chunk
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	cmpl	$0, 24(%rsi)
	je	.LBB10_2
# BB#1:                                 # %if.then
	jmp	.LBB10_3
.LBB10_2:                               # %if.end
	movl	$4, %edi
	callq	new_derivation
	xorl	%esi, %esi
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, 48(%rcx)
	movq	-8(%rbp), %rdi
	callq	output_char
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdi
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	callq	da_append
.LBB10_3:                               # %return
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	output_delayed_chunk, .Lfunc_end10-output_delayed_chunk
	.cfi_endproc

	.globl	output_delayed_int
	.align	16, 0x90
	.type	output_delayed_int,@function
output_delayed_int:                     # @output_delayed_int
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	cmpl	$0, 24(%rsi)
	je	.LBB11_2
# BB#1:                                 # %if.then
	jmp	.LBB11_3
.LBB11_2:                               # %if.end
	movl	$1, %edi
	callq	new_derivation
	xorl	%esi, %esi
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, 32(%rcx)
	movq	-8(%rbp), %rdi
	callq	output_char
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdi
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	callq	da_append
.LBB11_3:                               # %return
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	output_delayed_int, .Lfunc_end11-output_delayed_int
	.cfi_endproc

	.globl	output_delayed_string
	.align	16, 0x90
	.type	output_delayed_string,@function
output_delayed_string:                  # @output_delayed_string
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	cmpl	$0, 24(%rsi)
	je	.LBB12_2
# BB#1:                                 # %if.then
	jmp	.LBB12_3
.LBB12_2:                               # %if.end
	movl	$2, %edi
	callq	new_derivation
	xorl	%esi, %esi
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, 40(%rcx)
	movq	-8(%rbp), %rdi
	callq	output_char
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdi
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	callq	da_append
.LBB12_3:                               # %return
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	output_delayed_string, .Lfunc_end12-output_delayed_string
	.cfi_endproc

	.globl	output_file
	.align	16, 0x90
	.type	output_file,@function
output_file:                            # @output_file
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
	subq	$992, %rsp              # imm = 0x3E0
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	$0, -568(%rbp)
	movq	$0, -576(%rbp)
	movl	$0, -580(%rbp)
	movl	$0, -584(%rbp)
	movq	-8(%rbp), %rcx
	movq	%rcx, -592(%rbp)
	movq	-8(%rbp), %rcx
	cmpl	$0, 24(%rcx)
	je	.LBB13_2
# BB#1:                                 # %if.then
	jmp	.LBB13_90
.LBB13_2:                               # %if.end
	jmp	.LBB13_3
.LBB13_3:                               # %do.body
	movl	msg_verbosity, %eax
	andl	$64, %eax
	cmpl	$0, %eax
	je	.LBB13_8
# BB#4:                                 # %if.then.2
	movq	stderr, %rdi
	movq	-24(%rbp), %rdx
	cmpq	$0, -32(%rbp)
	movq	%rdi, -672(%rbp)        # 8-byte Spill
	movq	%rdx, -680(%rbp)        # 8-byte Spill
	jne	.LBB13_6
# BB#5:                                 # %cond.true
	movabsq	$.L.str.3, %rax
	movq	%rax, -688(%rbp)        # 8-byte Spill
	jmp	.LBB13_7
.LBB13_6:                               # %cond.false
	movq	-32(%rbp), %rax
	movq	%rax, -688(%rbp)        # 8-byte Spill
.LBB13_7:                               # %cond.end
	movq	-688(%rbp), %rax        # 8-byte Reload
	movabsq	$.L.str.2, %rsi
	movq	-672(%rbp), %rdi        # 8-byte Reload
	movq	-680(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	movb	$0, %al
	callq	fprintf
	movl	%eax, -692(%rbp)        # 4-byte Spill
.LBB13_8:                               # %if.end.3
	jmp	.LBB13_9
.LBB13_9:                               # %do.end
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	callq	xpw_find_file
	movq	%rax, -560(%rbp)
	movq	-560(%rbp), %rdi
	callq	xrfopen
	movq	%rax, -552(%rbp)
.LBB13_10:                              # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	$512, %esi              # imm = 0x200
	leaq	-544(%rbp), %rdi
	movq	-552(%rbp), %rdx
	callq	fgets
	cmpq	$0, %rax
	je	.LBB13_14
# BB#11:                                # %while.body
                                        #   in Loop: Header=BB13_10 Depth=1
	movabsq	$.L.str.4, %rdi
	movl	$30, %eax
	movl	%eax, %edx
	leaq	-544(%rbp), %rsi
	movl	-580(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -580(%rbp)
	callq	strncmp
	cmpl	$0, %eax
	jne	.LBB13_13
# BB#12:                                # %if.then.11
	jmp	.LBB13_14
.LBB13_13:                              # %if.end.12
                                        #   in Loop: Header=BB13_10 Depth=1
	jmp	.LBB13_10
.LBB13_14:                              # %while.end
	jmp	.LBB13_15
.LBB13_15:                              # %while.cond.13
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB13_38 Depth 2
                                        #     Child Loop BB13_46 Depth 2
	movl	$512, %esi              # imm = 0x200
	leaq	-544(%rbp), %rdi
	movq	-552(%rbp), %rdx
	callq	fgets
	cmpq	$0, %rax
	je	.LBB13_87
# BB#16:                                # %while.body.17
                                        #   in Loop: Header=BB13_15 Depth=1
	movabsq	$.L.str.5, %rdi
	movl	$13, %eax
	movl	%eax, %edx
	leaq	-544(%rbp), %rsi
	movl	-580(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -580(%rbp)
	callq	strncmp
	cmpl	$0, %eax
	jne	.LBB13_18
# BB#17:                                # %if.then.22
                                        #   in Loop: Header=BB13_15 Depth=1
	movl	$0, -584(%rbp)
	jmp	.LBB13_15
.LBB13_18:                              # %if.else
                                        #   in Loop: Header=BB13_15 Depth=1
	cmpl	$0, -584(%rbp)
	je	.LBB13_20
# BB#19:                                # %if.then.24
                                        #   in Loop: Header=BB13_15 Depth=1
	jmp	.LBB13_15
.LBB13_20:                              # %if.else.25
                                        #   in Loop: Header=BB13_15 Depth=1
	movabsq	$.L.str.6, %rdi
	movl	$13, %eax
	movl	%eax, %edx
	leaq	-544(%rbp), %rsi
	callq	strncmp
	cmpl	$0, %eax
	jne	.LBB13_22
# BB#21:                                # %if.then.29
                                        #   in Loop: Header=BB13_15 Depth=1
	jmp	.LBB13_15
.LBB13_22:                              # %if.end.30
                                        #   in Loop: Header=BB13_15 Depth=1
	jmp	.LBB13_23
.LBB13_23:                              # %if.end.31
                                        #   in Loop: Header=BB13_15 Depth=1
	jmp	.LBB13_24
.LBB13_24:                              # %if.end.32
                                        #   in Loop: Header=BB13_15 Depth=1
	movabsq	$.L.str.7, %rdi
	movl	$18, %eax
	movl	%eax, %edx
	leaq	-544(%rbp), %rsi
	callq	strncmp
	cmpl	$0, %eax
	jne	.LBB13_42
# BB#25:                                # %if.then.36
                                        #   in Loop: Header=BB13_15 Depth=1
	leaq	-544(%rbp), %rdi
	callq	xstrdup
	movabsq	$.L.str.8, %rsi
	leaq	-544(%rbp), %rdi
	movq	%rax, -616(%rbp)
	callq	strtok
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movabsq	$.L.str.8, %rsi
	movq	%rax, -568(%rbp)
	callq	strtok
	movq	%rax, -576(%rbp)
	cmpq	$0, -576(%rbp)
	jne	.LBB13_27
# BB#26:                                # %if.then.43
                                        #   in Loop: Header=BB13_15 Depth=1
	movabsq	$.L.str.9, %rdi
	movq	-560(%rbp), %rdx
	movl	-580(%rbp), %ecx
	movl	%ecx, -696(%rbp)        # 4-byte Spill
	movq	%rdx, -704(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-568(%rbp), %rdi
	movq	%rax, -712(%rbp)        # 8-byte Spill
	callq	quotearg
	movl	$1, %edi
	xorl	%esi, %esi
	movq	-704(%rbp), %rdx        # 8-byte Reload
	movl	-696(%rbp), %ecx        # 4-byte Reload
	movq	-712(%rbp), %r8         # 8-byte Reload
	movq	%rax, %r9
	movb	$0, %al
	callq	error_at_line
.LBB13_27:                              # %if.end.46
                                        #   in Loop: Header=BB13_15 Depth=1
	movq	-576(%rbp), %rax
	movq	%rax, -608(%rbp)
	movq	-608(%rbp), %rdi
	movl	$.L.str.10, %ecx
	movl	%ecx, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB13_37
# BB#28:                                # %if.then.49
                                        #   in Loop: Header=BB13_15 Depth=1
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L.str.8, %rsi
	callq	strtok
	movq	%rax, -576(%rbp)
	cmpq	$0, -576(%rbp)
	jne	.LBB13_30
# BB#29:                                # %if.then.52
                                        #   in Loop: Header=BB13_15 Depth=1
	movabsq	$.L.str.9, %rdi
	movq	-560(%rbp), %rdx
	movl	-580(%rbp), %ecx
	movl	%ecx, -716(%rbp)        # 4-byte Spill
	movq	%rdx, -728(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-568(%rbp), %rdi
	movq	%rax, -736(%rbp)        # 8-byte Spill
	callq	quotearg
	movl	$1, %edi
	xorl	%esi, %esi
	movq	-728(%rbp), %rdx        # 8-byte Reload
	movl	-716(%rbp), %ecx        # 4-byte Reload
	movq	-736(%rbp), %r8         # 8-byte Reload
	movq	%rax, %r9
	movb	$0, %al
	callq	error_at_line
.LBB13_30:                              # %if.end.55
                                        #   in Loop: Header=BB13_15 Depth=1
	movq	-576(%rbp), %rax
	movq	%rax, -600(%rbp)
	movq	-16(%rbp), %rdi
	movq	-608(%rbp), %rsi
	movq	-600(%rbp), %rdx
	callq	exist_resource
	cmpl	$0, %eax
	jne	.LBB13_36
# BB#31:                                # %if.then.58
                                        #   in Loop: Header=BB13_15 Depth=1
	movq	-16(%rbp), %rdi
	movq	-608(%rbp), %rsi
	movq	-600(%rbp), %rdx
	callq	add_needed_resource
# BB#32:                                # %do.body.59
                                        #   in Loop: Header=BB13_15 Depth=1
	movl	msg_verbosity, %eax
	andl	$64, %eax
	cmpl	$0, %eax
	je	.LBB13_34
# BB#33:                                # %if.then.62
                                        #   in Loop: Header=BB13_15 Depth=1
	movabsq	$.L.str.11, %rsi
	movq	stderr, %rdi
	movq	-600(%rbp), %rdx
	movq	-560(%rbp), %rcx
	movl	-580(%rbp), %r8d
	movb	$0, %al
	callq	fprintf
	movl	%eax, -740(%rbp)        # 4-byte Spill
.LBB13_34:                              # %if.end.64
                                        #   in Loop: Header=BB13_15 Depth=1
	jmp	.LBB13_35
.LBB13_35:                              # %do.end.65
                                        #   in Loop: Header=BB13_15 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-592(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-600(%rbp), %rdx
	callq	output_file
.LBB13_36:                              # %if.end.66
                                        #   in Loop: Header=BB13_15 Depth=1
	jmp	.LBB13_41
.LBB13_37:                              # %if.else.67
                                        #   in Loop: Header=BB13_15 Depth=1
	movabsq	$.L.str.12, %rsi
	movq	-592(%rbp), %rdi
	movq	-616(%rbp), %rdx
	movb	$0, %al
	callq	output
.LBB13_38:                              # %while.cond.68
                                        #   Parent Loop BB13_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L.str.8, %rsi
	callq	strtok
	movq	%rax, -600(%rbp)
	cmpq	$0, %rax
	je	.LBB13_40
# BB#39:                                # %while.body.71
                                        #   in Loop: Header=BB13_38 Depth=2
	movq	-16(%rbp), %rdi
	movq	-608(%rbp), %rsi
	movq	-600(%rbp), %rdx
	callq	add_needed_resource
	jmp	.LBB13_38
.LBB13_40:                              # %while.end.72
                                        #   in Loop: Header=BB13_15 Depth=1
	jmp	.LBB13_41
.LBB13_41:                              # %if.end.73
                                        #   in Loop: Header=BB13_15 Depth=1
	movq	-616(%rbp), %rdi
	callq	free
	jmp	.LBB13_15
.LBB13_42:                              # %if.else.74
                                        #   in Loop: Header=BB13_15 Depth=1
	movabsq	$.L.str.13, %rdi
	movl	$24, %eax
	movl	%eax, %edx
	leaq	-544(%rbp), %rsi
	callq	strncmp
	cmpl	$0, %eax
	jne	.LBB13_49
# BB#43:                                # %if.then.78
                                        #   in Loop: Header=BB13_15 Depth=1
	movabsq	$.L.str.8, %rsi
	leaq	-544(%rbp), %rdi
	callq	strtok
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movabsq	$.L.str.8, %rsi
	movq	%rax, -568(%rbp)
	callq	strtok
	movq	%rax, -576(%rbp)
	cmpq	$0, -576(%rbp)
	jne	.LBB13_45
# BB#44:                                # %if.then.83
                                        #   in Loop: Header=BB13_15 Depth=1
	movabsq	$.L.str.9, %rdi
	movq	-560(%rbp), %rdx
	movl	-580(%rbp), %ecx
	movl	%ecx, -744(%rbp)        # 4-byte Spill
	movq	%rdx, -752(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-568(%rbp), %rdi
	movq	%rax, -760(%rbp)        # 8-byte Spill
	callq	quotearg
	movl	$1, %edi
	xorl	%esi, %esi
	movq	-752(%rbp), %rdx        # 8-byte Reload
	movl	-744(%rbp), %ecx        # 4-byte Reload
	movq	-760(%rbp), %r8         # 8-byte Reload
	movq	%rax, %r9
	movb	$0, %al
	callq	error_at_line
.LBB13_45:                              # %if.end.86
                                        #   in Loop: Header=BB13_15 Depth=1
	movq	-16(%rbp), %rdi
	movq	-576(%rbp), %rsi
	callq	add_process_color
.LBB13_46:                              # %while.cond.87
                                        #   Parent Loop BB13_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L.str.8, %rsi
	callq	strtok
	movq	%rax, -576(%rbp)
	cmpq	$0, %rax
	je	.LBB13_48
# BB#47:                                # %while.body.90
                                        #   in Loop: Header=BB13_46 Depth=2
	movq	-16(%rbp), %rdi
	movq	-576(%rbp), %rsi
	callq	add_process_color
	jmp	.LBB13_46
.LBB13_48:                              # %while.end.91
                                        #   in Loop: Header=BB13_15 Depth=1
	jmp	.LBB13_15
.LBB13_49:                              # %if.else.92
                                        #   in Loop: Header=BB13_15 Depth=1
	movabsq	$.L.str.14, %rdi
	movl	$16, %eax
	movl	%eax, %edx
	leaq	-544(%rbp), %rsi
	callq	strncmp
	cmpl	$0, %eax
	jne	.LBB13_55
# BB#50:                                # %if.then.96
                                        #   in Loop: Header=BB13_15 Depth=1
	movabsq	$.L.str.12, %rsi
	leaq	-544(%rbp), %rdx
	movq	-592(%rbp), %rdi
	movb	$0, %al
	callq	output
	movabsq	$.L.str.8, %rsi
	leaq	-544(%rbp), %rdi
	callq	strtok
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movabsq	$.L.str.8, %rsi
	movq	%rax, -568(%rbp)
	callq	strtok
	movq	%rax, -576(%rbp)
	cmpq	$0, -576(%rbp)
	jne	.LBB13_52
# BB#51:                                # %if.then.103
                                        #   in Loop: Header=BB13_15 Depth=1
	movabsq	$.L.str.9, %rdi
	movq	-560(%rbp), %rdx
	movl	-580(%rbp), %ecx
	movl	%ecx, -764(%rbp)        # 4-byte Spill
	movq	%rdx, -776(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-568(%rbp), %rdi
	movq	%rax, -784(%rbp)        # 8-byte Spill
	callq	quotearg
	movl	$1, %edi
	xorl	%esi, %esi
	movq	-776(%rbp), %rdx        # 8-byte Reload
	movl	-764(%rbp), %ecx        # 4-byte Reload
	movq	-784(%rbp), %r8         # 8-byte Reload
	movq	%rax, %r9
	movb	$0, %al
	callq	error_at_line
.LBB13_52:                              # %if.end.106
                                        #   in Loop: Header=BB13_15 Depth=1
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L.str.8, %rsi
	movq	-576(%rbp), %rcx
	movq	%rcx, -624(%rbp)
	callq	strtok
	movq	%rax, -576(%rbp)
	cmpq	$0, -576(%rbp)
	jne	.LBB13_54
# BB#53:                                # %if.then.109
                                        #   in Loop: Header=BB13_15 Depth=1
	movabsq	$.L.str.9, %rdi
	movq	-560(%rbp), %rdx
	movl	-580(%rbp), %ecx
	movl	%ecx, -788(%rbp)        # 4-byte Spill
	movq	%rdx, -800(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-568(%rbp), %rdi
	movq	%rax, -808(%rbp)        # 8-byte Spill
	callq	quotearg
	movl	$1, %edi
	xorl	%esi, %esi
	movq	-800(%rbp), %rdx        # 8-byte Reload
	movl	-788(%rbp), %ecx        # 4-byte Reload
	movq	-808(%rbp), %r8         # 8-byte Reload
	movq	%rax, %r9
	movb	$0, %al
	callq	error_at_line
.LBB13_54:                              # %if.end.112
                                        #   in Loop: Header=BB13_15 Depth=1
	movq	-16(%rbp), %rdi
	movq	-624(%rbp), %rsi
	movq	-576(%rbp), %rdx
	callq	add_supplied_resource
	jmp	.LBB13_15
.LBB13_55:                              # %if.else.113
                                        #   in Loop: Header=BB13_15 Depth=1
	movabsq	$.L.str.15, %rdi
	movl	$10, %eax
	movl	%eax, %edx
	leaq	-544(%rbp), %rsi
	callq	strncmp
	cmpl	$0, %eax
	jne	.LBB13_59
# BB#56:                                # %if.then.117
                                        #   in Loop: Header=BB13_15 Depth=1
	movq	-592(%rbp), %rax
	cmpq	-8(%rbp), %rax
	jne	.LBB13_58
# BB#57:                                # %if.then.119
                                        #   in Loop: Header=BB13_15 Depth=1
	movl	$1, %edi
	xorl	%esi, %esi
	movabsq	$.L.str.16, %rdx
	movb	$0, %al
	callq	error
.LBB13_58:                              # %if.end.120
                                        #   in Loop: Header=BB13_15 Depth=1
	movq	-8(%rbp), %rax
	movq	%rax, -592(%rbp)
	jmp	.LBB13_15
.LBB13_59:                              # %if.else.121
                                        #   in Loop: Header=BB13_15 Depth=1
	movabsq	$.L.str.17, %rdi
	movl	$12, %eax
	movl	%eax, %edx
	leaq	-544(%rbp), %rsi
	callq	strncmp
	cmpl	$0, %eax
	jne	.LBB13_61
# BB#60:                                # %if.then.125
                                        #   in Loop: Header=BB13_15 Depth=1
	movq	-16(%rbp), %rax
	movq	1528(%rax), %rax
	movq	104(%rax), %rax
	movq	%rax, -592(%rbp)
	jmp	.LBB13_15
.LBB13_61:                              # %if.else.126
                                        #   in Loop: Header=BB13_15 Depth=1
	movabsq	$.L.str.18, %rdi
	movl	$6, %eax
	movl	%eax, %edx
	leaq	-544(%rbp), %rsi
	callq	strncmp
	cmpl	$0, %eax
	jne	.LBB13_71
# BB#62:                                # %if.then.130
                                        #   in Loop: Header=BB13_15 Depth=1
	movabsq	$.L.str.8, %rsi
	leaq	-544(%rbp), %rdi
	callq	strtok
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movabsq	$.L.str.8, %rsi
	movq	%rax, -568(%rbp)
	callq	strtok
	movq	%rax, -576(%rbp)
	cmpq	$0, -576(%rbp)
	jne	.LBB13_64
# BB#63:                                # %if.then.135
                                        #   in Loop: Header=BB13_15 Depth=1
	movabsq	$.L.str.9, %rdi
	movq	-560(%rbp), %rdx
	movl	-580(%rbp), %ecx
	movl	%ecx, -812(%rbp)        # 4-byte Spill
	movq	%rdx, -824(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-568(%rbp), %rdi
	movq	%rax, -832(%rbp)        # 8-byte Spill
	callq	quotearg
	movl	$1, %edi
	xorl	%esi, %esi
	movq	-824(%rbp), %rdx        # 8-byte Reload
	movl	-812(%rbp), %ecx        # 4-byte Reload
	movq	-832(%rbp), %r8         # 8-byte Reload
	movq	%rax, %r9
	movb	$0, %al
	callq	error_at_line
.LBB13_64:                              # %if.end.138
                                        #   in Loop: Header=BB13_15 Depth=1
	movq	-576(%rbp), %rdi
	callq	string_to_face
	movl	%eax, -636(%rbp)
	cmpl	$-1, -636(%rbp)
	jne	.LBB13_66
# BB#65:                                # %if.then.141
                                        #   in Loop: Header=BB13_15 Depth=1
	movabsq	$.L.str.19, %rdi
	movq	-560(%rbp), %rdx
	movl	-580(%rbp), %ecx
	movl	%ecx, -836(%rbp)        # 4-byte Spill
	movq	%rdx, -848(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-576(%rbp), %rdi
	movq	%rax, -856(%rbp)        # 8-byte Spill
	callq	quotearg
	movl	$1, %edi
	xorl	%esi, %esi
	movq	-848(%rbp), %rdx        # 8-byte Reload
	movl	-836(%rbp), %ecx        # 4-byte Reload
	movq	-856(%rbp), %r8         # 8-byte Reload
	movq	%rax, %r9
	movb	$0, %al
	callq	error_at_line
.LBB13_66:                              # %if.end.144
                                        #   in Loop: Header=BB13_15 Depth=1
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L.str.8, %rsi
	callq	strtok
	movq	%rax, -576(%rbp)
	cmpq	$0, -576(%rbp)
	jne	.LBB13_68
# BB#67:                                # %if.then.147
                                        #   in Loop: Header=BB13_15 Depth=1
	movabsq	$.L.str.9, %rdi
	movq	-560(%rbp), %rdx
	movl	-580(%rbp), %ecx
	movl	%ecx, -860(%rbp)        # 4-byte Spill
	movq	%rdx, -872(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-568(%rbp), %rdi
	movq	%rax, -880(%rbp)        # 8-byte Spill
	callq	quotearg
	movl	$1, %edi
	xorl	%esi, %esi
	movq	-872(%rbp), %rdx        # 8-byte Reload
	movl	-860(%rbp), %ecx        # 4-byte Reload
	movq	-880(%rbp), %r8         # 8-byte Reload
	movq	%rax, %r9
	movb	$0, %al
	callq	error_at_line
.LBB13_68:                              # %if.end.150
                                        #   in Loop: Header=BB13_15 Depth=1
	movq	-576(%rbp), %rax
	movq	%rax, -632(%rbp)
	movq	-16(%rbp), %rdi
	movl	-636(%rbp), %esi
	movq	-632(%rbp), %rdx
	callq	face_set_font
	xorl	%esi, %esi
	movl	%esi, %edi
	movabsq	$.L.str.20, %rsi
	callq	strtok
	movq	%rax, -576(%rbp)
	cmpq	$0, -576(%rbp)
	jne	.LBB13_70
# BB#69:                                # %if.then.153
                                        #   in Loop: Header=BB13_15 Depth=1
	movabsq	$.L.str.9, %rdi
	movq	-560(%rbp), %rdx
	movl	-580(%rbp), %ecx
	movl	%ecx, -884(%rbp)        # 4-byte Spill
	movq	%rdx, -896(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-568(%rbp), %rdi
	movq	%rax, -904(%rbp)        # 8-byte Spill
	callq	quotearg
	movl	$1, %edi
	xorl	%esi, %esi
	movq	-896(%rbp), %rdx        # 8-byte Reload
	movl	-884(%rbp), %ecx        # 4-byte Reload
	movq	-904(%rbp), %r8         # 8-byte Reload
	movq	%rax, %r9
	movb	$0, %al
	callq	error_at_line
.LBB13_70:                              # %if.end.156
                                        #   in Loop: Header=BB13_15 Depth=1
	movabsq	$.L.str.21, %rsi
	movq	-592(%rbp), %rdi
	movq	-632(%rbp), %rdx
	movq	-576(%rbp), %rcx
	movb	$0, %al
	callq	output
	jmp	.LBB13_15
.LBB13_71:                              # %if.else.157
                                        #   in Loop: Header=BB13_15 Depth=1
	movabsq	$.L.str.22, %rdi
	movl	$6, %eax
	movl	%eax, %edx
	leaq	-544(%rbp), %rsi
	callq	strncmp
	cmpl	$0, %eax
	jne	.LBB13_77
# BB#72:                                # %if.then.161
                                        #   in Loop: Header=BB13_15 Depth=1
	movabsq	$.L.str.8, %rsi
	leaq	-544(%rbp), %rdi
	callq	strtok
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	movabsq	$.L.str.8, %rsi
	movq	%rax, -568(%rbp)
	callq	strtok
	movq	%rax, -576(%rbp)
	cmpq	$0, -576(%rbp)
	jne	.LBB13_74
# BB#73:                                # %if.then.166
                                        #   in Loop: Header=BB13_15 Depth=1
	movabsq	$.L.str.9, %rdi
	movq	-560(%rbp), %rdx
	movl	-580(%rbp), %ecx
	movl	%ecx, -908(%rbp)        # 4-byte Spill
	movq	%rdx, -920(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-568(%rbp), %rdi
	movq	%rax, -928(%rbp)        # 8-byte Spill
	callq	quotearg
	movl	$1, %edi
	xorl	%esi, %esi
	movq	-920(%rbp), %rdx        # 8-byte Reload
	movl	-908(%rbp), %ecx        # 4-byte Reload
	movq	-928(%rbp), %r8         # 8-byte Reload
	movq	%rax, %r9
	movb	$0, %al
	callq	error_at_line
.LBB13_74:                              # %if.end.169
                                        #   in Loop: Header=BB13_15 Depth=1
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L.str.20, %rsi
	movq	-576(%rbp), %rcx
	movq	%rcx, -648(%rbp)
	callq	strtok
	movq	%rax, -576(%rbp)
	cmpq	$0, -576(%rbp)
	jne	.LBB13_76
# BB#75:                                # %if.then.172
                                        #   in Loop: Header=BB13_15 Depth=1
	movabsq	$.L.str.9, %rdi
	movq	-560(%rbp), %rdx
	movl	-580(%rbp), %ecx
	movl	%ecx, -932(%rbp)        # 4-byte Spill
	movq	%rdx, -944(%rbp)        # 8-byte Spill
	callq	gettext
	movq	-568(%rbp), %rdi
	movq	%rax, -952(%rbp)        # 8-byte Spill
	callq	quotearg
	movl	$1, %edi
	xorl	%esi, %esi
	movq	-944(%rbp), %rdx        # 8-byte Reload
	movl	-932(%rbp), %ecx        # 4-byte Reload
	movq	-952(%rbp), %r8         # 8-byte Reload
	movq	%rax, %r9
	movb	$0, %al
	callq	error_at_line
.LBB13_76:                              # %if.end.175
                                        #   in Loop: Header=BB13_15 Depth=1
	movq	-16(%rbp), %rax
	movq	384(%rax), %rdi
	movq	-648(%rbp), %rsi
	callq	encoding_add_font_name_used
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	384(%rax), %rsi
	movq	-648(%rbp), %rdx
	callq	encoding_resolve_font_substitute
	movq	%rax, -656(%rbp)
	movq	-16(%rbp), %rdi
	movq	-656(%rbp), %rsi
	callq	add_required_font
	movabsq	$.L.str.21, %rsi
	movq	-592(%rbp), %rdi
	movq	-648(%rbp), %rdx
	movq	-576(%rbp), %rcx
	movb	$0, %al
	callq	output
	jmp	.LBB13_15
.LBB13_77:                              # %if.else.178
                                        #   in Loop: Header=BB13_15 Depth=1
	movabsq	$.L.str.23, %rdi
	movl	$8, %eax
	movl	%eax, %edx
	leaq	-544(%rbp), %rsi
	callq	strncmp
	cmpl	$0, %eax
	jne	.LBB13_79
# BB#78:                                # %if.then.182
                                        #   in Loop: Header=BB13_15 Depth=1
	movabsq	$.L.str.20, %rsi
	leaq	-544(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdi
	callq	strtok
	movabsq	$.L.str.24, %rdx
	movq	%rax, -568(%rbp)
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	1632(%rax), %rax
	movq	48(%rax), %rax
	movq	(%rax), %rax
	movq	-568(%rbp), %rcx
	movq	%rax, %rsi
	callq	expand_user_string
	movq	%rax, -664(%rbp)
	movq	-592(%rbp), %rdi
	movq	-664(%rbp), %rsi
	movb	$0, %al
	callq	output
	jmp	.LBB13_15
.LBB13_79:                              # %if.end.186
                                        #   in Loop: Header=BB13_15 Depth=1
	jmp	.LBB13_80
.LBB13_80:                              # %if.end.187
                                        #   in Loop: Header=BB13_15 Depth=1
	jmp	.LBB13_81
.LBB13_81:                              # %if.end.188
                                        #   in Loop: Header=BB13_15 Depth=1
	jmp	.LBB13_82
.LBB13_82:                              # %if.end.189
                                        #   in Loop: Header=BB13_15 Depth=1
	jmp	.LBB13_83
.LBB13_83:                              # %if.end.190
                                        #   in Loop: Header=BB13_15 Depth=1
	jmp	.LBB13_84
.LBB13_84:                              # %if.end.191
                                        #   in Loop: Header=BB13_15 Depth=1
	jmp	.LBB13_85
.LBB13_85:                              # %if.end.192
                                        #   in Loop: Header=BB13_15 Depth=1
	jmp	.LBB13_86
.LBB13_86:                              # %if.end.193
                                        #   in Loop: Header=BB13_15 Depth=1
	movabsq	$.L.str.12, %rsi
	leaq	-544(%rbp), %rdx
	movq	-592(%rbp), %rdi
	movb	$0, %al
	callq	output
	jmp	.LBB13_15
.LBB13_87:                              # %while.end.195
	movq	-592(%rbp), %rax
	cmpq	-8(%rbp), %rax
	je	.LBB13_89
# BB#88:                                # %if.then.197
	movabsq	$.L.str.25, %rdi
	movq	-560(%rbp), %rdx
	movl	-580(%rbp), %ecx
	movl	%ecx, -956(%rbp)        # 4-byte Spill
	movq	%rdx, -968(%rbp)        # 8-byte Spill
	callq	gettext
	movl	$1, %edi
	xorl	%esi, %esi
	movabsq	$.L.str.17, %r9
	movabsq	$.L.str.15, %rdx
	movq	-968(%rbp), %r8         # 8-byte Reload
	movq	%rdx, -976(%rbp)        # 8-byte Spill
	movq	%r8, %rdx
	movl	-956(%rbp), %ecx        # 4-byte Reload
	movq	%rax, %r8
	movq	-976(%rbp), %rax        # 8-byte Reload
	movq	%rax, (%rsp)
	movb	$0, %al
	callq	error_at_line
.LBB13_89:                              # %if.end.199
	movq	-552(%rbp), %rdi
	callq	fclose
	movq	-560(%rbp), %rdi
	movl	%eax, -980(%rbp)        # 4-byte Spill
	callq	free
.LBB13_90:                              # %return
	addq	$992, %rsp              # imm = 0x3E0
	popq	%rbp
	retq
.Lfunc_end13:
	.size	output_file, .Lfunc_end13-output_file
	.cfi_endproc

	.globl	output_self_print
	.align	16, 0x90
	.type	output_self_print,@function
output_self_print:                      # @output_self_print
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
	subq	$32, %rsp
	movabsq	$.L.str.26, %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rax, %rsi
	movb	$0, %al
	callq	fprintf
	movq	-8(%rbp), %rsi
	movq	16(%rsi), %rdi
	movq	-16(%rbp), %rsi
	movl	%eax, -20(%rbp)         # 4-byte Spill
	callq	da_self_print
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	output_self_print, .Lfunc_end14-output_self_print
	.cfi_endproc

	.globl	output_dump
	.align	16, 0x90
	.type	output_dump,@function
output_dump:                            # @output_dump
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	8(%rsi), %rsi
	movq	40(%rsi), %rsi
	movq	%rsi, -32(%rbp)
	movq	-8(%rbp), %rsi
	movq	16(%rsi), %rsi
	movq	48(%rsi), %rsi
	movq	%rsi, -40(%rbp)
	movl	msg_verbosity, %eax
	andl	$128, %eax
	cmpl	$0, %eax
	je	.LBB15_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rdi
	movq	stderr, %rsi
	callq	output_report
.LBB15_2:                               # %if.end
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	fputs
	movq	-32(%rbp), %rdi
	movl	%eax, -44(%rbp)         # 4-byte Spill
	callq	strlen
	addq	-32(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	$0, -24(%rbp)
.LBB15_3:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	16(%rcx), %rcx
	cmpq	40(%rcx), %rax
	jae	.LBB15_6
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB15_3 Depth=1
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	(%rcx,%rax,8), %rsi
	callq	underivation
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	fputs
	movq	-32(%rbp), %rdi
	movl	%eax, -48(%rbp)         # 4-byte Spill
	callq	strlen
	addq	-32(%rbp), %rax
	movq	%rax, -32(%rbp)
# BB#5:                                 # %for.inc
                                        #   in Loop: Header=BB15_3 Depth=1
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB15_3
.LBB15_6:                               # %for.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	output_dump, .Lfunc_end15-output_dump
	.cfi_endproc

	.align	16, 0x90
	.type	underivation,@function
underivation:                           # @underivation
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	(%rsi), %eax
	movl	%eax, %esi
	movq	%rsi, %rdi
	subq	$4, %rdi
	movq	%rsi, -24(%rbp)         # 8-byte Spill
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	ja	.LBB16_6
# BB#8:                                 # %entry
	movq	-24(%rbp), %rax         # 8-byte Reload
	movq	.LJTI16_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB16_1:                               # %sw.bb
	movq	-16(%rbp), %rax
	movq	16(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	24(%rcx), %rsi
	callq	*%rax
	jmp	.LBB16_7
.LBB16_2:                               # %sw.bb.1
	movabsq	$.L.str.35, %rsi
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	32(%rax), %rax
	movl	(%rax), %edx
	movb	$0, %al
	callq	fprintf
	movl	%eax, -36(%rbp)         # 4-byte Spill
	jmp	.LBB16_7
.LBB16_3:                               # %sw.bb.2
	movabsq	$.L.str.12, %rsi
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	40(%rax), %rax
	movq	(%rax), %rdx
	movb	$0, %al
	callq	fprintf
	movl	%eax, -40(%rbp)         # 4-byte Spill
	jmp	.LBB16_7
.LBB16_4:                               # %sw.bb.4
	movq	-16(%rbp), %rax
	movq	48(%rax), %rdi
	movq	-8(%rbp), %rsi
	callq	output_dump
	jmp	.LBB16_7
.LBB16_5:                               # %sw.bb.5
	jmp	.LBB16_7
.LBB16_6:                               # %sw.default
	callq	abort
.LBB16_7:                               # %sw.epilog
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	underivation, .Lfunc_end16-underivation
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI16_0:
	.quad	.LBB16_5
	.quad	.LBB16_2
	.quad	.LBB16_3
	.quad	.LBB16_1
	.quad	.LBB16_4

	.text
	.globl	undivert
	.align	16, 0x90
	.type	undivert,@function
undivert:                               # @undivert
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	a2ps_open_output_stream
	movq	-8(%rbp), %rdi
	movq	1536(%rdi), %rdi
	movq	-8(%rbp), %rax
	movq	288(%rax), %rax
	movq	8(%rax), %rsi
	callq	output_dump
	movq	-8(%rbp), %rdi
	callq	a2ps_close_output_stream
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	undivert, .Lfunc_end17-undivert
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"derivations"
	.size	.L.str, 12

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Output `%s' stats:\n"
	.size	.L.str.1, 20

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"Outputing file %s%s\n"
	.size	.L.str.2, 21

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.zero	1
	.size	.L.str.3, 1

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"% -- code follows this line --"
	.size	.L.str.4, 31

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"%%EndFontUsed"
	.size	.L.str.5, 14

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"%%IfFontUsed:"
	.size	.L.str.6, 14

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"%%IncludeResource:"
	.size	.L.str.7, 19

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	" \t\n"
	.size	.L.str.8, 4

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"missing argument for `%s'"
	.size	.L.str.9, 26

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"file"
	.size	.L.str.10, 5

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"Including file '%s' upon request given in '%s':%d\n"
	.size	.L.str.11, 51

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"%s"
	.size	.L.str.12, 3

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"%%DocumentProcessColors:"
	.size	.L.str.13, 25

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"%%BeginResource:"
	.size	.L.str.14, 17

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"%%EndSetup"
	.size	.L.str.15, 11

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"`setup' incoherence in output_file"
	.size	.L.str.16, 35

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"%%BeginSetup"
	.size	.L.str.17, 13

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"%Face:"
	.size	.L.str.18, 7

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"invalid face `%s'"
	.size	.L.str.19, 18

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"\n"
	.size	.L.str.20, 2

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"  f%s %s scalefont setfont\n"
	.size	.L.str.21, 28

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"%Font:"
	.size	.L.str.22, 7

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"%Expand:"
	.size	.L.str.23, 9

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"Expand: requirement"
	.size	.L.str.24, 20

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"`%s' with no matching `%s'"
	.size	.L.str.25, 27

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"The derivations:\n"
	.size	.L.str.26, 18

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"At %x: "
	.size	.L.str.27, 8

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"nothing "
	.size	.L.str.28, 9

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"delayed_int (%d)"
	.size	.L.str.29, 17

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"delayed_string "
	.size	.L.str.30, 16

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"(%s)"
	.size	.L.str.31, 5

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"##BROKEN##"
	.size	.L.str.32, 11

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"delayed_routine "
	.size	.L.str.33, 17

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"delayed_chunk "
	.size	.L.str.34, 15

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"%d"
	.size	.L.str.35, 3


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
