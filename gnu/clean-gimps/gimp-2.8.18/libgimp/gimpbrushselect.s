	.text
	.file	"gimpbrushselect.bc"
	.globl	gimp_brush_select_new
	.align	16, 0x90
	.type	gimp_brush_select_new,@function
gimp_brush_select_new:                  # @gimp_brush_select_new
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
	pushq	%rbx
	subq	$184, %rsp
.Ltmp3:
	.cfi_offset %rbx, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movsd	%xmm0, -40(%rbp)
	movl	%edx, -44(%rbp)
	movl	%ecx, -48(%rbp)
	movq	%r8, -56(%rbp)
	movq	%r9, -64(%rbp)
	callq	gimp_procedural_db_temp_name@PLT
	leaq	.L.str.17(%rip), %rsi
	leaq	.L.str.18(%rip), %rdi
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movl	$3, %ecx
	movl	$9, %edx
	xorl	%r10d, %r10d
	leaq	gimp_brush_select_new.args(%rip), %r9
	leaq	gimp_temp_brush_run(%rip), %r11
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-88(%rbp), %rax         # 8-byte Reload
	movl	%edx, -92(%rbp)         # 4-byte Spill
	movq	%rax, %rdx
	movl	%ecx, -96(%rbp)         # 4-byte Spill
	movq	%rax, %rcx
	movq	%r8, -104(%rbp)         # 8-byte Spill
	movq	%rax, %r8
	movq	%r9, -112(%rbp)         # 8-byte Spill
	movq	%rax, %r9
	movq	$0, (%rsp)
	movq	%rax, 8(%rsp)
	movl	$3, 16(%rsp)
	movl	$9, 24(%rsp)
	movl	$0, 32(%rsp)
	movq	-112(%rbp), %rbx        # 8-byte Reload
	movq	%rbx, 40(%rsp)
	movq	$0, 48(%rsp)
	movq	%r11, 56(%rsp)
	movl	%r10d, -116(%rbp)       # 4-byte Spill
	callq	gimp_install_temp_proc@PLT
	movq	-72(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movl	-44(%rbp), %ecx
	movl	-48(%rbp), %r8d
	callq	gimp_brushes_popup@PLT
	cmpl	$0, %eax
	je	.LBB0_4
# BB#1:                                 # %if.then
	callq	gimp_extension_enable@PLT
	cmpq	$0, gimp_brush_select_ht(%rip)
	jne	.LBB0_3
# BB#2:                                 # %if.then.3
	movq	g_str_hash@GOTPCREL(%rip), %rdi
	movq	g_str_equal@GOTPCREL(%rip), %rsi
	movq	g_free@GOTPCREL(%rip), %rdx
	leaq	gimp_brush_data_free(%rip), %rax
	movq	%rax, %rcx
	callq	g_hash_table_new_full@PLT
	movq	%rax, gimp_brush_select_ht(%rip)
.LBB0_3:                                # %if.end
	movl	$80, %eax
	movl	%eax, %edi
	callq	g_slice_alloc0@PLT
	movq	%rax, -80(%rbp)
	movq	-72(%rbp), %rax
	movq	-80(%rbp), %rdi
	movq	%rax, (%rdi)
	movq	-56(%rbp), %rax
	movq	-80(%rbp), %rdi
	movq	%rax, 56(%rdi)
	movq	-64(%rbp), %rax
	movq	-80(%rbp), %rdi
	movq	%rax, 72(%rdi)
	movq	gimp_brush_select_ht(%rip), %rdi
	movq	-72(%rbp), %rsi
	movq	-80(%rbp), %rax
	movq	%rax, %rdx
	callq	g_hash_table_insert@PLT
	movq	-72(%rbp), %rdx
	movq	%rdx, -16(%rbp)
	movl	%eax, -120(%rbp)        # 4-byte Spill
	jmp	.LBB0_5
.LBB0_4:                                # %if.end.10
	movq	-72(%rbp), %rdi
	callq	gimp_uninstall_temp_proc@PLT
	movq	-72(%rbp), %rdi
	callq	g_free@PLT
	movq	$0, -16(%rbp)
.LBB0_5:                                # %return
	movq	-16(%rbp), %rax
	addq	$184, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_brush_select_new, .Lfunc_end0-gimp_brush_select_new
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_temp_brush_run,@function
gimp_temp_brush_run:                    # @gimp_temp_brush_run
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp4:
	.cfi_def_cfa_offset 16
.Ltmp5:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp6:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	gimp_brush_select_ht(%rip), %rdi
	movq	-8(%rbp), %rsi
	callq	g_hash_table_lookup@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB1_2
# BB#1:                                 # %if.then
	leaq	.L.str.22(%rip), %rdi
	movb	$0, %al
	callq	g_warning
	jmp	.LBB1_5
.LBB1_2:                                # %if.else
	movq	-48(%rbp), %rax
	movq	16(%rax), %rdi
	callq	g_free@PLT
	movq	-48(%rbp), %rax
	movq	48(%rax), %rdi
	callq	g_free@PLT
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdi
	callq	g_strdup@PLT
	movq	-48(%rbp), %rdi
	movq	%rax, 16(%rdi)
	movq	-24(%rbp), %rax
	movsd	48(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-48(%rbp), %rax
	movsd	%xmm0, 24(%rax)
	movq	-24(%rbp), %rax
	movl	88(%rax), %ecx
	movq	-48(%rbp), %rax
	movl	%ecx, 32(%rax)
	movq	-24(%rbp), %rax
	movl	128(%rax), %ecx
	movq	-48(%rbp), %rax
	movl	%ecx, 36(%rax)
	movq	-24(%rbp), %rax
	movl	168(%rax), %ecx
	movq	-48(%rbp), %rax
	movl	%ecx, 40(%rax)
	movq	-24(%rbp), %rax
	movl	208(%rax), %ecx
	movq	-48(%rbp), %rax
	movl	%ecx, 44(%rax)
	movq	-24(%rbp), %rax
	movq	288(%rax), %rdi
	movq	-24(%rbp), %rax
	movl	248(%rax), %esi
	callq	g_memdup@PLT
	movq	-48(%rbp), %rdi
	movq	%rax, 48(%rdi)
	movq	-24(%rbp), %rax
	movl	328(%rax), %ecx
	movq	-48(%rbp), %rax
	movl	%ecx, 64(%rax)
	movq	-48(%rbp), %rax
	cmpl	$0, 8(%rax)
	jne	.LBB1_4
# BB#3:                                 # %if.then.27
	leaq	gimp_temp_brush_run_idle(%rip), %rax
	movq	-48(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	g_idle_add@PLT
	movq	-48(%rbp), %rcx
	movl	%eax, 8(%rcx)
.LBB1_4:                                # %if.end
	jmp	.LBB1_5
.LBB1_5:                                # %if.end.30
	leaq	gimp_temp_brush_run.values(%rip), %rax
	movq	-32(%rbp), %rcx
	movl	$1, (%rcx)
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	movl	$21, gimp_temp_brush_run.values(%rip)
	movl	$3, gimp_temp_brush_run.values+8(%rip)
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_temp_brush_run, .Lfunc_end1-gimp_temp_brush_run
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_brush_data_free,@function
gimp_brush_data_free:                   # @gimp_brush_data_free
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp7:
	.cfi_def_cfa_offset 16
.Ltmp8:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp9:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movl	$80, %eax
	movl	%eax, %edi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rsi
	callq	g_slice_free1@PLT
# BB#2:                                 # %do.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_brush_data_free, .Lfunc_end2-gimp_brush_data_free
	.cfi_endproc

	.globl	gimp_brush_select_destroy
	.align	16, 0x90
	.type	gimp_brush_select_destroy,@function
gimp_brush_select_destroy:              # @gimp_brush_select_destroy
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp10:
	.cfi_def_cfa_offset 16
.Ltmp11:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp12:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -8(%rbp)
	je	.LBB3_3
# BB#2:                                 # %if.then
	jmp	.LBB3_4
.LBB3_3:                                # %if.else
	leaq	.L.str.19(%rip), %rdi
	leaq	.L__func__.gimp_brush_select_destroy(%rip), %rsi
	leaq	.L.str.20(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB3_17
.LBB3_4:                                # %if.end
	jmp	.LBB3_5
.LBB3_5:                                # %do.end
	jmp	.LBB3_6
.LBB3_6:                                # %do.body.1
	cmpq	$0, gimp_brush_select_ht(%rip)
	je	.LBB3_8
# BB#7:                                 # %if.then.3
	jmp	.LBB3_9
.LBB3_8:                                # %if.else.4
	leaq	.L.str.19(%rip), %rdi
	leaq	.L__func__.gimp_brush_select_destroy(%rip), %rsi
	leaq	.L.str.21(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB3_17
.LBB3_9:                                # %if.end.5
	jmp	.LBB3_10
.LBB3_10:                               # %do.end.6
	movq	gimp_brush_select_ht(%rip), %rdi
	movq	-8(%rbp), %rsi
	callq	g_hash_table_lookup@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB3_12
# BB#11:                                # %if.then.7
	leaq	.L.str.22(%rip), %rdi
	movb	$0, %al
	callq	g_warning
	jmp	.LBB3_17
.LBB3_12:                               # %if.end.8
	movq	-16(%rbp), %rax
	cmpl	$0, 8(%rax)
	je	.LBB3_14
# BB#13:                                # %if.then.10
	movq	-16(%rbp), %rax
	movl	8(%rax), %edi
	callq	g_source_remove@PLT
	movl	%eax, -20(%rbp)         # 4-byte Spill
.LBB3_14:                               # %if.end.13
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	callq	g_free@PLT
	movq	-16(%rbp), %rax
	movq	48(%rax), %rdi
	callq	g_free@PLT
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB3_16
# BB#15:                                # %if.then.16
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	callq	gimp_brushes_close_popup@PLT
	movl	%eax, -24(%rbp)         # 4-byte Spill
.LBB3_16:                               # %if.end.19
	movq	-8(%rbp), %rdi
	callq	gimp_uninstall_temp_proc@PLT
	movq	gimp_brush_select_ht(%rip), %rdi
	movq	-8(%rbp), %rsi
	callq	g_hash_table_remove@PLT
	movl	%eax, -28(%rbp)         # 4-byte Spill
.LBB3_17:                               # %return
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_brush_select_destroy, .Lfunc_end3-gimp_brush_select_destroy
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp13:
	.cfi_def_cfa_offset 16
.Ltmp14:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp15:
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
	leaq	.L.str.19(%rip), %rdi
	movl	$16, %esi
	leaq	-32(%rbp), %rcx
	callq	g_logv@PLT
	addq	$384, %rsp              # imm = 0x180
	popq	%rbp
	retq
.Lfunc_end4:
	.size	g_warning, .Lfunc_end4-g_warning
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_temp_brush_run_idle,@function
gimp_temp_brush_run_idle:               # @gimp_temp_brush_run_idle
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp16:
	.cfi_def_cfa_offset 16
.Ltmp17:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp18:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movl	$0, 8(%rdi)
	movq	-8(%rbp), %rdi
	cmpq	$0, 56(%rdi)
	je	.LBB5_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	56(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	16(%rcx), %rdi
	movq	-8(%rbp), %rcx
	movsd	24(%rcx), %xmm0         # xmm0 = mem[0],zero
	movq	-8(%rbp), %rcx
	movl	32(%rcx), %esi
	movq	-8(%rbp), %rcx
	movl	36(%rcx), %edx
	movq	-8(%rbp), %rcx
	movl	40(%rcx), %ecx
	movq	-8(%rbp), %r8
	movl	44(%r8), %r8d
	movq	-8(%rbp), %r9
	movq	48(%r9), %r9
	movq	-8(%rbp), %r10
	movl	64(%r10), %r11d
	movq	-8(%rbp), %r10
	movq	72(%r10), %r10
	movl	%r11d, (%rsp)
	movq	%r10, 8(%rsp)
	callq	*%rax
.LBB5_2:                                # %if.end
	movq	-8(%rbp), %rax
	cmpl	$0, 64(%rax)
	je	.LBB5_4
# BB#3:                                 # %if.then.4
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	movq	-16(%rbp), %rdi
	callq	gimp_brush_select_destroy@PLT
.LBB5_4:                                # %if.end.7
	xorl	%eax, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_temp_brush_run_idle, .Lfunc_end5-gimp_temp_brush_run_idle
	.cfi_endproc

	.type	gimp_brush_select_new.args,@object # @gimp_brush_select_new.args
	.section	.data.rel.ro.local,"aw",@progbits
	.align	16
gimp_brush_select_new.args:
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str
	.quad	.L.str.1
	.long	3                       # 0x3
	.zero	4
	.quad	.L.str.2
	.quad	.L.str.3
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.4
	.quad	.L.str.5
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.6
	.quad	.L.str.7
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.8
	.quad	.L.str.9
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.10
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.11
	.quad	.L.str.12
	.long	7                       # 0x7
	.zero	4
	.quad	.L.str.13
	.quad	.L.str.14
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.15
	.quad	.L.str.16
	.size	gimp_brush_select_new.args, 216

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"str"
	.size	.L.str, 4

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"String"
	.size	.L.str.1, 7

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"opacity"
	.size	.L.str.2, 8

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Opacity"
	.size	.L.str.3, 8

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"spacing"
	.size	.L.str.4, 8

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"Spacing"
	.size	.L.str.5, 8

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"paint mode"
	.size	.L.str.6, 11

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Paint mode"
	.size	.L.str.7, 11

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"mask width"
	.size	.L.str.8, 11

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Brush width"
	.size	.L.str.9, 12

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"mask heightBrush heigth"
	.size	.L.str.10, 24

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"mask len"
	.size	.L.str.11, 9

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"Length of brush mask data"
	.size	.L.str.12, 26

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"mask data"
	.size	.L.str.13, 10

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"The brush mask data"
	.size	.L.str.14, 20

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"dialog status"
	.size	.L.str.15, 14

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"If the dialog was closing [0 = No, 1 = Yes]"
	.size	.L.str.16, 44

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"Temporary brush popup callback procedure"
	.size	.L.str.17, 41

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.zero	1
	.size	.L.str.18, 1

	.type	gimp_brush_select_ht,@object # @gimp_brush_select_ht
	.local	gimp_brush_select_ht
	.comm	gimp_brush_select_ht,8,8
	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"LibGimp"
	.size	.L.str.19, 8

	.type	.L__func__.gimp_brush_select_destroy,@object # @__func__.gimp_brush_select_destroy
.L__func__.gimp_brush_select_destroy:
	.asciz	"gimp_brush_select_destroy"
	.size	.L__func__.gimp_brush_select_destroy, 26

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"brush_callback != NULL"
	.size	.L.str.20, 23

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"gimp_brush_select_ht != NULL"
	.size	.L.str.21, 29

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"Can't find internal brush data"
	.size	.L.str.22, 31

	.type	gimp_temp_brush_run.values,@object # @gimp_temp_brush_run.values
	.local	gimp_temp_brush_run.values
	.comm	gimp_temp_brush_run.values,40,16

	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
