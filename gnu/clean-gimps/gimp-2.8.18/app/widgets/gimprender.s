	.text
	.file	"gimprender.bc"
	.globl	gimp_render_init
	.align	16, 0x90
	.type	gimp_render_init,@function
gimp_render_init:                       # @gimp_render_init
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	callq	gimp_get_type
	movq	%rax, -24(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB0_3
# BB#2:                                 # %if.then
	movl	$0, -28(%rbp)
	jmp	.LBB0_8
.LBB0_3:                                # %if.else
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_6
# BB#4:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB0_6
# BB#5:                                 # %if.then.3
	movl	$1, -28(%rbp)
	jmp	.LBB0_7
.LBB0_6:                                # %if.else.4
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -28(%rbp)
.LBB0_7:                                # %if.end
	jmp	.LBB0_8
.LBB0_8:                                # %if.end.6
	movl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)
	cmpl	$0, -32(%rbp)
	je	.LBB0_10
# BB#9:                                 # %if.then.8
	jmp	.LBB0_11
.LBB0_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_render_init, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB0_13
.LBB0_11:                               # %if.end.10
	jmp	.LBB0_12
.LBB0_12:                               # %do.end
	movabsq	$.L.str.2, %rsi
	movabsq	$gimp_render_setup_notify, %rax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	xorl	%r9d, %r9d
	movq	-8(%rbp), %rdx
	movq	32(%rdx), %rdx
	movq	-8(%rbp), %rdi
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	movq	%rax, %rdx
	movq	-40(%rbp), %rcx         # 8-byte Reload
	callq	g_signal_connect_data
	xorl	%r9d, %r9d
	movl	%r9d, %esi
	movq	-8(%rbp), %rcx
	movq	32(%rcx), %rcx
	movq	-8(%rbp), %rdx
	movq	%rcx, %rdi
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_render_setup_notify
.LBB0_13:                               # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_render_init, .Lfunc_end0-gimp_render_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_render_setup_notify,@function
gimp_render_setup_notify:               # @gimp_render_setup_notify
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
	movabsq	$.L.str.3, %rax
	leaq	-28(%rbp), %rcx
	xorl	%r8d, %r8d
	movl	%r8d, %r9d
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rax, %rsi
	movq	%rcx, %rdx
	movq	%r9, %rcx
	movb	$0, %al
	callq	g_object_get
	leaq	-30(%rbp), %rsi
	leaq	-29(%rbp), %rdx
	movl	-28(%rbp), %edi
	callq	gimp_checks_get_shades
	movabsq	$light, %rdi
	movl	$255, %r8d
	movb	-30(%rbp), %al
	movb	-30(%rbp), %r10b
	movzbl	%al, %esi
	movzbl	%r10b, %edx
	movzbl	-30(%rbp), %ecx
	callq	gimp_rgba_set_uchar
	movabsq	$dark, %rdi
	movl	$255, %r8d
	movb	-29(%rbp), %al
	movb	-29(%rbp), %r10b
	movzbl	%al, %esi
	movzbl	%r10b, %edx
	movzbl	-29(%rbp), %ecx
	callq	gimp_rgba_set_uchar
	cmpq	$0, gimp_render_blend_dark_check
	jne	.LBB1_2
# BB#1:                                 # %if.then
	movl	$65536, %eax            # imm = 0x10000
	movl	%eax, %edi
	movl	$1, %eax
	movl	%eax, %esi
	callq	g_malloc_n
	movq	%rax, gimp_render_blend_dark_check
.LBB1_2:                                # %if.end
	cmpq	$0, gimp_render_blend_light_check
	jne	.LBB1_4
# BB#3:                                 # %if.then.2
	movl	$65536, %eax            # imm = 0x10000
	movl	%eax, %edi
	movl	$1, %eax
	movl	%eax, %esi
	callq	g_malloc_n
	movq	%rax, gimp_render_blend_light_check
.LBB1_4:                                # %if.end.4
	cmpq	$0, gimp_render_blend_white
	jne	.LBB1_6
# BB#5:                                 # %if.then.6
	movl	$65536, %eax            # imm = 0x10000
	movl	%eax, %edi
	movl	$1, %eax
	movl	%eax, %esi
	callq	g_malloc_n
	movq	%rax, gimp_render_blend_white
.LBB1_6:                                # %if.end.8
	movl	$0, -36(%rbp)
