	.text
	.file	"gfig-dobject.bc"
	.globl	d_save_object
	.align	16, 0x90
	.type	d_save_object,@function
d_save_object:                          # @d_save_object
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
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	do_save_obj
	movq	-8(%rbp), %rsi
	movl	(%rsi), %eax
	addl	$-6, %eax
	subl	$3, %eax
	movl	%eax, -20(%rbp)         # 4-byte Spill
	ja	.LBB0_2
	jmp	.LBB0_1
.LBB0_1:                                # %sw.bb
	movabsq	$.L.str, %rsi
	movq	-16(%rbp), %rdi
	movb	$0, %al
	callq	g_string_append_printf
	movabsq	$.L.str.1, %rsi
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movl	16(%rcx), %edx
	movb	$0, %al
	callq	g_string_append_printf
	jmp	.LBB0_3
.LBB0_2:                                # %sw.default
	jmp	.LBB0_3
.LBB0_3:                                # %sw.epilog
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	d_save_object, .Lfunc_end0-d_save_object
	.cfi_endproc

	.globl	do_save_obj
	.align	16, 0x90
	.type	do_save_obj,@function
do_save_obj:                            # @do_save_obj
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	24(%rsi), %rsi
	movq	%rsi, -24(%rbp)
.LBB1_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB1_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB1_1 Depth=1
	movabsq	$.L.str.14, %rsi
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rax
	movl	8(%rax), %edx
	movq	-24(%rbp), %rax
	movl	12(%rax), %ecx
	movb	$0, %al
	callq	g_string_append_printf
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB1_1
.LBB1_4:                                # %for.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	do_save_obj, .Lfunc_end1-do_save_obj
	.cfi_endproc

	.globl	d_load_object
	.align	16, 0x90
	.type	d_load_object,@function
d_load_object:                          # @d_load_object
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
	subq	$336, %rsp              # imm = 0x150
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	-16(%rbp), %rdi
	callq	gfig_read_object_type
	movl	%eax, -308(%rbp)
	cmpl	$0, -308(%rbp)
	jne	.LBB2_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.2, %rdi
	movb	$0, %al
	callq	g_message
	movq	$0, -8(%rbp)
	jmp	.LBB2_19
.LBB2_2:                                # %if.end
	jmp	.LBB2_3
.LBB2_3:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	$256, %esi              # imm = 0x100
	xorl	%ecx, %ecx
	leaq	-304(%rbp), %rdi
	movq	-24(%rbp), %rdx
	callq	get_line
	cmpq	$0, %rax
	je	.LBB2_18
# BB#4:                                 # %while.body
                                        #   in Loop: Header=BB2_3 Depth=1
	movabsq	$.L.str.3, %rsi
	leaq	-36(%rbp), %rdx
	leaq	-40(%rbp), %rcx
	leaq	-304(%rbp), %rdi
	movb	$0, %al
	callq	__isoc99_sscanf
	cmpl	$2, %eax
	je	.LBB2_14
# BB#5:                                 # %if.then.5
                                        #   in Loop: Header=BB2_3 Depth=1
	leaq	-304(%rbp), %rsi
	movl	$.L.str.4, %eax
	movl	%eax, %edi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB2_13
# BB#6:                                 # %if.then.9
                                        #   in Loop: Header=BB2_3 Depth=1
	cmpq	$0, -32(%rbp)
	jne	.LBB2_8
# BB#7:                                 # %if.then.11
	movabsq	$.L.str.5, %rdi
	movb	$0, %al
	callq	g_message
	movq	$0, -8(%rbp)
	jmp	.LBB2_19
.LBB2_8:                                # %if.end.12
                                        #   in Loop: Header=BB2_3 Depth=1
	movl	$256, %esi              # imm = 0x100
	xorl	%ecx, %ecx
	leaq	-304(%rbp), %rdi
	movq	-24(%rbp), %rdx
	callq	get_line
	movabsq	$.L.str.6, %rsi
	leaq	-304(%rbp), %rdi
	movq	-32(%rbp), %rdx
	addq	$16, %rdx
	movq	%rax, -320(%rbp)        # 8-byte Spill
	movb	$0, %al
	callq	__isoc99_sscanf
	cmpl	$1, %eax
	je	.LBB2_10
# BB#9:                                 # %if.then.18
	movabsq	$.L.str.7, %rdi
	movb	$0, %al
	callq	g_message
	movq	-32(%rbp), %rdi
	callq	g_free
	movq	$0, -8(%rbp)
	jmp	.LBB2_19
.LBB2_10:                               # %if.end.19
                                        #   in Loop: Header=BB2_3 Depth=1
	movl	$256, %esi              # imm = 0x100
	xorl	%ecx, %ecx
	leaq	-304(%rbp), %rdi
	movq	-24(%rbp), %rdx
	callq	get_line
	leaq	-304(%rbp), %rsi
	movl	$.L.str.8, %ecx
	movl	%ecx, %edi
	movq	%rax, -328(%rbp)        # 8-byte Spill
	callq	strcmp
	cmpl	$0, %eax
	je	.LBB2_12
# BB#11:                                # %if.then.25
	movabsq	$.L.str.9, %rdi
	movb	$0, %al
	callq	g_message
	movq	-32(%rbp), %rdi
	callq	g_free
	movq	$0, -8(%rbp)
	jmp	.LBB2_19
.LBB2_12:                               # %if.end.26
                                        #   in Loop: Header=BB2_3 Depth=1
	jmp	.LBB2_3
.LBB2_13:                               # %if.else
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB2_19
.LBB2_14:                               # %if.end.27
                                        #   in Loop: Header=BB2_3 Depth=1
	cmpq	$0, -32(%rbp)
	jne	.LBB2_16
# BB#15:                                # %if.then.29
                                        #   in Loop: Header=BB2_3 Depth=1
	movl	-308(%rbp), %edi
	movl	-36(%rbp), %esi
	movl	-40(%rbp), %edx
	callq	d_new_object
	movq	%rax, -32(%rbp)
	jmp	.LBB2_17
.LBB2_16:                               # %if.else.31
                                        #   in Loop: Header=BB2_3 Depth=1
	movl	$4294967295, %ecx       # imm = 0xFFFFFFFF
	movq	-32(%rbp), %rdi
	movl	-36(%rbp), %esi
	movl	-40(%rbp), %edx
	callq	d_pnt_add_line
.LBB2_17:                               # %if.end.32
                                        #   in Loop: Header=BB2_3 Depth=1
	jmp	.LBB2_3
.LBB2_18:                               # %while.end
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB2_19:                               # %return
	movq	-8(%rbp), %rax
	addq	$336, %rsp              # imm = 0x150
	popq	%rbp
	retq
.Lfunc_end2:
	.size	d_load_object, .Lfunc_end2-d_load_object
	.cfi_endproc

	.align	16, 0x90
	.type	gfig_read_object_type,@function
gfig_read_object_type:                  # @gfig_read_object_type
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
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rdi
	movsbl	(%rdi), %eax
	cmpl	$60, %eax
	je	.LBB3_2
# BB#1:                                 # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB3_9
.LBB3_2:                                # %if.end
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -24(%rbp)
	movl	$1, -28(%rbp)
