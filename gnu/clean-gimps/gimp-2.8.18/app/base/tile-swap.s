	.text
	.file	"tile-swap.bc"
	.globl	tile_swap_init
	.align	16, 0x90
	.type	tile_swap_init,@function
tile_swap_init:                         # @tile_swap_init
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
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, gimp_swap_file
	jne	.LBB0_3
# BB#2:                                 # %if.then
	jmp	.LBB0_4
.LBB0_3:                                # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.tile_swap_init, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB0_13
.LBB0_4:                                # %if.end
	jmp	.LBB0_5
.LBB0_5:                                # %do.end
	jmp	.LBB0_6
.LBB0_6:                                # %do.body.1
	cmpq	$0, -8(%rbp)
	je	.LBB0_8
# BB#7:                                 # %if.then.3
	jmp	.LBB0_9
.LBB0_8:                                # %if.else.4
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.tile_swap_init, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB0_13
.LBB0_9:                                # %if.end.5
	jmp	.LBB0_10
.LBB0_10:                               # %do.end.6
	movl	$1, %esi
	xorl	%eax, %eax
	movl	%eax, %edx
	movq	-8(%rbp), %rdi
	callq	gimp_config_path_expand
	movq	%rax, -24(%rbp)
	callq	get_pid
	movabsq	$.L.str.3, %rdi
	movslq	%eax, %rsi
	movb	$0, %al
	callq	g_strdup_printf
	movl	$16, %esi
	movq	%rax, -16(%rbp)
	movq	-24(%rbp), %rdi
	callq	g_file_test
	cmpl	$0, %eax
	jne	.LBB0_12
# BB#11:                                # %if.then.10
	movl	$493, %esi              # imm = 0x1ED
	movq	-24(%rbp), %rdi
	callq	g_mkdir_with_parents
	movl	%eax, -28(%rbp)         # 4-byte Spill
.LBB0_12:                               # %if.end.12
	movl	$40, %eax
	movl	%eax, %edi
	callq	g_slice_alloc
	xorl	%ecx, %ecx
	movl	%ecx, %edx
	movq	%rax, gimp_swap_file
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movb	$0, %al
	callq	g_build_filename
	movq	gimp_swap_file, %rdx
	movq	%rax, (%rdx)
	movq	gimp_swap_file, %rax
	movq	$0, 16(%rax)
	movq	gimp_swap_file, %rax
	movq	$0, 24(%rax)
	movq	gimp_swap_file, %rax
	movq	$0, 32(%rax)
	movq	gimp_swap_file, %rax
	movl	$-1, 8(%rax)
	movq	-16(%rbp), %rdi
	callq	g_free
	movq	-24(%rbp), %rdi
	callq	g_free
.LBB0_13:                               # %return
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	tile_swap_init, .Lfunc_end0-tile_swap_init
	.cfi_endproc

	.globl	tile_swap_exit
	.align	16, 0x90
	.type	tile_swap_exit,@function
tile_swap_exit:                         # @tile_swap_exit
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
	callq	tile_global_refcount
	cmpl	$0, %eax
	je	.LBB1_2
# BB#1:                                 # %if.then
	callq	tile_global_refcount
	movabsq	$.L.str.4, %rdi
	movl	%eax, %esi
	movb	$0, %al
	callq	g_warning
.LBB1_2:                                # %if.end
	jmp	.LBB1_3
.LBB1_3:                                # %do.body
	cmpq	$0, gimp_swap_file
	je	.LBB1_5
# BB#4:                                 # %if.then.3
	jmp	.LBB1_6
.LBB1_5:                                # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.tile_swap_exit, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB1_10
.LBB1_6:                                # %if.end.4
	jmp	.LBB1_7
.LBB1_7:                                # %do.end
	movq	gimp_swap_file, %rax
	movq	(%rax), %rdi
	callq	g_unlink
	movq	gimp_swap_file, %rdi
	movq	(%rdi), %rdi
	movl	%eax, -4(%rbp)          # 4-byte Spill
	callq	g_free
# BB#8:                                 # %do.body.7
	movl	$40, %eax
	movl	%eax, %edi
	movq	gimp_swap_file, %rcx
	movq	%rcx, %rsi
	callq	g_slice_free1
# BB#9:                                 # %do.end.8
	movq	$0, gimp_swap_file
