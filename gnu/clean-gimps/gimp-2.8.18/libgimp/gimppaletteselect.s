	.text
	.file	"gimppaletteselect.bc"
	.globl	gimp_palette_select_new
	.align	16, 0x90
	.type	gimp_palette_select_new,@function
gimp_palette_select_new:                # @gimp_palette_select_new
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
	subq	$160, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	callq	gimp_procedural_db_temp_name@PLT
	leaq	.L.str.6(%rip), %rsi
	leaq	.L.str.7(%rip), %rcx
	xorl	%r8d, %r8d
	movl	%r8d, %edx
	movl	$3, %r8d
	xorl	%r9d, %r9d
	leaq	gimp_palette_select_new.args(%rip), %rdi
	leaq	gimp_temp_palette_run(%rip), %r10
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	%rdx, -72(%rbp)         # 8-byte Spill
	movq	%rcx, %rdx
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	movq	-80(%rbp), %rax         # 8-byte Reload
	movl	%r8d, -84(%rbp)         # 4-byte Spill
	movq	%rax, %r8
	movl	%r9d, -88(%rbp)         # 4-byte Spill
	movq	%rax, %r9
	movq	$0, (%rsp)
	movq	%rax, 8(%rsp)
	movl	$3, 16(%rsp)
	movl	$3, 24(%rsp)
	movl	$0, 32(%rsp)
	movq	-64(%rbp), %r11         # 8-byte Reload
	movq	%r11, 40(%rsp)
	movq	$0, 48(%rsp)
	movq	%r10, 56(%rsp)
	callq	gimp_install_temp_proc@PLT
	movq	-48(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	gimp_palettes_popup@PLT
	cmpl	$0, %eax
	je	.LBB0_4
# BB#1:                                 # %if.then
	callq	gimp_extension_enable@PLT
	cmpq	$0, gimp_palette_select_ht(%rip)
	jne	.LBB0_3
# BB#2:                                 # %if.then.3
	movq	g_str_hash@GOTPCREL(%rip), %rdi
	movq	g_str_equal@GOTPCREL(%rip), %rsi
	movq	g_free@GOTPCREL(%rip), %rdx
	leaq	gimp_palette_data_free(%rip), %rax
	movq	%rax, %rcx
	callq	g_hash_table_new_full@PLT
	movq	%rax, gimp_palette_select_ht(%rip)
.LBB0_3:                                # %if.end
	movl	$56, %eax
	movl	%eax, %edi
	callq	g_slice_alloc0@PLT
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rax
	movq	-56(%rbp), %rdi
	movq	%rax, (%rdi)
	movq	-32(%rbp), %rax
	movq	-56(%rbp), %rdi
	movq	%rax, 32(%rdi)
	movq	-40(%rbp), %rax
	movq	-56(%rbp), %rdi
	movq	%rax, 48(%rdi)
	movq	gimp_palette_select_ht(%rip), %rdi
	movq	-48(%rbp), %rsi
	movq	-56(%rbp), %rax
	movq	%rax, %rdx
	callq	g_hash_table_insert@PLT
	movq	-48(%rbp), %rdx
	movq	%rdx, -8(%rbp)
	movl	%eax, -92(%rbp)         # 4-byte Spill
	jmp	.LBB0_5
.LBB0_4:                                # %if.end.10
	movq	-48(%rbp), %rdi
	callq	gimp_uninstall_temp_proc@PLT
	movq	-48(%rbp), %rdi
	callq	g_free@PLT
	movq	$0, -8(%rbp)
.LBB0_5:                                # %return
	movq	-8(%rbp), %rax
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_palette_select_new, .Lfunc_end0-gimp_palette_select_new
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_temp_palette_run,@function
gimp_temp_palette_run:                  # @gimp_temp_palette_run
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
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	%r8, -40(%rbp)
	movq	gimp_palette_select_ht(%rip), %rdi
	movq	-8(%rbp), %rsi
	callq	g_hash_table_lookup@PLT
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	.LBB1_2
# BB#1:                                 # %if.then
	leaq	.L.str.11(%rip), %rdi
	movb	$0, %al
	callq	g_warning
	jmp	.LBB1_5
.LBB1_2:                                # %if.else
	movq	-48(%rbp), %rax
	movq	16(%rax), %rdi
	callq	g_free@PLT
	movq	-24(%rbp), %rax
	movq	8(%rax), %rdi
	callq	g_strdup@PLT
	movq	-48(%rbp), %rdi
	movq	%rax, 16(%rdi)
	movq	-24(%rbp), %rax
	movl	48(%rax), %ecx
	movq	-48(%rbp), %rax
	movl	%ecx, 24(%rax)
	movq	-24(%rbp), %rax
	movl	88(%rax), %ecx
	movq	-48(%rbp), %rax
	movl	%ecx, 40(%rax)
	movq	-48(%rbp), %rax
	cmpl	$0, 8(%rax)
	jne	.LBB1_4
# BB#3:                                 # %if.then.9
	leaq	gimp_temp_palette_run_idle(%rip), %rax
	movq	-48(%rbp), %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	g_idle_add@PLT
	movq	-48(%rbp), %rcx
	movl	%eax, 8(%rcx)
.LBB1_4:                                # %if.end
	jmp	.LBB1_5
.LBB1_5:                                # %if.end.12
	leaq	gimp_temp_palette_run.values(%rip), %rax
	movq	-32(%rbp), %rcx
	movl	$1, (%rcx)
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	movl	$21, gimp_temp_palette_run.values(%rip)
	movl	$3, gimp_temp_palette_run.values+8(%rip)
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_temp_palette_run, .Lfunc_end1-gimp_temp_palette_run
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_palette_data_free,@function
gimp_palette_data_free:                 # @gimp_palette_data_free
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
# BB#1:                                 # %do.body
	movl	$56, %eax
	movl	%eax, %edi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rsi
	callq	g_slice_free1@PLT
# BB#2:                                 # %do.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_palette_data_free, .Lfunc_end2-gimp_palette_data_free
	.cfi_endproc

	.globl	gimp_palette_select_destroy
	.align	16, 0x90
	.type	gimp_palette_select_destroy,@function
gimp_palette_select_destroy:            # @gimp_palette_select_destroy
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
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -8(%rbp)
	je	.LBB3_3
# BB#2:                                 # %if.then
	jmp	.LBB3_4
.LBB3_3:                                # %if.else
	leaq	.L.str.8(%rip), %rdi
	leaq	.L__func__.gimp_palette_select_destroy(%rip), %rsi
	leaq	.L.str.9(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB3_17
.LBB3_4:                                # %if.end
	jmp	.LBB3_5
.LBB3_5:                                # %do.end
	jmp	.LBB3_6
.LBB3_6:                                # %do.body.1
	cmpq	$0, gimp_palette_select_ht(%rip)
	je	.LBB3_8
# BB#7:                                 # %if.then.3
	jmp	.LBB3_9
.LBB3_8:                                # %if.else.4
	leaq	.L.str.8(%rip), %rdi
	leaq	.L__func__.gimp_palette_select_destroy(%rip), %rsi
	leaq	.L.str.10(%rip), %rdx
	callq	g_return_if_fail_warning@PLT
	jmp	.LBB3_17
.LBB3_9:                                # %if.end.5
	jmp	.LBB3_10
.LBB3_10:                               # %do.end.6
	movq	gimp_palette_select_ht(%rip), %rdi
	movq	-8(%rbp), %rsi
	callq	g_hash_table_lookup@PLT
	movq	%rax, -16(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB3_12
# BB#11:                                # %if.then.7
	leaq	.L.str.11(%rip), %rdi
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
	cmpq	$0, (%rax)
	je	.LBB3_16
# BB#15:                                # %if.then.16
	movq	-16(%rbp), %rax
	movq	(%rax), %rdi
	callq	gimp_palettes_close_popup@PLT
	movl	%eax, -24(%rbp)         # 4-byte Spill
.LBB3_16:                               # %if.end.19
	movq	-8(%rbp), %rdi
	callq	gimp_uninstall_temp_proc@PLT
	movq	gimp_palette_select_ht(%rip), %rdi
	movq	-8(%rbp), %rsi
	callq	g_hash_table_remove@PLT
	movl	%eax, -28(%rbp)         # 4-byte Spill
.LBB3_17:                               # %return
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_palette_select_destroy, .Lfunc_end3-gimp_palette_select_destroy
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
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
	leaq	.L.str.8(%rip), %rdi
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
	.type	gimp_temp_palette_run_idle,@function
gimp_temp_palette_run_idle:             # @gimp_temp_palette_run_idle
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
	movl	$0, 8(%rdi)
	movq	-8(%rbp), %rdi
	cmpq	$0, 32(%rdi)
	je	.LBB5_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	16(%rcx), %rdi
	movq	-8(%rbp), %rcx
	movl	40(%rcx), %esi
	movq	-8(%rbp), %rcx
	movq	48(%rcx), %rdx
	callq	*%rax
.LBB5_2:                                # %if.end
	movq	-8(%rbp), %rax
	cmpl	$0, 40(%rax)
	je	.LBB5_4
# BB#3:                                 # %if.then.4
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	movq	-16(%rbp), %rdi
	callq	gimp_palette_select_destroy@PLT
.LBB5_4:                                # %if.end.7
	xorl	%eax, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_temp_palette_run_idle, .Lfunc_end5-gimp_temp_palette_run_idle
	.cfi_endproc

	.type	gimp_palette_select_new.args,@object # @gimp_palette_select_new.args
	.section	.data.rel.ro.local,"aw",@progbits
	.align	16
gimp_palette_select_new.args:
	.long	4                       # 0x4
	.zero	4
	.quad	.L.str
	.quad	.L.str.1
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.2
	.quad	.L.str.3
	.long	0                       # 0x0
	.zero	4
	.quad	.L.str.4
	.quad	.L.str.5
	.size	gimp_palette_select_new.args, 72

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
	.asciz	"num colors"
	.size	.L.str.2, 11

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Number of colors"
	.size	.L.str.3, 17

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"dialog status"
	.size	.L.str.4, 14

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"If the dialog was closing [0 = No, 1 = Yes]"
	.size	.L.str.5, 44

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"Temporary palette popup callback procedure"
	.size	.L.str.6, 43

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.zero	1
	.size	.L.str.7, 1

	.type	gimp_palette_select_ht,@object # @gimp_palette_select_ht
	.local	gimp_palette_select_ht
	.comm	gimp_palette_select_ht,8,8
	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"LibGimp"
	.size	.L.str.8, 8

	.type	.L__func__.gimp_palette_select_destroy,@object # @__func__.gimp_palette_select_destroy
.L__func__.gimp_palette_select_destroy:
	.asciz	"gimp_palette_select_destroy"
	.size	.L__func__.gimp_palette_select_destroy, 28

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"palette_callback != NULL"
	.size	.L.str.9, 25

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"gimp_palette_select_ht != NULL"
	.size	.L.str.10, 31

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"Can't find internal palette data"
	.size	.L.str.11, 33

	.type	gimp_temp_palette_run.values,@object # @gimp_temp_palette_run.values
	.local	gimp_temp_palette_run.values
	.comm	gimp_temp_palette_run.values,40,16

	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
