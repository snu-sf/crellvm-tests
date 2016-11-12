	.text
	.file	"selection-to-path.bc"
	.align	16, 0x90
	.type	query,@function
query:                                  # @query
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
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$152, %rsp
.Ltmp3:
	.cfi_offset %rbx, -40
.Ltmp4:
	.cfi_offset %r14, -32
.Ltmp5:
	.cfi_offset %r15, -24
	movabsq	$.L.str.47, %rdi
	movabsq	$.L.str.48, %rax
	movabsq	$.L.str.49, %rcx
	movabsq	$.L.str.50, %r9
	xorl	%edx, %edx
	movl	%edx, %esi
	movabsq	$.L.str.51, %r8
	movl	$1, %edx
	movl	$3, %r10d
	xorl	%r11d, %r11d
	movabsq	$query.args, %rbx
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	movq	%rax, %rsi
	movl	%edx, -36(%rbp)         # 4-byte Spill
	movq	%rax, %rdx
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	%r8, -56(%rbp)          # 8-byte Spill
	movq	%rax, %r8
	movq	$0, (%rsp)
	movq	-56(%rbp), %r14         # 8-byte Reload
	movq	%r14, 8(%rsp)
	movl	$1, 16(%rsp)
	movl	$3, 24(%rsp)
	movl	$0, 32(%rsp)
	movq	%rbx, 40(%rsp)
	movq	$0, 48(%rsp)
	movl	%r10d, -60(%rbp)        # 4-byte Spill
	movl	%r11d, -64(%rbp)        # 4-byte Spill
	callq	gimp_install_procedure
	movabsq	$.L.str.52, %rdi
	movabsq	$.L.str.53, %rax
	movabsq	$.L.str.49, %rcx
	movabsq	$.L.str.50, %r9
	xorl	%r10d, %r10d
	movl	%r10d, %edx
	movabsq	$.L.str.51, %rsi
	movl	$1, %r10d
	movl	$23, %r11d
	xorl	%r15d, %r15d
	movabsq	$query.advanced_args, %r8
	movq	%rsi, -72(%rbp)         # 8-byte Spill
	movq	%rax, %rsi
	movq	%rdx, -80(%rbp)         # 8-byte Spill
	movq	%rax, %rdx
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	%r8, -96(%rbp)          # 8-byte Spill
	movq	%rax, %r8
	movq	$0, (%rsp)
	movq	-72(%rbp), %rbx         # 8-byte Reload
	movq	%rbx, 8(%rsp)
	movl	$1, 16(%rsp)
	movl	$23, 24(%rsp)
	movl	$0, 32(%rsp)
	movq	-96(%rbp), %r14         # 8-byte Reload
	movq	%r14, 40(%rsp)
	movq	$0, 48(%rsp)
	movl	%r11d, -100(%rbp)       # 4-byte Spill
	movl	%r15d, -104(%rbp)       # 4-byte Spill
	movl	%r10d, -108(%rbp)       # 4-byte Spill
	callq	gimp_install_procedure
	addq	$152, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	query, .Lfunc_end0-query
	.cfi_endproc

	.align	16, 0x90
	.type	run,@function
run:                                    # @run
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movl	$3, -52(%rbp)
	movq	-24(%rbp), %rcx
	movl	8(%rcx), %esi
	movl	%esi, -48(%rbp)
# BB#1:                                 # %do.body
	callq	gimp_locale_directory
	movabsq	$.L.str.54, %rdi
	movq	%rax, %rsi
	callq	bindtextdomain
	movabsq	$.L.str.54, %rdi
	movabsq	$.L.str.55, %rsi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	bind_textdomain_codeset
	movabsq	$.L.str.54, %rdi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	textdomain
	movq	%rax, -80(%rbp)         # 8-byte Spill
# BB#2:                                 # %do.end
	movabsq	$run.values, %rax
	movq	-8(%rbp), %rdi
	movl	$.L.str.47, %ecx
	movl	%ecx, %esi
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	strcmp
	cmpl	$0, %eax
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %eax
	movl	%eax, -56(%rbp)
	movq	-32(%rbp), %rsi
	movl	$1, (%rsi)
	movq	-40(%rbp), %rsi
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rdi, (%rsi)
	movl	$21, run.values
	movl	-52(%rbp), %eax
	movl	%eax, run.values+8
	movq	-24(%rbp), %rsi
	movl	48(%rsi), %eax
	movl	%eax, -44(%rbp)
	cmpl	$0, -44(%rbp)
	jge	.LBB1_4
# BB#3:                                 # %if.then
	movabsq	$.L.str.56, %rdi
	movb	$0, %al
	callq	g_warning
	jmp	.LBB1_28
.LBB1_4:                                # %if.end
	movl	-44(%rbp), %edi
	callq	gimp_selection_is_empty
	cmpl	$0, %eax
	je	.LBB1_6
# BB#5:                                 # %if.then.10
	movabsq	$.L.str.57, %rdi
	callq	gettext
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_message
	jmp	.LBB1_28
.LBB1_6:                                # %if.end.12
	movabsq	$selVals, %rdi
	callq	fit_set_default_params
	cmpl	$0, -56(%rbp)
	jne	.LBB1_23
# BB#7:                                 # %if.then.14
	movl	-48(%rbp), %eax
	testl	%eax, %eax
	movl	%eax, -92(%rbp)         # 4-byte Spill
	je	.LBB1_8
	jmp	.LBB1_29