.LBB1_10:                               # %return
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	tile_swap_exit, .Lfunc_end1-tile_swap_exit
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
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
	je	.LBB2_2
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
.LBB2_2:                                # %entry
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
	movl	$.L.str, %r9d
	movl	%r9d, %edi
	movl	$16, %esi
	leaq	-32(%rbp), %rcx
	callq	g_logv
	addq	$384, %rsp              # imm = 0x180
	popq	%rbp
	retq
.Lfunc_end2:
	.size	g_warning, .Lfunc_end2-g_warning
	.cfi_endproc

	.globl	tile_swap_test
	.align	16, 0x90
	.type	tile_swap_test,@function
tile_swap_test:                         # @tile_swap_test
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
# BB#1:                                 # %do.body
	cmpq	$0, gimp_swap_file
	je	.LBB3_3
# BB#2:                                 # %if.then
	jmp	.LBB3_4
.LBB3_3:                                # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.tile_swap_test, %rsi
	movabsq	$.L.str.5, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB3_8
.LBB3_4:                                # %if.end
	jmp	.LBB3_5
.LBB3_5:                                # %do.end
	movl	$66, %esi
	movl	$384, %edx              # imm = 0x180
	movq	gimp_swap_file, %rax
	movq	(%rax), %rdi
	movb	$0, %al
	callq	open
	movq	gimp_swap_file, %rdi
	movl	%eax, 8(%rdi)
	movq	gimp_swap_file, %rdi
	cmpl	$-1, 8(%rdi)
	je	.LBB3_7
# BB#6:                                 # %if.then.3
	movq	gimp_swap_file, %rax
	movl	8(%rax), %edi
	callq	close
	movq	gimp_swap_file, %rcx
	movl	$-1, 8(%rcx)
	movq	gimp_swap_file, %rcx
	movq	(%rcx), %rdi
	movl	%eax, -8(%rbp)          # 4-byte Spill
	callq	g_unlink
	movl	$1, -4(%rbp)
	movl	%eax, -12(%rbp)         # 4-byte Spill
	jmp	.LBB3_8
.LBB3_7:                                # %if.end.9
	movl	$0, -4(%rbp)