.LBB1_7:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_9 Depth 2
	cmpl	$256, -36(%rbp)         # imm = 0x100
	jge	.LBB1_14
# BB#8:                                 # %for.body
                                        #   in Loop: Header=BB1_7 Depth=1
	movl	$0, -40(%rbp)
.LBB1_9:                                # %for.cond.9
                                        #   Parent Loop BB1_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$256, -40(%rbp)         # imm = 0x100
	jge	.LBB1_12
# BB#10:                                # %for.body.11
                                        #   in Loop: Header=BB1_9 Depth=2
	movl	$255, %eax
	movl	-40(%rbp), %ecx
	imull	-36(%rbp), %ecx
	movzbl	-29(%rbp), %edx
	movl	%eax, %esi
	subl	-36(%rbp), %esi
	imull	%esi, %edx
	addl	%edx, %ecx
	movl	%eax, -44(%rbp)         # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-44(%rbp), %ecx         # 4-byte Reload
	idivl	%ecx
	movb	%al, %dil
	movl	-36(%rbp), %eax
	shll	$8, %eax
	addl	-40(%rbp), %eax
	movslq	%eax, %r8
	movq	gimp_render_blend_dark_check, %r9
	movb	%dil, (%r9,%r8)
	movl	-40(%rbp), %eax
	imull	-36(%rbp), %eax
	movzbl	-30(%rbp), %esi
	subl	-36(%rbp), %ecx
	imull	%ecx, %esi
	addl	%esi, %eax
	cltd
	movl	-44(%rbp), %ecx         # 4-byte Reload
	idivl	%ecx
	movb	%al, %dil
	movl	-36(%rbp), %eax
	shll	$8, %eax
	addl	-40(%rbp), %eax
	movslq	%eax, %r8
	movq	gimp_render_blend_light_check, %r9
	movb	%dil, (%r9,%r8)
	movl	-40(%rbp), %eax
	imull	-36(%rbp), %eax
	subl	-36(%rbp), %ecx
	imull	$255, %ecx, %ecx
	addl	%ecx, %eax
	cltd
	movl	-44(%rbp), %ecx         # 4-byte Reload
	idivl	%ecx
	movb	%al, %dil
	movl	-36(%rbp), %eax
	shll	$8, %eax
	addl	-40(%rbp), %eax
	movslq	%eax, %r8
	movq	gimp_render_blend_white, %r9
	movb	%dil, (%r9,%r8)
# BB#11:                                # %for.inc
                                        #   in Loop: Header=BB1_9 Depth=2
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB1_9
.LBB1_12:                               # %for.end
                                        #   in Loop: Header=BB1_7 Depth=1
	jmp	.LBB1_13
.LBB1_13:                               # %for.inc.36
                                        #   in Loop: Header=BB1_7 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB1_7
.LBB1_14:                               # %for.end.38
	movq	gimp_render_check_buf, %rdi
	callq	g_free
	movq	gimp_render_empty_buf, %rdi
	callq	g_free
	movq	gimp_render_white_buf, %rdi
	callq	g_free
	movl	$6156, %eax             # imm = 0x180C
	movl	%eax, %edi
	movl	$1, %eax
	movl	%eax, %esi
	callq	g_malloc_n
	movl	$6156, %ecx             # imm = 0x180C
	movl	%ecx, %edi
	movl	$1, %ecx
	movl	%ecx, %esi
	movq	%rax, gimp_render_check_buf
	callq	g_malloc0_n
	movl	$6156, %ecx             # imm = 0x180C
	movl	%ecx, %edi
	movl	$1, %ecx
	movl	%ecx, %esi
	movq	%rax, gimp_render_empty_buf
	callq	g_malloc_n
	movl	$255, %esi
	movl	$6156, %ecx             # imm = 0x180C
	movl	%ecx, %edx
	movq	%rax, gimp_render_white_buf
	movq	gimp_render_white_buf, %rdi
	callq	memset
	movl	$0, -36(%rbp)
.LBB1_15:                               # %for.cond.42
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$2052, -36(%rbp)        # imm = 0x804
	jge	.LBB1_21
# BB#16:                                # %for.body.45
                                        #   in Loop: Header=BB1_15 Depth=1
	movl	-36(%rbp), %eax
	andl	$4, %eax
	cmpl	$0, %eax
	je	.LBB1_18