.LBB1_29:                               # %if.then.14
	movl	-92(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -96(%rbp)         # 4-byte Spill
	je	.LBB1_13
	jmp	.LBB1_30
.LBB1_30:                               # %if.then.14
	movl	-92(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -100(%rbp)        # 4-byte Spill
	je	.LBB1_18
	jmp	.LBB1_21
.LBB1_8:                                # %sw.bb
	movabsq	$.L.str.52, %rdi
	callq	gimp_procedural_db_get_data_size
	cmpl	$0, %eax
	jle	.LBB1_10
# BB#9:                                 # %if.then.18
	movabsq	$.L.str.52, %rdi
	movabsq	$selVals, %rax
	movq	%rax, %rsi
	callq	gimp_procedural_db_get_data
	movl	%eax, -104(%rbp)        # 4-byte Spill
.LBB1_10:                               # %if.end.20
	movabsq	$selVals, %rdi
	callq	sel2path_dialog
	cmpl	$0, %eax
	jne	.LBB1_12
# BB#11:                                # %if.then.23
	jmp	.LBB1_28
.LBB1_12:                               # %if.end.24
	movabsq	$selVals, %rdi
	callq	fit_set_params
	jmp	.LBB1_22
.LBB1_13:                               # %sw.bb.25
	cmpl	$23, -12(%rbp)
	je	.LBB1_15
# BB#14:                                # %if.then.28
	movl	$1, -52(%rbp)
.LBB1_15:                               # %if.end.29
	cmpl	$3, -52(%rbp)
	jne	.LBB1_17
# BB#16:                                # %if.then.32
	movabsq	$selVals, %rdi
	movq	-24(%rbp), %rax
	movsd	128(%rax), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, selVals(%rip)
	movq	-24(%rbp), %rax
	movsd	168(%rax), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, selVals+8(%rip)
	movq	-24(%rbp), %rax
	movzbl	208(%rax), %ecx
	cvtsi2sdl	%ecx, %xmm0
	movsd	%xmm0, selVals+16(%rip)
	movq	-24(%rbp), %rax
	movsd	248(%rax), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, selVals+24(%rip)
	movq	-24(%rbp), %rax
	movsd	288(%rax), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, selVals+32(%rip)
	movq	-24(%rbp), %rax
	movzbl	328(%rax), %ecx
	cvtsi2sdl	%ecx, %xmm0
	movsd	%xmm0, selVals+40(%rip)
	movq	-24(%rbp), %rax
	movsd	368(%rax), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, selVals+48(%rip)
	movq	-24(%rbp), %rax
	movzbl	408(%rax), %ecx
	cvtsi2sdl	%ecx, %xmm0
	movsd	%xmm0, selVals+56(%rip)
	movq	-24(%rbp), %rax
	movsd	448(%rax), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, selVals+64(%rip)
	movq	-24(%rbp), %rax
	movzbl	488(%rax), %ecx
	cvtsi2sdl	%ecx, %xmm0
	movsd	%xmm0, selVals+72(%rip)
	movq	-24(%rbp), %rax
	movzbl	528(%rax), %ecx
	cvtsi2sdl	%ecx, %xmm0
	movsd	%xmm0, selVals+80(%rip)
	movq	-24(%rbp), %rax
	movzbl	568(%rax), %ecx
	movl	%ecx, selVals+88(%rip)
	movq	-24(%rbp), %rax
	movsd	608(%rax), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, selVals+96(%rip)
	movq	-24(%rbp), %rax
	movsd	648(%rax), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, selVals+104(%rip)
	movq	-24(%rbp), %rax
	movsd	688(%rax), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, selVals+112(%rip)
	movq	-24(%rbp), %rax
	movsd	728(%rax), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, selVals+120(%rip)
	movq	-24(%rbp), %rax
	movsd	768(%rax), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, selVals+128(%rip)
	movq	-24(%rbp), %rax
	movzbl	808(%rax), %ecx
	cvtsi2sdl	%ecx, %xmm0
	movsd	%xmm0, selVals+136(%rip)
	movq	-24(%rbp), %rax
	movsd	848(%rax), %xmm0        # xmm0 = mem[0],zero
	movsd	%xmm0, selVals+144(%rip)
	movq	-24(%rbp), %rax
	movzbl	888(%rax), %ecx
	cvtsi2sdl	%ecx, %xmm0
	movsd	%xmm0, selVals+152
	callq	fit_set_params
.LBB1_17:                               # %if.end.99
	jmp	.LBB1_22
.LBB1_18:                               # %sw.bb.100
	movabsq	$.L.str.52, %rdi
	callq	gimp_procedural_db_get_data_size
	cmpl	$0, %eax
	jle	.LBB1_20
# BB#19:                                # %if.then.104
	movabsq	$.L.str.52, %rdi
	movabsq	$selVals, %rax
	movq	%rax, %rsi
	callq	gimp_procedural_db_get_data
	movabsq	$selVals, %rdi
	movl	%eax, -108(%rbp)        # 4-byte Spill
	callq	fit_set_params
.LBB1_20:                               # %if.end.106
	jmp	.LBB1_22
.LBB1_21:                               # %sw.default
	jmp	.LBB1_22
.LBB1_22:                               # %sw.epilog
	jmp	.LBB1_23
.LBB1_23:                               # %if.end.107
	movl	-44(%rbp), %edi
	callq	sel2path
	movl	-52(%rbp), %edi
	movl	%edi, run.values+8
	cmpl	$3, -52(%rbp)
	movl	%eax, -112(%rbp)        # 4-byte Spill
	jne	.LBB1_28
# BB#24:                                # %if.then.111
	movabsq	$selVals, %rdi
	callq	dialog_print_selVals
	cmpl	$0, -48(%rbp)
	jne	.LBB1_27
# BB#25:                                # %land.lhs.true
	cmpl	$0, -56(%rbp)
	jne	.LBB1_27
# BB#26:                                # %if.then.115
	movabsq	$.L.str.52, %rdi
	movabsq	$selVals, %rax
	movl	$160, %edx
	movq	%rax, %rsi
	callq	gimp_procedural_db_set_data
	movl	%eax, -116(%rbp)        # 4-byte Spill
.LBB1_27:                               # %if.end.117
	jmp	.LBB1_28
.LBB1_28:                               # %if.end.118
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	run, .Lfunc_end1-run
	.cfi_endproc

	.globl	main
	.align	16, 0x90
	.type	main,@function
main:                                   # @main
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
	movabsq	$PLUG_IN_INFO, %rax
	movl	$0, -4(%rbp)
	movl	%edi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	-8(%rbp), %esi
	movq	-16(%rbp), %rdx
	movq	%rax, %rdi
	callq	gimp_main
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	main, .Lfunc_end2-main
	.cfi_endproc

	.globl	sel_pixel_value
	.align	16, 0x90
	.type	sel_pixel_value,@function
sel_pixel_value:                        # @sel_pixel_value
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
	movl	%edi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %esi
	cmpl	sel_width, %esi
	jg	.LBB3_2
# BB#1:                                 # %lor.lhs.false
	movl	-8(%rbp), %eax
	cmpl	sel_height, %eax
	jle	.LBB3_3
.LBB3_2:                                # %if.then
	movabsq	$.L.str, %rdi
	movl	-12(%rbp), %esi
	movl	-8(%rbp), %edx
	movb	$0, %al
	callq	g_warning
	movb	$0, -1(%rbp)
	jmp	.LBB3_4
.LBB3_3:                                # %if.end
	movabsq	$selection_rgn, %rdi
	leaq	-13(%rbp), %rsi
	movl	-12(%rbp), %eax
	addl	sel_x1, %eax
	movl	-8(%rbp), %ecx
	addl	sel_y1, %ecx
	movl	%eax, %edx
	callq	gimp_pixel_rgn_get_pixel
	movb	-13(%rbp), %r8b
	movb	%r8b, -1(%rbp)
.LBB3_4:                                # %return
	movzbl	-1(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	sel_pixel_value, .Lfunc_end3-sel_pixel_value
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
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
	subq	$384, %rsp              # imm = 0x180
	testb	%al, %al
	movaps	%xmm7, -224(%rbp)       # 16-byte Spill
	movaps	%xmm6, -240(%rbp)       # 16-byte Spill
	movaps	%xmm5, -256(%rbp)       # 16-byte Spill
	movaps	%xmm4, -272(%rbp)       # 16-byte Spill
	movaps	%xmm3, -288(%rbp)       # 16-byte Spill
	movaps	%xmm2, -304(%rbp)       # 16-byte Spill
	movaps	%xmm1, -320(%rbp)       # 16-byte Spill
	movaps	%xmm0, -336(%rbp)       # 16-byte Spill
	movq	%rdi, -344(%rbp)        # 8-byte Spill
	movq	%r9, -352(%rbp)         # 8-byte Spill
	movq	%r8, -360(%rbp)         # 8-byte Spill
	movq	%rcx, -368(%rbp)        # 8-byte Spill
	movq	%rdx, -376(%rbp)        # 8-byte Spill
	movq	%rsi, -384(%rbp)        # 8-byte Spill
	je	.LBB4_2
# BB#1:                                 # %entry
	movaps	-336(%rbp), %xmm0       # 16-byte Reload
	movaps	%xmm0, -160(%rbp)
	movaps	-320(%rbp), %xmm1       # 16-byte Reload
	movaps	%xmm1, -144(%rbp)
	movaps	-304(%rbp), %xmm2       # 16-byte Reload
	movaps	%xmm2, -128(%rbp)
	movaps	-288(%rbp), %xmm3       # 16-byte Reload
	movaps	%xmm3, -112(%rbp)
	movaps	-272(%rbp), %xmm4       # 16-byte Reload
	movaps	%xmm4, -96(%rbp)
	movaps	-256(%rbp), %xmm5       # 16-byte Reload
	movaps	%xmm5, -80(%rbp)
	movaps	-240(%rbp), %xmm6       # 16-byte Reload
	movaps	%xmm6, -64(%rbp)
	movaps	-224(%rbp), %xmm7       # 16-byte Reload
	movaps	%xmm7, -48(%rbp)
.LBB4_2:                                # %entry
	movq	-352(%rbp), %rax        # 8-byte Reload
	movq	%rax, -168(%rbp)
	movq	-360(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, -176(%rbp)
	movq	-368(%rbp), %rdx        # 8-byte Reload
	movq	%rdx, -184(%rbp)
	movq	-376(%rbp), %rsi        # 8-byte Reload
	movq	%rsi, -192(%rbp)
	movq	-384(%rbp), %rdi        # 8-byte Reload
	movq	%rdi, -200(%rbp)
	movq	-344(%rbp), %r8         # 8-byte Reload
	movq	%r8, -8(%rbp)
	leaq	-208(%rbp), %r8
	movq	%r8, -16(%rbp)
	leaq	16(%rbp), %r8
	movq	%r8, -24(%rbp)
	movl	$48, -28(%rbp)
	movl	$8, -32(%rbp)
	movq	-8(%rbp), %rdx
	xorl	%r9d, %r9d
	movl	%r9d, %edi
	movl	$16, %esi
	leaq	-32(%rbp), %rcx
	callq	g_logv
	addq	$384, %rsp              # imm = 0x180
	popq	%rbp
	retq
.Lfunc_end4:
	.size	g_warning, .Lfunc_end4-g_warning
	.cfi_endproc

	.globl	sel_pixel_is_white
	.align	16, 0x90
	.type	sel_pixel_is_white,@function
sel_pixel_is_white:                     # @sel_pixel_is_white
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
	movl	%edi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-8(%rbp), %edi
	movl	-12(%rbp), %esi
	callq	sel_pixel_value
	movzbl	%al, %esi
	cmpl	$127, %esi
	jge	.LBB5_2
# BB#1:                                 # %if.then
	movl	$1, -4(%rbp)
	jmp	.LBB5_3
.LBB5_2:                                # %if.else
	movl	$0, -4(%rbp)
.LBB5_3:                                # %return
	movl	-4(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	sel_pixel_is_white, .Lfunc_end5-sel_pixel_is_white
	.cfi_endproc

	.globl	sel_get_width
	.align	16, 0x90
	.type	sel_get_width,@function
sel_get_width:                          # @sel_get_width
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
	movl	sel_width, %eax
	popq	%rbp
	retq
.Lfunc_end6:
	.size	sel_get_width, .Lfunc_end6-sel_get_width
	.cfi_endproc

	.globl	sel_get_height
	.align	16, 0x90
	.type	sel_get_height,@function
sel_get_height:                         # @sel_get_height
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
	movl	sel_height, %eax
	popq	%rbp
	retq
.Lfunc_end7:
	.size	sel_get_height, .Lfunc_end7-sel_get_height
	.cfi_endproc

	.globl	sel_valid_pixel
	.align	16, 0x90
	.type	sel_valid_pixel,@function
sel_valid_pixel:                        # @sel_valid_pixel
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
	xorl	%eax, %eax
	movb	%al, %cl
	xorl	%eax, %eax
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	cmpl	-4(%rbp), %eax
	movb	%cl, -9(%rbp)           # 1-byte Spill
	jg	.LBB8_4
# BB#1:                                 # %land.lhs.true
	movl	-4(%rbp), %eax
	movl	%eax, -16(%rbp)         # 4-byte Spill
	callq	sel_get_height
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movl	-16(%rbp), %ecx         # 4-byte Reload
	cmpl	%eax, %ecx
	movb	%dl, -9(%rbp)           # 1-byte Spill
	jge	.LBB8_4
# BB#2:                                 # %land.lhs.true.2
	xorl	%eax, %eax
	movb	%al, %cl
	xorl	%eax, %eax
	cmpl	-8(%rbp), %eax
	movb	%cl, -9(%rbp)           # 1-byte Spill
	jg	.LBB8_4
# BB#3:                                 # %land.rhs
	movl	-8(%rbp), %eax
	movl	%eax, -20(%rbp)         # 4-byte Spill
	callq	sel_get_width
	movl	-20(%rbp), %ecx         # 4-byte Reload
	cmpl	%eax, %ecx
	setl	%dl
	movb	%dl, -9(%rbp)           # 1-byte Spill
.LBB8_4:                                # %land.end
	movb	-9(%rbp), %al           # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	sel_valid_pixel, .Lfunc_end8-sel_valid_pixel
	.cfi_endproc

	.globl	safe_free
	.align	16, 0x90
	.type	safe_free,@function
safe_free:                              # @safe_free
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
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	callq	g_free
	movq	-8(%rbp), %rdi
	movq	$0, (%rdi)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	safe_free, .Lfunc_end9-safe_free
	.cfi_endproc

	.align	16, 0x90
	.type	g_message,@function
g_message:                              # @g_message
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
	subq	$384, %rsp              # imm = 0x180
	testb	%al, %al
	movaps	%xmm7, -224(%rbp)       # 16-byte Spill
	movaps	%xmm6, -240(%rbp)       # 16-byte Spill
	movaps	%xmm5, -256(%rbp)       # 16-byte Spill
	movaps	%xmm4, -272(%rbp)       # 16-byte Spill
	movaps	%xmm3, -288(%rbp)       # 16-byte Spill
	movaps	%xmm2, -304(%rbp)       # 16-byte Spill
	movaps	%xmm1, -320(%rbp)       # 16-byte Spill
	movaps	%xmm0, -336(%rbp)       # 16-byte Spill
	movq	%rdi, -344(%rbp)        # 8-byte Spill
	movq	%r9, -352(%rbp)         # 8-byte Spill
	movq	%r8, -360(%rbp)         # 8-byte Spill
	movq	%rcx, -368(%rbp)        # 8-byte Spill
	movq	%rdx, -376(%rbp)        # 8-byte Spill
	movq	%rsi, -384(%rbp)        # 8-byte Spill
	je	.LBB10_2
# BB#1:                                 # %entry
	movaps	-336(%rbp), %xmm0       # 16-byte Reload
	movaps	%xmm0, -160(%rbp)
	movaps	-320(%rbp), %xmm1       # 16-byte Reload
	movaps	%xmm1, -144(%rbp)
	movaps	-304(%rbp), %xmm2       # 16-byte Reload
	movaps	%xmm2, -128(%rbp)
	movaps	-288(%rbp), %xmm3       # 16-byte Reload
	movaps	%xmm3, -112(%rbp)
	movaps	-272(%rbp), %xmm4       # 16-byte Reload
	movaps	%xmm4, -96(%rbp)
	movaps	-256(%rbp), %xmm5       # 16-byte Reload
	movaps	%xmm5, -80(%rbp)
	movaps	-240(%rbp), %xmm6       # 16-byte Reload
	movaps	%xmm6, -64(%rbp)
	movaps	-224(%rbp), %xmm7       # 16-byte Reload
	movaps	%xmm7, -48(%rbp)
.LBB10_2:                               # %entry
	movq	-352(%rbp), %rax        # 8-byte Reload
	movq	%rax, -168(%rbp)
	movq	-360(%rbp), %rcx        # 8-byte Reload
	movq	%rcx, -176(%rbp)
	movq	-368(%rbp), %rdx        # 8-byte Reload
	movq	%rdx, -184(%rbp)
	movq	-376(%rbp), %rsi        # 8-byte Reload
	movq	%rsi, -192(%rbp)
	movq	-384(%rbp), %rdi        # 8-byte Reload
	movq	%rdi, -200(%rbp)
	movq	-344(%rbp), %r8         # 8-byte Reload
	movq	%r8, -8(%rbp)
	leaq	-208(%rbp), %r8
	movq	%r8, -16(%rbp)
	leaq	16(%rbp), %r8
	movq	%r8, -24(%rbp)
	movl	$48, -28(%rbp)
	movl	$8, -32(%rbp)
	movq	-8(%rbp), %rdx
	xorl	%r9d, %r9d
	movl	%r9d, %edi
	movl	$32, %esi
	leaq	-32(%rbp), %rcx
	callq	g_logv
	addq	$384, %rsp              # imm = 0x180
	popq	%rbp
	retq
.Lfunc_end10:
	.size	g_message, .Lfunc_end10-g_message
	.cfi_endproc

	.align	16, 0x90
	.type	sel2path_dialog,@function
sel2path_dialog:                        # @sel2path_dialog
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
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$184, %rsp
.Ltmp39:
	.cfi_offset %rbx, -40
.Ltmp40:
	.cfi_offset %r14, -32
.Ltmp41:
	.cfi_offset %r15, -24
	movabsq	$.L.str.58, %rax
	xorl	%esi, %esi
	movq	%rdi, -32(%rbp)
	movl	$0, retVal
	movq	%rax, %rdi
	callq	gimp_ui_init
	movabsq	$.L.str.59, %rdi
	callq	gettext
	movabsq	$.L.str.60, %rsi
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	xorl	%ecx, %ecx
	movabsq	$gimp_standard_help_func, %r8
	movabsq	$.L.str.52, %r9
	movabsq	$.L.str.61, %rdi
	movl	$1, %r10d
	movabsq	$.L.str.62, %r11
	movl	$4294967290, %ebx       # imm = 0xFFFFFFFA
	movabsq	$.L.str.63, %r14
	movl	$4294967291, %r15d      # imm = 0xFFFFFFFB
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)
	movl	$1, 8(%rsp)
	movq	%r11, 16(%rsp)
	movl	$-6, 24(%rsp)
	movq	%r14, 32(%rsp)
	movl	$-5, 40(%rsp)
	movq	$0, 48(%rsp)
	movb	$0, %al
	movl	%r15d, -60(%rbp)        # 4-byte Spill
	movl	%ebx, -64(%rbp)         # 4-byte Spill
	movl	%r10d, -68(%rbp)        # 4-byte Spill
	callq	gimp_dialog_new
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %esi
	movl	$4294967291, %edx       # imm = 0xFFFFFFFB
	movl	$4294967290, %ecx       # imm = 0xFFFFFFFA
	movl	$4294967295, %r8d       # imm = 0xFFFFFFFF
	movq	%rax, %rdi
	movb	$0, %al
	callq	gtk_dialog_set_alternative_button_order
	movq	-40(%rbp), %rdi
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	callq	gtk_window_get_type
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gimp_window_set_transient
	movabsq	$.L.str.64, %rsi
	movabsq	$sel2path_response, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %edi
	xorl	%r9d, %r9d
	movq	-40(%rbp), %r11
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	movq	%r11, %rdi
	movq	%rax, %rdx
	movq	-96(%rbp), %rcx         # 8-byte Reload
	movq	-96(%rbp), %r8          # 8-byte Reload
	callq	g_signal_connect_data
	movabsq	$.L.str.65, %rsi
	movabsq	$gtk_main_quit, %rdx
	xorl	%r9d, %r9d
	movl	%r9d, %ecx
	xorl	%r9d, %r9d
	movq	-40(%rbp), %rdi
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	movq	-104(%rbp), %r8         # 8-byte Reload
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	g_signal_connect_data
	movq	-32(%rbp), %rdi
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	dialog_create_selection_area
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	gtk_container_get_type
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$12, %esi
	movq	%rax, %rdi
	callq	gtk_container_set_border_width
	movq	-40(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	gtk_dialog_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, %rdi
	callq	gtk_dialog_get_content_area
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	gtk_box_get_type
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$1, %r9d
	xorl	%r8d, %r8d
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r9d, %edx
	movl	%r9d, %ecx
	callq	gtk_box_pack_start
	movq	-48(%rbp), %rdi
	callq	gtk_widget_show
	movq	-40(%rbp), %rdi
	callq	gtk_widget_show
	callq	gtk_main
	movl	retVal, %eax
	addq	$184, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end11:
	.size	sel2path_dialog, .Lfunc_end11-sel2path_dialog
	.cfi_endproc

	.align	16, 0x90
	.type	sel2path,@function
sel2path:                               # @sel2path
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
	subq	$128, %rsp
	movabsq	$has_sel, %rsi
	movabsq	$sel_x1, %rdx
	movabsq	$sel_y1, %rcx
	movabsq	$sel_x2, %r8
	movabsq	$sel_y2, %r9
	movl	%edi, -8(%rbp)
	movl	-8(%rbp), %edi
	callq	gimp_selection_bounds
	movl	sel_x2, %edi
	subl	sel_x1, %edi
	movl	%edi, sel_width
	movl	sel_y2, %edi
	subl	sel_y1, %edi
	movl	%edi, sel_height
	movl	-8(%rbp), %edi
	movl	%eax, -92(%rbp)         # 4-byte Spill
	callq	gimp_image_get_selection
	movl	%eax, -12(%rbp)
	cmpl	$0, -12(%rbp)
	jge	.LBB12_2
# BB#1:                                 # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB12_5
.LBB12_2:                               # %if.end
	movl	-12(%rbp), %edi
	callq	gimp_drawable_get
	movq	%rax, -24(%rbp)
	movl	-12(%rbp), %edi
	callq	gimp_drawable_bpp
	cmpl	$1, %eax
	je	.LBB12_4
# BB#3:                                 # %if.then.6
	movabsq	$.L.str.66, %rdi
	movb	$0, %al
	callq	g_warning
	movl	$0, -4(%rbp)
	jmp	.LBB12_5
.LBB12_4:                               # %if.end.7
	movabsq	$selection_rgn, %rdi
	xorl	%eax, %eax
	movq	-24(%rbp), %rsi
	movl	sel_x1, %edx
	movl	sel_y1, %ecx
	movl	sel_width, %r8d
	movl	sel_height, %r9d
	movl	$0, (%rsp)
	movl	$0, 8(%rsp)
	movl	%eax, -96(%rbp)         # 4-byte Spill
	callq	gimp_pixel_rgn_init
	movq	-24(%rbp), %rsi
	movl	4(%rsi), %eax
	movl	%eax, -100(%rbp)        # 4-byte Spill
	callq	gimp_tile_width
	movl	-100(%rbp), %ecx        # 4-byte Reload
	addl	%eax, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	movl	%ecx, -104(%rbp)        # 4-byte Spill
	callq	gimp_tile_width
	movl	-104(%rbp), %ecx        # 4-byte Reload
	movl	%eax, -108(%rbp)        # 4-byte Spill
	movl	%ecx, %eax
	xorl	%edx, %edx
	movl	-108(%rbp), %r8d        # 4-byte Reload
	divl	%r8d
	movl	%eax, %eax
	movl	%eax, %edi
	callq	gimp_tile_cache_ntiles
	callq	find_outline_pixels
	movq	%rax, -72(%rbp)
	movl	%edx, -64(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-40(%rbp), %rdi
	movl	-32(%rbp), %esi
	callq	fitted_splines
	movq	%rax, -88(%rbp)
	movl	%edx, -80(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -48(%rbp)
	movl	-8(%rbp), %edx
	movq	-56(%rbp), %rdi
	movl	-48(%rbp), %esi
	callq	do_points
	movq	-24(%rbp), %rdi
	callq	gimp_drawable_detach
	callq	gimp_displays_flush
	movl	$1, -4(%rbp)
	movl	%eax, -112(%rbp)        # 4-byte Spill
.LBB12_5:                               # %return
	movl	-4(%rbp), %eax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	sel2path, .Lfunc_end12-sel2path
	.cfi_endproc

	.align	16, 0x90
	.type	dialog_print_selVals,@function
dialog_print_selVals:                   # @dialog_print_selVals
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
	movq	%rdi, -8(%rbp)
	popq	%rbp
	retq
.Lfunc_end13:
	.size	dialog_print_selVals, .Lfunc_end13-dialog_print_selVals
	.cfi_endproc

	.align	16, 0x90
	.type	sel2path_response,@function
sel2path_response:                      # @sel2path_response
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
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movl	-12(%rbp), %esi
	movl	%esi, %eax
	subl	$-5, %eax
	movl	%esi, -28(%rbp)         # 4-byte Spill
	movl	%eax, -32(%rbp)         # 4-byte Spill
	je	.LBB14_2
	jmp	.LBB14_5
.LBB14_5:                               # %entry
	movl	-28(%rbp), %eax         # 4-byte Reload
	subl	$1, %eax
	movl	%eax, -36(%rbp)         # 4-byte Spill
	jne	.LBB14_3
	jmp	.LBB14_1
.LBB14_1:                               # %sw.bb
	callq	reset_adv_dialog
	movabsq	$selVals, %rdi
	callq	fit_set_params
	jmp	.LBB14_4
.LBB14_2:                               # %sw.bb.1
	movl	$1, retVal
.LBB14_3:                               # %sw.default
	movq	-8(%rbp), %rdi
	callq	gtk_widget_destroy
.LBB14_4:                               # %sw.epilog
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	sel2path_response, .Lfunc_end14-sel2path_response
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI15_0:
	.quad	4607182418800017408     # double 1
.LCPI15_1:
	.quad	-4616189618054758400    # double -1
	.text
	.align	16, 0x90
	.type	do_points,@function
do_points:                              # @do_points
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
	subq	$176, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -20(%rbp)
	movl	$0, -40(%rbp)
	movl	$0, -32(%rbp)
.LBB15_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-32(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jae	.LBB15_6
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB15_1 Depth=1
	movslq	-32(%rbp), %rax
	shlq	$4, %rax
	addq	-16(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -56(%rbp)
	movq	8(%rax), %rax
	movq	%rax, -48(%rbp)
	cmpl	$2, -48(%rbp)
	jae	.LBB15_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB15_1 Depth=1
	jmp	.LBB15_5
.LBB15_4:                               # %if.end
	movl	$1, -40(%rbp)
	jmp	.LBB15_6
.LBB15_5:                               # %for.inc
                                        #   in Loop: Header=BB15_1 Depth=1
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB15_1
.LBB15_6:                               # %for.end
	cmpl	$0, -40(%rbp)
	jne	.LBB15_8
# BB#7:                                 # %if.then.3
	jmp	.LBB15_25
.LBB15_8:                               # %if.end.4
	movabsq	$.L.str.67, %rdi
	movl	-20(%rbp), %eax
	movl	%eax, -140(%rbp)        # 4-byte Spill
	callq	gettext
	movl	-140(%rbp), %edi        # 4-byte Reload
	movq	%rax, %rsi
	callq	gimp_vectors_new
	movl	%eax, -24(%rbp)
	movl	$0, -36(%rbp)
.LBB15_9:                               # %for.cond.6
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB15_13 Depth 2
	movl	-36(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jae	.LBB15_24
# BB#10:                                # %for.body.9
                                        #   in Loop: Header=BB15_9 Depth=1
	movslq	-36(%rbp), %rax
	shlq	$4, %rax
	addq	-16(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, -56(%rbp)
	movq	8(%rax), %rax
	movq	%rax, -48(%rbp)
	cmpl	$2, -48(%rbp)
	jae	.LBB15_12
# BB#11:                                # %if.then.15
                                        #   in Loop: Header=BB15_9 Depth=1
	jmp	.LBB15_23
.LBB15_12:                              # %if.end.16
                                        #   in Loop: Header=BB15_9 Depth=1
	movl	$80, %eax
	movl	%eax, %edx
	leaq	-136(%rbp), %rcx
	movq	-56(%rbp), %rsi
	movq	%rcx, %rdi
	callq	memcpy
	movl	-24(%rbp), %edi
	movsd	-136(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-128(%rbp), %xmm1       # xmm1 = mem[0],zero
	callq	gimp_vectors_bezier_stroke_new_moveto
	movl	%eax, -28(%rbp)
	movl	$0, -32(%rbp)
.LBB15_13:                              # %for.cond.23
                                        #   Parent Loop BB15_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-32(%rbp), %eax
	cmpl	-48(%rbp), %eax
	jae	.LBB15_22
# BB#14:                                # %for.body.26
                                        #   in Loop: Header=BB15_13 Depth=2
	movl	$80, %eax
	movl	%eax, %edx
	leaq	-136(%rbp), %rcx
	movslq	-32(%rbp), %rsi
	imulq	$80, %rsi, %rsi
	addq	-56(%rbp), %rsi
	movq	%rcx, %rdi
	callq	memcpy
	cmpl	$1, -72(%rbp)
	jne	.LBB15_16
# BB#15:                                # %if.then.31
                                        #   in Loop: Header=BB15_13 Depth=2
	movl	-24(%rbp), %edi
	movl	-28(%rbp), %esi
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-80(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	gimp_vectors_bezier_stroke_lineto
	movl	%eax, -144(%rbp)        # 4-byte Spill
	jmp	.LBB15_20
.LBB15_16:                              # %if.else
                                        #   in Loop: Header=BB15_13 Depth=2
	cmpl	$3, -72(%rbp)
	jne	.LBB15_18
# BB#17:                                # %if.then.41
                                        #   in Loop: Header=BB15_13 Depth=2
	movl	-24(%rbp), %edi
	movl	-28(%rbp), %esi
	movsd	-120(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-112(%rbp), %xmm1       # xmm1 = mem[0],zero
	movsd	-104(%rbp), %xmm2       # xmm2 = mem[0],zero
	movsd	-96(%rbp), %xmm3        # xmm3 = mem[0],zero
	movsd	-88(%rbp), %xmm4        # xmm4 = mem[0],zero
	movsd	-80(%rbp), %xmm5        # xmm5 = mem[0],zero
	callq	gimp_vectors_bezier_stroke_cubicto
	movl	%eax, -148(%rbp)        # 4-byte Spill
	jmp	.LBB15_19
.LBB15_18:                              # %if.else.61
                                        #   in Loop: Header=BB15_13 Depth=2
	movabsq	$.L.str.68, %rdi
	movl	-72(%rbp), %esi
	movb	$0, %al
	callq	g_warning
.LBB15_19:                              # %if.end.63
                                        #   in Loop: Header=BB15_13 Depth=2
	jmp	.LBB15_20
.LBB15_20:                              # %if.end.64
                                        #   in Loop: Header=BB15_13 Depth=2
	jmp	.LBB15_21
.LBB15_21:                              # %for.inc.65
                                        #   in Loop: Header=BB15_13 Depth=2
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB15_13
.LBB15_22:                              # %for.end.67
                                        #   in Loop: Header=BB15_9 Depth=1
	movl	-24(%rbp), %edi
	movl	-28(%rbp), %esi
	callq	gimp_vectors_stroke_close
	movsd	.LCPI15_0, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI15_1, %xmm1        # xmm1 = mem[0],zero
	movl	-24(%rbp), %edi
	movl	-28(%rbp), %esi
	movl	%eax, -152(%rbp)        # 4-byte Spill
	callq	gimp_vectors_stroke_scale
	movl	-24(%rbp), %edi
	movl	-28(%rbp), %esi
	movl	sel_x1, %edx
	movl	sel_y1, %ecx
	addl	sel_height, %ecx
	addl	$1, %ecx
	movl	%eax, -156(%rbp)        # 4-byte Spill
	callq	gimp_vectors_stroke_translate
	movl	%eax, -160(%rbp)        # 4-byte Spill
.LBB15_23:                              # %for.inc.72
                                        #   in Loop: Header=BB15_9 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB15_9
.LBB15_24:                              # %for.end.74
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movl	-20(%rbp), %edi
	movl	-24(%rbp), %esi
	movl	%eax, %edx
	movl	%eax, %ecx
	callq	gimp_image_insert_vectors
	movl	%eax, -164(%rbp)        # 4-byte Spill
.LBB15_25:                              # %return
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	do_points, .Lfunc_end15-do_points
	.cfi_endproc

	.type	PLUG_IN_INFO,@object    # @PLUG_IN_INFO
	.section	.rodata,"a",@progbits
	.globl	PLUG_IN_INFO
	.align	8
PLUG_IN_INFO:
	.quad	0
	.quad	0
	.quad	query
	.quad	run
	.size	PLUG_IN_INFO, 32

	.type	sel_width,@object       # @sel_width
	.local	sel_width
	.comm	sel_width,4,4
	.type	sel_height,@object      # @sel_height
	.local	sel_height
	.comm	sel_height,4,4
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"sel_pixel_value [%d,%d] out of bounds"
	.size	.L.str, 38

	.type	selection_rgn,@object   # @selection_rgn
	.local	selection_rgn
	.comm	selection_rgn,48,8
	.type	sel_x1,@object          # @sel_x1
	.local	sel_x1
	.comm	sel_x1,4,4
	.type	sel_y1,@object          # @sel_y1
	.local	sel_y1
	.comm	sel_y1,4,4
	.type	query.args,@object      # @query.args
	.section	.rodata,"a",@progbits
	.align	16
query.args:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.1
	.quad	.L.str.2
	.long	13                      # 0xd
	.zero	4
	.quad	.L.str.3
	.quad	.L.str.4
	.long	16                      # 0x10
	.zero	4
	.quad	.L.str.5
	.quad	.L.str.6
	.size	query.args, 72

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"run-mode"
	.size	.L.str.1, 9

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"The run mode { RUN-INTERACTIVE (0), RUN-NONINTERACTIVE (1) }"
	.size	.L.str.2, 61

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"image"
	.size	.L.str.3, 6

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"Input image"
	.size	.L.str.4, 12

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"drawable"
	.size	.L.str.5, 9

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"Input drawable (unused)"
	.size	.L.str.6, 24

	.type	query.advanced_args,@object # @query.advanced_args
	.section	.rodata,"a",@progbits
	.align	16
query.advanced_args:
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.1
	.quad	.L.str.2
	.long	13                      # 0xd
	.zero	4
	.quad	.L.str.3
	.quad	.L.str.4
	.long	16                      # 0x10
	.zero	4
	.quad	.L.str.5
	.quad	.L.str.6
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.7
	.quad	.L.str.8
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.9
	.quad	.L.str.10
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.11
	.quad	.L.str.12
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.13
	.quad	.L.str.14
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.15
	.quad	.L.str.16
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.17
	.quad	.L.str.18
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.19
	.quad	.L.str.20
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.21
	.quad	.L.str.22
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.23
	.quad	.L.str.24
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.25
	.quad	.L.str.26
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.27
	.quad	.L.str.28
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.29
	.quad	.L.str.30
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.31
	.quad	.L.str.32
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.33
	.quad	.L.str.34
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.35
	.quad	.L.str.36
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.37
	.quad	.L.str.38
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.39
	.quad	.L.str.40
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.41
	.quad	.L.str.42
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.43
	.quad	.L.str.44
	.long	2                       # 0x2
	.zero	4
	.quad	.L.str.45
	.quad	.L.str.46
	.size	query.advanced_args, 552

	.type	.L.str.7,@object        # @.str.7
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.7:
	.asciz	"align-threshold"
	.size	.L.str.7, 16

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"align_threshold"
	.size	.L.str.8, 16

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"corner-always-threshold"
	.size	.L.str.9, 24

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"corner_always_threshold"
	.size	.L.str.10, 24

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"corner-surround"
	.size	.L.str.11, 16

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"corner_surround"
	.size	.L.str.12, 16

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"corner-threshold"
	.size	.L.str.13, 17

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"corner_threshold"
	.size	.L.str.14, 17

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"error-threshold"
	.size	.L.str.15, 16

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"error_threshold"
	.size	.L.str.16, 16

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"filter-alternative-surround"
	.size	.L.str.17, 28

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"filter_alternative_surround"
	.size	.L.str.18, 28

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"filter-epsilon"
	.size	.L.str.19, 15

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"filter_epsilon"
	.size	.L.str.20, 15

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"filter-iteration-count"
	.size	.L.str.21, 23

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"filter_iteration_count"
	.size	.L.str.22, 23

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"filter-percent"
	.size	.L.str.23, 15

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"filter_percent"
	.size	.L.str.24, 15

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"filter-secondary-surround"
	.size	.L.str.25, 26

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"filter_secondary_surround"
	.size	.L.str.26, 26

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"filter-surround"
	.size	.L.str.27, 16

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"filter_surround"
	.size	.L.str.28, 16

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"keep-knees"
	.size	.L.str.29, 11

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"{1-Yes, 0-No}"
	.size	.L.str.30, 14

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"line-reversion-threshold"
	.size	.L.str.31, 25

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"line_reversion_threshold"
	.size	.L.str.32, 25

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"line-threshold"
	.size	.L.str.33, 15

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"line_threshold"
	.size	.L.str.34, 15

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"reparameterize-improvement"
	.size	.L.str.35, 27

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"reparameterize_improvement"
	.size	.L.str.36, 27

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"reparameterize-threshold"
	.size	.L.str.37, 25

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"reparameterize_threshold"
	.size	.L.str.38, 25

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"subdivide-search"
	.size	.L.str.39, 17

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"subdivide_search"
	.size	.L.str.40, 17

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"subdivide-surround"
	.size	.L.str.41, 19

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"subdivide_surround"
	.size	.L.str.42, 19

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"subdivide-threshold"
	.size	.L.str.43, 20

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"subdivide_threshold"
	.size	.L.str.44, 20

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"tangent-surround"
	.size	.L.str.45, 17

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"tangent_surround"
	.size	.L.str.46, 17

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"plug-in-sel2path"
	.size	.L.str.47, 17

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"Converts a selection to a path"
	.size	.L.str.48, 31

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"Andy Thomas"
	.size	.L.str.49, 12

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"1999"
	.size	.L.str.50, 5

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"RGB*, INDEXED*, GRAY*"
	.size	.L.str.51, 22

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"plug-in-sel2path-advanced"
	.size	.L.str.52, 26

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"Converts a selection to a path (with advanced user menu)"
	.size	.L.str.53, 57

	.type	run.values,@object      # @run.values
	.local	run.values
	.comm	run.values,40,16
	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"gimp20-std-plug-ins"
	.size	.L.str.54, 20

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"UTF-8"
	.size	.L.str.55, 6

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"plug-in-sel2path needs a valid image ID"
	.size	.L.str.56, 40

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"No selection to convert"
	.size	.L.str.57, 24

	.type	selVals,@object         # @selVals
	.local	selVals
	.comm	selVals,160,8
	.type	retVal,@object          # @retVal
	.data
	.align	4
retVal:
	.long	1                       # 0x1
	.size	retVal, 4

	.type	.L.str.58,@object       # @.str.58
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.58:
	.asciz	"selection-to-path"
	.size	.L.str.58, 18

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"Selection to Path Advanced Settings"
	.size	.L.str.59, 36

	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	"gimp-selection-to-path"
	.size	.L.str.60, 23

	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.asciz	"gimp-reset"
	.size	.L.str.61, 11

	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	"gtk-cancel"
	.size	.L.str.62, 11

	.type	.L.str.63,@object       # @.str.63
.L.str.63:
	.asciz	"gtk-ok"
	.size	.L.str.63, 7

	.type	.L.str.64,@object       # @.str.64
.L.str.64:
	.asciz	"response"
	.size	.L.str.64, 9

	.type	.L.str.65,@object       # @.str.65
.L.str.65:
	.asciz	"destroy"
	.size	.L.str.65, 8

	.type	has_sel,@object         # @has_sel
	.local	has_sel
	.comm	has_sel,4,4
	.type	sel_x2,@object          # @sel_x2
	.local	sel_x2
	.comm	sel_x2,4,4
	.type	sel_y2,@object          # @sel_y2
	.local	sel_y2
	.comm	sel_y2,4,4
	.type	.L.str.66,@object       # @.str.66
.L.str.66:
	.asciz	"Internal error. Selection bpp > 1"
	.size	.L.str.66, 34

	.type	.L.str.67,@object       # @.str.67
.L.str.67:
	.asciz	"Selection"
	.size	.L.str.67, 10

	.type	.L.str.68,@object       # @.str.68
.L.str.68:
	.asciz	"print_spline: strange degree (%d)"
	.size	.L.str.68, 34


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