.LBB3_8:                                # %return
	movl	-4(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	tile_swap_test, .Lfunc_end3-tile_swap_test
	.cfi_endproc

	.globl	tile_swap_in
	.align	16, 0x90
	.type	tile_swap_in,@function
tile_swap_in:                           # @tile_swap_in
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	cmpq	$-1, 40(%rdi)
	jne	.LBB4_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rdi
	callq	tile_alloc
	jmp	.LBB4_3
.LBB4_2:                                # %if.end
	movl	$1, %esi
	movq	-8(%rbp), %rdi
	callq	tile_swap_command
.LBB4_3:                                # %return
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	tile_swap_in, .Lfunc_end4-tile_swap_in
	.cfi_endproc

	.align	16, 0x90
	.type	tile_swap_command,@function
tile_swap_command:                      # @tile_swap_command
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
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	gimp_swap_file, %rdi
	cmpl	$-1, 8(%rdi)
	jne	.LBB5_4
# BB#1:                                 # %if.then
	movq	gimp_swap_file, %rdi
	callq	tile_swap_open
	movq	gimp_swap_file, %rdi
	cmpl	$-1, 8(%rdi)
	jne	.LBB5_3
# BB#2:                                 # %if.then.3
	jmp	.LBB5_8
.LBB5_3:                                # %if.end
	jmp	.LBB5_4
.LBB5_4:                                # %if.end.4
	movl	-12(%rbp), %eax
	movl	%eax, %ecx
	subl	$1, %ecx
	movl	%eax, -16(%rbp)         # 4-byte Spill
	movl	%ecx, -20(%rbp)         # 4-byte Spill
	je	.LBB5_5
	jmp	.LBB5_9
.LBB5_9:                                # %if.end.4
	movl	-16(%rbp), %eax         # 4-byte Reload
	subl	$2, %eax
	movl	%eax, -24(%rbp)         # 4-byte Spill
	je	.LBB5_6
	jmp	.LBB5_10
.LBB5_10:                               # %if.end.4
	movl	-16(%rbp), %eax         # 4-byte Reload
	subl	$3, %eax
	movl	%eax, -28(%rbp)         # 4-byte Spill
	je	.LBB5_7
	jmp	.LBB5_8
.LBB5_5:                                # %sw.bb
	movq	gimp_swap_file, %rdi
	movq	-8(%rbp), %rsi
	callq	tile_swap_default_in
	jmp	.LBB5_8
.LBB5_6:                                # %sw.bb.5
	movq	gimp_swap_file, %rdi
	movq	-8(%rbp), %rsi
	callq	tile_swap_default_out
	jmp	.LBB5_8
.LBB5_7:                                # %sw.bb.6
	movq	gimp_swap_file, %rdi
	movq	-8(%rbp), %rsi
	callq	tile_swap_default_delete
.LBB5_8:                                # %sw.epilog
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	tile_swap_command, .Lfunc_end5-tile_swap_command
	.cfi_endproc

	.globl	tile_swap_out
	.align	16, 0x90
	.type	tile_swap_out,@function
tile_swap_out:                          # @tile_swap_out
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
	movl	$2, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	tile_swap_command
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	tile_swap_out, .Lfunc_end6-tile_swap_out
	.cfi_endproc

	.globl	tile_swap_delete
	.align	16, 0x90
	.type	tile_swap_delete,@function
tile_swap_delete:                       # @tile_swap_delete
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
	movl	$3, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	tile_swap_command
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	tile_swap_delete, .Lfunc_end7-tile_swap_delete
	.cfi_endproc

	.align	16, 0x90
	.type	tile_swap_open,@function
tile_swap_open:                         # @tile_swap_open
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	cmpl	$-1, 8(%rax)
	jne	.LBB8_3
# BB#2:                                 # %if.then
	jmp	.LBB8_4
.LBB8_3:                                # %if.else
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.tile_swap_open, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB8_7
.LBB8_4:                                # %if.end
	jmp	.LBB8_5
.LBB8_5:                                # %do.end
	movl	$66, %esi
	movl	$384, %edx              # imm = 0x180
	movq	-8(%rbp), %rax
	movq	(%rax), %rdi
	movb	$0, %al
	callq	open
	movq	-8(%rbp), %rdi
	movl	%eax, 8(%rdi)
	movq	-8(%rbp), %rdi
	cmpl	$-1, 8(%rdi)
	jne	.LBB8_7
# BB#6:                                 # %if.then.4
	movabsq	$.L.str.7, %rdi
	callq	gettext
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_message
.LBB8_7:                                # %if.end.6
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	tile_swap_open, .Lfunc_end8-tile_swap_open
	.cfi_endproc

	.align	16, 0x90
	.type	tile_swap_default_in,@function
tile_swap_default_in:                   # @tile_swap_default_in
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	cmpq	$0, 32(%rsi)
	je	.LBB9_2
# BB#1:                                 # %if.then
	jmp	.LBB9_23
.LBB9_2:                                # %if.end
	callq	tile_cache_suspend_idle_swapper
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	-16(%rbp), %rcx
	cmpq	40(%rcx), %rax
	je	.LBB9_8
# BB#3:                                 # %if.then.1
	xorl	%edx, %edx
	movq	-16(%rbp), %rax
	movq	40(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 32(%rcx)
	movq	-8(%rbp), %rax
	movl	8(%rax), %edi
	movq	-16(%rbp), %rax
	movq	40(%rax), %rsi
	callq	lseek
	movq	%rax, -32(%rbp)
	cmpq	$-1, -32(%rbp)
	jne	.LBB9_7
# BB#4:                                 # %if.then.6
	cmpl	$0, seek_err_msg
	je	.LBB9_6
# BB#5:                                 # %if.then.8
	callq	__errno_location
	movl	(%rax), %edi
	callq	g_strerror
	movabsq	$.L.str.8, %rdi
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_message
.LBB9_6:                                # %if.end.11
	movl	$0, seek_err_msg
	jmp	.LBB9_23
.LBB9_7:                                # %if.end.12
	jmp	.LBB9_8
.LBB9_8:                                # %if.end.13
	movq	-16(%rbp), %rdi
	callq	tile_alloc
	movq	-16(%rbp), %rdi
	movl	16(%rdi), %eax
	movl	%eax, -20(%rbp)
.LBB9_9:                                # %while.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_11 Depth 2
	cmpl	$0, -20(%rbp)
	jle	.LBB9_22
# BB#10:                                # %while.body
                                        #   in Loop: Header=BB9_9 Depth=1
	jmp	.LBB9_11
.LBB9_11:                               # %do.body
                                        #   Parent Loop BB9_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movl	8(%rdx), %edi
	movq	-16(%rbp), %rdx
	movq	32(%rdx), %rdx
	movq	-16(%rbp), %rsi
	movslq	16(%rsi), %rsi
	addq	%rsi, %rdx
	movslq	-20(%rbp), %rsi
	subq	%rsi, %rcx
	addq	%rcx, %rdx
	movslq	-20(%rbp), %rcx
	movq	%rdx, %rsi
	movq	%rcx, %rdx
	callq	read
	movl	%eax, %edi
	movl	%edi, -36(%rbp)
# BB#12:                                # %do.cond
                                        #   in Loop: Header=BB9_11 Depth=2
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$-1, -36(%rbp)
	movb	%cl, -37(%rbp)          # 1-byte Spill
	jne	.LBB9_16
# BB#13:                                # %land.rhs
                                        #   in Loop: Header=BB9_11 Depth=2
	callq	__errno_location
	movb	$1, %cl
	cmpl	$11, (%rax)
	movb	%cl, -38(%rbp)          # 1-byte Spill
	je	.LBB9_15
# BB#14:                                # %lor.rhs
                                        #   in Loop: Header=BB9_11 Depth=2
	callq	__errno_location
	cmpl	$4, (%rax)
	sete	%cl
	movb	%cl, -38(%rbp)          # 1-byte Spill
.LBB9_15:                               # %lor.end
                                        #   in Loop: Header=BB9_11 Depth=2
	movb	-38(%rbp), %al          # 1-byte Reload
	movb	%al, -37(%rbp)          # 1-byte Spill
.LBB9_16:                               # %land.end
                                        #   in Loop: Header=BB9_11 Depth=2
	movb	-37(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB9_11
# BB#17:                                # %do.end
                                        #   in Loop: Header=BB9_9 Depth=1
	cmpl	$0, -36(%rbp)
	jg	.LBB9_21
# BB#18:                                # %if.then.32
	cmpl	$0, read_err_msg
	je	.LBB9_20
# BB#19:                                # %if.then.34
	callq	__errno_location
	movl	(%rax), %edi
	callq	g_strerror
	movabsq	$.L.str.9, %rdi
	movl	-36(%rbp), %edx
	movl	-20(%rbp), %ecx
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_message
.LBB9_20:                               # %if.end.37
	movl	$0, read_err_msg
	jmp	.LBB9_23
.LBB9_21:                               # %if.end.38
                                        #   in Loop: Header=BB9_9 Depth=1
	movl	-36(%rbp), %eax
	movl	-20(%rbp), %ecx
	subl	%eax, %ecx
	movl	%ecx, -20(%rbp)
	jmp	.LBB9_9
.LBB9_22:                               # %while.end
	movq	-16(%rbp), %rax
	movslq	16(%rax), %rax
	movq	-8(%rbp), %rcx
	addq	32(%rcx), %rax
	movq	%rax, 32(%rcx)
	movl	$1, seek_err_msg
	movl	$1, read_err_msg
.LBB9_23:                               # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	tile_swap_default_in, .Lfunc_end9-tile_swap_default_in
	.cfi_endproc

	.align	16, 0x90
	.type	tile_swap_default_out,@function
tile_swap_default_out:                  # @tile_swap_default_out
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movzbl	9(%rsi), %eax
	shll	$12, %eax
	movl	%eax, -20(%rbp)
	movq	-16(%rbp), %rsi
	cmpq	$-1, 40(%rsi)
	jne	.LBB10_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rdi
	movslq	-20(%rbp), %rsi
	callq	tile_swap_find_offset
	movq	%rax, -40(%rbp)
	jmp	.LBB10_3
.LBB10_2:                               # %if.else
	movq	-16(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -40(%rbp)
.LBB10_3:                               # %if.end
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	cmpq	-40(%rbp), %rax
	je	.LBB10_9
# BB#4:                                 # %if.then.6
	xorl	%edx, %edx
	movq	-8(%rbp), %rax
	movl	8(%rax), %edi
	movq	-40(%rbp), %rsi
	callq	lseek
	movq	%rax, -32(%rbp)
	cmpq	$-1, -32(%rbp)
	jne	.LBB10_8
# BB#5:                                 # %if.then.10
	cmpl	$0, seek_err_msg
	je	.LBB10_7
# BB#6:                                 # %if.then.11
	callq	__errno_location
	movl	(%rax), %edi
	callq	g_strerror
	movabsq	$.L.str.8, %rdi
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_message
.LBB10_7:                               # %if.end.14
	movl	$0, seek_err_msg
	jmp	.LBB10_17
.LBB10_8:                               # %if.end.15
	movq	-40(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 32(%rcx)
.LBB10_9:                               # %if.end.17
	movq	-16(%rbp), %rax
	movl	16(%rax), %ecx
	movl	%ecx, -24(%rbp)
.LBB10_10:                              # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, -24(%rbp)
	jle	.LBB10_16
# BB#11:                                # %while.body
                                        #   in Loop: Header=BB10_10 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movl	8(%rdx), %edi
	movq	-16(%rbp), %rdx
	movq	32(%rdx), %rdx
	movq	-16(%rbp), %rsi
	movslq	16(%rsi), %rsi
	addq	%rsi, %rdx
	movslq	-24(%rbp), %rsi
	subq	%rsi, %rcx
	addq	%rcx, %rdx
	movslq	-24(%rbp), %rcx
	movq	%rdx, %rsi
	movq	%rcx, %rdx
	callq	write
	movl	%eax, %edi
	movl	%edi, -44(%rbp)
	cmpl	$0, -44(%rbp)
	jg	.LBB10_15
# BB#12:                                # %if.then.29
	cmpl	$0, write_err_msg
	je	.LBB10_14
# BB#13:                                # %if.then.31
	callq	__errno_location
	movl	(%rax), %edi
	callq	g_strerror
	movabsq	$.L.str.10, %rdi
	movl	-44(%rbp), %edx
	movl	-24(%rbp), %ecx
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_message
.LBB10_14:                              # %if.end.34
	movl	$0, write_err_msg
	jmp	.LBB10_17
.LBB10_15:                              # %if.end.35
                                        #   in Loop: Header=BB10_10 Depth=1
	movl	-44(%rbp), %eax
	movl	-24(%rbp), %ecx
	subl	%eax, %ecx
	movl	%ecx, -24(%rbp)
	jmp	.LBB10_10
.LBB10_16:                              # %while.end
	movq	-16(%rbp), %rax
	movslq	16(%rax), %rax
	movq	-8(%rbp), %rcx
	addq	32(%rcx), %rax
	movq	%rax, 32(%rcx)
	movq	-16(%rbp), %rax
	movb	8(%rax), %dl
	andb	$-2, %dl
	movb	%dl, 8(%rax)
	movq	-40(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 40(%rcx)
	movl	$1, seek_err_msg
	movl	$1, write_err_msg
.LBB10_17:                              # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	tile_swap_default_out, .Lfunc_end10-tile_swap_default_out
	.cfi_endproc

	.align	16, 0x90
	.type	tile_swap_default_delete,@function
tile_swap_default_delete:               # @tile_swap_default_delete
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	cmpq	$-1, 40(%rsi)
	jne	.LBB11_2
# BB#1:                                 # %if.then
	jmp	.LBB11_32
.LBB11_2:                               # %if.end
	movq	-16(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	-16(%rbp), %rcx
	movzbl	9(%rcx), %edx
	shll	$12, %edx
	movslq	%edx, %rcx
	addq	%rcx, %rax
	movq	%rax, -64(%rbp)
	movq	-16(%rbp), %rax
	movq	$-1, 40(%rax)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -40(%rbp)
.LBB11_3:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB11_28
# BB#4:                                 # %while.body
                                        #   in Loop: Header=BB11_3 Depth=1
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-64(%rbp), %rax
	movq	-24(%rbp), %rcx
	cmpq	(%rcx), %rax
	jne	.LBB11_10
# BB#5:                                 # %if.then.11
	movq	-56(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-40(%rbp), %rax
	cmpq	$0, 16(%rax)
	je	.LBB11_9
# BB#6:                                 # %if.then.14
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	-32(%rbp), %rcx
	cmpq	8(%rcx), %rax
	jne	.LBB11_8
# BB#7:                                 # %if.then.21
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	-24(%rbp), %rdi
	callq	tile_swap_gap_destroy
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdi
	movq	-40(%rbp), %rsi
	callq	g_list_remove_link
	movq	-8(%rbp), %rcx
	movq	%rax, 16(%rcx)
	movq	-40(%rbp), %rdi
	callq	g_list_free
.LBB11_8:                               # %if.end.26
	jmp	.LBB11_9
.LBB11_9:                               # %if.end.27
	jmp	.LBB11_28
.LBB11_10:                              # %if.else
                                        #   in Loop: Header=BB11_3 Depth=1
	movq	-56(%rbp), %rax
	movq	-24(%rbp), %rcx
	cmpq	8(%rcx), %rax
	jne	.LBB11_16
# BB#11:                                # %if.then.31
	movq	-64(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	-40(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB11_15
# BB#12:                                # %if.then.34
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	-32(%rbp), %rcx
	cmpq	(%rcx), %rax
	jne	.LBB11_14
# BB#13:                                # %if.then.41
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-24(%rbp), %rdi
	callq	tile_swap_gap_destroy
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdi
	movq	-40(%rbp), %rsi
	callq	g_list_remove_link
	movq	-8(%rbp), %rcx
	movq	%rax, 16(%rcx)
	movq	-40(%rbp), %rdi
	callq	g_list_free
.LBB11_14:                              # %if.end.47
	jmp	.LBB11_15
.LBB11_15:                              # %if.end.48
	jmp	.LBB11_28
.LBB11_16:                              # %if.else.49
                                        #   in Loop: Header=BB11_3 Depth=1
	movq	-64(%rbp), %rax
	movq	-24(%rbp), %rcx
	cmpq	(%rcx), %rax
	jge	.LBB11_22
# BB#17:                                # %if.then.53
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	tile_swap_gap_new
	movq	%rax, -24(%rbp)
	callq	g_list_alloc
	movq	%rax, -48(%rbp)
	movq	-24(%rbp), %rax
	movq	-48(%rbp), %rsi
	movq	%rax, (%rsi)
	movq	-40(%rbp), %rax
	movq	-48(%rbp), %rsi
	movq	%rax, 8(%rsi)
	movq	-40(%rbp), %rax
	movq	16(%rax), %rax
	movq	-48(%rbp), %rsi
	movq	%rax, 16(%rsi)
	movq	-40(%rbp), %rax
	cmpq	$0, 16(%rax)
	je	.LBB11_19
# BB#18:                                # %if.then.62
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	16(%rcx), %rcx
	movq	%rax, 8(%rcx)
.LBB11_19:                              # %if.end.65
	movq	-48(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, 16(%rcx)
	movq	-40(%rbp), %rax
	movq	-8(%rbp), %rcx
	cmpq	16(%rcx), %rax
	jne	.LBB11_21
# BB#20:                                # %if.then.70
	movq	-48(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 16(%rcx)
.LBB11_21:                              # %if.end.72
	jmp	.LBB11_28
.LBB11_22:                              # %if.else.73
                                        #   in Loop: Header=BB11_3 Depth=1
	movq	-40(%rbp), %rax
	cmpq	$0, 8(%rax)
	jne	.LBB11_24
# BB#23:                                # %if.then.76
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	tile_swap_gap_new
	movq	%rax, -24(%rbp)
	callq	g_list_alloc
	movq	-40(%rbp), %rsi
	movq	%rax, 8(%rsi)
	movq	-24(%rbp), %rax
	movq	-40(%rbp), %rsi
	movq	8(%rsi), %rsi
	movq	%rax, (%rsi)
	movq	-40(%rbp), %rax
	movq	-40(%rbp), %rsi
	movq	8(%rsi), %rsi
	movq	%rax, 16(%rsi)
	jmp	.LBB11_28
.LBB11_24:                              # %if.end.84
                                        #   in Loop: Header=BB11_3 Depth=1
	jmp	.LBB11_25
.LBB11_25:                              # %if.end.85
                                        #   in Loop: Header=BB11_3 Depth=1
	jmp	.LBB11_26
.LBB11_26:                              # %if.end.86
                                        #   in Loop: Header=BB11_3 Depth=1
	jmp	.LBB11_27
.LBB11_27:                              # %if.end.87
                                        #   in Loop: Header=BB11_3 Depth=1
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB11_3
.LBB11_28:                              # %while.end
	movq	-8(%rbp), %rax
	cmpq	$0, 16(%rax)
	jne	.LBB11_30
# BB#29:                                # %if.then.91
	movq	-56(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	tile_swap_gap_new
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdi
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	callq	g_list_append
	movq	-8(%rbp), %rsi
	movq	%rax, 16(%rsi)
.LBB11_30:                              # %if.end.96
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdi
	callq	g_list_last
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	-8(%rbp), %rdi
	cmpq	24(%rdi), %rax
	jne	.LBB11_32
# BB#31:                                # %if.then.103
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	(%rax), %rsi
	callq	tile_swap_resize
	movq	-24(%rbp), %rdi
	callq	tile_swap_gap_destroy
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdi
	movq	-40(%rbp), %rsi
	callq	g_list_remove_link
	movq	-8(%rbp), %rsi
	movq	%rax, 16(%rsi)
	movq	-40(%rbp), %rdi
	callq	g_list_free
.LBB11_32:                              # %if.end.108
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	tile_swap_default_delete, .Lfunc_end11-tile_swap_default_delete
	.cfi_endproc

	.align	16, 0x90
	.type	g_message,@function
g_message:                              # @g_message
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
	je	.LBB12_2
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
.LBB12_2:                               # %entry
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
	movl	$.L.str, %r9d
	movl	%r9d, %edi
	movl	$32, %esi
	leaq	-32(%rbp), %rcx
	callq	g_logv
	addq	$384, %rsp              # imm = 0x180
	popq	%rbp
	retq
.Lfunc_end12:
	.size	g_message, .Lfunc_end12-g_message
	.cfi_endproc

	.align	16, 0x90
	.type	tile_swap_find_offset,@function
tile_swap_find_offset:                  # @tile_swap_find_offset
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	movq	16(%rsi), %rsi
	movq	%rsi, -40(%rbp)
.LBB13_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB13_7
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB13_1 Depth=1
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	-32(%rbp), %rcx
	subq	(%rcx), %rax
	cmpq	-24(%rbp), %rax
	jl	.LBB13_6
# BB#3:                                 # %if.then
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rcx
	addq	(%rcx), %rax
	movq	%rax, (%rcx)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	-32(%rbp), %rcx
	cmpq	8(%rcx), %rax
	jne	.LBB13_5
# BB#4:                                 # %if.then.7
	movq	-32(%rbp), %rdi
	callq	tile_swap_gap_destroy
	movq	-16(%rbp), %rdi
	movq	16(%rdi), %rdi
	movq	-40(%rbp), %rsi
	callq	g_list_remove_link
	movq	-16(%rbp), %rsi
	movq	%rax, 16(%rsi)
	movq	-40(%rbp), %rdi
	callq	g_list_free
.LBB13_5:                               # %if.end
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB13_10
.LBB13_6:                               # %if.end.10
                                        #   in Loop: Header=BB13_1 Depth=1
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB13_1
.LBB13_7:                               # %while.end
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	addq	$16777216, %rax         # imm = 0x1000000
	movq	%rax, %rsi
	callq	tile_swap_resize
	movq	-48(%rbp), %rax
	addq	-24(%rbp), %rax
	movq	-16(%rbp), %rsi
	cmpq	24(%rsi), %rax
	jge	.LBB13_9
# BB#8:                                 # %if.then.16
	movq	-48(%rbp), %rax
	addq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	24(%rcx), %rsi
	movq	%rax, %rdi
	callq	tile_swap_gap_new
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	callq	g_list_append
	movq	-16(%rbp), %rcx
	movq	%rax, 16(%rcx)
.LBB13_9:                               # %if.end.23
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB13_10:                              # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	tile_swap_find_offset, .Lfunc_end13-tile_swap_find_offset
	.cfi_endproc

	.align	16, 0x90
	.type	tile_swap_gap_destroy,@function
tile_swap_gap_destroy:                  # @tile_swap_gap_destroy
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movl	$16, %eax
	movl	%eax, %edi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rsi
	callq	g_slice_free1
# BB#2:                                 # %do.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	tile_swap_gap_destroy, .Lfunc_end14-tile_swap_gap_destroy
	.cfi_endproc

	.align	16, 0x90
	.type	tile_swap_resize,@function
tile_swap_resize:                       # @tile_swap_resize
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	24(%rsi), %rsi
	cmpq	-16(%rbp), %rsi
	jle	.LBB15_4
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movl	8(%rax), %edi
	movq	-16(%rbp), %rsi
	callq	ftruncate
	cmpl	$0, %eax
	je	.LBB15_3
# BB#2:                                 # %if.then.2
	movabsq	$.L.str.11, %rdi
	callq	gettext
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	__errno_location
	movl	(%rax), %edi
	callq	g_strerror
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	movb	$0, %al
	callq	g_message
	jmp	.LBB15_5
.LBB15_3:                               # %if.end
	jmp	.LBB15_4
.LBB15_4:                               # %if.end.6
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 24(%rcx)
.LBB15_5:                               # %return
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	tile_swap_resize, .Lfunc_end15-tile_swap_resize
	.cfi_endproc

	.align	16, 0x90
	.type	tile_swap_gap_new,@function
tile_swap_gap_new:                      # @tile_swap_gap_new
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
	subq	$32, %rsp
	movl	$16, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rcx, %rdi
	callq	g_slice_alloc
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	-24(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	tile_swap_gap_new, .Lfunc_end16-tile_swap_gap_new
	.cfi_endproc

	.type	gimp_swap_file,@object  # @gimp_swap_file
	.local	gimp_swap_file
	.comm	gimp_swap_file,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gimp-Base"
	.size	.L.str, 10

	.type	.L__func__.tile_swap_init,@object # @__func__.tile_swap_init
.L__func__.tile_swap_init:
	.asciz	"tile_swap_init"
	.size	.L__func__.tile_swap_init, 15

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"gimp_swap_file == NULL"
	.size	.L.str.1, 23

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"path != NULL"
	.size	.L.str.2, 13

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"gimpswap.%lu"
	.size	.L.str.3, 13

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"tile ref count balance: %d\n"
	.size	.L.str.4, 28

	.type	.L__func__.tile_swap_exit,@object # @__func__.tile_swap_exit
.L__func__.tile_swap_exit:
	.asciz	"tile_swap_exit"
	.size	.L__func__.tile_swap_exit, 15

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"gimp_swap_file != NULL"
	.size	.L.str.5, 23

	.type	.L__func__.tile_swap_test,@object # @__func__.tile_swap_test
.L__func__.tile_swap_test:
	.asciz	"tile_swap_test"
	.size	.L__func__.tile_swap_test, 15

	.type	.L__func__.tile_swap_open,@object # @__func__.tile_swap_open
.L__func__.tile_swap_open:
	.asciz	"tile_swap_open"
	.size	.L__func__.tile_swap_open, 15

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"swap_file->fd == -1"
	.size	.L.str.6, 20

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Unable to open swap file. GIMP has run out of memory and cannot use the swap file. Some parts of your images may be corrupted. Try to save your work using different filenames, restart GIMP and check the location of the swap directory in your Preferences."
	.size	.L.str.7, 255

	.type	seek_err_msg,@object    # @seek_err_msg
	.data
	.align	4
seek_err_msg:
	.long	1                       # 0x1
	.size	seek_err_msg, 4

	.type	.L.str.8,@object        # @.str.8
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.8:
	.asciz	"unable to seek to tile location on disk: %s"
	.size	.L.str.8, 44

	.type	read_err_msg,@object    # @read_err_msg
	.data
	.align	4
read_err_msg:
	.long	1                       # 0x1
	.size	read_err_msg, 4

	.type	.L.str.9,@object        # @.str.9
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.9:
	.asciz	"unable to read tile data from disk: %s (%d/%d bytes read)"
	.size	.L.str.9, 58

	.type	write_err_msg,@object   # @write_err_msg
	.data
	.align	4
write_err_msg:
	.long	1                       # 0x1
	.size	write_err_msg, 4

	.type	.L.str.10,@object       # @.str.10
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.10:
	.asciz	"unable to write tile data to disk: %s (%d/%d bytes written)"
	.size	.L.str.10, 60

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"Failed to resize swap file: %s"
	.size	.L.str.11, 31


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