# BB#17:                                # %if.then.47
                                        #   in Loop: Header=BB1_15 Depth=1
	movb	-29(%rbp), %al
	imull	$3, -36(%rbp), %ecx
	addl	$0, %ecx
	movslq	%ecx, %rdx
	movq	gimp_render_check_buf, %rsi
	movb	%al, (%rsi,%rdx)
	movb	-29(%rbp), %al
	imull	$3, -36(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rdx
	movq	gimp_render_check_buf, %rsi
	movb	%al, (%rsi,%rdx)
	movb	-29(%rbp), %al
	imull	$3, -36(%rbp), %ecx
	addl	$2, %ecx
	movslq	%ecx, %rdx
	movq	gimp_render_check_buf, %rsi
	movb	%al, (%rsi,%rdx)
	jmp	.LBB1_19
.LBB1_18:                               # %if.else
                                        #   in Loop: Header=BB1_15 Depth=1
	movb	-30(%rbp), %al
	imull	$3, -36(%rbp), %ecx
	addl	$0, %ecx
	movslq	%ecx, %rdx
	movq	gimp_render_check_buf, %rsi
	movb	%al, (%rsi,%rdx)
	movb	-30(%rbp), %al
	imull	$3, -36(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rdx
	movq	gimp_render_check_buf, %rsi
	movb	%al, (%rsi,%rdx)
	movb	-30(%rbp), %al
	imull	$3, -36(%rbp), %ecx
	addl	$2, %ecx
	movslq	%ecx, %rdx
	movq	gimp_render_check_buf, %rsi
	movb	%al, (%rsi,%rdx)
.LBB1_19:                               # %if.end.72
                                        #   in Loop: Header=BB1_15 Depth=1
	jmp	.LBB1_20
.LBB1_20:                               # %for.inc.73
                                        #   in Loop: Header=BB1_15 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB1_15
.LBB1_21:                               # %for.end.75
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_render_setup_notify, .Lfunc_end1-gimp_render_setup_notify
	.cfi_endproc

	.globl	gimp_render_exit
	.align	16, 0x90
	.type	gimp_render_exit,@function
gimp_render_exit:                       # @gimp_render_exit
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	movq	%rax, -16(%rbp)
	callq	gimp_get_type
	movq	%rax, -24(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB2_3
# BB#2:                                 # %if.then
	movl	$0, -28(%rbp)
	jmp	.LBB2_8
.LBB2_3:                                # %if.else
	movq	-16(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB2_6
# BB#4:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB2_6
# BB#5:                                 # %if.then.3
	movl	$1, -28(%rbp)
	jmp	.LBB2_7
.LBB2_6:                                # %if.else.4
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -28(%rbp)
.LBB2_7:                                # %if.end
	jmp	.LBB2_8
.LBB2_8:                                # %if.end.6
	movl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)
	cmpl	$0, -32(%rbp)
	je	.LBB2_10
# BB#9:                                 # %if.then.8
	jmp	.LBB2_11
.LBB2_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_render_exit, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB2_24
.LBB2_11:                               # %if.end.10
	jmp	.LBB2_12
.LBB2_12:                               # %do.end
	movl	$24, %esi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	movl	%ecx, %r8d
	movabsq	$gimp_render_setup_notify, %rdx
	movq	-8(%rbp), %rdi
	movq	32(%rdi), %rdi
	movq	-8(%rbp), %r9
	movq	%rdx, -40(%rbp)         # 8-byte Spill
	movl	%eax, %edx
	movl	%eax, %ecx
	movq	-40(%rbp), %r10         # 8-byte Reload
	movq	%r9, -48(%rbp)          # 8-byte Spill
	movq	%r10, %r9
	movq	-48(%rbp), %r11         # 8-byte Reload
	movq	%r11, (%rsp)
	callq	g_signal_handlers_disconnect_matched
	cmpq	$0, gimp_render_blend_dark_check
	movl	%eax, -52(%rbp)         # 4-byte Spill
	je	.LBB2_14
# BB#13:                                # %if.then.13
	movq	gimp_render_blend_dark_check, %rdi
	callq	g_free
	movq	$0, gimp_render_blend_dark_check
.LBB2_14:                               # %if.end.14
	cmpq	$0, gimp_render_blend_light_check
	je	.LBB2_16
# BB#15:                                # %if.then.16
	movq	gimp_render_blend_light_check, %rdi
	callq	g_free
	movq	$0, gimp_render_blend_light_check
.LBB2_16:                               # %if.end.17
	cmpq	$0, gimp_render_blend_white
	je	.LBB2_18
# BB#17:                                # %if.then.19
	movq	gimp_render_blend_white, %rdi
	callq	g_free
	movq	$0, gimp_render_blend_white
.LBB2_18:                               # %if.end.20
	cmpq	$0, gimp_render_check_buf
	je	.LBB2_20
# BB#19:                                # %if.then.22
	movq	gimp_render_check_buf, %rdi
	callq	g_free
	movq	$0, gimp_render_check_buf
.LBB2_20:                               # %if.end.23
	cmpq	$0, gimp_render_empty_buf
	je	.LBB2_22
# BB#21:                                # %if.then.25
	movq	gimp_render_empty_buf, %rdi
	callq	g_free
	movq	$0, gimp_render_empty_buf
.LBB2_22:                               # %if.end.26
	cmpq	$0, gimp_render_white_buf
	je	.LBB2_24
# BB#23:                                # %if.then.28
	movq	gimp_render_white_buf, %rdi
	callq	g_free
	movq	$0, gimp_render_white_buf
.LBB2_24:                               # %if.end.29
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_render_exit, .Lfunc_end2-gimp_render_exit
	.cfi_endproc

	.globl	gimp_render_light_check_color
	.align	16, 0x90
	.type	gimp_render_light_check_color,@function
gimp_render_light_check_color:          # @gimp_render_light_check_color
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
	movabsq	$light, %rax
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_render_light_check_color, .Lfunc_end3-gimp_render_light_check_color
	.cfi_endproc

	.globl	gimp_render_dark_check_color
	.align	16, 0x90
	.type	gimp_render_dark_check_color,@function
gimp_render_dark_check_color:           # @gimp_render_dark_check_color
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
	movabsq	$dark, %rax
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_render_dark_check_color, .Lfunc_end4-gimp_render_dark_check_color
	.cfi_endproc

	.type	gimp_render_check_buf,@object # @gimp_render_check_buf
	.bss
	.globl	gimp_render_check_buf
	.align	8
gimp_render_check_buf:
	.quad	0
	.size	gimp_render_check_buf, 8

	.type	gimp_render_empty_buf,@object # @gimp_render_empty_buf
	.globl	gimp_render_empty_buf
	.align	8
gimp_render_empty_buf:
	.quad	0
	.size	gimp_render_empty_buf, 8

	.type	gimp_render_white_buf,@object # @gimp_render_white_buf
	.globl	gimp_render_white_buf
	.align	8
gimp_render_white_buf:
	.quad	0
	.size	gimp_render_white_buf, 8

	.type	gimp_render_blend_dark_check,@object # @gimp_render_blend_dark_check
	.globl	gimp_render_blend_dark_check
	.align	8
gimp_render_blend_dark_check:
	.quad	0
	.size	gimp_render_blend_dark_check, 8

	.type	gimp_render_blend_light_check,@object # @gimp_render_blend_light_check
	.globl	gimp_render_blend_light_check
	.align	8
gimp_render_blend_light_check:
	.quad	0
	.size	gimp_render_blend_light_check, 8

	.type	gimp_render_blend_white,@object # @gimp_render_blend_white
	.globl	gimp_render_blend_white
	.align	8
gimp_render_blend_white:
	.quad	0
	.size	gimp_render_blend_white, 8

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gimp-Widgets"
	.size	.L.str, 13

	.type	.L__func__.gimp_render_init,@object # @__func__.gimp_render_init
.L__func__.gimp_render_init:
	.asciz	"gimp_render_init"
	.size	.L__func__.gimp_render_init, 17

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"GIMP_IS_GIMP (gimp)"
	.size	.L.str.1, 20

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"notify::transparency-type"
	.size	.L.str.2, 26

	.type	.L__func__.gimp_render_exit,@object # @__func__.gimp_render_exit
.L__func__.gimp_render_exit:
	.asciz	"gimp_render_exit"
	.size	.L__func__.gimp_render_exit, 17

	.type	light,@object           # @light
	.local	light
	.comm	light,32,8
	.type	dark,@object            # @dark
	.local	dark
	.comm	dark,32,8
	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"transparency-type"
	.size	.L.str.3, 18


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