.LBB3_3:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$10, -28(%rbp)
	jae	.LBB3_8
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB3_3 Depth=1
	movabsq	$dobj_class, %rax
	movq	-24(%rbp), %rcx
	movq	-24(%rbp), %rdi
	movl	-28(%rbp), %edx
	movl	%edx, %esi
	imulq	$48, %rsi, %rsi
	addq	%rsi, %rax
	movq	8(%rax), %rsi
	movq	%rcx, -40(%rbp)         # 8-byte Spill
	callq	strstr
	movq	-40(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB3_6
# BB#5:                                 # %if.then.6
	movl	-28(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB3_9
.LBB3_6:                                # %if.end.7
                                        #   in Loop: Header=BB3_3 Depth=1
	jmp	.LBB3_7
.LBB3_7:                                # %for.inc
                                        #   in Loop: Header=BB3_3 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB3_3
.LBB3_8:                                # %for.end
	movl	$0, -4(%rbp)
.LBB3_9:                                # %return
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gfig_read_object_type, .Lfunc_end3-gfig_read_object_type
	.cfi_endproc

	.align	16, 0x90
	.type	g_message,@function
g_message:                              # @g_message
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
	xorl	%r9d, %r9d
	movl	%r9d, %edi
	movl	$32, %esi
	leaq	-32(%rbp), %rcx
	callq	g_logv
	addq	$384, %rsp              # imm = 0x180
	popq	%rbp
	retq
.Lfunc_end4:
	.size	g_message, .Lfunc_end4-g_message
	.cfi_endproc

	.globl	get_line
	.align	16, 0x90
	.type	get_line,@function
get_line:                               # @get_line
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
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	%rdx, -32(%rbp)
	movl	%ecx, -36(%rbp)
	cmpl	$0, -36(%rbp)
	je	.LBB5_2
# BB#1:                                 # %if.then
	movl	$1, line_no
	jmp	.LBB5_3
.LBB5_2:                                # %if.else
	movl	line_no, %eax
	addl	$1, %eax
	movl	%eax, line_no
.LBB5_3:                                # %if.end
	jmp	.LBB5_4
.LBB5_4:                                # %do.body
                                        # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %esi
	movq	-32(%rbp), %rdx
	callq	fgets
	movq	%rax, -48(%rbp)
# BB#5:                                 # %do.cond
                                        #   in Loop: Header=BB5_4 Depth=1
	movq	-32(%rbp), %rdi
	callq	ferror
	xorl	%ecx, %ecx
	movb	%cl, %dl
	cmpl	$0, %eax
	movb	%dl, -49(%rbp)          # 1-byte Spill
	jne	.LBB5_7
# BB#6:                                 # %land.rhs
                                        #   in Loop: Header=BB5_4 Depth=1
	movq	-16(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$35, %ecx
	sete	%dl
	movb	%dl, -49(%rbp)          # 1-byte Spill
.LBB5_7:                                # %land.end
                                        #   in Loop: Header=BB5_4 Depth=1
	movb	-49(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB5_4
# BB#8:                                 # %do.end
	movq	-16(%rbp), %rdi
	callq	strlen
	movl	%eax, %ecx
	movl	%ecx, -40(%rbp)
	cmpl	$0, -40(%rbp)
	jle	.LBB5_10
# BB#9:                                 # %if.then.8
	movl	-40(%rbp), %eax
	subl	$1, %eax
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdx
	movb	$0, (%rdx,%rcx)
.LBB5_10:                               # %if.end.10
	cmpl	$1, -40(%rbp)
	jle	.LBB5_13
# BB#11:                                # %land.lhs.true
	movl	-40(%rbp), %eax
	subl	$2, %eax
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdx
	movsbl	(%rdx,%rcx), %eax
	cmpl	$13, %eax
	jne	.LBB5_13
# BB#12:                                # %if.then.19
	movl	-40(%rbp), %eax
	subl	$2, %eax
	movslq	%eax, %rcx
	movq	-16(%rbp), %rdx
	movb	$0, (%rdx,%rcx)
.LBB5_13:                               # %if.end.23
	movq	-32(%rbp), %rdi
	callq	ferror
	cmpl	$0, %eax
	je	.LBB5_15
# BB#14:                                # %if.then.26
	movabsq	$.L.str.16, %rdi
	callq	gettext
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_warning
	movq	$0, -8(%rbp)
	jmp	.LBB5_16
.LBB5_15:                               # %if.end.28
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB5_16:                               # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	get_line, .Lfunc_end5-get_line
	.cfi_endproc

	.globl	d_new_object
	.align	16, 0x90
	.type	d_new_object,@function
d_new_object:                           # @d_new_object
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
	movl	$1, %eax
	movl	%eax, %ecx
	movl	$208, %eax
	movl	%eax, %r8d
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	%edx, -12(%rbp)
	movq	%rcx, %rdi
	movq	%r8, %rsi
	callq	g_malloc0_n
	movabsq	$dobj_class, %rcx
	movq	%rax, -24(%rbp)
	movl	-4(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	%edx, (%rax)
	movl	-4(%rbp), %edx
	movl	%edx, %eax
	imulq	$48, %rax, %rax
	addq	%rax, %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, 8(%rax)
	movl	-8(%rbp), %edi
	movl	-12(%rbp), %esi
	callq	new_dobjpoint
	movq	-24(%rbp), %rcx
	movq	%rax, 24(%rcx)
	movq	-24(%rbp), %rax
	movl	$0, 16(%rax)
	cmpl	$9, -4(%rbp)
	jne	.LBB6_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movl	$4, 16(%rax)
	jmp	.LBB6_11
.LBB6_2:                                # %if.else
	cmpl	$6, -4(%rbp)
	jne	.LBB6_4
# BB#3:                                 # %if.then.5
	movq	-24(%rbp), %rax
	movl	$3, 16(%rax)
	jmp	.LBB6_10
.LBB6_4:                                # %if.else.7
	cmpl	$8, -4(%rbp)
	jne	.LBB6_6
# BB#5:                                 # %if.then.9
	movq	-24(%rbp), %rax
	movl	$4, 16(%rax)
	jmp	.LBB6_9
.LBB6_6:                                # %if.else.11
	cmpl	$7, -4(%rbp)
	jne	.LBB6_8
# BB#7:                                 # %if.then.13
	movq	-24(%rbp), %rax
	movl	$3, 16(%rax)
.LBB6_8:                                # %if.end
	jmp	.LBB6_9
.LBB6_9:                                # %if.end.15
	jmp	.LBB6_10
.LBB6_10:                               # %if.end.16
	jmp	.LBB6_11
.LBB6_11:                               # %if.end.17
	movq	-24(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	d_new_object, .Lfunc_end6-d_new_object
	.cfi_endproc

	.globl	d_pnt_add_line
	.align	16, 0x90
	.type	d_pnt_add_line,@function
d_pnt_add_line:                         # @d_pnt_add_line
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movl	-12(%rbp), %edi
	movl	-16(%rbp), %esi
	callq	new_dobjpoint
	movq	%rax, -32(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -8(%rbp)
	je	.LBB7_3
# BB#2:                                 # %if.then
	jmp	.LBB7_4
.LBB7_3:                                # %if.else
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L.str.20, %rsi
	movl	$1036, %edx             # imm = 0x40C
	movabsq	$.L__func__.d_pnt_add_line, %rcx
	movabsq	$.L.str.21, %r8
	callq	g_assertion_message_expr
.LBB7_4:                                # %if.end
	jmp	.LBB7_5
.LBB7_5:                                # %do.end
	cmpl	$0, -20(%rbp)
	jne	.LBB7_7
# BB#6:                                 # %if.then.1
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-32(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 24(%rcx)
	jmp	.LBB7_17
.LBB7_7:                                # %if.else.3
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -40(%rbp)
.LBB7_8:                                # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movb	$1, %al
	cmpl	$0, -20(%rbp)
	movb	%al, -41(%rbp)          # 1-byte Spill
	jl	.LBB7_10
# BB#9:                                 # %lor.rhs
                                        #   in Loop: Header=BB7_8 Depth=1
	movl	-20(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -20(%rbp)
	cmpl	$0, %eax
	setg	%dl
	movb	%dl, -41(%rbp)          # 1-byte Spill
.LBB7_10:                               # %lor.end
                                        #   in Loop: Header=BB7_8 Depth=1
	movb	-41(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB7_11
	jmp	.LBB7_16
.LBB7_11:                               # %while.body
                                        #   in Loop: Header=BB7_8 Depth=1
	movq	-40(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB7_13
# BB#12:                                # %lor.lhs.false
                                        #   in Loop: Header=BB7_8 Depth=1
	cmpl	$0, -20(%rbp)
	jne	.LBB7_14
.LBB7_13:                               # %if.then.10
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-32(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	.LBB7_16
.LBB7_14:                               # %if.else.14
                                        #   in Loop: Header=BB7_8 Depth=1
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
# BB#15:                                # %if.end.16
                                        #   in Loop: Header=BB7_8 Depth=1
	jmp	.LBB7_8
.LBB7_16:                               # %while.end
	jmp	.LBB7_17
.LBB7_17:                               # %if.end.17
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	d_pnt_add_line, .Lfunc_end7-d_pnt_add_line
	.cfi_endproc

	.globl	new_dobjpoint
	.align	16, 0x90
	.type	new_dobjpoint,@function
new_dobjpoint:                          # @new_dobjpoint
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
	movl	$1, %eax
	movl	%eax, %ecx
	movl	$24, %eax
	movl	%eax, %edx
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movq	%rcx, %rdi
	movq	%rdx, %rsi
	callq	g_malloc0_n
	movq	%rax, -16(%rbp)
	movl	-4(%rbp), %r8d
	movq	-16(%rbp), %rax
	movl	%r8d, 8(%rax)
	movl	-8(%rbp), %r8d
	movq	-16(%rbp), %rax
	movl	%r8d, 12(%rax)
	movq	-16(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	new_dobjpoint, .Lfunc_end8-new_dobjpoint
	.cfi_endproc

	.globl	gfig_init_object_classes
	.align	16, 0x90
	.type	gfig_init_object_classes,@function
gfig_init_object_classes:               # @gfig_init_object_classes
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
	callq	d_arc_object_class_init
	callq	d_line_object_class_init
	callq	d_rectangle_object_class_init
	callq	d_circle_object_class_init
	callq	d_ellipse_object_class_init
	callq	d_poly_object_class_init
	callq	d_spiral_object_class_init
	callq	d_star_object_class_init
	callq	d_bezier_object_class_init
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gfig_init_object_classes, .Lfunc_end9-gfig_init_object_classes
	.cfi_endproc

	.globl	d_delete_dobjpoints
	.align	16, 0x90
	.type	d_delete_dobjpoints,@function
d_delete_dobjpoints:                    # @d_delete_dobjpoints
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
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)
.LBB10_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB10_3
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB10_1 Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	callq	g_free
	movq	-16(%rbp), %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB10_1
.LBB10_3:                               # %while.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	d_delete_dobjpoints, .Lfunc_end10-d_delete_dobjpoints
	.cfi_endproc

	.globl	d_copy_dobjpoints
	.align	16, 0x90
	.type	d_copy_dobjpoints,@function
d_copy_dobjpoints:                      # @d_copy_dobjpoints
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	$0, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -40(%rbp)
.LBB11_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB11_7
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB11_1 Depth=1
	movq	-40(%rbp), %rax
	movl	8(%rax), %edi
	movq	-40(%rbp), %rax
	movl	12(%rax), %esi
	callq	new_dobjpoint
	movq	%rax, -32(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB11_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB11_1 Depth=1
	movq	-32(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	%rax, -24(%rbp)
	jmp	.LBB11_5
.LBB11_4:                               # %if.else
                                        #   in Loop: Header=BB11_1 Depth=1
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-32(%rbp), %rax
	movq	%rax, -24(%rbp)
.LBB11_5:                               # %if.end
                                        #   in Loop: Header=BB11_1 Depth=1
	jmp	.LBB11_6
.LBB11_6:                               # %for.inc
                                        #   in Loop: Header=BB11_1 Depth=1
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB11_1
.LBB11_7:                               # %for.end
	movq	-16(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	d_copy_dobjpoints, .Lfunc_end11-d_copy_dobjpoints
	.cfi_endproc

	.globl	object_operation_start
	.align	16, 0x90
	.type	object_operation_start,@function
object_operation_start:                 # @object_operation_start
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	gfig_context, %rdi
	movq	16(%rdi), %rdi
	movq	-8(%rbp), %rsi
	callq	get_nearest_objs
	movq	%rax, operation_obj
	cmpl	$0, -12(%rbp)
	je	.LBB12_3
# BB#1:                                 # %land.lhs.true
	cmpl	$11, selvals+140
	jne	.LBB12_3
# BB#2:                                 # %if.then
	movl	$1, %eax
	movl	%eax, %edi
	movl	$8, %eax
	movl	%eax, %esi
	callq	g_malloc_n
	movq	%rax, move_all_pnt
	movq	move_all_pnt, %rax
	movq	-8(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, (%rax)
	callq	setup_undo
	jmp	.LBB12_27
.LBB12_3:                               # %if.end
	cmpq	$0, operation_obj
	jne	.LBB12_5
# BB#4:                                 # %if.then.3
	jmp	.LBB12_27
.LBB12_5:                               # %if.end.4
	movq	operation_obj(%rip), %rax
	movq	gfig_context(%rip), %rcx
	movq	%rax, 24(%rcx)
	callq	setup_undo
	movl	selvals+140(%rip), %edx
	addl	$-11, %edx
	movl	%edx, %eax
	subl	$5, %edx
	movq	%rax, -32(%rbp)         # 8-byte Spill
	movl	%edx, -36(%rbp)         # 4-byte Spill
	ja	.LBB12_26
# BB#28:                                # %if.end.4
	movq	-32(%rbp), %rax         # 8-byte Reload
	movq	.LJTI12_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB12_6:                               # %sw.bb
	movq	operation_obj, %rax
	cmpl	$9, (%rax)
	jne	.LBB12_8
# BB#7:                                 # %if.then.6
	movq	operation_obj, %rax
	movq	%rax, tmp_bezier
.LBB12_8:                               # %if.end.7
	jmp	.LBB12_27
.LBB12_9:                               # %sw.bb.8
	movq	operation_obj, %rax
	cmpl	$9, (%rax)
	jne	.LBB12_11
# BB#10:                                # %if.then.11
	movq	operation_obj, %rax
	movq	%rax, tmp_bezier
.LBB12_11:                              # %if.end.12
	movq	operation_obj, %rax
	cmpl	$6, (%rax)
	je	.LBB12_13
# BB#12:                                # %lor.lhs.false
	movq	operation_obj, %rax
	cmpl	$7, (%rax)
	jne	.LBB12_19
.LBB12_13:                              # %land.lhs.true.17
	cmpl	$0, -12(%rbp)
	je	.LBB12_19
# BB#14:                                # %if.then.19
	movq	operation_obj(%rip), %rax
	movl	(%rax), %ecx
	movl	%ecx, %edx
	subl	$6, %edx
	movl	%ecx, -40(%rbp)         # 4-byte Spill
	movl	%edx, -44(%rbp)         # 4-byte Spill
	je	.LBB12_15
	jmp	.LBB12_29
.LBB12_29:                              # %if.then.19
	movl	-40(%rbp), %eax         # 4-byte Reload
	subl	$7, %eax
	movl	%eax, -48(%rbp)         # 4-byte Spill
	je	.LBB12_16
	jmp	.LBB12_17
.LBB12_15:                              # %sw.bb.21
	movq	operation_obj, %rdi
	callq	d_poly2lines
	jmp	.LBB12_18
.LBB12_16:                              # %sw.bb.22
	movq	operation_obj, %rdi
	callq	d_star2lines
	jmp	.LBB12_18
.LBB12_17:                              # %sw.default
	jmp	.LBB12_18
.LBB12_18:                              # %sw.epilog
	movq	operation_obj, %rax
	movq	24(%rax), %rdi
	movq	-8(%rbp), %rsi
	callq	scan_obj_points
	movq	gfig_context, %rsi
	movq	32(%rsi), %rdi
	movl	%eax, -52(%rbp)         # 4-byte Spill
	callq	gtk_widget_queue_draw
.LBB12_19:                              # %if.end.24
	jmp	.LBB12_27
.LBB12_20:                              # %sw.bb.25
	movq	operation_obj, %rax
	movq	8(%rax), %rax
	movq	32(%rax), %rax
	movq	operation_obj, %rdi
	callq	*%rax
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB12_22
# BB#21:                                # %if.then.28
	movabsq	$.L.str.10, %rdx
	movq	-24(%rbp), %rax
	addq	$32, %rax
	movq	operation_obj, %rcx
	addq	$32, %rcx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	gfig_style_copy
	movq	-24(%rbp), %rax
	movq	24(%rax), %rdi
	movq	-8(%rbp), %rsi
	callq	scan_obj_points
	movq	gfig_context, %rcx
	movq	16(%rcx), %rdi
	movq	-24(%rbp), %rsi
	movl	%eax, -56(%rbp)         # 4-byte Spill
	callq	add_to_all_obj
	movq	-24(%rbp), %rcx
	movq	%rcx, operation_obj
	movl	$14, selvals+140
	movq	gfig_context, %rcx
	movq	32(%rcx), %rdi
	callq	gtk_widget_queue_draw
.LBB12_22:                              # %if.end.34
	jmp	.LBB12_27
.LBB12_23:                              # %sw.bb.35
	movq	gfig_context, %rax
	movq	16(%rax), %rdi
	movq	operation_obj, %rsi
	callq	remove_obj_from_list
	jmp	.LBB12_27
.LBB12_24:                              # %sw.bb.37
	jmp	.LBB12_27
.LBB12_25:                              # %sw.bb.38
	jmp	.LBB12_26
.LBB12_26:                              # %sw.default.39
	movabsq	$.L.str.11, %rdi
	movb	$0, %al
	callq	g_warning
.LBB12_27:                              # %sw.epilog.40
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	object_operation_start, .Lfunc_end12-object_operation_start
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI12_0:
	.quad	.LBB12_6
	.quad	.LBB12_9
	.quad	.LBB12_20
	.quad	.LBB12_25
	.quad	.LBB12_23
	.quad	.LBB12_24

	.text
	.align	16, 0x90
	.type	get_nearest_objs,@function
get_nearest_objs:                       # @get_nearest_objs
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
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	$0, -44(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB13_2
# BB#1:                                 # %if.then
	movq	$0, -8(%rbp)
	jmp	.LBB13_15
.LBB13_2:                               # %if.end
	movq	-16(%rbp), %rax
	movq	96(%rax), %rax
	movq	%rax, -32(%rbp)
.LBB13_3:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB13_14
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB13_3 Depth=1
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movl	-44(%rbp), %ecx
	cmpl	obj_show_single, %ecx
	je	.LBB13_6
# BB#5:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB13_3 Depth=1
	cmpl	$-1, obj_show_single
	jne	.LBB13_9
.LBB13_6:                               # %if.then.3
                                        #   in Loop: Header=BB13_3 Depth=1
	movq	-40(%rbp), %rax
	movq	24(%rax), %rdi
	movq	-24(%rbp), %rsi
	callq	scan_obj_points
	cmpl	$0, %eax
	je	.LBB13_8
# BB#7:                                 # %if.then.5
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB13_15
.LBB13_8:                               # %if.end.6
                                        #   in Loop: Header=BB13_3 Depth=1
	jmp	.LBB13_9
.LBB13_9:                               # %if.end.7
                                        #   in Loop: Header=BB13_3 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
# BB#10:                                # %for.inc
                                        #   in Loop: Header=BB13_3 Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB13_12
# BB#11:                                # %cond.true
                                        #   in Loop: Header=BB13_3 Depth=1
	movq	-32(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	jmp	.LBB13_13
.LBB13_12:                              # %cond.false
                                        #   in Loop: Header=BB13_3 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	jmp	.LBB13_13
.LBB13_13:                              # %cond.end
                                        #   in Loop: Header=BB13_3 Depth=1
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	%rax, -32(%rbp)
	jmp	.LBB13_3
.LBB13_14:                              # %for.end
	movq	$0, -8(%rbp)
.LBB13_15:                              # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	get_nearest_objs, .Lfunc_end13-get_nearest_objs
	.cfi_endproc

	.globl	setup_undo
	.align	16, 0x90
	.type	setup_undo,@function
setup_undo:                             # @setup_undo
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
	movq	gfig_context, %rax
	cmpq	$0, 16(%rax)
	jne	.LBB14_2
# BB#1:                                 # %if.then
	jmp	.LBB14_12
.LBB14_2:                               # %if.end
	movl	undo_level, %eax
	movl	selvals+68, %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	jl	.LBB14_10
# BB#3:                                 # %if.then.1
	cmpq	$0, undo_table
	je	.LBB14_5
# BB#4:                                 # %if.then.3
	movq	undo_table, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	callq	free_one_obj
.LBB14_5:                               # %if.end.4
	movl	$0, -4(%rbp)
.LBB14_6:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-4(%rbp), %eax
	cmpl	undo_level, %eax
	jge	.LBB14_9
# BB#7:                                 # %for.body
                                        #   in Loop: Header=BB14_6 Depth=1
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	movq	undo_table(,%rcx,8), %rcx
	movslq	-4(%rbp), %rdx
	movq	%rcx, undo_table(,%rdx,8)
# BB#8:                                 # %for.inc
                                        #   in Loop: Header=BB14_6 Depth=1
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB14_6
.LBB14_9:                               # %for.end
	jmp	.LBB14_11
.LBB14_10:                              # %if.else
	movl	undo_level, %eax
	addl	$1, %eax
	movl	%eax, undo_level
.LBB14_11:                              # %if.end.9
	movq	gfig_context, %rax
	movq	16(%rax), %rax
	movq	96(%rax), %rdi
	callq	copy_all_objs
	movabsq	$.L.str.17, %rdi
	movl	$1, %esi
	movslq	undo_level, %rcx
	movq	%rax, undo_table(,%rcx,8)
	callq	gfig_dialog_action_set_sensitive
	movq	gfig_context, %rax
	movq	16(%rax), %rax
	movl	104(%rax), %esi
	orl	$1, %esi
	movl	%esi, 104(%rax)
.LBB14_12:                              # %return
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	setup_undo, .Lfunc_end14-setup_undo
	.cfi_endproc

	.align	16, 0x90
	.type	scan_obj_points,@function
scan_obj_points:                        # @scan_obj_points
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
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
.LBB15_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -16(%rbp)
	je	.LBB15_5
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB15_1 Depth=1
	movq	-16(%rbp), %rax
	addq	$8, %rax
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	inside_sqr
	cmpl	$0, %eax
	je	.LBB15_4
# BB#3:                                 # %if.then
	movq	-16(%rbp), %rax
	movl	$1, 16(%rax)
	movl	$1, -4(%rbp)
	jmp	.LBB15_6
.LBB15_4:                               # %if.end
                                        #   in Loop: Header=BB15_1 Depth=1
	movq	-16(%rbp), %rax
	movl	$0, 16(%rax)
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB15_1
.LBB15_5:                               # %while.end
	movl	$0, -4(%rbp)
.LBB15_6:                               # %return
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	scan_obj_points, .Lfunc_end15-scan_obj_points
	.cfi_endproc

	.globl	add_to_all_obj
	.align	16, 0x90
	.type	add_to_all_obj,@function
add_to_all_obj:                         # @add_to_all_obj
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	g_list_append
	movq	%rax, -24(%rbp)
	cmpl	$0, need_to_scale
	je	.LBB16_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	24(%rax), %rdi
	movsd	scale_x_factor, %xmm0   # xmm0 = mem[0],zero
	movsd	scale_y_factor, %xmm1   # xmm1 = mem[0],zero
	callq	scale_obj_points
.LBB16_2:                               # %if.end
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	prepend_to_all_obj
	movq	-16(%rbp), %rsi
	movq	gfig_context, %rdi
	movq	%rsi, 24(%rdi)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	add_to_all_obj, .Lfunc_end16-add_to_all_obj
	.cfi_endproc

	.align	16, 0x90
	.type	remove_obj_from_list,@function
remove_obj_from_list:                   # @remove_obj_from_list
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
	movq	%rsi, -16(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -16(%rbp)
	je	.LBB17_3
# BB#2:                                 # %if.then
	jmp	.LBB17_4
.LBB17_3:                               # %if.else
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L.str.20, %rsi
	movl	$557, %edx              # imm = 0x22D
	movabsq	$.L__func__.remove_obj_from_list, %rcx
	movabsq	$.L.str.22, %r8
	callq	g_assertion_message_expr
.LBB17_4:                               # %if.end
	jmp	.LBB17_5
.LBB17_5:                               # %do.end
	movq	-8(%rbp), %rax
	movq	96(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	callq	g_list_find
	cmpq	$0, %rax
	je	.LBB17_12
# BB#6:                                 # %if.then.1
	movq	-8(%rbp), %rax
	movq	96(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	%rax, %rsi
	callq	g_list_remove
	movq	-8(%rbp), %rsi
	movq	%rax, 96(%rsi)
	movq	-16(%rbp), %rdi
	callq	free_one_obj
	movq	-8(%rbp), %rax
	cmpq	$0, 96(%rax)
	je	.LBB17_8
# BB#7:                                 # %if.then.7
	movq	-8(%rbp), %rax
	movq	96(%rax), %rax
	movq	(%rax), %rax
	movq	gfig_context, %rcx
	movq	%rax, 24(%rcx)
	jmp	.LBB17_9
.LBB17_8:                               # %if.else.9
	movq	gfig_context, %rax
	movq	$0, 24(%rax)
.LBB17_9:                               # %if.end.11
	cmpl	$-1, obj_show_single
	je	.LBB17_11
# BB#10:                                # %if.then.13
	callq	draw_grid_clear
	movl	$-1, obj_show_single
.LBB17_11:                              # %if.end.14
	movq	gfig_context, %rax
	movq	32(%rax), %rdi
	callq	gtk_widget_queue_draw
	jmp	.LBB17_13
.LBB17_12:                              # %if.else.15
	movabsq	$.L.str.23, %rdi
	callq	gettext
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_warning
.LBB17_13:                              # %if.end.17
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	remove_obj_from_list, .Lfunc_end17-remove_obj_from_list
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
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
	je	.LBB18_2
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
.LBB18_2:                               # %entry
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
.Lfunc_end18:
	.size	g_warning, .Lfunc_end18-g_warning
	.cfi_endproc

	.globl	object_operation_end
	.align	16, 0x90
	.type	object_operation_end,@function
object_operation_end:                   # @object_operation_end
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	cmpl	$15, selvals+140
	je	.LBB19_4
# BB#1:                                 # %land.lhs.true
	cmpq	$0, operation_obj
	je	.LBB19_4
# BB#2:                                 # %land.lhs.true.1
	movq	operation_obj, %rax
	cmpl	$9, (%rax)
	jne	.LBB19_4
# BB#3:                                 # %if.then
	movq	$0, tmp_bezier
.LBB19_4:                               # %if.end
	cmpq	$0, operation_obj
	je	.LBB19_7
# BB#5:                                 # %land.lhs.true.4
	cmpl	$15, selvals+140
	je	.LBB19_7
# BB#6:                                 # %if.then.6
	movq	operation_obj, %rax
	addq	$32, %rax
	movq	%rax, %rdi
	callq	gfig_style_set_context_from_style
.LBB19_7:                               # %if.end.7
	movq	$0, operation_obj
	cmpq	$0, move_all_pnt
	je	.LBB19_9
# BB#8:                                 # %if.then.9
	movq	move_all_pnt, %rax
	movq	%rax, %rdi
	callq	g_free
	movq	$0, move_all_pnt
.LBB19_9:                               # %if.end.10
	cmpl	$14, selvals+140
	jne	.LBB19_11
# BB#10:                                # %if.then.12
	movl	$13, selvals+140
.LBB19_11:                              # %if.end.13
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	object_operation_end, .Lfunc_end19-object_operation_end
	.cfi_endproc

	.globl	object_operation
	.align	16, 0x90
	.type	object_operation,@function
object_operation:                       # @object_operation
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
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	cmpq	$0, move_all_pnt
	je	.LBB20_4
# BB#1:                                 # %land.lhs.true
	cmpl	$0, -12(%rbp)
	je	.LBB20_4
# BB#2:                                 # %land.lhs.true.2
	cmpl	$11, selvals+140
	jne	.LBB20_4
# BB#3:                                 # %if.then
	movq	-8(%rbp), %rdi
	callq	do_move_all_obj
	jmp	.LBB20_18
.LBB20_4:                               # %if.end
	cmpq	$0, operation_obj
	jne	.LBB20_6
# BB#5:                                 # %if.then.4
	jmp	.LBB20_18
.LBB20_6:                               # %if.end.5
	movl	selvals+140(%rip), %eax
	addl	$-11, %eax
	movl	%eax, %ecx
	subl	$5, %eax
	movq	%rcx, -24(%rbp)         # 8-byte Spill
	movl	%eax, -28(%rbp)         # 4-byte Spill
	ja	.LBB20_17
# BB#19:                                # %if.end.5
	movq	-24(%rbp), %rax         # 8-byte Reload
	movq	.LJTI20_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB20_7:                               # %sw.bb
	movq	operation_obj(%rip), %rax
	movl	(%rax), %ecx
	decl	%ecx
	subl	$8, %ecx
	movl	%ecx, -32(%rbp)         # 4-byte Spill
	ja	.LBB20_9
	jmp	.LBB20_8
.LBB20_8:                               # %sw.bb.6
	movq	operation_obj, %rdi
	movq	-8(%rbp), %rsi
	callq	do_move_obj
	jmp	.LBB20_10
.LBB20_9:                               # %sw.default
	movabsq	$.L.str.12, %rdi
	movb	$0, %al
	callq	g_warning
.LBB20_10:                              # %sw.epilog
	jmp	.LBB20_18
.LBB20_11:                              # %sw.bb.7
	movq	operation_obj(%rip), %rax
	movl	(%rax), %ecx
	decl	%ecx
	subl	$8, %ecx
	movl	%ecx, -36(%rbp)         # 4-byte Spill
	ja	.LBB20_13
	jmp	.LBB20_12
.LBB20_12:                              # %sw.bb.9
	movq	operation_obj, %rdi
	movq	-8(%rbp), %rsi
	callq	do_move_obj_pnt
	jmp	.LBB20_14
.LBB20_13:                              # %sw.default.10
	movabsq	$.L.str.12, %rdi
	movb	$0, %al
	callq	g_warning
.LBB20_14:                              # %sw.epilog.11
	jmp	.LBB20_18
.LBB20_15:                              # %sw.bb.12
	jmp	.LBB20_18
.LBB20_16:                              # %sw.bb.13
	jmp	.LBB20_17
.LBB20_17:                              # %sw.default.14
	movabsq	$.L.str.13, %rdi
	movb	$0, %al
	callq	g_warning
.LBB20_18:                              # %sw.epilog.15
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	object_operation, .Lfunc_end20-object_operation
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI20_0:
	.quad	.LBB20_7
	.quad	.LBB20_11
	.quad	.LBB20_16
	.quad	.LBB20_7
	.quad	.LBB20_15
	.quad	.LBB20_15

	.text
	.align	16, 0x90
	.type	do_move_all_obj,@function
do_move_all_obj:                        # @do_move_all_obj
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
	movq	%rdi, -8(%rbp)
	movq	move_all_pnt, %rdi
	movl	(%rdi), %eax
	movq	-8(%rbp), %rdi
	subl	(%rdi), %eax
	movl	%eax, -12(%rbp)
	movq	move_all_pnt, %rdi
	movl	4(%rdi), %eax
	movq	-8(%rbp), %rdi
	subl	4(%rdi), %eax
	movl	%eax, -16(%rbp)
	cmpl	$0, -12(%rbp)
	jne	.LBB21_2
# BB#1:                                 # %lor.lhs.false
	cmpl	$0, -16(%rbp)
	je	.LBB21_7
.LBB21_2:                               # %if.then
	movq	gfig_context, %rax
	movq	16(%rax), %rax
	movq	96(%rax), %rax
	movq	%rax, -24(%rbp)
.LBB21_3:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB21_6
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB21_3 Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	callq	update_pnts
# BB#5:                                 # %for.inc
                                        #   in Loop: Header=BB21_3 Depth=1
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB21_3
.LBB21_6:                               # %for.end
	movq	move_all_pnt, %rax
	movq	-8(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, (%rax)
	movq	gfig_context, %rax
	movq	32(%rax), %rdi
	callq	gtk_widget_queue_draw
.LBB21_7:                               # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	do_move_all_obj, .Lfunc_end21-do_move_all_obj
	.cfi_endproc

	.align	16, 0x90
	.type	do_move_obj,@function
do_move_obj:                            # @do_move_obj
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
	leaq	-20(%rbp), %rax
	leaq	-24(%rbp), %rdx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$0, -20(%rbp)
	movl	$0, -24(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	%rax, %rsi
	callq	get_diffs
	cmpl	$0, -20(%rbp)
	movq	%rax, -32(%rbp)         # 8-byte Spill
	jne	.LBB22_2
# BB#1:                                 # %lor.lhs.false
	cmpl	$0, -24(%rbp)
	je	.LBB22_3
.LBB22_2:                               # %if.then
	movq	-8(%rbp), %rdi
	movl	-20(%rbp), %esi
	movl	-24(%rbp), %edx
	callq	update_pnts
	movq	gfig_context, %rdi
	movq	32(%rdi), %rdi
	callq	gtk_widget_queue_draw
.LBB22_3:                               # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	do_move_obj, .Lfunc_end22-do_move_obj
	.cfi_endproc

	.align	16, 0x90
	.type	do_move_obj_pnt,@function
do_move_obj_pnt:                        # @do_move_obj_pnt
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
	leaq	-28(%rbp), %rax
	leaq	-32(%rbp), %rdx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$0, -28(%rbp)
	movl	$0, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rcx
	movq	%rax, %rsi
	callq	get_diffs
	movq	%rax, -24(%rbp)
	cmpl	$0, -28(%rbp)
	jne	.LBB23_2
# BB#1:                                 # %land.lhs.true
	cmpl	$0, -32(%rbp)
	je	.LBB23_3
.LBB23_2:                               # %lor.lhs.false
	cmpq	$0, -24(%rbp)
	jne	.LBB23_4
.LBB23_3:                               # %if.then
	jmp	.LBB23_5
.LBB23_4:                               # %if.end
	movq	-24(%rbp), %rax
	movl	8(%rax), %ecx
	subl	-28(%rbp), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, 8(%rax)
	movq	-24(%rbp), %rax
	movl	12(%rax), %ecx
	subl	-32(%rbp), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, 12(%rax)
	movq	gfig_context, %rax
	movq	32(%rax), %rdi
	callq	gtk_widget_queue_draw
.LBB23_5:                               # %return
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end23:
	.size	do_move_obj_pnt, .Lfunc_end23-do_move_obj_pnt
	.cfi_endproc

	.globl	copy_all_objs
	.align	16, 0x90
	.type	copy_all_objs,@function
copy_all_objs:                          # @copy_all_objs
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	$0, -16(%rbp)
.LBB24_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -8(%rbp)
	je	.LBB24_3
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB24_1 Depth=1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	32(%rax), %rax
	movq	-24(%rbp), %rdi
	callq	*%rax
	movabsq	$.L.str.10, %rdx
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	addq	$32, %rax
	movq	-24(%rbp), %rdi
	addq	$32, %rdi
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-40(%rbp), %rsi         # 8-byte Reload
	callq	gfig_style_copy
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	callq	g_list_prepend
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB24_1
.LBB24_3:                               # %while.end
	movq	-16(%rbp), %rdi
	callq	g_list_reverse
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end24:
	.size	copy_all_objs, .Lfunc_end24-copy_all_objs
	.cfi_endproc

	.globl	draw_objects
	.align	16, 0x90
	.type	draw_objects,@function
draw_objects:                           # @draw_objects
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movl	$0, -28(%rbp)
.LBB25_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -8(%rbp)
	je	.LBB25_10
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB25_1 Depth=1
	cmpl	$0, -12(%rbp)
	je	.LBB25_5
# BB#3:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB25_1 Depth=1
	movl	-28(%rbp), %eax
	cmpl	obj_show_single, %eax
	je	.LBB25_5
# BB#4:                                 # %lor.lhs.false.2
                                        #   in Loop: Header=BB25_1 Depth=1
	cmpl	$-1, obj_show_single
	jne	.LBB25_6
.LBB25_5:                               # %if.then
                                        #   in Loop: Header=BB25_1 Depth=1
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	draw_one_obj
.LBB25_6:                               # %if.end
                                        #   in Loop: Header=BB25_1 Depth=1
	cmpq	$0, -8(%rbp)
	je	.LBB25_8
# BB#7:                                 # %cond.true
                                        #   in Loop: Header=BB25_1 Depth=1
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	jmp	.LBB25_9
.LBB25_8:                               # %cond.false
                                        #   in Loop: Header=BB25_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -40(%rbp)         # 8-byte Spill
	jmp	.LBB25_9
.LBB25_9:                               # %cond.end
                                        #   in Loop: Header=BB25_1 Depth=1
	movq	-40(%rbp), %rax         # 8-byte Reload
	movq	%rax, -8(%rbp)
	movl	-28(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -28(%rbp)
	jmp	.LBB25_1
.LBB25_10:                              # %while.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end25:
	.size	draw_objects, .Lfunc_end25-draw_objects
	.cfi_endproc

	.align	16, 0x90
	.type	draw_one_obj,@function
draw_one_obj:                           # @draw_one_obj
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	8(%rsi), %rsi
	movq	16(%rsi), %rsi
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	%rsi, -24(%rbp)         # 8-byte Spill
	movq	%rax, %rsi
	movq	-24(%rbp), %rax         # 8-byte Reload
	callq	*%rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end26:
	.size	draw_one_obj, .Lfunc_end26-draw_one_obj
	.cfi_endproc

	.globl	prepend_to_all_obj
	.align	16, 0x90
	.type	prepend_to_all_obj,@function
prepend_to_all_obj:                     # @prepend_to_all_obj
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	callq	setup_undo
	movq	-8(%rbp), %rsi
	movq	96(%rsi), %rdi
	movq	-16(%rbp), %rsi
	callq	g_list_concat
	movq	-8(%rbp), %rsi
	movq	%rax, 96(%rsi)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end27:
	.size	prepend_to_all_obj, .Lfunc_end27-prepend_to_all_obj
	.cfi_endproc

	.align	16, 0x90
	.type	scale_obj_points,@function
scale_obj_points:                       # @scale_obj_points
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
	movq	%rdi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
	movsd	%xmm1, -24(%rbp)
.LBB28_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -8(%rbp)
	je	.LBB28_3
# BB#2:                                 # %while.body
                                        #   in Loop: Header=BB28_1 Depth=1
	movq	-8(%rbp), %rax
	cvtsi2sdl	8(%rax), %xmm0
	mulsd	-16(%rbp), %xmm0
	cvttsd2si	%xmm0, %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 8(%rax)
	movq	-8(%rbp), %rax
	cvtsi2sdl	12(%rax), %xmm0
	mulsd	-24(%rbp), %xmm0
	cvttsd2si	%xmm0, %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 12(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB28_1
.LBB28_3:                               # %while.end
	popq	%rbp
	retq
.Lfunc_end28:
	.size	scale_obj_points, .Lfunc_end28-scale_obj_points
	.cfi_endproc

	.globl	object_start
	.align	16, 0x90
	.type	object_start,@function
object_start:                           # @object_start
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	cmpl	$0, selvals+120
	jne	.LBB29_2
# BB#1:                                 # %if.then
	movl	$1, need_to_scale
	movl	$1, selvals+120
	jmp	.LBB29_3
.LBB29_2:                               # %if.else
	movl	$0, need_to_scale
.LBB29_3:                               # %if.end
	movl	selvals+140(%rip), %eax
	decl	%eax
	movl	%eax, %ecx
	subl	$8, %eax
	movq	%rcx, -24(%rbp)         # 8-byte Spill
	movl	%eax, -28(%rbp)         # 4-byte Spill
	ja	.LBB29_13
# BB#19:                                # %if.end
	movq	-24(%rbp), %rax         # 8-byte Reload
	movq	.LJTI29_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB29_4:                               # %sw.bb
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	callq	d_line_start
	jmp	.LBB29_14
.LBB29_5:                               # %sw.bb.1
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	callq	d_rectangle_start
	jmp	.LBB29_14
.LBB29_6:                               # %sw.bb.2
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	callq	d_circle_start
	jmp	.LBB29_14
.LBB29_7:                               # %sw.bb.3
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	callq	d_ellipse_start
	jmp	.LBB29_14
.LBB29_8:                               # %sw.bb.4
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	callq	d_poly_start
	jmp	.LBB29_14
.LBB29_9:                               # %sw.bb.5
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	callq	d_arc_start
	jmp	.LBB29_14
.LBB29_10:                              # %sw.bb.6
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	callq	d_star_start
	jmp	.LBB29_14
.LBB29_11:                              # %sw.bb.7
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	callq	d_spiral_start
	jmp	.LBB29_14
.LBB29_12:                              # %sw.bb.8
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	callq	d_bezier_start
	jmp	.LBB29_14
.LBB29_13:                              # %sw.default
	jmp	.LBB29_14
.LBB29_14:                              # %sw.epilog
	cmpq	$0, obj_creating
	je	.LBB29_18
# BB#15:                                # %if.then.10
	movq	gfig_context, %rax
	cmpl	$0, (%rax)
	je	.LBB29_17
# BB#16:                                # %if.then.12
	movabsq	$.L.str.15, %rdi
	movb	$0, %al
	callq	g_printerr
.LBB29_17:                              # %if.end.13
	movq	obj_creating, %rax
	addq	$32, %rax
	movq	%rax, %rdi
	callq	gfig_style_set_style_from_context
.LBB29_18:                              # %if.end.14
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end29:
	.size	object_start, .Lfunc_end29-object_start
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI29_0:
	.quad	.LBB29_4
	.quad	.LBB29_5
	.quad	.LBB29_6
	.quad	.LBB29_7
	.quad	.LBB29_9
	.quad	.LBB29_8
	.quad	.LBB29_10
	.quad	.LBB29_11
	.quad	.LBB29_12

	.text
	.globl	object_end
	.align	16, 0x90
	.type	object_end,@function
object_end:                             # @object_end
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	selvals+140(%rip), %esi
	decl	%esi
	movl	%esi, %edi
	subl	$8, %esi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	movl	%esi, -28(%rbp)         # 4-byte Spill
	ja	.LBB30_10
# BB#14:                                # %entry
	movq	-24(%rbp), %rax         # 8-byte Reload
	movq	.LJTI30_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB30_1:                               # %sw.bb
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	callq	d_line_end
	jmp	.LBB30_11
.LBB30_2:                               # %sw.bb.1
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	callq	d_rectangle_end
	jmp	.LBB30_11
.LBB30_3:                               # %sw.bb.2
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	callq	d_circle_end
	jmp	.LBB30_11
.LBB30_4:                               # %sw.bb.3
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	callq	d_ellipse_end
	jmp	.LBB30_11
.LBB30_5:                               # %sw.bb.4
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	callq	d_poly_end
	jmp	.LBB30_11
.LBB30_6:                               # %sw.bb.5
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	callq	d_star_end
	jmp	.LBB30_11
.LBB30_7:                               # %sw.bb.6
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	callq	d_arc_end
	jmp	.LBB30_11
.LBB30_8:                               # %sw.bb.7
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	callq	d_spiral_end
	jmp	.LBB30_11
.LBB30_9:                               # %sw.bb.8
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	callq	d_bezier_end
	jmp	.LBB30_11
.LBB30_10:                              # %sw.default
	jmp	.LBB30_11
.LBB30_11:                              # %sw.epilog
	cmpl	$0, need_to_scale
	je	.LBB30_13
# BB#12:                                # %if.then
	movl	$0, need_to_scale
	movl	$0, selvals+120
.LBB30_13:                              # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end30:
	.size	object_end, .Lfunc_end30-object_end
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI30_0:
	.quad	.LBB30_1
	.quad	.LBB30_2
	.quad	.LBB30_3
	.quad	.LBB30_4
	.quad	.LBB30_7
	.quad	.LBB30_5
	.quad	.LBB30_6
	.quad	.LBB30_8
	.quad	.LBB30_9

	.text
	.globl	free_one_obj
	.align	16, 0x90
	.type	free_one_obj,@function
free_one_obj:                           # @free_one_obj
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	24(%rdi), %rdi
	callq	d_delete_dobjpoints
	movq	-8(%rbp), %rdi
	callq	g_free
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end31:
	.size	free_one_obj, .Lfunc_end31-free_one_obj
	.cfi_endproc

	.globl	free_all_objs
	.align	16, 0x90
	.type	free_all_objs,@function
free_all_objs:                          # @free_all_objs
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp96:
	.cfi_def_cfa_offset 16
.Ltmp97:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp98:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movabsq	$free_one_obj, %rax
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rax, %rsi
	callq	g_list_free_full
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end32:
	.size	free_all_objs, .Lfunc_end32-free_all_objs
	.cfi_endproc

	.globl	clear_undo
	.align	16, 0x90
	.type	clear_undo,@function
clear_undo:                             # @clear_undo
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp99:
	.cfi_def_cfa_offset 16
.Ltmp100:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp101:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	undo_level, %eax
	movl	%eax, -4(%rbp)
.LBB33_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$0, -4(%rbp)
	jl	.LBB33_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB33_1 Depth=1
	movslq	-4(%rbp), %rax
	movq	undo_table(,%rax,8), %rdi
	callq	free_all_objs
	movslq	-4(%rbp), %rax
	movq	$0, undo_table(,%rax,8)
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB33_1 Depth=1
	movl	-4(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB33_1
.LBB33_4:                               # %for.end
	movabsq	$.L.str.17, %rdi
	xorl	%esi, %esi
	movl	$-1, undo_level
	callq	gfig_dialog_action_set_sensitive
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end33:
	.size	clear_undo, .Lfunc_end33-clear_undo
	.cfi_endproc

	.globl	new_obj_2edit
	.align	16, 0x90
	.type	new_obj_2edit,@function
new_obj_2edit:                          # @new_obj_2edit
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp102:
	.cfi_def_cfa_offset 16
.Ltmp103:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp104:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	gfig_context, %rdi
	movq	16(%rdi), %rdi
	movq	%rdi, -16(%rbp)
	callq	clear_undo
	movq	-8(%rbp), %rdi
	movq	gfig_context, %rax
	movq	%rdi, 16(%rax)
	movl	$-1, obj_show_single
	movq	-16(%rbp), %rdi
	callq	options_update
	movq	gfig_context, %rax
	movq	32(%rax), %rdi
	callq	gtk_widget_queue_draw
	movq	-8(%rbp), %rax
	movl	104(%rax), %ecx
	andl	$2, %ecx
	cmpl	$0, %ecx
	je	.LBB34_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.18, %rdi
	callq	gettext
	movq	%rax, %rdi
	movb	$0, %al
	callq	g_message
	movabsq	$.L.str.19, %rdi
	xorl	%esi, %esi
	callq	gfig_dialog_action_set_sensitive
	jmp	.LBB34_3
.LBB34_2:                               # %if.else
	movabsq	$.L.str.19, %rdi
	movl	$1, %esi
	callq	gfig_dialog_action_set_sensitive
.LBB34_3:                               # %if.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end34:
	.size	new_obj_2edit, .Lfunc_end34-new_obj_2edit
	.cfi_endproc

	.align	16, 0x90
	.type	inside_sqr,@function
inside_sqr:                             # @inside_sqr
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp105:
	.cfi_def_cfa_offset 16
.Ltmp106:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp107:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movl	(%rsi), %eax
	movl	%eax, -20(%rbp)
	movq	-8(%rbp), %rsi
	movl	4(%rsi), %eax
	movl	%eax, -24(%rbp)
	movq	-16(%rbp), %rsi
	movl	(%rsi), %eax
	movl	%eax, -28(%rbp)
	movq	-16(%rbp), %rsi
	movl	4(%rsi), %eax
	movl	%eax, -32(%rbp)
	movl	-20(%rbp), %eax
	subl	-28(%rbp), %eax
	movl	%eax, %edi
	callq	abs
	xorl	%edi, %edi
	movb	%dil, %cl
	cmpl	$8, %eax
	movb	%cl, -33(%rbp)          # 1-byte Spill
	jg	.LBB35_2
# BB#1:                                 # %land.rhs
	movl	-24(%rbp), %eax
	subl	-32(%rbp), %eax
	movl	%eax, %edi
	callq	abs
	cmpl	$8, %eax
	setl	%cl
	movb	%cl, -33(%rbp)          # 1-byte Spill
.LBB35_2:                               # %land.end
	movb	-33(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end35:
	.size	inside_sqr, .Lfunc_end35-inside_sqr
	.cfi_endproc

	.align	16, 0x90
	.type	update_pnts,@function
update_pnts:                            # @update_pnts
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -8(%rbp)
	je	.LBB36_3
# BB#2:                                 # %if.then
	jmp	.LBB36_4
.LBB36_3:                               # %if.else
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L.str.20, %rsi
	movl	$541, %edx              # imm = 0x21D
	movabsq	$.L__func__.update_pnts, %rcx
	movabsq	$.L.str.21, %r8
	callq	g_assertion_message_expr
.LBB36_4:                               # %if.end
	jmp	.LBB36_5
.LBB36_5:                               # %do.end
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -24(%rbp)
.LBB36_6:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -24(%rbp)
	je	.LBB36_9
# BB#7:                                 # %for.body
                                        #   in Loop: Header=BB36_6 Depth=1
	movl	-12(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	8(%rcx), %edx
	subl	%eax, %edx
	movl	%edx, 8(%rcx)
	movl	-16(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	12(%rcx), %edx
	subl	%eax, %edx
	movl	%edx, 12(%rcx)
# BB#8:                                 # %for.inc
                                        #   in Loop: Header=BB36_6 Depth=1
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB36_6
.LBB36_9:                               # %for.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end36:
	.size	update_pnts, .Lfunc_end36-update_pnts
	.cfi_endproc

	.align	16, 0x90
	.type	get_diffs,@function
get_diffs:                              # @get_diffs
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
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -16(%rbp)
	je	.LBB37_3
# BB#2:                                 # %if.then
	jmp	.LBB37_4
.LBB37_3:                               # %if.else
	xorl	%eax, %eax
	movl	%eax, %edi
	movabsq	$.L.str.20, %rsi
	movl	$273, %edx              # imm = 0x111
	movabsq	$.L__func__.get_diffs, %rcx
	movabsq	$.L.str.21, %r8
	callq	g_assertion_message_expr
.LBB37_4:                               # %if.end
	jmp	.LBB37_5
.LBB37_5:                               # %do.end
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -48(%rbp)
.LBB37_6:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -48(%rbp)
	je	.LBB37_11
# BB#7:                                 # %for.body
                                        #   in Loop: Header=BB37_6 Depth=1
	movq	-48(%rbp), %rax
	cmpl	$0, 16(%rax)
	je	.LBB37_9
# BB#8:                                 # %if.then.2
	movq	-48(%rbp), %rax
	movl	8(%rax), %ecx
	movq	-40(%rbp), %rax
	subl	(%rax), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-48(%rbp), %rax
	movl	12(%rax), %ecx
	movq	-40(%rbp), %rax
	subl	4(%rax), %ecx
	movq	-32(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB37_12
.LBB37_9:                               # %if.end.7
                                        #   in Loop: Header=BB37_6 Depth=1
	jmp	.LBB37_10
.LBB37_10:                              # %for.inc
                                        #   in Loop: Header=BB37_6 Depth=1
	movq	-48(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB37_6
.LBB37_11:                              # %for.end
	movq	$0, -8(%rbp)
.LBB37_12:                              # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end37:
	.size	get_diffs, .Lfunc_end37-get_diffs
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"<EXTRA>\n"
	.size	.L.str, 9

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"%d\n</EXTRA>\n"
	.size	.L.str.1, 13

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"Error loading object: type not recognized."
	.size	.L.str.2, 43

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"%d %d"
	.size	.L.str.3, 6

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"<EXTRA>"
	.size	.L.str.4, 8

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"Error while loading object (no points)"
	.size	.L.str.5, 39

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"%d"
	.size	.L.str.6, 3

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Error while loading object (no type data)"
	.size	.L.str.7, 42

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"</EXTRA>"
	.size	.L.str.8, 9

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Syntax error while loading object"
	.size	.L.str.9, 34

	.type	operation_obj,@object   # @operation_obj
	.local	operation_obj
	.comm	operation_obj,8,8
	.type	move_all_pnt,@object    # @move_all_pnt
	.local	move_all_pnt
	.comm	move_all_pnt,8,8
	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"Object"
	.size	.L.str.10, 7

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"Internal error selvals.otype object operation start"
	.size	.L.str.11, 52

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"Internal error in operation_obj->type"
	.size	.L.str.12, 38

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"Internal error selvals.otype"
	.size	.L.str.13, 29

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"%d %d\n"
	.size	.L.str.14, 7

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"Creating object, setting style from context\n"
	.size	.L.str.15, 45

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"Error reading file"
	.size	.L.str.16, 19

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"undo"
	.size	.L.str.17, 5

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"Editing read-only object - you will not be able to save it"
	.size	.L.str.18, 59

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"save"
	.size	.L.str.19, 5

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"gfig-dobject.c"
	.size	.L.str.20, 15

	.type	.L__func__.d_pnt_add_line,@object # @__func__.d_pnt_add_line
.L__func__.d_pnt_add_line:
	.asciz	"d_pnt_add_line"
	.size	.L__func__.d_pnt_add_line, 15

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"obj != NULL"
	.size	.L.str.21, 12

	.type	.L__func__.remove_obj_from_list,@object # @__func__.remove_obj_from_list
.L__func__.remove_obj_from_list:
	.asciz	"remove_obj_from_list"
	.size	.L__func__.remove_obj_from_list, 21

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"del_obj != NULL"
	.size	.L.str.22, 16

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"Hey where has the object gone ?"
	.size	.L.str.23, 32

	.type	.L__func__.update_pnts,@object # @__func__.update_pnts
.L__func__.update_pnts:
	.asciz	"update_pnts"
	.size	.L__func__.update_pnts, 12

	.type	.L__func__.get_diffs,@object # @__func__.get_diffs
.L__func__.get_diffs:
	.asciz	"get_diffs"
	.size	.L__func__.get_diffs, 10


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
