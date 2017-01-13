	.text
	.file	"gimpbrushpipe.bc"
	.globl	gimp_brush_pipe_get_type
	.align	16, 0x90
	.type	gimp_brush_pipe_get_type,@function
gimp_brush_pipe_get_type:               # @gimp_brush_pipe_get_type
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
	subq	$80, %rsp
	xorl	%eax, %eax
	movb	%al, %cl
	mfence
	movq	gimp_brush_pipe_get_type.g_define_type_id__volatile, %rdx
	movq	%rdx, -16(%rbp)
	cmpq	$0, -16(%rbp)
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB0_2
# BB#1:                                 # %land.rhs
	movabsq	$gimp_brush_pipe_get_type.g_define_type_id__volatile, %rax
	movq	%rax, %rdi
	callq	g_once_init_enter
	cmpl	$0, %eax
	setne	%cl
	movb	%cl, -25(%rbp)          # 1-byte Spill
.LBB0_2:                                # %land.end
	movb	-25(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.LBB0_4
# BB#3:                                 # %if.then
	callq	gimp_brush_get_type
	movabsq	$.L.str, %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	g_intern_static_string
	movl	$384, %edx              # imm = 0x180
	movabsq	$gimp_brush_pipe_class_intern_init, %rdi
	movl	$184, %r8d
	movabsq	$gimp_brush_pipe_init, %rcx
	xorl	%esi, %esi
	movq	-40(%rbp), %r9          # 8-byte Reload
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%r9, %rdi
	movl	%esi, -52(%rbp)         # 4-byte Spill
	movq	%rax, %rsi
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	movq	%rax, %rcx
	movq	-64(%rbp), %r9          # 8-byte Reload
	movl	$0, (%rsp)
	callq	g_type_register_static_simple
	movabsq	$gimp_brush_pipe_get_type.g_define_type_id__volatile, %rcx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rcx, %rdi
	callq	g_once_init_leave
.LBB0_4:                                # %if.end
	movq	gimp_brush_pipe_get_type.g_define_type_id__volatile, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_brush_pipe_get_type, .Lfunc_end0-gimp_brush_pipe_get_type
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_brush_pipe_class_intern_init,@function
gimp_brush_pipe_class_intern_init:      # @gimp_brush_pipe_class_intern_init
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_type_class_peek_parent
	movq	%rax, gimp_brush_pipe_parent_class
	cmpl	$0, GimpBrushPipe_private_offset
	je	.LBB1_2
# BB#1:                                 # %if.then
	movabsq	$GimpBrushPipe_private_offset, %rsi
	movq	-8(%rbp), %rdi
	callq	g_type_class_adjust_private_offset
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	gimp_brush_pipe_class_init
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_brush_pipe_class_intern_init, .Lfunc_end1-gimp_brush_pipe_class_intern_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_brush_pipe_init,@function
gimp_brush_pipe_init:                   # @gimp_brush_pipe_init
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	$0, 176(%rdi)
	movq	-8(%rbp), %rdi
	movl	$0, 120(%rdi)
	movq	-8(%rbp), %rdi
	movq	$0, 128(%rdi)
	movq	-8(%rbp), %rdi
	movq	$0, 136(%rdi)
	movq	-8(%rbp), %rdi
	movl	$0, 160(%rdi)
	movq	-8(%rbp), %rdi
	movq	$0, 168(%rdi)
	movq	-8(%rbp), %rdi
	movq	$0, 144(%rdi)
	movq	-8(%rbp), %rdi
	movq	$0, 152(%rdi)
	popq	%rbp
	retq
.Lfunc_end2:
	.size	gimp_brush_pipe_init, .Lfunc_end2-gimp_brush_pipe_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_brush_pipe_class_init,@function
gimp_brush_pipe_class_init:             # @gimp_brush_pipe_class_init
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
	subq	$64, %rsp
	movl	$80, %eax
	movl	%eax, %esi
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	g_type_check_class_cast
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_viewable_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	gimp_brush_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movabsq	$gimp_brush_pipe_want_null_motion, %rsi
	movabsq	$gimp_brush_pipe_select_brush, %rdi
	movabsq	$gimp_brush_pipe_end_use, %rcx
	movabsq	$gimp_brush_pipe_begin_use, %rdx
	movabsq	$gimp_brush_pipe_get_popup_size, %r8
	movabsq	$gimp_brush_pipe_get_memsize, %r9
	movabsq	$gimp_brush_pipe_finalize, %r10
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rax
	movq	%r10, 48(%rax)
	movq	-24(%rbp), %rax
	movq	%r9, 152(%rax)
	movq	-32(%rbp), %rax
	movq	%r8, 208(%rax)
	movq	-40(%rbp), %rax
	movq	%rdx, 312(%rax)
	movq	-40(%rbp), %rax
	movq	%rcx, 320(%rax)
	movq	-40(%rbp), %rax
	movq	%rdi, 328(%rax)
	movq	-40(%rbp), %rax
	movq	%rsi, 336(%rax)
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	gimp_brush_pipe_class_init, .Lfunc_end3-gimp_brush_pipe_class_init
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_brush_pipe_finalize,@function
gimp_brush_pipe_finalize:               # @gimp_brush_pipe_finalize
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	callq	gimp_brush_pipe_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	cmpq	$0, 128(%rax)
	je	.LBB4_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, %rdi
	callq	g_free
	movq	-16(%rbp), %rax
	movq	$0, 128(%rax)
.LBB4_2:                                # %if.end
	movq	-16(%rbp), %rax
	cmpq	$0, 136(%rax)
	je	.LBB4_4
# BB#3:                                 # %if.then.5
	movq	-16(%rbp), %rax
	movq	136(%rax), %rax
	movq	%rax, %rdi
	callq	g_free
	movq	-16(%rbp), %rax
	movq	$0, 136(%rax)
.LBB4_4:                                # %if.end.8
	movq	-16(%rbp), %rax
	cmpq	$0, 168(%rax)
	je	.LBB4_12
# BB#5:                                 # %if.then.10
	movl	$0, -20(%rbp)
.LBB4_6:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	160(%rcx), %eax
	jge	.LBB4_11
# BB#7:                                 # %for.body
                                        #   in Loop: Header=BB4_6 Depth=1
	movslq	-20(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	168(%rcx), %rcx
	cmpq	$0, (%rcx,%rax,8)
	je	.LBB4_9
# BB#8:                                 # %if.then.13
                                        #   in Loop: Header=BB4_6 Depth=1
	movslq	-20(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	168(%rcx), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, %rdi
	callq	g_object_unref
.LBB4_9:                                # %if.end.17
                                        #   in Loop: Header=BB4_6 Depth=1
	jmp	.LBB4_10
.LBB4_10:                               # %for.inc
                                        #   in Loop: Header=BB4_6 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB4_6
.LBB4_11:                               # %for.end
	movq	-16(%rbp), %rax
	movq	168(%rax), %rax
	movq	%rax, %rdi
	callq	g_free
	movq	-16(%rbp), %rax
	movq	$0, 168(%rax)
.LBB4_12:                               # %if.end.20
	movq	-16(%rbp), %rax
	cmpq	$0, 144(%rax)
	je	.LBB4_14
# BB#13:                                # %if.then.22
	movq	-16(%rbp), %rax
	movq	144(%rax), %rax
	movq	%rax, %rdi
	callq	g_free
	movq	-16(%rbp), %rax
	movq	$0, 144(%rax)
.LBB4_14:                               # %if.end.25
	movq	-16(%rbp), %rax
	cmpq	$0, 152(%rax)
	je	.LBB4_16
# BB#15:                                # %if.then.27
	movq	-16(%rbp), %rax
	movq	152(%rax), %rax
	movq	%rax, %rdi
	callq	g_free
	movq	-16(%rbp), %rax
	movq	$0, 152(%rax)
.LBB4_16:                               # %if.end.30
	movq	-16(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_brush_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	$0, 32(%rax)
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	gimp_brush_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movl	$80, %ecx
	movl	%ecx, %esi
	movq	$0, 40(%rax)
	movq	gimp_brush_pipe_parent_class, %rax
	movq	%rax, %rdi
	callq	g_type_check_class_cast
	movq	48(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	gimp_brush_pipe_finalize, .Lfunc_end4-gimp_brush_pipe_finalize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_brush_pipe_get_memsize,@function
gimp_brush_pipe_get_memsize:            # @gimp_brush_pipe_get_memsize
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	callq	gimp_brush_pipe_get_type
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -24(%rbp)
	movq	$0, -32(%rbp)
	movq	-24(%rbp), %rax
	movslq	120(%rax), %rax
	imulq	$12, %rax, %rax
	addq	-32(%rbp), %rax
	movq	%rax, -32(%rbp)
	movl	$0, -36(%rbp)
.LBB5_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-36(%rbp), %eax
	movq	-24(%rbp), %rcx
	cmpl	160(%rcx), %eax
	jge	.LBB5_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB5_1 Depth=1
	movslq	-36(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	168(%rcx), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	gimp_object_get_memsize
	addq	-32(%rbp), %rax
	movq	%rax, -32(%rbp)
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB5_1 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB5_1
.LBB5_4:                                # %for.end
	movq	-32(%rbp), %rax
	movq	gimp_brush_pipe_parent_class, %rcx
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	callq	gimp_object_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	152(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	*%rax
	movq	-64(%rbp), %rcx         # 8-byte Reload
	addq	%rax, %rcx
	movq	%rcx, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	gimp_brush_pipe_get_memsize, .Lfunc_end5-gimp_brush_pipe_get_memsize
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_brush_pipe_get_popup_size,@function
gimp_brush_pipe_get_popup_size:         # @gimp_brush_pipe_get_popup_size
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movq	%r8, -32(%rbp)
	movq	%r9, -40(%rbp)
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-40(%rbp), %rdx
	callq	gimp_viewable_get_size
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_brush_pipe_get_popup_size, .Lfunc_end6-gimp_brush_pipe_get_popup_size
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_brush_pipe_begin_use,@function
gimp_brush_pipe_begin_use:              # @gimp_brush_pipe_begin_use
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
	movq	-8(%rbp), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	callq	gimp_brush_pipe_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	gimp_brush_pipe_parent_class, %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_brush_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	312(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	movl	$0, -20(%rbp)
.LBB7_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	160(%rcx), %eax
	jge	.LBB7_6
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB7_1 Depth=1
	movslq	-20(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	168(%rcx), %rcx
	cmpq	$0, (%rcx,%rax,8)
	je	.LBB7_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB7_1 Depth=1
	movslq	-20(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	168(%rcx), %rcx
	movq	(%rcx,%rax,8), %rdi
	callq	gimp_brush_begin_use
.LBB7_4:                                # %if.end
                                        #   in Loop: Header=BB7_1 Depth=1
	jmp	.LBB7_5
.LBB7_5:                                # %for.inc
                                        #   in Loop: Header=BB7_1 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB7_1
.LBB7_6:                                # %for.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	gimp_brush_pipe_begin_use, .Lfunc_end7-gimp_brush_pipe_begin_use
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_brush_pipe_end_use,@function
gimp_brush_pipe_end_use:                # @gimp_brush_pipe_end_use
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	callq	gimp_brush_pipe_get_type
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -16(%rbp)
	movq	gimp_brush_pipe_parent_class, %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	gimp_brush_get_type
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_class_cast
	movq	320(%rax), %rax
	movq	-8(%rbp), %rdi
	callq	*%rax
	movl	$0, -20(%rbp)
.LBB8_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	160(%rcx), %eax
	jge	.LBB8_6
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB8_1 Depth=1
	movslq	-20(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	168(%rcx), %rcx
	cmpq	$0, (%rcx,%rax,8)
	je	.LBB8_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB8_1 Depth=1
	movslq	-20(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	168(%rcx), %rcx
	movq	(%rcx,%rax,8), %rdi
	callq	gimp_brush_end_use
.LBB8_4:                                # %if.end
                                        #   in Loop: Header=BB8_1 Depth=1
	jmp	.LBB8_5
.LBB8_5:                                # %for.inc
                                        #   in Loop: Header=BB8_1 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB8_1
.LBB8_6:                                # %for.end
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	gimp_brush_pipe_end_use, .Lfunc_end8-gimp_brush_pipe_end_use
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI9_0:
	.quad	4611686018427387904     # double 2
.LCPI9_1:
	.quad	4602678819172646912     # double 0.5
.LCPI9_2:
	.quad	4598175219545276416     # double 0.25
.LCPI9_3:
	.quad	4607182418800017408     # double 1
	.text
	.align	16, 0x90
	.type	gimp_brush_pipe_select_brush,@function
gimp_brush_pipe_select_brush:           # @gimp_brush_pipe_select_brush
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
	subq	$144, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-16(%rbp), %rdx
	movq	%rdx, -64(%rbp)         # 8-byte Spill
	callq	gimp_brush_pipe_get_type
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	cmpl	$1, 160(%rax)
	jne	.LBB9_2
# BB#1:                                 # %if.then
	movq	-40(%rbp), %rax
	movq	176(%rax), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	gimp_brush_get_type
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -8(%rbp)
	jmp	.LBB9_29
.LBB9_2:                                # %if.end
	movl	$0, -48(%rbp)
	movl	$0, -44(%rbp)
.LBB9_3:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-44(%rbp), %eax
	movq	-40(%rbp), %rcx
	cmpl	120(%rcx), %eax
	jge	.LBB9_22
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB9_3 Depth=1
	movslq	-44(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	144(%rcx), %rcx
	movl	(%rcx,%rax,4), %edx
	movl	%edx, %eax
	movq	%rax, %rcx
	subq	$7, %rcx
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	ja	.LBB9_13
# BB#30:                                # %for.body
                                        #   in Loop: Header=BB9_3 Depth=1
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	.LJTI9_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB9_5:                                # %sw.bb
                                        #   in Loop: Header=BB9_3 Depth=1
	movslq	-44(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	152(%rcx), %rcx
	movl	(%rcx,%rax,4), %edx
	addl	$1, %edx
	movslq	-44(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	128(%rcx), %rcx
	movq	%rax, -96(%rbp)         # 8-byte Spill
	movl	%edx, %eax
	cltd
	movq	-96(%rbp), %rsi         # 8-byte Reload
	idivl	(%rcx,%rsi,4)
	movl	%edx, -52(%rbp)
	jmp	.LBB9_14
.LBB9_6:                                # %sw.bb.9
                                        #   in Loop: Header=BB9_3 Depth=1
	movsd	.LCPI9_2, %xmm0         # xmm0 = mem[0],zero
	movsd	.LCPI9_3, %xmm1         # xmm1 = mem[0],zero
	movq	-32(%rbp), %rax
	subsd	56(%rax), %xmm1
	addsd	%xmm0, %xmm1
	movslq	-44(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	128(%rcx), %rcx
	cvtsi2sdl	(%rcx,%rax,4), %xmm0
	mulsd	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	callq	rint
	cvttsd2si	%xmm0, %eax
	movslq	-44(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	128(%rdx), %rdx
	movq	%rdx, -104(%rbp)        # 8-byte Spill
	cltd
	movq	-104(%rbp), %rsi        # 8-byte Reload
	idivl	(%rsi,%rcx,4)
	movl	%edx, -52(%rbp)
	jmp	.LBB9_14
.LBB9_7:                                # %sw.bb.20
                                        #   in Loop: Header=BB9_3 Depth=1
	movsd	.LCPI9_1, %xmm0         # xmm0 = mem[0],zero
	movq	-32(%rbp), %rax
	movsd	48(%rax), %xmm1         # xmm1 = mem[0],zero
	movslq	-44(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	128(%rcx), %rcx
	cvtsi2sdl	(%rcx,%rax,4), %xmm2
	mulsd	%xmm2, %xmm1
	addsd	%xmm0, %xmm1
	cvttsd2si	%xmm1, %edx
	movl	%edx, -52(%rbp)
	jmp	.LBB9_14
.LBB9_8:                                # %sw.bb.28
                                        #   in Loop: Header=BB9_3 Depth=1
	xorl	%edi, %edi
	movslq	-44(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	128(%rcx), %rcx
	movl	(%rcx,%rax,4), %esi
	callq	g_random_int_range
	movl	%eax, -52(%rbp)
	jmp	.LBB9_14
.LBB9_9:                                # %sw.bb.33
                                        #   in Loop: Header=BB9_3 Depth=1
	movq	-32(%rbp), %rax
	movsd	16(%rax), %xmm0         # xmm0 = mem[0],zero
	movslq	-44(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	128(%rcx), %rcx
	movl	(%rcx,%rax,4), %edx
	subl	$1, %edx
	cvtsi2sdl	%edx, %xmm1
	mulsd	%xmm1, %xmm0
	callq	rint
	cvttsd2si	%xmm0, %edx
	movl	%edx, -52(%rbp)
	jmp	.LBB9_14
.LBB9_10:                               # %sw.bb.42
                                        #   in Loop: Header=BB9_3 Depth=1
	movl	$2, %eax
	movsd	.LCPI9_0, %xmm0         # xmm0 = mem[0],zero
	movq	-32(%rbp), %rcx
	movsd	24(%rcx), %xmm1         # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movslq	-44(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	128(%rdx), %rdx
	cvtsi2sdl	(%rdx,%rcx,4), %xmm0
	mulsd	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	movl	%eax, -108(%rbp)        # 4-byte Spill
	callq	rint
	movslq	-44(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	128(%rdx), %rdx
	movl	(%rdx,%rcx,4), %eax
	cltd
	movl	-108(%rbp), %esi        # 4-byte Reload
	idivl	%esi
	cvtsi2sdl	%eax, %xmm1
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB9_14
.LBB9_11:                               # %sw.bb.56
                                        #   in Loop: Header=BB9_3 Depth=1
	movl	$2, %eax
	movsd	.LCPI9_0, %xmm0         # xmm0 = mem[0],zero
	movq	-32(%rbp), %rcx
	movsd	32(%rcx), %xmm1         # xmm1 = mem[0],zero
	divsd	%xmm0, %xmm1
	movslq	-44(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	128(%rdx), %rdx
	cvtsi2sdl	(%rdx,%rcx,4), %xmm0
	mulsd	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	movl	%eax, -112(%rbp)        # 4-byte Spill
	callq	rint
	movslq	-44(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	128(%rdx), %rdx
	movl	(%rdx,%rcx,4), %eax
	cltd
	movl	-112(%rbp), %esi        # 4-byte Reload
	idivl	%esi
	cvtsi2sdl	%eax, %xmm1
	addsd	%xmm1, %xmm0
	cvttsd2si	%xmm0, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB9_14
.LBB9_12:                               # %sw.bb.71
                                        #   in Loop: Header=BB9_3 Depth=1
	jmp	.LBB9_13
.LBB9_13:                               # %sw.default
                                        #   in Loop: Header=BB9_3 Depth=1
	movslq	-44(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	152(%rcx), %rcx
	movl	(%rcx,%rax,4), %edx
	movl	%edx, -52(%rbp)
.LBB9_14:                               # %sw.epilog
                                        #   in Loop: Header=BB9_3 Depth=1
	movl	-52(%rbp), %eax
	movslq	-44(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	128(%rdx), %rdx
	movl	(%rdx,%rcx,4), %esi
	subl	$1, %esi
	cmpl	%esi, %eax
	jle	.LBB9_16
# BB#15:                                # %cond.true
                                        #   in Loop: Header=BB9_3 Depth=1
	movslq	-44(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	128(%rcx), %rcx
	movl	(%rcx,%rax,4), %edx
	subl	$1, %edx
	movl	%edx, -116(%rbp)        # 4-byte Spill
	jmp	.LBB9_20
.LBB9_16:                               # %cond.false
                                        #   in Loop: Header=BB9_3 Depth=1
	cmpl	$0, -52(%rbp)
	jge	.LBB9_18
# BB#17:                                # %cond.true.87
                                        #   in Loop: Header=BB9_3 Depth=1
	xorl	%eax, %eax
	movl	%eax, -120(%rbp)        # 4-byte Spill
	jmp	.LBB9_19
.LBB9_18:                               # %cond.false.88
                                        #   in Loop: Header=BB9_3 Depth=1
	movl	-52(%rbp), %eax
	movl	%eax, -120(%rbp)        # 4-byte Spill
.LBB9_19:                               # %cond.end
                                        #   in Loop: Header=BB9_3 Depth=1
	movl	-120(%rbp), %eax        # 4-byte Reload
	movl	%eax, -116(%rbp)        # 4-byte Spill
.LBB9_20:                               # %cond.end.89
                                        #   in Loop: Header=BB9_3 Depth=1
	movl	-116(%rbp), %eax        # 4-byte Reload
	movslq	-44(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	152(%rdx), %rdx
	movl	%eax, (%rdx,%rcx,4)
	movslq	-44(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	136(%rdx), %rdx
	movl	(%rdx,%rcx,4), %eax
	movslq	-44(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	152(%rdx), %rdx
	imull	(%rdx,%rcx,4), %eax
	addl	-48(%rbp), %eax
	movl	%eax, -48(%rbp)
# BB#21:                                # %for.inc
                                        #   in Loop: Header=BB9_3 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB9_3
.LBB9_22:                               # %for.end
	movl	-48(%rbp), %eax
	movq	-40(%rbp), %rcx
	movl	160(%rcx), %edx
	subl	$1, %edx
	cmpl	%edx, %eax
	jle	.LBB9_24
# BB#23:                                # %cond.true.105
	movq	-40(%rbp), %rax
	movl	160(%rax), %ecx
	subl	$1, %ecx
	movl	%ecx, -124(%rbp)        # 4-byte Spill
	jmp	.LBB9_28
.LBB9_24:                               # %cond.false.108
	cmpl	$0, -48(%rbp)
	jge	.LBB9_26
# BB#25:                                # %cond.true.111
	xorl	%eax, %eax
	movl	%eax, -128(%rbp)        # 4-byte Spill
	jmp	.LBB9_27
.LBB9_26:                               # %cond.false.112
	movl	-48(%rbp), %eax
	movl	%eax, -128(%rbp)        # 4-byte Spill
.LBB9_27:                               # %cond.end.113
	movl	-128(%rbp), %eax        # 4-byte Reload
	movl	%eax, -124(%rbp)        # 4-byte Spill
.LBB9_28:                               # %cond.end.115
	movl	-124(%rbp), %eax        # 4-byte Reload
	movl	%eax, -48(%rbp)
	movslq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	168(%rdx), %rdx
	movq	(%rdx,%rcx,8), %rcx
	movq	-40(%rbp), %rdx
	movq	%rcx, 176(%rdx)
	movq	-40(%rbp), %rcx
	movq	176(%rcx), %rcx
	movq	%rcx, -136(%rbp)        # 8-byte Spill
	callq	gimp_brush_get_type
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -8(%rbp)
.LBB9_29:                               # %return
	movq	-8(%rbp), %rax
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	gimp_brush_pipe_select_brush, .Lfunc_end9-gimp_brush_pipe_select_brush
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI9_0:
	.quad	.LBB9_12
	.quad	.LBB9_5
	.quad	.LBB9_6
	.quad	.LBB9_7
	.quad	.LBB9_8
	.quad	.LBB9_9
	.quad	.LBB9_10
	.quad	.LBB9_11

	.text
	.align	16, 0x90
	.type	gimp_brush_pipe_want_null_motion,@function
gimp_brush_pipe_want_null_motion:       # @gimp_brush_pipe_want_null_motion
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
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-16(%rbp), %rdx
	movq	%rdx, -56(%rbp)         # 8-byte Spill
	callq	gimp_brush_pipe_get_type
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	cmpl	$1, 160(%rax)
	jne	.LBB10_2
# BB#1:                                 # %if.then
	movl	$1, -4(%rbp)
	jmp	.LBB10_9
.LBB10_2:                               # %if.end
	movl	$0, -44(%rbp)
.LBB10_3:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-44(%rbp), %eax
	movq	-40(%rbp), %rcx
	cmpl	120(%rcx), %eax
	jge	.LBB10_8
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB10_3 Depth=1
	movslq	-44(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	144(%rcx), %rcx
	cmpl	$2, (%rcx,%rax,4)
	jne	.LBB10_6
# BB#5:                                 # %if.then.4
	movl	$0, -4(%rbp)
	jmp	.LBB10_9
.LBB10_6:                               # %if.end.5
                                        #   in Loop: Header=BB10_3 Depth=1
	jmp	.LBB10_7
.LBB10_7:                               # %for.inc
                                        #   in Loop: Header=BB10_3 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB10_3
.LBB10_8:                               # %for.end
	movl	$1, -4(%rbp)
.LBB10_9:                               # %return
	movl	-4(%rbp), %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	gimp_brush_pipe_want_null_motion, .Lfunc_end10-gimp_brush_pipe_want_null_motion
	.cfi_endproc

	.type	gimp_brush_pipe_get_type.g_define_type_id__volatile,@object # @gimp_brush_pipe_get_type.g_define_type_id__volatile
	.local	gimp_brush_pipe_get_type.g_define_type_id__volatile
	.comm	gimp_brush_pipe_get_type.g_define_type_id__volatile,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"GimpBrushPipe"
	.size	.L.str, 14

	.type	gimp_brush_pipe_parent_class,@object # @gimp_brush_pipe_parent_class
	.local	gimp_brush_pipe_parent_class
	.comm	gimp_brush_pipe_parent_class,8,8
	.type	GimpBrushPipe_private_offset,@object # @GimpBrushPipe_private_offset
	.local	GimpBrushPipe_private_offset
	.comm	GimpBrushPipe_private_offset,4,4

	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
