	.text
	.file	"xfaces.bc"
	.globl	x_free_colors
	.align	16, 0x90
	.type	x_free_colors,@function
x_free_colors:                          # @x_free_colors
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
	movl	%edx, -20(%rbp)
	movq	-8(%rbp), %rsi
	movq	384(%rsi), %rsi
	movq	424(%rsi), %rsi
	movq	72(%rsi), %rdi
	callq	x_mutable_colormap
	testb	$1, %al
	jne	.LBB0_1
	jmp	.LBB0_2
.LBB0_1:                                # %if.then
	xorl	%eax, %eax
	movl	%eax, %r8d
	movq	-8(%rbp), %rcx
	movq	384(%rcx), %rcx
	movq	424(%rcx), %rcx
	movq	16(%rcx), %rdi
	movq	-8(%rbp), %rcx
	movq	384(%rcx), %rcx
	movq	424(%rcx), %rcx
	movq	80(%rcx), %rsi
	movq	-16(%rbp), %rdx
	movl	-20(%rbp), %ecx
	callq	XFreeColors
	movl	%eax, -24(%rbp)         # 4-byte Spill
.LBB0_2:                                # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	x_free_colors, .Lfunc_end0-x_free_colors
	.cfi_endproc

	.globl	init_frame_faces
	.align	16, 0x90
	.type	init_frame_faces,@function
init_frame_faces:                       # @init_frame_faces
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
	cmpq	$0, 160(%rdi)
	jne	.LBB1_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rdi
	callq	make_face_cache
	movq	-8(%rbp), %rdi
	movq	%rax, 160(%rdi)
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$2, %ecx
	jne	.LBB1_6
# BB#3:                                 # %if.then.3
	movq	-8(%rbp), %rax
	movq	376(%rax), %rax
	cmpq	$0, 80(%rax)
	jne	.LBB1_5
# BB#4:                                 # %if.then.5
	callq	make_image_cache
	movq	-8(%rbp), %rcx
	movq	376(%rcx), %rcx
	movq	%rax, 80(%rcx)
.LBB1_5:                                # %if.end.9
	movq	-8(%rbp), %rax
	movq	376(%rax), %rax
	movq	80(%rax), %rax
	movq	32(%rax), %rcx
	addq	$1, %rcx
	movq	%rcx, 32(%rax)
.LBB1_6:                                # %if.end.12
	movq	-8(%rbp), %rdi
	callq	realize_basic_faces
	testb	$1, %al
	jne	.LBB1_8
# BB#7:                                 # %if.then.14
	callq	emacs_abort
.LBB1_8:                                # %if.end.15
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	init_frame_faces, .Lfunc_end1-init_frame_faces
	.cfi_endproc

	.align	16, 0x90
	.type	make_face_cache,@function
make_face_cache:                        # @make_face_cache
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
	movl	$40, %eax
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rcx, %rdi
	callq	xmalloc
	movl	$8008, %edx             # imm = 0x1F48
	movl	%edx, %edi
	movq	%rax, -16(%rbp)
	callq	xzalloc
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-16(%rbp), %rax
	movq	$50, 24(%rax)
	movq	-16(%rbp), %rax
	movl	$0, 32(%rax)
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	shlq	$3, %rax
	movq	%rax, %rdi
	callq	xmalloc
	movq	-16(%rbp), %rcx
	movq	%rax, 16(%rcx)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movb	menu_face_changed_default, %sil
	movq	-16(%rbp), %rax
	andb	$1, %sil
	movb	36(%rax), %r8b
	andb	$-2, %r8b
	orb	%sil, %r8b
	movb	%r8b, 36(%rax)
	movq	-16(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	make_face_cache, .Lfunc_end2-make_face_cache
	.cfi_endproc

	.align	16, 0x90
	.type	realize_basic_faces,@function
realize_basic_faces:                    # @realize_basic_faces
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
	subq	$128, %rsp
	movq	%rdi, -8(%rbp)
	movb	$0, -9(%rbp)
	callq	block_input
	movq	-8(%rbp), %rdi
	callq	realize_default_face
	testb	$1, %al
	jne	.LBB3_1
	jmp	.LBB3_4
.LBB3_1:                                # %if.then
	movl	$672, %edi              # imm = 0x2A0
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$1, %edx
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	realize_named_face
	movl	$674, %edi              # imm = 0x2A2
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$2, %edx
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	realize_named_face
	movl	$921, %edi              # imm = 0x399
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$3, %edx
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	realize_named_face
	movl	$467, %edi              # imm = 0x1D3
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$4, %edx
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	realize_named_face
	movl	$513, %edi              # imm = 0x201
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$5, %edx
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	realize_named_face
	movl	$830, %edi              # imm = 0x33E
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$6, %edx
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	realize_named_face
	movl	$208, %edi
	movq	-8(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$7, %edx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	realize_named_face
	movl	$306, %edi              # imm = 0x132
	movq	-8(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$8, %edx
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	realize_named_face
	movl	$684, %edi              # imm = 0x2AC
	movq	-8(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$9, %edx
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	realize_named_face
	movl	$650, %edi              # imm = 0x28A
	movq	-8(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$10, %edx
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	realize_named_face
	movl	$1000, %edi             # imm = 0x3E8
	movq	-8(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$11, %edx
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	realize_named_face
	movl	$1023, %edi             # imm = 0x3FF
	movq	-8(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$12, %edx
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	realize_named_face
	movl	$1024, %edi             # imm = 0x400
	movq	-8(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$13, %edx
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	realize_named_face
	movl	$1025, %edi             # imm = 0x401
	movq	-8(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$14, %edx
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	realize_named_face
	movq	-8(%rbp), %rax
	movq	160(%rax), %rax
	movb	36(%rax), %cl
	andb	$1, %cl
	testb	$1, %cl
	je	.LBB3_3
# BB#2:                                 # %if.then.15
	movq	-8(%rbp), %rax
	movq	160(%rax), %rax
	movb	36(%rax), %cl
	andb	$-2, %cl
	movb	%cl, 36(%rax)
.LBB3_3:                                # %if.end
	movb	$1, -9(%rbp)
.LBB3_4:                                # %if.end.20
	callq	unblock_input
	movb	-9(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$128, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	realize_basic_faces, .Lfunc_end3-realize_basic_faces
	.cfi_endproc

	.globl	free_frame_faces
	.align	16, 0x90
	.type	free_frame_faces,@function
free_frame_faces:                       # @free_frame_faces
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	160(%rdi), %rdi
	movq	%rdi, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB4_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rdi
	callq	free_face_cache
	movq	-8(%rbp), %rdi
	movq	$0, 160(%rdi)
.LBB4_2:                                # %if.end
	movq	-8(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$2, %ecx
	jne	.LBB4_8
# BB#3:                                 # %if.then.3
	movq	-8(%rbp), %rax
	movq	376(%rax), %rax
	movq	80(%rax), %rax
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB4_7
# BB#4:                                 # %if.then.6
	movq	-24(%rbp), %rax
	movq	32(%rax), %rcx
	addq	$-1, %rcx
	movq	%rcx, 32(%rax)
	movq	-24(%rbp), %rax
	cmpq	$0, 32(%rax)
	jne	.LBB4_6
# BB#5:                                 # %if.then.9
	movq	-8(%rbp), %rdi
	callq	free_image_cache
.LBB4_6:                                # %if.end.10
	jmp	.LBB4_7
.LBB4_7:                                # %if.end.11
	jmp	.LBB4_8
.LBB4_8:                                # %if.end.12
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	free_frame_faces, .Lfunc_end4-free_frame_faces
	.cfi_endproc

	.align	16, 0x90
	.type	free_face_cache,@function
free_face_cache:                        # @free_face_cache
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
	cmpq	$0, -8(%rbp)
	je	.LBB5_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rdi
	callq	free_realized_faces
	movq	-8(%rbp), %rdi
	movq	(%rdi), %rdi
	callq	xfree
	movq	-8(%rbp), %rdi
	movq	16(%rdi), %rdi
	callq	xfree
	movq	-8(%rbp), %rdi
	callq	xfree
.LBB5_2:                                # %if.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	free_face_cache, .Lfunc_end5-free_face_cache
	.cfi_endproc

	.globl	recompute_basic_faces
	.align	16, 0x90
	.type	recompute_basic_faces,@function
recompute_basic_faces:                  # @recompute_basic_faces
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	cmpq	$0, 160(%rdi)
	je	.LBB6_4
# BB#1:                                 # %if.then
	xorl	%edi, %edi
	callq	clear_face_cache
	movq	-8(%rbp), %rdi
	callq	realize_basic_faces
	testb	$1, %al
	jne	.LBB6_3
# BB#2:                                 # %if.then.1
	callq	emacs_abort
.LBB6_3:                                # %if.end
	jmp	.LBB6_4
.LBB6_4:                                # %if.end.2
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	recompute_basic_faces, .Lfunc_end6-recompute_basic_faces
	.cfi_endproc

	.globl	clear_face_cache
	.align	16, 0x90
	.type	clear_face_cache,@function
clear_face_cache:                       # @clear_face_cache
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
	movb	%dil, %al
	andb	$1, %al
	movb	%al, -1(%rbp)
	testb	$1, -1(%rbp)
	jne	.LBB7_2
# BB#1:                                 # %lor.lhs.false
	movl	clear_font_table_count, %eax
	addl	$1, %eax
	movl	%eax, clear_font_table_count
	cmpl	$100, %eax
	jne	.LBB7_12
.LBB7_2:                                # %if.then
	movl	$0, clear_font_table_count
	movq	Vframe_list, %rax
	movq	%rax, -16(%rbp)
.LBB7_3:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-16(%rbp), %rdx
	andq	$7, %rdx
	movl	%edx, %eax
	cmpl	$3, %eax
	movb	%cl, -41(%rbp)          # 1-byte Spill
	jne	.LBB7_5
# BB#4:                                 # %land.rhs
                                        #   in Loop: Header=BB7_3 Depth=1
	movb	$1, %al
	movq	-16(%rbp), %rcx
	subq	$3, %rcx
	movq	(%rcx), %rcx
	movq	%rcx, -24(%rbp)
	movb	%al, -41(%rbp)          # 1-byte Spill
.LBB7_5:                                # %land.end
                                        #   in Loop: Header=BB7_3 Depth=1
	movb	-41(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB7_6
	jmp	.LBB7_11
.LBB7_6:                                # %for.body
                                        #   in Loop: Header=BB7_3 Depth=1
	movq	-24(%rbp), %rax
	subq	$5, %rax
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$2, %ecx
	jne	.LBB7_9
# BB#7:                                 # %land.lhs.true
                                        #   in Loop: Header=BB7_3 Depth=1
	movq	-32(%rbp), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	cmpl	$10, 272(%rax)
	jle	.LBB7_9
# BB#8:                                 # %if.then.8
                                        #   in Loop: Header=BB7_3 Depth=1
	movq	-32(%rbp), %rdi
	callq	clear_font_cache
	movq	-24(%rbp), %rdi
	callq	free_all_realized_faces
.LBB7_9:                                # %if.end
                                        #   in Loop: Header=BB7_3 Depth=1
	jmp	.LBB7_10
.LBB7_10:                               # %for.inc
                                        #   in Loop: Header=BB7_3 Depth=1
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB7_3
.LBB7_11:                               # %for.end
	jmp	.LBB7_21
.LBB7_12:                               # %if.else
	movq	Vframe_list, %rax
	movq	%rax, -16(%rbp)
.LBB7_13:                               # %for.cond.10
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-16(%rbp), %rdx
	andq	$7, %rdx
	movl	%edx, %eax
	cmpl	$3, %eax
	movb	%cl, -42(%rbp)          # 1-byte Spill
	jne	.LBB7_15
# BB#14:                                # %land.rhs.15
                                        #   in Loop: Header=BB7_13 Depth=1
	movb	$1, %al
	movq	-16(%rbp), %rcx
	subq	$3, %rcx
	movq	(%rcx), %rcx
	movq	%rcx, -24(%rbp)
	movb	%al, -42(%rbp)          # 1-byte Spill
.LBB7_15:                               # %land.end.18
                                        #   in Loop: Header=BB7_13 Depth=1
	movb	-42(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB7_16
	jmp	.LBB7_20
.LBB7_16:                               # %for.body.19
                                        #   in Loop: Header=BB7_13 Depth=1
	movq	-24(%rbp), %rax
	subq	$5, %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$2, %ecx
	jne	.LBB7_18
# BB#17:                                # %if.then.29
                                        #   in Loop: Header=BB7_13 Depth=1
	movq	-40(%rbp), %rax
	movq	160(%rax), %rdi
	callq	clear_face_gcs
.LBB7_18:                               # %if.end.30
                                        #   in Loop: Header=BB7_13 Depth=1
	jmp	.LBB7_19
.LBB7_19:                               # %for.inc.31
                                        #   in Loop: Header=BB7_13 Depth=1
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB7_13
.LBB7_20:                               # %for.end.35
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, %rdi
	callq	clear_image_caches
.LBB7_21:                               # %if.end.36
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	clear_face_cache, .Lfunc_end7-clear_face_cache
	.cfi_endproc

	.globl	free_all_realized_faces
	.align	16, 0x90
	.type	free_all_realized_faces,@function
free_all_realized_faces:                # @free_all_realized_faces
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
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB8_8
# BB#1:                                 # %if.then
	movq	Vframe_list, %rax
	movq	%rax, -16(%rbp)
.LBB8_2:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-16(%rbp), %rdx
	andq	$7, %rdx
	movl	%edx, %eax
	cmpl	$3, %eax
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB8_4
# BB#3:                                 # %land.rhs
                                        #   in Loop: Header=BB8_2 Depth=1
	movb	$1, %al
	movq	-16(%rbp), %rcx
	subq	$3, %rcx
	movq	(%rcx), %rcx
	movq	%rcx, -8(%rbp)
	movb	%al, -25(%rbp)          # 1-byte Spill
.LBB8_4:                                # %land.end
                                        #   in Loop: Header=BB8_2 Depth=1
	movb	-25(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB8_5
	jmp	.LBB8_7
.LBB8_5:                                # %for.body
                                        #   in Loop: Header=BB8_2 Depth=1
	movq	-8(%rbp), %rax
	subq	$5, %rax
	movq	160(%rax), %rdi
	callq	free_realized_faces
# BB#6:                                 # %for.inc
                                        #   in Loop: Header=BB8_2 Depth=1
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB8_2
.LBB8_7:                                # %for.end
	movl	$58, windows_or_buffers_changed
	jmp	.LBB8_9
.LBB8_8:                                # %if.else
	movq	-8(%rbp), %rax
	subq	$5, %rax
	movq	160(%rax), %rdi
	callq	free_realized_faces
.LBB8_9:                                # %if.end
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	free_all_realized_faces, .Lfunc_end8-free_all_realized_faces
	.cfi_endproc

	.align	16, 0x90
	.type	clear_face_gcs,@function
clear_face_gcs:                         # @clear_face_gcs
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
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.LBB9_12
# BB#1:                                 # %land.lhs.true
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$2, %ecx
	jne	.LBB9_12
# BB#2:                                 # %if.then
	movl	$15, -12(%rbp)
.LBB9_3:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	32(%rcx), %eax
	jge	.LBB9_11
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB9_3 Depth=1
	movslq	-12(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	16(%rcx), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	je	.LBB9_9
# BB#5:                                 # %land.lhs.true.3
                                        #   in Loop: Header=BB9_3 Depth=1
	movq	-24(%rbp), %rax
	cmpq	$0, 160(%rax)
	je	.LBB9_9
# BB#6:                                 # %if.then.5
                                        #   in Loop: Header=BB9_3 Depth=1
	callq	block_input
	movq	-24(%rbp), %rax
	cmpq	$0, 224(%rax)
	je	.LBB9_8
# BB#7:                                 # %if.then.7
                                        #   in Loop: Header=BB9_3 Depth=1
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdi
	movq	-24(%rbp), %rsi
	callq	font_done_for_face
.LBB9_8:                                # %if.end
                                        #   in Loop: Header=BB9_3 Depth=1
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdi
	movq	-24(%rbp), %rax
	movq	160(%rax), %rsi
	callq	x_free_gc
	movq	-24(%rbp), %rax
	movq	$0, 160(%rax)
	callq	unblock_input
.LBB9_9:                                # %if.end.12
                                        #   in Loop: Header=BB9_3 Depth=1
	jmp	.LBB9_10
.LBB9_10:                               # %for.inc
                                        #   in Loop: Header=BB9_3 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB9_3
.LBB9_11:                               # %for.end
	jmp	.LBB9_12
.LBB9_12:                               # %if.end.13
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	clear_face_gcs, .Lfunc_end9-clear_face_gcs
	.cfi_endproc

	.globl	Fclear_face_cache
	.align	16, 0x90
	.type	Fclear_face_cache,@function
Fclear_face_cache:                      # @Fclear_face_cache
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
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	sete	%dl
	xorb	$-1, %dl
	movzbl	%dl, %edi
	andl	$1, %edi
	callq	clear_face_cache
	xorl	%edi, %edi
	movb	$1, face_change
	movl	$53, windows_or_buffers_changed
	callq	builtin_lisp_symbol
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	Fclear_face_cache, .Lfunc_end10-Fclear_face_cache
	.cfi_endproc

	.globl	Fbitmap_spec_p
	.align	16, 0x90
	.type	Fbitmap_spec_p,@function
Fbitmap_spec_p:                         # @Fbitmap_spec_p
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
	movb	$0, -9(%rbp)
	movq	-8(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB11_1
	jmp	.LBB11_2
.LBB11_1:                               # %if.then
	movb	$1, -9(%rbp)
	jmp	.LBB11_17
.LBB11_2:                               # %if.else
	movq	-8(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB11_16
# BB#3:                                 # %if.then.2
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -40(%rbp)
	movq	%rax, -24(%rbp)
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %edi
	cmpl	$3, %edi
	jne	.LBB11_9
# BB#4:                                 # %if.then.8
	movq	-8(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -24(%rbp)
	movq	-8(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB11_8
# BB#5:                                 # %if.then.14
	movq	-8(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB11_7
# BB#6:                                 # %if.then.24
	movq	-8(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
.LBB11_7:                               # %if.end
	jmp	.LBB11_8
.LBB11_8:                               # %if.end.27
	jmp	.LBB11_9
.LBB11_9:                               # %if.end.28
	movq	-40(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB11_10
	jmp	.LBB11_15
.LBB11_10:                              # %land.lhs.true
	movl	$1, %eax
	movl	%eax, %edi
	movl	$2147483647, %eax       # imm = 0x7FFFFFFF
	movl	%eax, %edx
	movq	-24(%rbp), %rsi
	callq	RANGED_INTEGERP
	testb	$1, %al
	jne	.LBB11_11
	jmp	.LBB11_15
.LBB11_11:                              # %land.lhs.true.33
	movl	$1, %eax
	movl	%eax, %edi
	movl	$2147483647, %eax       # imm = 0x7FFFFFFF
	movl	%eax, %edx
	movq	-32(%rbp), %rsi
	callq	RANGED_INTEGERP
	testb	$1, %al
	jne	.LBB11_12
	jmp	.LBB11_15
.LBB11_12:                              # %if.then.36
	movl	$8, %eax
	movl	%eax, %ecx
	movq	-24(%rbp), %rdx
	sarq	$2, %rdx
	addq	$8, %rdx
	subq	$1, %rdx
	movq	%rdx, %rax
	cqto
	idivq	%rcx
	movl	%eax, %esi
	movl	%esi, -44(%rbp)
	movq	-32(%rbp), %rax
	sarq	$2, %rax
	movq	-40(%rbp), %rdi
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	SBYTES
	movslq	-44(%rbp), %rcx
	cqto
	idivq	%rcx
	movq	-56(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jg	.LBB11_14
# BB#13:                                # %if.then.45
	movb	$1, -9(%rbp)
.LBB11_14:                              # %if.end.46
	jmp	.LBB11_15
.LBB11_15:                              # %if.end.47
	jmp	.LBB11_16
.LBB11_16:                              # %if.end.48
	jmp	.LBB11_17
.LBB11_17:                              # %if.end.49
	testb	$1, -9(%rbp)
	je	.LBB11_19
# BB#18:                                # %cond.true
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -64(%rbp)         # 8-byte Spill
	jmp	.LBB11_20
.LBB11_19:                              # %cond.false
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -64(%rbp)         # 8-byte Spill
.LBB11_20:                              # %cond.end
	movq	-64(%rbp), %rax         # 8-byte Reload
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	Fbitmap_spec_p, .Lfunc_end11-Fbitmap_spec_p
	.cfi_endproc

	.globl	tty_color_name
	.align	16, 0x90
	.type	tty_color_name,@function
tty_color_name:                         # @tty_color_name
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
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	cmpl	$0, -20(%rbp)
	jl	.LBB12_5
# BB#1:                                 # %land.lhs.true
	movl	$940, %edi              # imm = 0x3AC
	callq	builtin_lisp_symbol
	movq	%rax, %rdi
	callq	Ffboundp
	xorl	%edi, %edi
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB12_5
# BB#2:                                 # %if.then
	movl	$5, %esi
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	make_lisp_ptr
	movl	$940, %edi              # imm = 0x3AC
	movq	%rax, -32(%rbp)
	callq	builtin_lisp_symbol
	movslq	-20(%rbp), %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	-32(%rbp), %rdx
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	call2
	xorl	%edi, %edi
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-56(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB12_4
# BB#3:                                 # %if.then.10
	movq	-40(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB12_10
.LBB12_4:                               # %if.end
	jmp	.LBB12_5
.LBB12_5:                               # %if.end.11
	movslq	-20(%rbp), %rax
	cmpq	$-2, %rax
	jne	.LBB12_7
# BB#6:                                 # %if.then.15
	movabsq	$unspecified_fg, %rdi
	callq	build_string
	movq	%rax, -8(%rbp)
	jmp	.LBB12_10
.LBB12_7:                               # %if.end.17
	movslq	-20(%rbp), %rax
	cmpq	$-3, %rax
	jne	.LBB12_9
# BB#8:                                 # %if.then.21
	movabsq	$unspecified_bg, %rdi
	callq	build_string
	movq	%rax, -8(%rbp)
	jmp	.LBB12_10
.LBB12_9:                               # %if.end.23
	movl	$975, %edi              # imm = 0x3CF
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
.LBB12_10:                              # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	tty_color_name, .Lfunc_end12-tty_color_name
	.cfi_endproc

	.globl	Fcolor_gray_p
	.align	16, 0x90
	.type	Fcolor_gray_p,@function
Fcolor_gray_p:                          # @Fcolor_gray_p
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	CHECK_STRING
	movq	-16(%rbp), %rdi
	callq	decode_any_frame
	movq	-8(%rbp), %rdi
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	SSDATA
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	face_color_gray_p
	testb	$1, %al
	jne	.LBB13_1
	jmp	.LBB13_2
.LBB13_1:                               # %cond.true
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -32(%rbp)         # 8-byte Spill
	jmp	.LBB13_3
.LBB13_2:                               # %cond.false
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -32(%rbp)         # 8-byte Spill
.LBB13_3:                               # %cond.end
	movq	-32(%rbp), %rax         # 8-byte Reload
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	Fcolor_gray_p, .Lfunc_end13-Fcolor_gray_p
	.cfi_endproc

	.align	16, 0x90
	.type	face_color_gray_p,@function
face_color_gray_p:                      # @face_color_gray_p
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
	subq	$80, %rsp
	leaq	-32(%rbp), %rdx
	xorl	%ecx, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	defined_color
	testb	$1, %al
	jne	.LBB14_1
	jmp	.LBB14_27
.LBB14_1:                               # %if.then
	movzwl	-24(%rbp), %eax
	cmpl	$5000, %eax             # imm = 0x1388
	jge	.LBB14_4
# BB#2:                                 # %land.lhs.true
	movzwl	-22(%rbp), %eax
	cmpl	$5000, %eax             # imm = 0x1388
	jge	.LBB14_4
# BB#3:                                 # %land.lhs.true.5
	movb	$1, %al
	movzwl	-20(%rbp), %ecx
	cmpl	$5000, %ecx             # imm = 0x1388
	movb	%al, -34(%rbp)          # 1-byte Spill
	jl	.LBB14_26
.LBB14_4:                               # %lor.rhs
	movzwl	-24(%rbp), %eax
	movzwl	-22(%rbp), %ecx
	subl	%ecx, %eax
	cmpl	$0, %eax
	jge	.LBB14_6
# BB#5:                                 # %cond.true
	xorl	%eax, %eax
	movzwl	-24(%rbp), %ecx
	movzwl	-22(%rbp), %edx
	subl	%edx, %ecx
	subl	%ecx, %eax
	movl	%eax, -40(%rbp)         # 4-byte Spill
	jmp	.LBB14_7
.LBB14_6:                               # %cond.false
	movzwl	-24(%rbp), %eax
	movzwl	-22(%rbp), %ecx
	subl	%ecx, %eax
	movl	%eax, -40(%rbp)         # 4-byte Spill
.LBB14_7:                               # %cond.end
	movl	-40(%rbp), %eax         # 4-byte Reload
	movzwl	-24(%rbp), %ecx
	movzwl	-22(%rbp), %edx
	cmpl	%edx, %ecx
	movl	%eax, -44(%rbp)         # 4-byte Spill
	jle	.LBB14_9
# BB#8:                                 # %cond.true.32
	movzwl	-24(%rbp), %eax
	movl	%eax, -48(%rbp)         # 4-byte Spill
	jmp	.LBB14_10
.LBB14_9:                               # %cond.false.35
	movzwl	-22(%rbp), %eax
	movl	%eax, -48(%rbp)         # 4-byte Spill
.LBB14_10:                              # %cond.end.38
	movl	-48(%rbp), %eax         # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movl	$20, %ecx
	movb	%dl, -49(%rbp)          # 1-byte Spill
	cltd
	idivl	%ecx
	movl	-44(%rbp), %ecx         # 4-byte Reload
	cmpl	%eax, %ecx
	movb	-49(%rbp), %sil         # 1-byte Reload
	movb	%sil, -50(%rbp)         # 1-byte Spill
	jge	.LBB14_25
# BB#11:                                # %land.lhs.true.42
	movzwl	-22(%rbp), %eax
	movzwl	-20(%rbp), %ecx
	subl	%ecx, %eax
	cmpl	$0, %eax
	jge	.LBB14_13
# BB#12:                                # %cond.true.50
	xorl	%eax, %eax
	movzwl	-22(%rbp), %ecx
	movzwl	-20(%rbp), %edx
	subl	%edx, %ecx
	subl	%ecx, %eax
	movl	%eax, -56(%rbp)         # 4-byte Spill
	jmp	.LBB14_14
.LBB14_13:                              # %cond.false.57
	movzwl	-22(%rbp), %eax
	movzwl	-20(%rbp), %ecx
	subl	%ecx, %eax
	movl	%eax, -56(%rbp)         # 4-byte Spill
.LBB14_14:                              # %cond.end.63
	movl	-56(%rbp), %eax         # 4-byte Reload
	movzwl	-22(%rbp), %ecx
	movzwl	-20(%rbp), %edx
	cmpl	%edx, %ecx
	movl	%eax, -60(%rbp)         # 4-byte Spill
	jle	.LBB14_16
# BB#15:                                # %cond.true.71
	movzwl	-22(%rbp), %eax
	movl	%eax, -64(%rbp)         # 4-byte Spill
	jmp	.LBB14_17
.LBB14_16:                              # %cond.false.74
	movzwl	-20(%rbp), %eax
	movl	%eax, -64(%rbp)         # 4-byte Spill
.LBB14_17:                              # %cond.end.77
	movl	-64(%rbp), %eax         # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movl	$20, %ecx
	movb	%dl, -65(%rbp)          # 1-byte Spill
	cltd
	idivl	%ecx
	movl	-60(%rbp), %ecx         # 4-byte Reload
	cmpl	%eax, %ecx
	movb	-65(%rbp), %sil         # 1-byte Reload
	movb	%sil, -50(%rbp)         # 1-byte Spill
	jge	.LBB14_25
# BB#18:                                # %land.rhs
	movzwl	-20(%rbp), %eax
	movzwl	-24(%rbp), %ecx
	subl	%ecx, %eax
	cmpl	$0, %eax
	jge	.LBB14_20
# BB#19:                                # %cond.true.89
	xorl	%eax, %eax
	movzwl	-20(%rbp), %ecx
	movzwl	-24(%rbp), %edx
	subl	%edx, %ecx
	subl	%ecx, %eax
	movl	%eax, -72(%rbp)         # 4-byte Spill
	jmp	.LBB14_21
.LBB14_20:                              # %cond.false.96
	movzwl	-20(%rbp), %eax
	movzwl	-24(%rbp), %ecx
	subl	%ecx, %eax
	movl	%eax, -72(%rbp)         # 4-byte Spill
.LBB14_21:                              # %cond.end.102
	movl	-72(%rbp), %eax         # 4-byte Reload
	movzwl	-20(%rbp), %ecx
	movzwl	-24(%rbp), %edx
	cmpl	%edx, %ecx
	movl	%eax, -76(%rbp)         # 4-byte Spill
	jle	.LBB14_23
# BB#22:                                # %cond.true.110
	movzwl	-20(%rbp), %eax
	movl	%eax, -80(%rbp)         # 4-byte Spill
	jmp	.LBB14_24
.LBB14_23:                              # %cond.false.113
	movzwl	-24(%rbp), %eax
	movl	%eax, -80(%rbp)         # 4-byte Spill
.LBB14_24:                              # %cond.end.116
	movl	-80(%rbp), %eax         # 4-byte Reload
	movl	$20, %ecx
	cltd
	idivl	%ecx
	movl	-76(%rbp), %ecx         # 4-byte Reload
	cmpl	%eax, %ecx
	setl	%sil
	movb	%sil, -50(%rbp)         # 1-byte Spill
.LBB14_25:                              # %land.end
	movb	-50(%rbp), %al          # 1-byte Reload
	movb	%al, -34(%rbp)          # 1-byte Spill
.LBB14_26:                              # %lor.end
	movb	-34(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movb	%al, -33(%rbp)
	jmp	.LBB14_28
.LBB14_27:                              # %if.else
	movb	$0, -33(%rbp)
.LBB14_28:                              # %if.end
	movb	-33(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	face_color_gray_p, .Lfunc_end14-face_color_gray_p
	.cfi_endproc

	.globl	Fcolor_supported_p
	.align	16, 0x90
	.type	Fcolor_supported_p,@function
Fcolor_supported_p:                     # @Fcolor_supported_p
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	CHECK_STRING
	movq	-16(%rbp), %rdi
	callq	decode_any_frame
	movq	-8(%rbp), %rdi
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	SSDATA
	xorl	%edi, %edi
	movq	-24(%rbp), %rdx
	movq	%rax, -40(%rbp)         # 8-byte Spill
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rdx         # 8-byte Reload
	cmpq	%rax, %rdx
	sete	%cl
	xorb	$-1, %cl
	movzbl	%cl, %edi
	andl	$1, %edi
	movq	-32(%rbp), %rax         # 8-byte Reload
	movl	%edi, -52(%rbp)         # 4-byte Spill
	movq	%rax, %rdi
	movq	-40(%rbp), %rsi         # 8-byte Reload
	movl	-52(%rbp), %edx         # 4-byte Reload
	callq	face_color_supported_p
	testb	$1, %al
	jne	.LBB15_1
	jmp	.LBB15_2
.LBB15_1:                               # %cond.true
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -64(%rbp)         # 8-byte Spill
	jmp	.LBB15_3
.LBB15_2:                               # %cond.false
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -64(%rbp)         # 8-byte Spill
.LBB15_3:                               # %cond.end
	movq	-64(%rbp), %rax         # 8-byte Reload
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	Fcolor_supported_p, .Lfunc_end15-Fcolor_supported_p
	.cfi_endproc

	.align	16, 0x90
	.type	face_color_supported_p,@function
face_color_supported_p:                 # @face_color_supported_p
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
	subq	$80, %rsp
	movb	%dl, %al
	movl	$5, %edx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	andb	$1, %al
	movb	%al, -17(%rbp)
	movq	-8(%rbp), %rsi
	movq	%rsi, %rdi
	movl	%edx, %esi
	callq	make_lisp_ptr
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %edx
	cmpl	$2, %edx
	jne	.LBB16_10
# BB#1:                                 # %cond.true
	movq	-32(%rbp), %rdi
	callq	Fxw_display_color_p
	xorl	%edi, %edi
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movb	$1, %cl
	movq	-56(%rbp), %rdx         # 8-byte Reload
	cmpq	%rax, %rdx
	movb	%cl, -57(%rbp)          # 1-byte Spill
	jne	.LBB16_9
# BB#2:                                 # %lor.lhs.false
	movabsq	$.L.str.41, %rsi
	movq	-16(%rbp), %rdi
	callq	xstrcasecmp
	movb	$1, %cl
	cmpl	$0, %eax
	movb	%cl, -57(%rbp)          # 1-byte Spill
	je	.LBB16_9
# BB#3:                                 # %lor.lhs.false.6
	movabsq	$.L.str.42, %rsi
	movq	-16(%rbp), %rdi
	callq	xstrcasecmp
	movb	$1, %cl
	cmpl	$0, %eax
	movb	%cl, -57(%rbp)          # 1-byte Spill
	je	.LBB16_9
# BB#4:                                 # %lor.lhs.false.9
	testb	$1, -17(%rbp)
	je	.LBB16_6
# BB#5:                                 # %land.lhs.true
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	face_color_gray_p
	movb	$1, %cl
	testb	$1, %al
	movb	%cl, -57(%rbp)          # 1-byte Spill
	jne	.LBB16_9
.LBB16_6:                               # %lor.rhs
	movq	-32(%rbp), %rdi
	callq	Fx_display_grayscale_p
	xorl	%edi, %edi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movb	%dil, %cl
	movq	-72(%rbp), %rdx         # 8-byte Reload
	cmpq	%rax, %rdx
	movb	%cl, -73(%rbp)          # 1-byte Spill
	je	.LBB16_8
# BB#7:                                 # %land.rhs
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	face_color_gray_p
	movb	%al, -73(%rbp)          # 1-byte Spill
.LBB16_8:                               # %land.end
	movb	-73(%rbp), %al          # 1-byte Reload
	movb	%al, -57(%rbp)          # 1-byte Spill
.LBB16_9:                               # %lor.end
	movb	-57(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -80(%rbp)         # 4-byte Spill
	jmp	.LBB16_11
.LBB16_10:                              # %cond.false
	leaq	-48(%rbp), %rdx
	xorl	%ecx, %ecx
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	tty_defined_color
	andb	$1, %al
	movzbl	%al, %ecx
	movl	%ecx, -80(%rbp)         # 4-byte Spill
.LBB16_11:                              # %cond.end
	movl	-80(%rbp), %eax         # 4-byte Reload
	cmpl	$0, %eax
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	face_color_supported_p, .Lfunc_end16-face_color_supported_p
	.cfi_endproc

	.globl	load_color
	.align	16, 0x90
	.type	load_color,@function
load_color:                             # @load_color
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
	leaq	-48(%rbp), %r8
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movl	-28(%rbp), %ecx
	callq	load_color2
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	load_color, .Lfunc_end17-load_color
	.cfi_endproc

	.align	16, 0x90
	.type	load_color2,@function
load_color2:                            # @load_color2
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movq	%r8, -40(%rbp)
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rdx
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	callq	SSDATA
	movl	$1, %ecx
	movq	-40(%rbp), %rdx
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	defined_color
	testb	$1, %al
	jne	.LBB18_10
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rsi
	movl	$.L.str.45, %eax
	movl	%eax, %edi
	xorl	%eax, %eax
	movb	%al, %cl
	movb	%cl, %al
	callq	add_to_log
	movl	-28(%rbp), %edx
	addl	$-7, %edx
	movl	%edx, %esi
	subl	$7, %edx
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	movl	%edx, -60(%rbp)         # 4-byte Spill
	ja	.LBB18_8
# BB#11:                                # %if.then
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	.LJTI18_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB18_2:                               # %sw.bb
	movq	-16(%rbp), %rax
	movl	240(%rax), %ecx
	andl	$-129, %ecx
	orl	$128, %ecx
	movl	%ecx, 240(%rax)
	movq	-8(%rbp), %rax
	movq	480(%rax), %rax
	movq	-40(%rbp), %rdx
	movq	%rax, (%rdx)
	jmp	.LBB18_9
.LBB18_3:                               # %sw.bb.2
	movq	-16(%rbp), %rax
	movl	240(%rax), %ecx
	andl	$-257, %ecx             # imm = 0xFFFFFFFFFFFFFEFF
	orl	$256, %ecx              # imm = 0x100
	movl	%ecx, 240(%rax)
	movq	-8(%rbp), %rax
	movq	472(%rax), %rax
	movq	-40(%rbp), %rdx
	movq	%rax, (%rdx)
	jmp	.LBB18_9
.LBB18_4:                               # %sw.bb.7
	movq	-16(%rbp), %rax
	movl	240(%rax), %ecx
	andl	$-513, %ecx             # imm = 0xFFFFFFFFFFFFFDFF
	orl	$512, %ecx              # imm = 0x200
	movl	%ecx, 240(%rax)
	movq	-8(%rbp), %rax
	movq	480(%rax), %rax
	movq	-40(%rbp), %rdx
	movq	%rax, (%rdx)
	jmp	.LBB18_9
.LBB18_5:                               # %sw.bb.13
	movq	-16(%rbp), %rax
	movl	240(%rax), %ecx
	andl	$-1025, %ecx            # imm = 0xFFFFFFFFFFFFFBFF
	orl	$1024, %ecx             # imm = 0x400
	movl	%ecx, 240(%rax)
	movq	-8(%rbp), %rax
	movq	480(%rax), %rax
	movq	-40(%rbp), %rdx
	movq	%rax, (%rdx)
	jmp	.LBB18_9
.LBB18_6:                               # %sw.bb.19
	movq	-16(%rbp), %rax
	movl	240(%rax), %ecx
	andl	$-2049, %ecx            # imm = 0xFFFFFFFFFFFFF7FF
	orl	$2048, %ecx             # imm = 0x800
	movl	%ecx, 240(%rax)
	movq	-8(%rbp), %rax
	movq	480(%rax), %rax
	movq	-40(%rbp), %rdx
	movq	%rax, (%rdx)
	jmp	.LBB18_9
.LBB18_7:                               # %sw.bb.25
	movq	-16(%rbp), %rax
	movl	240(%rax), %ecx
	andl	$-4097, %ecx            # imm = 0xFFFFFFFFFFFFEFFF
	orl	$4096, %ecx             # imm = 0x1000
	movl	%ecx, 240(%rax)
	movq	-8(%rbp), %rax
	movq	480(%rax), %rax
	movq	-40(%rbp), %rdx
	movq	%rax, (%rdx)
	jmp	.LBB18_9
.LBB18_8:                               # %sw.default
	callq	emacs_abort
.LBB18_9:                               # %sw.epilog
	jmp	.LBB18_10
.LBB18_10:                              # %if.end
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	load_color2, .Lfunc_end18-load_color2
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI18_0:
	.quad	.LBB18_4
	.quad	.LBB18_8
	.quad	.LBB18_2
	.quad	.LBB18_3
	.quad	.LBB18_8
	.quad	.LBB18_5
	.quad	.LBB18_6
	.quad	.LBB18_7

	.text
	.globl	unload_color
	.align	16, 0x90
	.type	unload_color,@function
unload_color:                           # @unload_color
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
	movq	%rsi, -16(%rbp)
	cmpq	$-1, -16(%rbp)
	je	.LBB19_2
# BB#1:                                 # %if.then
	callq	block_input
	leaq	-16(%rbp), %rsi
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	callq	x_free_colors
	callq	unblock_input
.LBB19_2:                               # %if.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	unload_color, .Lfunc_end19-unload_color
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI20_0:
	.quad	4602678819172646912     # double 0.5
.LCPI20_1:
	.quad	4634785966078589665     # double 72.269999999999996
	.text
	.globl	Fx_family_fonts
	.align	16, 0x90
	.type	Fx_family_fonts,@function
Fx_family_fonts:                        # @Fx_family_fonts
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
	subq	$1152, %rsp             # imm = 0x480
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	decode_live_frame
	movq	%rax, -64(%rbp)
	movq	$16384, -104(%rbp)      # imm = 0x4000
	callq	SPECPDL_INDEX
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	%rax, -112(%rbp)
	movb	$0, -113(%rbp)
	movq	%rsi, %rdi
	callq	Ffont_spec
	xorl	%edi, %edi
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-176(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB20_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rdi
	callq	CHECK_STRING
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rdx
	movq	-184(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	font_parse_family_registry
.LBB20_2:                               # %if.end
	movq	-64(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	font_list_entities
	xorl	%edi, %edi
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-192(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB20_4
# BB#3:                                 # %if.then.8
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB20_437
.LBB20_4:                               # %if.end.10
	movq	$0, -72(%rbp)
.LBB20_5:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$4, -72(%rbp)
	jge	.LBB20_13
# BB#6:                                 # %for.body
                                        #   in Loop: Header=BB20_5 Depth=1
	movq	-72(%rbp), %rax
	movl	font_sort_order(,%rax,4), %ecx
	movl	%ecx, %edx
	subl	$2, %edx
	movl	%ecx, -196(%rbp)        # 4-byte Spill
	movl	%edx, -200(%rbp)        # 4-byte Spill
	je	.LBB20_9
	jmp	.LBB20_438
.LBB20_438:                             # %for.body
                                        #   in Loop: Header=BB20_5 Depth=1
	movl	-196(%rbp), %eax        # 4-byte Reload
	subl	$4, %eax
	movl	%eax, -204(%rbp)        # 4-byte Spill
	je	.LBB20_7
	jmp	.LBB20_439
.LBB20_439:                             # %for.body
                                        #   in Loop: Header=BB20_5 Depth=1
	movl	-196(%rbp), %eax        # 4-byte Reload
	subl	$7, %eax
	movl	%eax, -208(%rbp)        # 4-byte Spill
	je	.LBB20_8
	jmp	.LBB20_10
.LBB20_7:                               # %sw.bb
                                        #   in Loop: Header=BB20_5 Depth=1
	movq	-72(%rbp), %rax
	movl	$7, font_props_for_sorting(,%rax,4)
	jmp	.LBB20_11
.LBB20_8:                               # %sw.bb.13
                                        #   in Loop: Header=BB20_5 Depth=1
	movq	-72(%rbp), %rax
	movl	$8, font_props_for_sorting(,%rax,4)
	jmp	.LBB20_11
.LBB20_9:                               # %sw.bb.15
                                        #   in Loop: Header=BB20_5 Depth=1
	movq	-72(%rbp), %rax
	movl	$5, font_props_for_sorting(,%rax,4)
	jmp	.LBB20_11
.LBB20_10:                              # %sw.default
                                        #   in Loop: Header=BB20_5 Depth=1
	movq	-72(%rbp), %rax
	movl	$6, font_props_for_sorting(,%rax,4)
.LBB20_11:                              # %sw.epilog
                                        #   in Loop: Header=BB20_5 Depth=1
	jmp	.LBB20_12
.LBB20_12:                              # %for.inc
                                        #   in Loop: Header=BB20_5 Depth=1
	movq	-72(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -72(%rbp)
	jmp	.LBB20_5
.LBB20_13:                              # %for.end
	movq	-72(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -72(%rbp)
	movl	$2, font_props_for_sorting(,%rax,4)
	movq	-72(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -72(%rbp)
	movl	$1, font_props_for_sorting(,%rax,4)
	movq	-72(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -72(%rbp)
	movl	$3, font_props_for_sorting(,%rax,4)
	movq	-72(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -72(%rbp)
	movl	$4, font_props_for_sorting(,%rax,4)
	movq	-40(%rbp), %rdi
	callq	Flength
	sarq	$2, %rax
	movq	%rax, -88(%rbp)
# BB#14:                                # %do.body
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB20_15
	jmp	.LBB20_94
.LBB20_15:                              # %cond.true
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB20_16
	jmp	.LBB20_55
.LBB20_16:                              # %cond.true.27
	movq	-88(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB20_18
# BB#17:                                # %cond.true.31
	xorl	%eax, %eax
	movq	-88(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$0, %esi
	xorl	$-1, %esi
	cmpl	$-1, %esi
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movq	-88(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$1, %esi
	shll	$30, %esi
	subl	$1, %esi
	shll	$1, %esi
	addl	$1, %esi
	subl	%esi, %eax
	movl	%eax, -212(%rbp)        # 4-byte Spill
	jmp	.LBB20_19
.LBB20_18:                              # %cond.false
	movq	-88(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -212(%rbp)        # 4-byte Spill
.LBB20_19:                              # %cond.end
	movl	-212(%rbp), %eax        # 4-byte Reload
	cmpl	$0, %eax
	jne	.LBB20_21
# BB#20:                                # %land.lhs.true
	movq	-88(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	cmpl	$0, %edx
	jl	.LBB20_47
.LBB20_21:                              # %lor.lhs.false
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB20_22
	jmp	.LBB20_33
.LBB20_22:                              # %cond.true.60
	movq	-88(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	cmpl	$0, %edx
	jge	.LBB20_27
# BB#23:                                # %cond.true.65
	movq	-88(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	movq	-88(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	subl	$1, %esi
	cmpl	$0, %esi
	movl	%edx, -216(%rbp)        # 4-byte Spill
	jge	.LBB20_25
# BB#24:                                # %cond.true.75
	movq	-88(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	movl	%edx, -220(%rbp)        # 4-byte Spill
	jmp	.LBB20_26
.LBB20_25:                              # %cond.false.85
	movq	-88(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	movl	%edx, -220(%rbp)        # 4-byte Spill
.LBB20_26:                              # %cond.end.91
	movl	-220(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movl	-216(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB20_47
	jmp	.LBB20_44
.LBB20_27:                              # %cond.false.95
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB20_28
	jmp	.LBB20_29
.LBB20_28:                              # %cond.true.96
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB20_47
	jmp	.LBB20_44
.LBB20_29:                              # %cond.false.97
	movq	-88(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB20_31
# BB#30:                                # %cond.true.105
	xorl	%eax, %eax
	movq	-88(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$0, %esi
	xorl	$-1, %esi
	cmpl	$-1, %esi
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movq	-88(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$1, %esi
	shll	$30, %esi
	subl	$1, %esi
	shll	$1, %esi
	addl	$1, %esi
	subl	%esi, %eax
	movl	%eax, -224(%rbp)        # 4-byte Spill
	jmp	.LBB20_32
.LBB20_31:                              # %cond.false.125
	movq	-88(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -224(%rbp)        # 4-byte Spill
.LBB20_32:                              # %cond.end.131
	movl	-224(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movq	-88(%rbp), %rsi
	movb	%sil, %dil
	movsbl	%dil, %ecx
	cmpl	%ecx, %eax
	jl	.LBB20_47
	jmp	.LBB20_44
.LBB20_33:                              # %cond.false.138
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB20_34
	jmp	.LBB20_35
.LBB20_34:                              # %cond.true.139
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB20_47
	jmp	.LBB20_44
.LBB20_35:                              # %cond.false.140
	movq	-88(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	cmpl	$0, %edx
	jge	.LBB20_40
# BB#36:                                # %cond.true.145
	movq	-88(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	movq	-88(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	subl	$1, %esi
	cmpl	$0, %esi
	movl	%edx, -228(%rbp)        # 4-byte Spill
	jge	.LBB20_38
# BB#37:                                # %cond.true.155
	xorl	%eax, %eax
	movq	-88(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$0, %esi
	xorl	$-1, %esi
	cmpl	$-1, %esi
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movq	-88(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$1, %esi
	shll	$30, %esi
	subl	$1, %esi
	shll	$1, %esi
	addl	$1, %esi
	subl	%esi, %eax
	movl	%eax, -232(%rbp)        # 4-byte Spill
	jmp	.LBB20_39
.LBB20_38:                              # %cond.false.175
	movq	-88(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -232(%rbp)        # 4-byte Spill
.LBB20_39:                              # %cond.end.181
	movl	-232(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movl	-228(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB20_47
	jmp	.LBB20_44
.LBB20_40:                              # %cond.false.186
	movq	-88(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB20_42
# BB#41:                                # %cond.true.194
	movq	-88(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	movl	%edx, -236(%rbp)        # 4-byte Spill
	jmp	.LBB20_43
.LBB20_42:                              # %cond.false.204
	movq	-88(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	movl	%edx, -236(%rbp)        # 4-byte Spill
.LBB20_43:                              # %cond.end.210
	movl	-236(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movq	-88(%rbp), %rsi
	movb	%sil, %dil
	movsbl	%dil, %ecx
	cmpl	%ecx, %eax
	jl	.LBB20_47
.LBB20_44:                              # %lor.lhs.false.217
	movq	-88(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	shll	$3, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB20_46
# BB#45:                                # %land.lhs.true.225
	movq	-88(%rbp), %rax
	movb	%al, %cl
	movsbl	%cl, %edx
	shll	$3, %edx
	cmpl	$-128, %edx
	jl	.LBB20_47
.LBB20_46:                              # %lor.lhs.false.231
	movl	$127, %eax
	movq	-88(%rbp), %rcx
	movb	%cl, %dl
	movsbl	%dl, %esi
	shll	$3, %esi
	cmpl	%esi, %eax
	jge	.LBB20_51
.LBB20_47:                              # %cond.true.237
	movq	-88(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	cmpl	$127, %edx
	jg	.LBB20_49
# BB#48:                                # %cond.true.243
	movq	-88(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	movl	%edx, -240(%rbp)        # 4-byte Spill
	jmp	.LBB20_50
.LBB20_49:                              # %cond.false.249
	movq	-88(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	subl	$-128, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	addl	$-128, %edx
	movl	%edx, -240(%rbp)        # 4-byte Spill
.LBB20_50:                              # %cond.end.257
	movl	-240(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -128(%rbp)
	testb	$1, %cl
	jne	.LBB20_414
	jmp	.LBB20_413
.LBB20_51:                              # %cond.false.260
	movq	-88(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	cmpl	$127, %edx
	jg	.LBB20_53
# BB#52:                                # %cond.true.266
	movq	-88(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	movl	%edx, -244(%rbp)        # 4-byte Spill
	jmp	.LBB20_54
.LBB20_53:                              # %cond.false.272
	movq	-88(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	subl	$-128, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	addl	$-128, %edx
	movl	%edx, -244(%rbp)        # 4-byte Spill
.LBB20_54:                              # %cond.end.280
	movl	-244(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -128(%rbp)
	testb	$1, %dl
	jne	.LBB20_414
	jmp	.LBB20_413
.LBB20_55:                              # %cond.false.283
	movq	-88(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB20_57
# BB#56:                                # %cond.true.289
	xorl	%eax, %eax
	movq	-88(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-88(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -256(%rbp)        # 8-byte Spill
	jmp	.LBB20_58
.LBB20_57:                              # %cond.false.306
	movq	-88(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
.LBB20_58:                              # %cond.end.310
	movq	-256(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB20_60
# BB#59:                                # %land.lhs.true.314
	cmpq	$0, -88(%rbp)
	jl	.LBB20_86
.LBB20_60:                              # %lor.lhs.false.317
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB20_61
	jmp	.LBB20_72
.LBB20_61:                              # %cond.true.318
	cmpq	$0, -88(%rbp)
	jge	.LBB20_66
# BB#62:                                # %cond.true.321
	movq	-88(%rbp), %rax
	movq	-88(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -264(%rbp)        # 8-byte Spill
	jge	.LBB20_64
# BB#63:                                # %cond.true.327
	movq	-88(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
	jmp	.LBB20_65
.LBB20_64:                              # %cond.false.335
	movq	-88(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
.LBB20_65:                              # %cond.end.339
	movq	-272(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -280(%rbp)        # 8-byte Spill
	cqto
	movq	-280(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-264(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB20_86
	jmp	.LBB20_83
.LBB20_66:                              # %cond.false.344
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB20_67
	jmp	.LBB20_68
.LBB20_67:                              # %cond.true.345
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB20_86
	jmp	.LBB20_83
.LBB20_68:                              # %cond.false.346
	movq	-88(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB20_70
# BB#69:                                # %cond.true.352
	xorl	%eax, %eax
	movq	-88(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-88(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -288(%rbp)        # 8-byte Spill
	jmp	.LBB20_71
.LBB20_70:                              # %cond.false.369
	movq	-88(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
.LBB20_71:                              # %cond.end.373
	movq	-288(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -296(%rbp)        # 8-byte Spill
	cqto
	movq	-296(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	cmpq	-88(%rbp), %rax
	jl	.LBB20_86
	jmp	.LBB20_83
.LBB20_72:                              # %cond.false.378
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB20_73
	jmp	.LBB20_74
.LBB20_73:                              # %cond.true.379
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB20_86
	jmp	.LBB20_83
.LBB20_74:                              # %cond.false.380
	cmpq	$0, -88(%rbp)
	jge	.LBB20_79
# BB#75:                                # %cond.true.383
	movq	-88(%rbp), %rax
	movq	-88(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -304(%rbp)        # 8-byte Spill
	jge	.LBB20_77
# BB#76:                                # %cond.true.389
	xorl	%eax, %eax
	movq	-88(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-88(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -312(%rbp)        # 8-byte Spill
	jmp	.LBB20_78
.LBB20_77:                              # %cond.false.406
	movq	-88(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -312(%rbp)        # 8-byte Spill
.LBB20_78:                              # %cond.end.410
	movq	-312(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -320(%rbp)        # 8-byte Spill
	cqto
	movq	-320(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-304(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB20_86
	jmp	.LBB20_83
.LBB20_79:                              # %cond.false.415
	movq	-88(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB20_81
# BB#80:                                # %cond.true.421
	movq	-88(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -328(%rbp)        # 8-byte Spill
	jmp	.LBB20_82
.LBB20_81:                              # %cond.false.429
	movq	-88(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -328(%rbp)        # 8-byte Spill
.LBB20_82:                              # %cond.end.433
	movq	-328(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -336(%rbp)        # 8-byte Spill
	cqto
	movq	-336(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	cmpq	-88(%rbp), %rax
	jl	.LBB20_86
.LBB20_83:                              # %lor.lhs.false.438
	movq	-88(%rbp), %rax
	shlq	$3, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB20_85
# BB#84:                                # %land.lhs.true.444
	movq	-88(%rbp), %rax
	shlq	$3, %rax
	cmpq	$-128, %rax
	jl	.LBB20_86
.LBB20_85:                              # %lor.lhs.false.448
	movl	$127, %eax
	movl	%eax, %ecx
	movq	-88(%rbp), %rdx
	shlq	$3, %rdx
	cmpq	%rdx, %rcx
	jge	.LBB20_90
.LBB20_86:                              # %cond.true.452
	movq	-88(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	cmpl	$127, %edx
	jg	.LBB20_88
# BB#87:                                # %cond.true.458
	movq	-88(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	movl	%edx, -340(%rbp)        # 4-byte Spill
	jmp	.LBB20_89
.LBB20_88:                              # %cond.false.464
	movq	-88(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	subl	$-128, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	addl	$-128, %edx
	movl	%edx, -340(%rbp)        # 4-byte Spill
.LBB20_89:                              # %cond.end.472
	movl	-340(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -128(%rbp)
	testb	$1, %cl
	jne	.LBB20_414
	jmp	.LBB20_413
.LBB20_90:                              # %cond.false.475
	movq	-88(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	cmpl	$127, %edx
	jg	.LBB20_92
# BB#91:                                # %cond.true.481
	movq	-88(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	movl	%edx, -344(%rbp)        # 4-byte Spill
	jmp	.LBB20_93
.LBB20_92:                              # %cond.false.487
	movq	-88(%rbp), %rax
	movb	%al, %cl
	movzbl	%cl, %edx
	shll	$3, %edx
	subl	$-128, %edx
	movb	%dl, %cl
	movsbl	%cl, %edx
	addl	$-128, %edx
	movl	%edx, -344(%rbp)        # 4-byte Spill
.LBB20_93:                              # %cond.end.495
	movl	-344(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -128(%rbp)
	testb	$1, %dl
	jne	.LBB20_414
	jmp	.LBB20_413
.LBB20_94:                              # %cond.false.498
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB20_95
	jmp	.LBB20_174
.LBB20_95:                              # %cond.true.499
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB20_96
	jmp	.LBB20_135
.LBB20_96:                              # %cond.true.500
	movq	-88(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB20_98
# BB#97:                                # %cond.true.508
	xorl	%eax, %eax
	movq	-88(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$0, %esi
	xorl	$-1, %esi
	cmpl	$-1, %esi
	sete	%dil
	andb	$1, %dil
	movzbl	%dil, %esi
	subl	%esi, %eax
	movq	-88(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$1, %esi
	shll	$30, %esi
	subl	$1, %esi
	shll	$1, %esi
	addl	$1, %esi
	subl	%esi, %eax
	movl	%eax, -348(%rbp)        # 4-byte Spill
	jmp	.LBB20_99
.LBB20_98:                              # %cond.false.528
	movq	-88(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -348(%rbp)        # 4-byte Spill
.LBB20_99:                              # %cond.end.534
	movl	-348(%rbp), %eax        # 4-byte Reload
	cmpl	$0, %eax
	jne	.LBB20_101
# BB#100:                               # %land.lhs.true.538
	movq	-88(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	cmpl	$0, %edx
	jl	.LBB20_127
.LBB20_101:                             # %lor.lhs.false.543
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB20_102
	jmp	.LBB20_113
.LBB20_102:                             # %cond.true.544
	movq	-88(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	cmpl	$0, %edx
	jge	.LBB20_107
# BB#103:                               # %cond.true.549
	movq	-88(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	movq	-88(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	subl	$1, %esi
	cmpl	$0, %esi
	movl	%edx, -352(%rbp)        # 4-byte Spill
	jge	.LBB20_105
# BB#104:                               # %cond.true.559
	movq	-88(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	movl	%edx, -356(%rbp)        # 4-byte Spill
	jmp	.LBB20_106
.LBB20_105:                             # %cond.false.569
	movq	-88(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	movl	%edx, -356(%rbp)        # 4-byte Spill
.LBB20_106:                             # %cond.end.575
	movl	-356(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movl	-352(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB20_127
	jmp	.LBB20_124
.LBB20_107:                             # %cond.false.580
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB20_108
	jmp	.LBB20_109
.LBB20_108:                             # %cond.true.581
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB20_127
	jmp	.LBB20_124
.LBB20_109:                             # %cond.false.582
	movq	-88(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB20_111
# BB#110:                               # %cond.true.590
	xorl	%eax, %eax
	movq	-88(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$0, %esi
	xorl	$-1, %esi
	cmpl	$-1, %esi
	sete	%dil
	andb	$1, %dil
	movzbl	%dil, %esi
	subl	%esi, %eax
	movq	-88(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$1, %esi
	shll	$30, %esi
	subl	$1, %esi
	shll	$1, %esi
	addl	$1, %esi
	subl	%esi, %eax
	movl	%eax, -360(%rbp)        # 4-byte Spill
	jmp	.LBB20_112
.LBB20_111:                             # %cond.false.610
	movq	-88(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -360(%rbp)        # 4-byte Spill
.LBB20_112:                             # %cond.end.616
	movl	-360(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movq	-88(%rbp), %rsi
	movw	%si, %di
	movswl	%di, %ecx
	cmpl	%ecx, %eax
	jl	.LBB20_127
	jmp	.LBB20_124
.LBB20_113:                             # %cond.false.623
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB20_114
	jmp	.LBB20_115
.LBB20_114:                             # %cond.true.624
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB20_127
	jmp	.LBB20_124
.LBB20_115:                             # %cond.false.625
	movq	-88(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	cmpl	$0, %edx
	jge	.LBB20_120
# BB#116:                               # %cond.true.630
	movq	-88(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	movq	-88(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	subl	$1, %esi
	cmpl	$0, %esi
	movl	%edx, -364(%rbp)        # 4-byte Spill
	jge	.LBB20_118
# BB#117:                               # %cond.true.640
	xorl	%eax, %eax
	movq	-88(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$0, %esi
	xorl	$-1, %esi
	cmpl	$-1, %esi
	sete	%dil
	andb	$1, %dil
	movzbl	%dil, %esi
	subl	%esi, %eax
	movq	-88(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	addl	$0, %esi
	imull	$0, %esi, %esi
	addl	$1, %esi
	shll	$30, %esi
	subl	$1, %esi
	shll	$1, %esi
	addl	$1, %esi
	subl	%esi, %eax
	movl	%eax, -368(%rbp)        # 4-byte Spill
	jmp	.LBB20_119
.LBB20_118:                             # %cond.false.660
	movq	-88(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	movl	%edx, -368(%rbp)        # 4-byte Spill
.LBB20_119:                             # %cond.end.666
	movl	-368(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movl	-364(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB20_127
	jmp	.LBB20_124
.LBB20_120:                             # %cond.false.671
	movq	-88(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB20_122
# BB#121:                               # %cond.true.679
	movq	-88(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	movl	%edx, -372(%rbp)        # 4-byte Spill
	jmp	.LBB20_123
.LBB20_122:                             # %cond.false.689
	movq	-88(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	movl	%edx, -372(%rbp)        # 4-byte Spill
.LBB20_123:                             # %cond.end.695
	movl	-372(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movq	-88(%rbp), %rsi
	movw	%si, %di
	movswl	%di, %ecx
	cmpl	%ecx, %eax
	jl	.LBB20_127
.LBB20_124:                             # %lor.lhs.false.702
	movq	-88(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	shll	$3, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	jge	.LBB20_126
# BB#125:                               # %land.lhs.true.710
	movq	-88(%rbp), %rax
	movw	%ax, %cx
	movswl	%cx, %edx
	shll	$3, %edx
	cmpl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	jl	.LBB20_127
.LBB20_126:                             # %lor.lhs.false.716
	movl	$32767, %eax            # imm = 0x7FFF
	movq	-88(%rbp), %rcx
	movw	%cx, %dx
	movswl	%dx, %esi
	shll	$3, %esi
	cmpl	%esi, %eax
	jge	.LBB20_131
.LBB20_127:                             # %cond.true.722
	movq	-88(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	cmpl	$32767, %edx            # imm = 0x7FFF
	jg	.LBB20_129
# BB#128:                               # %cond.true.728
	movq	-88(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	movw	%dx, %cx
	movswl	%cx, %edx
	movl	%edx, -376(%rbp)        # 4-byte Spill
	jmp	.LBB20_130
.LBB20_129:                             # %cond.false.734
	movq	-88(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	subl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movw	%dx, %cx
	movswl	%cx, %edx
	addl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movl	%edx, -376(%rbp)        # 4-byte Spill
.LBB20_130:                             # %cond.end.742
	movl	-376(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -128(%rbp)
	testb	$1, %cl
	jne	.LBB20_414
	jmp	.LBB20_413
.LBB20_131:                             # %cond.false.745
	movq	-88(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	cmpl	$32767, %edx            # imm = 0x7FFF
	jg	.LBB20_133
# BB#132:                               # %cond.true.751
	movq	-88(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	movw	%dx, %cx
	movswl	%cx, %edx
	movl	%edx, -380(%rbp)        # 4-byte Spill
	jmp	.LBB20_134
.LBB20_133:                             # %cond.false.757
	movq	-88(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	subl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movw	%dx, %cx
	movswl	%cx, %edx
	addl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movl	%edx, -380(%rbp)        # 4-byte Spill
.LBB20_134:                             # %cond.end.765
	movl	-380(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -128(%rbp)
	testb	$1, %dl
	jne	.LBB20_414
	jmp	.LBB20_413
.LBB20_135:                             # %cond.false.768
	movq	-88(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB20_137
# BB#136:                               # %cond.true.774
	xorl	%eax, %eax
	movq	-88(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-88(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -392(%rbp)        # 8-byte Spill
	jmp	.LBB20_138
.LBB20_137:                             # %cond.false.791
	movq	-88(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -392(%rbp)        # 8-byte Spill
.LBB20_138:                             # %cond.end.795
	movq	-392(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB20_140
# BB#139:                               # %land.lhs.true.799
	cmpq	$0, -88(%rbp)
	jl	.LBB20_166
.LBB20_140:                             # %lor.lhs.false.802
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB20_141
	jmp	.LBB20_152
.LBB20_141:                             # %cond.true.803
	cmpq	$0, -88(%rbp)
	jge	.LBB20_146
# BB#142:                               # %cond.true.806
	movq	-88(%rbp), %rax
	movq	-88(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -400(%rbp)        # 8-byte Spill
	jge	.LBB20_144
# BB#143:                               # %cond.true.812
	movq	-88(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -408(%rbp)        # 8-byte Spill
	jmp	.LBB20_145
.LBB20_144:                             # %cond.false.820
	movq	-88(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -408(%rbp)        # 8-byte Spill
.LBB20_145:                             # %cond.end.824
	movq	-408(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -416(%rbp)        # 8-byte Spill
	cqto
	movq	-416(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-400(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB20_166
	jmp	.LBB20_163
.LBB20_146:                             # %cond.false.829
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB20_147
	jmp	.LBB20_148
.LBB20_147:                             # %cond.true.830
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB20_166
	jmp	.LBB20_163
.LBB20_148:                             # %cond.false.831
	movq	-88(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB20_150
# BB#149:                               # %cond.true.837
	xorl	%eax, %eax
	movq	-88(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-88(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -424(%rbp)        # 8-byte Spill
	jmp	.LBB20_151
.LBB20_150:                             # %cond.false.854
	movq	-88(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -424(%rbp)        # 8-byte Spill
.LBB20_151:                             # %cond.end.858
	movq	-424(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -432(%rbp)        # 8-byte Spill
	cqto
	movq	-432(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	cmpq	-88(%rbp), %rax
	jl	.LBB20_166
	jmp	.LBB20_163
.LBB20_152:                             # %cond.false.863
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB20_153
	jmp	.LBB20_154
.LBB20_153:                             # %cond.true.864
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB20_166
	jmp	.LBB20_163
.LBB20_154:                             # %cond.false.865
	cmpq	$0, -88(%rbp)
	jge	.LBB20_159
# BB#155:                               # %cond.true.868
	movq	-88(%rbp), %rax
	movq	-88(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -440(%rbp)        # 8-byte Spill
	jge	.LBB20_157
# BB#156:                               # %cond.true.874
	xorl	%eax, %eax
	movq	-88(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-88(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -448(%rbp)        # 8-byte Spill
	jmp	.LBB20_158
.LBB20_157:                             # %cond.false.891
	movq	-88(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -448(%rbp)        # 8-byte Spill
.LBB20_158:                             # %cond.end.895
	movq	-448(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -456(%rbp)        # 8-byte Spill
	cqto
	movq	-456(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-440(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB20_166
	jmp	.LBB20_163
.LBB20_159:                             # %cond.false.900
	movq	-88(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB20_161
# BB#160:                               # %cond.true.906
	movq	-88(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -464(%rbp)        # 8-byte Spill
	jmp	.LBB20_162
.LBB20_161:                             # %cond.false.914
	movq	-88(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -464(%rbp)        # 8-byte Spill
.LBB20_162:                             # %cond.end.918
	movq	-464(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -472(%rbp)        # 8-byte Spill
	cqto
	movq	-472(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	cmpq	-88(%rbp), %rax
	jl	.LBB20_166
.LBB20_163:                             # %lor.lhs.false.923
	movq	-88(%rbp), %rax
	shlq	$3, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB20_165
# BB#164:                               # %land.lhs.true.929
	movq	-88(%rbp), %rax
	shlq	$3, %rax
	cmpq	$-32768, %rax           # imm = 0xFFFFFFFFFFFF8000
	jl	.LBB20_166
.LBB20_165:                             # %lor.lhs.false.933
	movl	$32767, %eax            # imm = 0x7FFF
	movl	%eax, %ecx
	movq	-88(%rbp), %rdx
	shlq	$3, %rdx
	cmpq	%rdx, %rcx
	jge	.LBB20_170
.LBB20_166:                             # %cond.true.937
	movq	-88(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	cmpl	$32767, %edx            # imm = 0x7FFF
	jg	.LBB20_168
# BB#167:                               # %cond.true.943
	movq	-88(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	movw	%dx, %cx
	movswl	%cx, %edx
	movl	%edx, -476(%rbp)        # 4-byte Spill
	jmp	.LBB20_169
.LBB20_168:                             # %cond.false.949
	movq	-88(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	subl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movw	%dx, %cx
	movswl	%cx, %edx
	addl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movl	%edx, -476(%rbp)        # 4-byte Spill
.LBB20_169:                             # %cond.end.957
	movl	-476(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -128(%rbp)
	testb	$1, %cl
	jne	.LBB20_414
	jmp	.LBB20_413
.LBB20_170:                             # %cond.false.960
	movq	-88(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	cmpl	$32767, %edx            # imm = 0x7FFF
	jg	.LBB20_172
# BB#171:                               # %cond.true.966
	movq	-88(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	movw	%dx, %cx
	movswl	%cx, %edx
	movl	%edx, -480(%rbp)        # 4-byte Spill
	jmp	.LBB20_173
.LBB20_172:                             # %cond.false.972
	movq	-88(%rbp), %rax
	movw	%ax, %cx
	movzwl	%cx, %edx
	shll	$3, %edx
	subl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movw	%dx, %cx
	movswl	%cx, %edx
	addl	$-32768, %edx           # imm = 0xFFFFFFFFFFFF8000
	movl	%edx, -480(%rbp)        # 4-byte Spill
.LBB20_173:                             # %cond.end.980
	movl	-480(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -128(%rbp)
	testb	$1, %dl
	jne	.LBB20_414
	jmp	.LBB20_413
.LBB20_174:                             # %cond.false.983
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB20_175
	jmp	.LBB20_254
.LBB20_175:                             # %cond.true.984
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB20_176
	jmp	.LBB20_215
.LBB20_176:                             # %cond.true.985
	movq	-88(%rbp), %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB20_178
# BB#177:                               # %cond.true.992
	xorl	%eax, %eax
	movq	-88(%rbp), %rcx
	movl	%ecx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	xorl	$-1, %edx
	cmpl	$-1, %edx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edx
	subl	%edx, %eax
	movq	-88(%rbp), %rcx
	movl	%ecx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	subl	%edx, %eax
	movl	%eax, -484(%rbp)        # 4-byte Spill
	jmp	.LBB20_179
.LBB20_178:                             # %cond.false.1010
	movq	-88(%rbp), %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	movl	%ecx, -484(%rbp)        # 4-byte Spill
.LBB20_179:                             # %cond.end.1015
	movl	-484(%rbp), %eax        # 4-byte Reload
	cmpl	$0, %eax
	jne	.LBB20_181
# BB#180:                               # %land.lhs.true.1019
	movq	-88(%rbp), %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jl	.LBB20_207
.LBB20_181:                             # %lor.lhs.false.1023
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB20_182
	jmp	.LBB20_193
.LBB20_182:                             # %cond.true.1024
	movq	-88(%rbp), %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jge	.LBB20_187
# BB#183:                               # %cond.true.1028
	movq	-88(%rbp), %rax
	movl	%eax, %ecx
	movq	-88(%rbp), %rax
	movl	%eax, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	movl	%ecx, -488(%rbp)        # 4-byte Spill
	jge	.LBB20_185
# BB#184:                               # %cond.true.1036
	movq	-88(%rbp), %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	movl	%ecx, -492(%rbp)        # 4-byte Spill
	jmp	.LBB20_186
.LBB20_185:                             # %cond.false.1045
	movq	-88(%rbp), %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	movl	%ecx, -492(%rbp)        # 4-byte Spill
.LBB20_186:                             # %cond.end.1050
	movl	-492(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movl	-488(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB20_207
	jmp	.LBB20_204
.LBB20_187:                             # %cond.false.1055
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB20_188
	jmp	.LBB20_189
.LBB20_188:                             # %cond.true.1056
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB20_207
	jmp	.LBB20_204
.LBB20_189:                             # %cond.false.1057
	movq	-88(%rbp), %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB20_191
# BB#190:                               # %cond.true.1064
	xorl	%eax, %eax
	movq	-88(%rbp), %rcx
	movl	%ecx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	xorl	$-1, %edx
	cmpl	$-1, %edx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edx
	subl	%edx, %eax
	movq	-88(%rbp), %rcx
	movl	%ecx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	subl	%edx, %eax
	movl	%eax, -496(%rbp)        # 4-byte Spill
	jmp	.LBB20_192
.LBB20_191:                             # %cond.false.1082
	movq	-88(%rbp), %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	movl	%ecx, -496(%rbp)        # 4-byte Spill
.LBB20_192:                             # %cond.end.1087
	movl	-496(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movq	-88(%rbp), %rsi
	movl	%esi, %ecx
	cmpl	%ecx, %eax
	jl	.LBB20_207
	jmp	.LBB20_204
.LBB20_193:                             # %cond.false.1093
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB20_194
	jmp	.LBB20_195
.LBB20_194:                             # %cond.true.1094
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB20_207
	jmp	.LBB20_204
.LBB20_195:                             # %cond.false.1095
	movq	-88(%rbp), %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jge	.LBB20_200
# BB#196:                               # %cond.true.1099
	movq	-88(%rbp), %rax
	movl	%eax, %ecx
	movq	-88(%rbp), %rax
	movl	%eax, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	subl	$1, %edx
	cmpl	$0, %edx
	movl	%ecx, -500(%rbp)        # 4-byte Spill
	jge	.LBB20_198
# BB#197:                               # %cond.true.1107
	xorl	%eax, %eax
	movq	-88(%rbp), %rcx
	movl	%ecx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$0, %edx
	xorl	$-1, %edx
	cmpl	$-1, %edx
	sete	%sil
	andb	$1, %sil
	movzbl	%sil, %edx
	subl	%edx, %eax
	movq	-88(%rbp), %rcx
	movl	%ecx, %edx
	addl	$0, %edx
	imull	$0, %edx, %edx
	addl	$1, %edx
	shll	$30, %edx
	subl	$1, %edx
	shll	$1, %edx
	addl	$1, %edx
	subl	%edx, %eax
	movl	%eax, -504(%rbp)        # 4-byte Spill
	jmp	.LBB20_199
.LBB20_198:                             # %cond.false.1125
	movq	-88(%rbp), %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$0, %ecx
	movl	%ecx, -504(%rbp)        # 4-byte Spill
.LBB20_199:                             # %cond.end.1130
	movl	-504(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movl	-500(%rbp), %ecx        # 4-byte Reload
	cmpl	%eax, %ecx
	jl	.LBB20_207
	jmp	.LBB20_204
.LBB20_200:                             # %cond.false.1135
	movq	-88(%rbp), %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB20_202
# BB#201:                               # %cond.true.1142
	movq	-88(%rbp), %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	addl	$1, %ecx
	shll	$30, %ecx
	subl	$1, %ecx
	shll	$1, %ecx
	addl	$1, %ecx
	movl	%ecx, -508(%rbp)        # 4-byte Spill
	jmp	.LBB20_203
.LBB20_202:                             # %cond.false.1151
	movq	-88(%rbp), %rax
	movl	%eax, %ecx
	addl	$0, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	movl	%ecx, -508(%rbp)        # 4-byte Spill
.LBB20_203:                             # %cond.end.1156
	movl	-508(%rbp), %eax        # 4-byte Reload
	movl	$8, %ecx
	cltd
	idivl	%ecx
	movq	-88(%rbp), %rsi
	movl	%esi, %ecx
	cmpl	%ecx, %eax
	jl	.LBB20_207
.LBB20_204:                             # %lor.lhs.false.1162
	movq	-88(%rbp), %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	imull	$0, %ecx, %ecx
	subl	$1, %ecx
	cmpl	$0, %ecx
	jge	.LBB20_206
# BB#205:                               # %land.lhs.true.1169
	movq	-88(%rbp), %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	cmpl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	jl	.LBB20_207
.LBB20_206:                             # %lor.lhs.false.1174
	movl	$2147483647, %eax       # imm = 0x7FFFFFFF
	movq	-88(%rbp), %rcx
	movl	%ecx, %edx
	shll	$3, %edx
	cmpl	%edx, %eax
	jge	.LBB20_211
.LBB20_207:                             # %cond.true.1179
	movq	-88(%rbp), %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	cmpl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	ja	.LBB20_209
# BB#208:                               # %cond.true.1184
	movq	-88(%rbp), %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	movl	%ecx, -512(%rbp)        # 4-byte Spill
	jmp	.LBB20_210
.LBB20_209:                             # %cond.false.1187
	movq	-88(%rbp), %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	subl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	movl	%ecx, -512(%rbp)        # 4-byte Spill
.LBB20_210:                             # %cond.end.1192
	movl	-512(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -128(%rbp)
	testb	$1, %cl
	jne	.LBB20_414
	jmp	.LBB20_413
.LBB20_211:                             # %cond.false.1195
	movq	-88(%rbp), %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	cmpl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	ja	.LBB20_213
# BB#212:                               # %cond.true.1200
	movq	-88(%rbp), %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	movl	%ecx, -516(%rbp)        # 4-byte Spill
	jmp	.LBB20_214
.LBB20_213:                             # %cond.false.1203
	movq	-88(%rbp), %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	subl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	movl	%ecx, -516(%rbp)        # 4-byte Spill
.LBB20_214:                             # %cond.end.1208
	movl	-516(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -128(%rbp)
	testb	$1, %dl
	jne	.LBB20_414
	jmp	.LBB20_413
.LBB20_215:                             # %cond.false.1211
	movq	-88(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB20_217
# BB#216:                               # %cond.true.1217
	xorl	%eax, %eax
	movq	-88(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-88(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -528(%rbp)        # 8-byte Spill
	jmp	.LBB20_218
.LBB20_217:                             # %cond.false.1234
	movq	-88(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -528(%rbp)        # 8-byte Spill
.LBB20_218:                             # %cond.end.1238
	movq	-528(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB20_220
# BB#219:                               # %land.lhs.true.1242
	cmpq	$0, -88(%rbp)
	jl	.LBB20_246
.LBB20_220:                             # %lor.lhs.false.1245
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB20_221
	jmp	.LBB20_232
.LBB20_221:                             # %cond.true.1246
	cmpq	$0, -88(%rbp)
	jge	.LBB20_226
# BB#222:                               # %cond.true.1249
	movq	-88(%rbp), %rax
	movq	-88(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -536(%rbp)        # 8-byte Spill
	jge	.LBB20_224
# BB#223:                               # %cond.true.1255
	movq	-88(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -544(%rbp)        # 8-byte Spill
	jmp	.LBB20_225
.LBB20_224:                             # %cond.false.1263
	movq	-88(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -544(%rbp)        # 8-byte Spill
.LBB20_225:                             # %cond.end.1267
	movq	-544(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -552(%rbp)        # 8-byte Spill
	cqto
	movq	-552(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-536(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB20_246
	jmp	.LBB20_243
.LBB20_226:                             # %cond.false.1272
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB20_227
	jmp	.LBB20_228
.LBB20_227:                             # %cond.true.1273
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB20_246
	jmp	.LBB20_243
.LBB20_228:                             # %cond.false.1274
	movq	-88(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB20_230
# BB#229:                               # %cond.true.1280
	xorl	%eax, %eax
	movq	-88(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-88(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -560(%rbp)        # 8-byte Spill
	jmp	.LBB20_231
.LBB20_230:                             # %cond.false.1297
	movq	-88(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -560(%rbp)        # 8-byte Spill
.LBB20_231:                             # %cond.end.1301
	movq	-560(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -568(%rbp)        # 8-byte Spill
	cqto
	movq	-568(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	cmpq	-88(%rbp), %rax
	jl	.LBB20_246
	jmp	.LBB20_243
.LBB20_232:                             # %cond.false.1306
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB20_233
	jmp	.LBB20_234
.LBB20_233:                             # %cond.true.1307
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB20_246
	jmp	.LBB20_243
.LBB20_234:                             # %cond.false.1308
	cmpq	$0, -88(%rbp)
	jge	.LBB20_239
# BB#235:                               # %cond.true.1311
	movq	-88(%rbp), %rax
	movq	-88(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -576(%rbp)        # 8-byte Spill
	jge	.LBB20_237
# BB#236:                               # %cond.true.1317
	xorl	%eax, %eax
	movq	-88(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-88(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -584(%rbp)        # 8-byte Spill
	jmp	.LBB20_238
.LBB20_237:                             # %cond.false.1334
	movq	-88(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -584(%rbp)        # 8-byte Spill
.LBB20_238:                             # %cond.end.1338
	movq	-584(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -592(%rbp)        # 8-byte Spill
	cqto
	movq	-592(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-576(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB20_246
	jmp	.LBB20_243
.LBB20_239:                             # %cond.false.1343
	movq	-88(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB20_241
# BB#240:                               # %cond.true.1349
	movq	-88(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -600(%rbp)        # 8-byte Spill
	jmp	.LBB20_242
.LBB20_241:                             # %cond.false.1357
	movq	-88(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -600(%rbp)        # 8-byte Spill
.LBB20_242:                             # %cond.end.1361
	movq	-600(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -608(%rbp)        # 8-byte Spill
	cqto
	movq	-608(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	cmpq	-88(%rbp), %rax
	jl	.LBB20_246
.LBB20_243:                             # %lor.lhs.false.1366
	movq	-88(%rbp), %rax
	shlq	$3, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB20_245
# BB#244:                               # %land.lhs.true.1372
	movq	-88(%rbp), %rax
	shlq	$3, %rax
	cmpq	$-2147483648, %rax      # imm = 0xFFFFFFFF80000000
	jl	.LBB20_246
.LBB20_245:                             # %lor.lhs.false.1376
	movl	$2147483647, %eax       # imm = 0x7FFFFFFF
	movl	%eax, %ecx
	movq	-88(%rbp), %rdx
	shlq	$3, %rdx
	cmpq	%rdx, %rcx
	jge	.LBB20_250
.LBB20_246:                             # %cond.true.1380
	movq	-88(%rbp), %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	cmpl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	ja	.LBB20_248
# BB#247:                               # %cond.true.1385
	movq	-88(%rbp), %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	movl	%ecx, -612(%rbp)        # 4-byte Spill
	jmp	.LBB20_249
.LBB20_248:                             # %cond.false.1388
	movq	-88(%rbp), %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	subl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	movl	%ecx, -612(%rbp)        # 4-byte Spill
.LBB20_249:                             # %cond.end.1393
	movl	-612(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movslq	%eax, %rdx
	movq	%rdx, -128(%rbp)
	testb	$1, %cl
	jne	.LBB20_414
	jmp	.LBB20_413
.LBB20_250:                             # %cond.false.1396
	movq	-88(%rbp), %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	cmpl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	ja	.LBB20_252
# BB#251:                               # %cond.true.1401
	movq	-88(%rbp), %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	movl	%ecx, -616(%rbp)        # 4-byte Spill
	jmp	.LBB20_253
.LBB20_252:                             # %cond.false.1404
	movq	-88(%rbp), %rax
	movl	%eax, %ecx
	shll	$3, %ecx
	subl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	addl	$-2147483648, %ecx      # imm = 0xFFFFFFFF80000000
	movl	%ecx, -616(%rbp)        # 4-byte Spill
.LBB20_253:                             # %cond.end.1409
	movl	-616(%rbp), %eax        # 4-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movslq	%eax, %rsi
	movq	%rsi, -128(%rbp)
	testb	$1, %dl
	jne	.LBB20_414
	jmp	.LBB20_413
.LBB20_254:                             # %cond.false.1412
	movb	$1, %al
	testb	$1, %al
	jne	.LBB20_255
	jmp	.LBB20_334
.LBB20_255:                             # %cond.true.1413
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB20_256
	jmp	.LBB20_295
.LBB20_256:                             # %cond.true.1414
	movq	-88(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB20_258
# BB#257:                               # %cond.true.1420
	xorl	%eax, %eax
	movq	-88(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-88(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -624(%rbp)        # 8-byte Spill
	jmp	.LBB20_259
.LBB20_258:                             # %cond.false.1437
	movq	-88(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -624(%rbp)        # 8-byte Spill
.LBB20_259:                             # %cond.end.1441
	movq	-624(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB20_261
# BB#260:                               # %land.lhs.true.1445
	cmpq	$0, -88(%rbp)
	jl	.LBB20_287
.LBB20_261:                             # %lor.lhs.false.1448
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB20_262
	jmp	.LBB20_273
.LBB20_262:                             # %cond.true.1449
	cmpq	$0, -88(%rbp)
	jge	.LBB20_267
# BB#263:                               # %cond.true.1452
	movq	-88(%rbp), %rax
	movq	-88(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -632(%rbp)        # 8-byte Spill
	jge	.LBB20_265
# BB#264:                               # %cond.true.1458
	movq	-88(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -640(%rbp)        # 8-byte Spill
	jmp	.LBB20_266
.LBB20_265:                             # %cond.false.1466
	movq	-88(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -640(%rbp)        # 8-byte Spill
.LBB20_266:                             # %cond.end.1470
	movq	-640(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -648(%rbp)        # 8-byte Spill
	cqto
	movq	-648(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-632(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB20_287
	jmp	.LBB20_284
.LBB20_267:                             # %cond.false.1475
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB20_268
	jmp	.LBB20_269
.LBB20_268:                             # %cond.true.1476
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB20_287
	jmp	.LBB20_284
.LBB20_269:                             # %cond.false.1477
	movq	-88(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB20_271
# BB#270:                               # %cond.true.1483
	xorl	%eax, %eax
	movq	-88(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-88(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -656(%rbp)        # 8-byte Spill
	jmp	.LBB20_272
.LBB20_271:                             # %cond.false.1500
	movq	-88(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -656(%rbp)        # 8-byte Spill
.LBB20_272:                             # %cond.end.1504
	movq	-656(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -664(%rbp)        # 8-byte Spill
	cqto
	movq	-664(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	cmpq	-88(%rbp), %rax
	jl	.LBB20_287
	jmp	.LBB20_284
.LBB20_273:                             # %cond.false.1509
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB20_274
	jmp	.LBB20_275
.LBB20_274:                             # %cond.true.1510
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB20_287
	jmp	.LBB20_284
.LBB20_275:                             # %cond.false.1511
	cmpq	$0, -88(%rbp)
	jge	.LBB20_280
# BB#276:                               # %cond.true.1514
	movq	-88(%rbp), %rax
	movq	-88(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -672(%rbp)        # 8-byte Spill
	jge	.LBB20_278
# BB#277:                               # %cond.true.1520
	xorl	%eax, %eax
	movq	-88(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-88(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -680(%rbp)        # 8-byte Spill
	jmp	.LBB20_279
.LBB20_278:                             # %cond.false.1537
	movq	-88(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -680(%rbp)        # 8-byte Spill
.LBB20_279:                             # %cond.end.1541
	movq	-680(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -688(%rbp)        # 8-byte Spill
	cqto
	movq	-688(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-672(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB20_287
	jmp	.LBB20_284
.LBB20_280:                             # %cond.false.1546
	movq	-88(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB20_282
# BB#281:                               # %cond.true.1552
	movq	-88(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -696(%rbp)        # 8-byte Spill
	jmp	.LBB20_283
.LBB20_282:                             # %cond.false.1560
	movq	-88(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -696(%rbp)        # 8-byte Spill
.LBB20_283:                             # %cond.end.1564
	movq	-696(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -704(%rbp)        # 8-byte Spill
	cqto
	movq	-704(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	cmpq	-88(%rbp), %rax
	jl	.LBB20_287
.LBB20_284:                             # %lor.lhs.false.1569
	movq	-88(%rbp), %rax
	shlq	$3, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB20_286
# BB#285:                               # %land.lhs.true.1575
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movq	-88(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	jl	.LBB20_287
.LBB20_286:                             # %lor.lhs.false.1579
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-88(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rcx, %rax
	jge	.LBB20_291
.LBB20_287:                             # %cond.true.1583
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-88(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	ja	.LBB20_289
# BB#288:                               # %cond.true.1587
	movq	-88(%rbp), %rax
	shlq	$3, %rax
	movq	%rax, -712(%rbp)        # 8-byte Spill
	jmp	.LBB20_290
.LBB20_289:                             # %cond.false.1589
	movq	-88(%rbp), %rax
	shlq	$3, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -712(%rbp)        # 8-byte Spill
.LBB20_290:                             # %cond.end.1593
	movq	-712(%rbp), %rax        # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -128(%rbp)
	testb	$1, %cl
	jne	.LBB20_414
	jmp	.LBB20_413
.LBB20_291:                             # %cond.false.1595
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-88(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	ja	.LBB20_293
# BB#292:                               # %cond.true.1599
	movq	-88(%rbp), %rax
	shlq	$3, %rax
	movq	%rax, -720(%rbp)        # 8-byte Spill
	jmp	.LBB20_294
.LBB20_293:                             # %cond.false.1601
	movq	-88(%rbp), %rax
	shlq	$3, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -720(%rbp)        # 8-byte Spill
.LBB20_294:                             # %cond.end.1605
	movq	-720(%rbp), %rax        # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -128(%rbp)
	testb	$1, %dl
	jne	.LBB20_414
	jmp	.LBB20_413
.LBB20_295:                             # %cond.false.1607
	movq	-88(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB20_297
# BB#296:                               # %cond.true.1613
	xorl	%eax, %eax
	movq	-88(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-88(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -728(%rbp)        # 8-byte Spill
	jmp	.LBB20_298
.LBB20_297:                             # %cond.false.1630
	movq	-88(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -728(%rbp)        # 8-byte Spill
.LBB20_298:                             # %cond.end.1634
	movq	-728(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB20_300
# BB#299:                               # %land.lhs.true.1638
	cmpq	$0, -88(%rbp)
	jl	.LBB20_326
.LBB20_300:                             # %lor.lhs.false.1641
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB20_301
	jmp	.LBB20_312
.LBB20_301:                             # %cond.true.1642
	cmpq	$0, -88(%rbp)
	jge	.LBB20_306
# BB#302:                               # %cond.true.1645
	movq	-88(%rbp), %rax
	movq	-88(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -736(%rbp)        # 8-byte Spill
	jge	.LBB20_304
# BB#303:                               # %cond.true.1651
	movq	-88(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -744(%rbp)        # 8-byte Spill
	jmp	.LBB20_305
.LBB20_304:                             # %cond.false.1659
	movq	-88(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -744(%rbp)        # 8-byte Spill
.LBB20_305:                             # %cond.end.1663
	movq	-744(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -752(%rbp)        # 8-byte Spill
	cqto
	movq	-752(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-736(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB20_326
	jmp	.LBB20_323
.LBB20_306:                             # %cond.false.1668
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB20_307
	jmp	.LBB20_308
.LBB20_307:                             # %cond.true.1669
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB20_326
	jmp	.LBB20_323
.LBB20_308:                             # %cond.false.1670
	movq	-88(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB20_310
# BB#309:                               # %cond.true.1676
	xorl	%eax, %eax
	movq	-88(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-88(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -760(%rbp)        # 8-byte Spill
	jmp	.LBB20_311
.LBB20_310:                             # %cond.false.1693
	movq	-88(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -760(%rbp)        # 8-byte Spill
.LBB20_311:                             # %cond.end.1697
	movq	-760(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -768(%rbp)        # 8-byte Spill
	cqto
	movq	-768(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	cmpq	-88(%rbp), %rax
	jl	.LBB20_326
	jmp	.LBB20_323
.LBB20_312:                             # %cond.false.1702
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB20_313
	jmp	.LBB20_314
.LBB20_313:                             # %cond.true.1703
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB20_326
	jmp	.LBB20_323
.LBB20_314:                             # %cond.false.1704
	cmpq	$0, -88(%rbp)
	jge	.LBB20_319
# BB#315:                               # %cond.true.1707
	movq	-88(%rbp), %rax
	movq	-88(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -776(%rbp)        # 8-byte Spill
	jge	.LBB20_317
# BB#316:                               # %cond.true.1713
	xorl	%eax, %eax
	movq	-88(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-88(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -784(%rbp)        # 8-byte Spill
	jmp	.LBB20_318
.LBB20_317:                             # %cond.false.1730
	movq	-88(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -784(%rbp)        # 8-byte Spill
.LBB20_318:                             # %cond.end.1734
	movq	-784(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -792(%rbp)        # 8-byte Spill
	cqto
	movq	-792(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-776(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB20_326
	jmp	.LBB20_323
.LBB20_319:                             # %cond.false.1739
	movq	-88(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB20_321
# BB#320:                               # %cond.true.1745
	movq	-88(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -800(%rbp)        # 8-byte Spill
	jmp	.LBB20_322
.LBB20_321:                             # %cond.false.1753
	movq	-88(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -800(%rbp)        # 8-byte Spill
.LBB20_322:                             # %cond.end.1757
	movq	-800(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -808(%rbp)        # 8-byte Spill
	cqto
	movq	-808(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	cmpq	-88(%rbp), %rax
	jl	.LBB20_326
.LBB20_323:                             # %lor.lhs.false.1762
	movq	-88(%rbp), %rax
	shlq	$3, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB20_325
# BB#324:                               # %land.lhs.true.1768
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movq	-88(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	jl	.LBB20_326
.LBB20_325:                             # %lor.lhs.false.1772
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-88(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rcx, %rax
	jge	.LBB20_330
.LBB20_326:                             # %cond.true.1776
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-88(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	ja	.LBB20_328
# BB#327:                               # %cond.true.1780
	movq	-88(%rbp), %rax
	shlq	$3, %rax
	movq	%rax, -816(%rbp)        # 8-byte Spill
	jmp	.LBB20_329
.LBB20_328:                             # %cond.false.1782
	movq	-88(%rbp), %rax
	shlq	$3, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -816(%rbp)        # 8-byte Spill
.LBB20_329:                             # %cond.end.1786
	movq	-816(%rbp), %rax        # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -128(%rbp)
	testb	$1, %cl
	jne	.LBB20_414
	jmp	.LBB20_413
.LBB20_330:                             # %cond.false.1788
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-88(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	ja	.LBB20_332
# BB#331:                               # %cond.true.1792
	movq	-88(%rbp), %rax
	shlq	$3, %rax
	movq	%rax, -824(%rbp)        # 8-byte Spill
	jmp	.LBB20_333
.LBB20_332:                             # %cond.false.1794
	movq	-88(%rbp), %rax
	shlq	$3, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -824(%rbp)        # 8-byte Spill
.LBB20_333:                             # %cond.end.1798
	movq	-824(%rbp), %rax        # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -128(%rbp)
	testb	$1, %dl
	jne	.LBB20_414
	jmp	.LBB20_413
.LBB20_334:                             # %cond.false.1800
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB20_335
	jmp	.LBB20_374
.LBB20_335:                             # %cond.true.1801
	movq	-88(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB20_337
# BB#336:                               # %cond.true.1807
	xorl	%eax, %eax
	movq	-88(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-88(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -832(%rbp)        # 8-byte Spill
	jmp	.LBB20_338
.LBB20_337:                             # %cond.false.1824
	movq	-88(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -832(%rbp)        # 8-byte Spill
.LBB20_338:                             # %cond.end.1828
	movq	-832(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB20_340
# BB#339:                               # %land.lhs.true.1832
	cmpq	$0, -88(%rbp)
	jl	.LBB20_366
.LBB20_340:                             # %lor.lhs.false.1835
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB20_341
	jmp	.LBB20_352
.LBB20_341:                             # %cond.true.1836
	cmpq	$0, -88(%rbp)
	jge	.LBB20_346
# BB#342:                               # %cond.true.1839
	movq	-88(%rbp), %rax
	movq	-88(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -840(%rbp)        # 8-byte Spill
	jge	.LBB20_344
# BB#343:                               # %cond.true.1845
	movq	-88(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -848(%rbp)        # 8-byte Spill
	jmp	.LBB20_345
.LBB20_344:                             # %cond.false.1853
	movq	-88(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -848(%rbp)        # 8-byte Spill
.LBB20_345:                             # %cond.end.1857
	movq	-848(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -856(%rbp)        # 8-byte Spill
	cqto
	movq	-856(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-840(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB20_366
	jmp	.LBB20_363
.LBB20_346:                             # %cond.false.1862
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB20_347
	jmp	.LBB20_348
.LBB20_347:                             # %cond.true.1863
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB20_366
	jmp	.LBB20_363
.LBB20_348:                             # %cond.false.1864
	movq	-88(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB20_350
# BB#349:                               # %cond.true.1870
	xorl	%eax, %eax
	movq	-88(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-88(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -864(%rbp)        # 8-byte Spill
	jmp	.LBB20_351
.LBB20_350:                             # %cond.false.1887
	movq	-88(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -864(%rbp)        # 8-byte Spill
.LBB20_351:                             # %cond.end.1891
	movq	-864(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -872(%rbp)        # 8-byte Spill
	cqto
	movq	-872(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	cmpq	-88(%rbp), %rax
	jl	.LBB20_366
	jmp	.LBB20_363
.LBB20_352:                             # %cond.false.1896
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB20_353
	jmp	.LBB20_354
.LBB20_353:                             # %cond.true.1897
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB20_366
	jmp	.LBB20_363
.LBB20_354:                             # %cond.false.1898
	cmpq	$0, -88(%rbp)
	jge	.LBB20_359
# BB#355:                               # %cond.true.1901
	movq	-88(%rbp), %rax
	movq	-88(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -880(%rbp)        # 8-byte Spill
	jge	.LBB20_357
# BB#356:                               # %cond.true.1907
	xorl	%eax, %eax
	movq	-88(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-88(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -888(%rbp)        # 8-byte Spill
	jmp	.LBB20_358
.LBB20_357:                             # %cond.false.1924
	movq	-88(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -888(%rbp)        # 8-byte Spill
.LBB20_358:                             # %cond.end.1928
	movq	-888(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -896(%rbp)        # 8-byte Spill
	cqto
	movq	-896(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-880(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB20_366
	jmp	.LBB20_363
.LBB20_359:                             # %cond.false.1933
	movq	-88(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB20_361
# BB#360:                               # %cond.true.1939
	movq	-88(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -904(%rbp)        # 8-byte Spill
	jmp	.LBB20_362
.LBB20_361:                             # %cond.false.1947
	movq	-88(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -904(%rbp)        # 8-byte Spill
.LBB20_362:                             # %cond.end.1951
	movq	-904(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -912(%rbp)        # 8-byte Spill
	cqto
	movq	-912(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	cmpq	-88(%rbp), %rax
	jl	.LBB20_366
.LBB20_363:                             # %lor.lhs.false.1956
	movq	-88(%rbp), %rax
	shlq	$3, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB20_365
# BB#364:                               # %land.lhs.true.1962
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movq	-88(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	jl	.LBB20_366
.LBB20_365:                             # %lor.lhs.false.1966
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-88(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rcx, %rax
	jge	.LBB20_370
.LBB20_366:                             # %cond.true.1970
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-88(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	ja	.LBB20_368
# BB#367:                               # %cond.true.1974
	movq	-88(%rbp), %rax
	shlq	$3, %rax
	movq	%rax, -920(%rbp)        # 8-byte Spill
	jmp	.LBB20_369
.LBB20_368:                             # %cond.false.1976
	movq	-88(%rbp), %rax
	shlq	$3, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -920(%rbp)        # 8-byte Spill
.LBB20_369:                             # %cond.end.1980
	movq	-920(%rbp), %rax        # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -128(%rbp)
	testb	$1, %cl
	jne	.LBB20_414
	jmp	.LBB20_413
.LBB20_370:                             # %cond.false.1982
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-88(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	ja	.LBB20_372
# BB#371:                               # %cond.true.1986
	movq	-88(%rbp), %rax
	shlq	$3, %rax
	movq	%rax, -928(%rbp)        # 8-byte Spill
	jmp	.LBB20_373
.LBB20_372:                             # %cond.false.1988
	movq	-88(%rbp), %rax
	shlq	$3, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -928(%rbp)        # 8-byte Spill
.LBB20_373:                             # %cond.end.1992
	movq	-928(%rbp), %rax        # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -128(%rbp)
	testb	$1, %dl
	jne	.LBB20_414
	jmp	.LBB20_413
.LBB20_374:                             # %cond.false.1994
	movq	-88(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB20_376
# BB#375:                               # %cond.true.2000
	xorl	%eax, %eax
	movq	-88(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-88(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -936(%rbp)        # 8-byte Spill
	jmp	.LBB20_377
.LBB20_376:                             # %cond.false.2017
	movq	-88(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -936(%rbp)        # 8-byte Spill
.LBB20_377:                             # %cond.end.2021
	movq	-936(%rbp), %rax        # 8-byte Reload
	cmpq	$0, %rax
	jne	.LBB20_379
# BB#378:                               # %land.lhs.true.2025
	cmpq	$0, -88(%rbp)
	jl	.LBB20_405
.LBB20_379:                             # %lor.lhs.false.2028
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB20_380
	jmp	.LBB20_391
.LBB20_380:                             # %cond.true.2029
	cmpq	$0, -88(%rbp)
	jge	.LBB20_385
# BB#381:                               # %cond.true.2032
	movq	-88(%rbp), %rax
	movq	-88(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -944(%rbp)        # 8-byte Spill
	jge	.LBB20_383
# BB#382:                               # %cond.true.2038
	movq	-88(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -952(%rbp)        # 8-byte Spill
	jmp	.LBB20_384
.LBB20_383:                             # %cond.false.2046
	movq	-88(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -952(%rbp)        # 8-byte Spill
.LBB20_384:                             # %cond.end.2050
	movq	-952(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -960(%rbp)        # 8-byte Spill
	cqto
	movq	-960(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	movq	-944(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB20_405
	jmp	.LBB20_402
.LBB20_385:                             # %cond.false.2055
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB20_386
	jmp	.LBB20_387
.LBB20_386:                             # %cond.true.2056
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB20_405
	jmp	.LBB20_402
.LBB20_387:                             # %cond.false.2057
	movq	-88(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB20_389
# BB#388:                               # %cond.true.2063
	xorl	%eax, %eax
	movq	-88(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-88(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -968(%rbp)        # 8-byte Spill
	jmp	.LBB20_390
.LBB20_389:                             # %cond.false.2080
	movq	-88(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -968(%rbp)        # 8-byte Spill
.LBB20_390:                             # %cond.end.2084
	movq	-968(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -976(%rbp)        # 8-byte Spill
	cqto
	movq	-976(%rbp), %rsi        # 8-byte Reload
	idivq	%rsi
	cmpq	-88(%rbp), %rax
	jl	.LBB20_405
	jmp	.LBB20_402
.LBB20_391:                             # %cond.false.2089
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB20_392
	jmp	.LBB20_393
.LBB20_392:                             # %cond.true.2090
	xorl	%eax, %eax
	movb	%al, %cl
	testb	$1, %cl
	jne	.LBB20_405
	jmp	.LBB20_402
.LBB20_393:                             # %cond.false.2091
	cmpq	$0, -88(%rbp)
	jge	.LBB20_398
# BB#394:                               # %cond.true.2094
	movq	-88(%rbp), %rax
	movq	-88(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	subq	$1, %rcx
	cmpq	$0, %rcx
	movq	%rax, -984(%rbp)        # 8-byte Spill
	jge	.LBB20_396
# BB#395:                               # %cond.true.2100
	xorl	%eax, %eax
	movq	-88(%rbp), %rcx
	addq	$0, %rcx
	imulq	$0, %rcx, %rcx
	addq	$0, %rcx
	xorq	$-1, %rcx
	cmpq	$-1, %rcx
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	subl	%esi, %eax
	movslq	%eax, %rcx
	movq	-88(%rbp), %rdi
	addq	$0, %rdi
	imulq	$0, %rdi, %rdi
	addq	$1, %rdi
	shlq	$62, %rdi
	subq	$1, %rdi
	shlq	$1, %rdi
	addq	$1, %rdi
	subq	%rdi, %rcx
	movq	%rcx, -992(%rbp)        # 8-byte Spill
	jmp	.LBB20_397
.LBB20_396:                             # %cond.false.2117
	movq	-88(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$0, %rax
	movq	%rax, -992(%rbp)        # 8-byte Spill
.LBB20_397:                             # %cond.end.2121
	movq	-992(%rbp), %rax        # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -1000(%rbp)       # 8-byte Spill
	cqto
	movq	-1000(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	movq	-984(%rbp), %rdi        # 8-byte Reload
	cmpq	%rax, %rdi
	jl	.LBB20_405
	jmp	.LBB20_402
.LBB20_398:                             # %cond.false.2126
	movq	-88(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB20_400
# BB#399:                               # %cond.true.2132
	movq	-88(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	addq	$1, %rax
	shlq	$62, %rax
	subq	$1, %rax
	shlq	$1, %rax
	addq	$1, %rax
	movq	%rax, -1008(%rbp)       # 8-byte Spill
	jmp	.LBB20_401
.LBB20_400:                             # %cond.false.2140
	movq	-88(%rbp), %rax
	addq	$0, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	movq	%rax, -1008(%rbp)       # 8-byte Spill
.LBB20_401:                             # %cond.end.2144
	movq	-1008(%rbp), %rax       # 8-byte Reload
	movl	$8, %ecx
	movl	%ecx, %edx
	movq	%rdx, -1016(%rbp)       # 8-byte Spill
	cqto
	movq	-1016(%rbp), %rsi       # 8-byte Reload
	idivq	%rsi
	cmpq	-88(%rbp), %rax
	jl	.LBB20_405
.LBB20_402:                             # %lor.lhs.false.2149
	movq	-88(%rbp), %rax
	shlq	$3, %rax
	imulq	$0, %rax, %rax
	subq	$1, %rax
	cmpq	$0, %rax
	jge	.LBB20_404
# BB#403:                               # %land.lhs.true.2155
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	movq	-88(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	jl	.LBB20_405
.LBB20_404:                             # %lor.lhs.false.2159
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-88(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rcx, %rax
	jge	.LBB20_409
.LBB20_405:                             # %cond.true.2163
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-88(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	ja	.LBB20_407
# BB#406:                               # %cond.true.2167
	movq	-88(%rbp), %rax
	shlq	$3, %rax
	movq	%rax, -1024(%rbp)       # 8-byte Spill
	jmp	.LBB20_408
.LBB20_407:                             # %cond.false.2169
	movq	-88(%rbp), %rax
	shlq	$3, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -1024(%rbp)       # 8-byte Spill
.LBB20_408:                             # %cond.end.2173
	movq	-1024(%rbp), %rax       # 8-byte Reload
	movb	$1, %cl
	movq	%rax, -128(%rbp)
	testb	$1, %cl
	jne	.LBB20_414
	jmp	.LBB20_413
.LBB20_409:                             # %cond.false.2175
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	movq	-88(%rbp), %rcx
	shlq	$3, %rcx
	cmpq	%rax, %rcx
	ja	.LBB20_411
# BB#410:                               # %cond.true.2179
	movq	-88(%rbp), %rax
	shlq	$3, %rax
	movq	%rax, -1032(%rbp)       # 8-byte Spill
	jmp	.LBB20_412
.LBB20_411:                             # %cond.false.2181
	movq	-88(%rbp), %rax
	shlq	$3, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	subq	%rcx, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	addq	%rcx, %rax
	movq	%rax, -1032(%rbp)       # 8-byte Spill
.LBB20_412:                             # %cond.end.2185
	movq	-1032(%rbp), %rax       # 8-byte Reload
	xorl	%ecx, %ecx
	movb	%cl, %dl
	movq	%rax, -128(%rbp)
	testb	$1, %dl
	jne	.LBB20_414
.LBB20_413:                             # %lor.lhs.false.2187
	movq	$-1, %rax
	cmpq	-128(%rbp), %rax
	jae	.LBB20_415
.LBB20_414:                             # %if.then.2190
	movq	$-1, %rdi
	callq	memory_full
.LBB20_415:                             # %if.else
	movq	-128(%rbp), %rax
	cmpq	-104(%rbp), %rax
	jg	.LBB20_417
# BB#416:                               # %if.then.2193
	movq	-128(%rbp), %rax
	movq	-104(%rbp), %rcx
	subq	%rax, %rcx
	movq	%rcx, -104(%rbp)
	movq	-128(%rbp), %rax
	addq	$15, %rax
	andq	$-16, %rax
	movq	%rsp, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rsp
	movq	%rcx, -48(%rbp)
	jmp	.LBB20_418
.LBB20_417:                             # %if.else.2195
	movq	-128(%rbp), %rdi
	callq	xmalloc
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	movq	-88(%rbp), %rsi
	callq	make_save_memory
	movabsq	$free_save_value, %rdi
	movq	%rax, -136(%rbp)
	movb	$1, -113(%rbp)
	movq	-136(%rbp), %rsi
	callq	record_unwind_protect
.LBB20_418:                             # %if.end.2198
	jmp	.LBB20_419
.LBB20_419:                             # %if.end.2199
	jmp	.LBB20_420
.LBB20_420:                             # %do.end
	movq	$0, -72(%rbp)
.LBB20_421:                             # %for.cond.2200
                                        # =>This Inner Loop Header: Depth=1
	movq	-72(%rbp), %rax
	cmpq	-88(%rbp), %rax
	jge	.LBB20_424
# BB#422:                               # %for.body.2203
                                        #   in Loop: Header=BB20_421 Depth=1
	movq	-40(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	-72(%rbp), %rcx
	movq	-48(%rbp), %rdx
	movq	%rax, (%rdx,%rcx,8)
# BB#423:                               # %for.inc.2206
                                        #   in Loop: Header=BB20_421 Depth=1
	movq	-72(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -72(%rbp)
	movq	-40(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB20_421
.LBB20_424:                             # %for.end.2209
	movq	-88(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	Fvconcat
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdi
	callq	ASIZE
	movq	%rax, -80(%rbp)
	movq	-56(%rbp), %rdi
	callq	XVECTOR
	movl	$8, %ecx
	movl	%ecx, %edx
	movabsq	$compare_fonts_by_sort_order, %rcx
	addq	$8, %rax
	movq	-80(%rbp), %rsi
	movq	%rax, %rdi
	callq	qsort
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -96(%rbp)
	movq	-80(%rbp), %rax
	subq	$1, %rax
	movq	%rax, -72(%rbp)
.LBB20_425:                             # %for.cond.2215
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -72(%rbp)
	jl	.LBB20_432
# BB#426:                               # %for.body.2218
                                        #   in Loop: Header=BB20_425 Depth=1
	movq	-56(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	AREF
	movl	$8, %ecx
	movl	%ecx, %edi
	movq	%rax, -144(%rbp)
	callq	make_uninit_vector
	movl	$2, %ecx
	movl	%ecx, %esi
	movq	%rax, -152(%rbp)
	movq	-152(%rbp), %rdi
	movq	-144(%rbp), %rax
	movq	%rdi, -1040(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	callq	AREF
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movq	-1040(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rdx
	callq	ASET
	movl	$7, %esi
	xorl	%edx, %edx
	movq	-152(%rbp), %rdi
	movq	-144(%rbp), %rax
	movq	%rdi, -1048(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	callq	font_style_symbolic
	movl	$1, %ecx
	movl	%ecx, %esi
	movq	-1048(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rdx
	callq	ASET
	movl	$8, %ecx
	movl	%ecx, %esi
	movq	-144(%rbp), %rdi
	callq	AREF
	movl	$2, %ecx
	movl	%ecx, %esi
	movsd	.LCPI20_0, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI20_1, %xmm1        # xmm1 = mem[0],zero
	sarq	$2, %rax
	imulq	$10, %rax, %rax
	cvtsi2sdq	%rax, %xmm2
	mulsd	%xmm1, %xmm2
	movq	-64(%rbp), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	divsd	64(%rax), %xmm2
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %ecx
	movl	%ecx, -156(%rbp)
	movq	-152(%rbp), %rdi
	movslq	-156(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, %rdx
	callq	ASET
	movl	$5, %esi
	xorl	%edx, %edx
	movq	-152(%rbp), %rdi
	movq	-144(%rbp), %rax
	movq	%rdi, -1056(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	callq	font_style_symbolic
	movl	$3, %ecx
	movl	%ecx, %esi
	movq	-1056(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rdx
	callq	ASET
	movl	$6, %esi
	xorl	%edx, %edx
	movq	-152(%rbp), %rdi
	movq	-144(%rbp), %rax
	movq	%rdi, -1064(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	callq	font_style_symbolic
	movl	$4, %ecx
	movl	%ecx, %esi
	movq	-1064(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rdx
	callq	ASET
	movl	$120, %edi
	movq	-144(%rbp), %rax
	movq	%rax, -1072(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1072(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	Ffont_get
	xorl	%edi, %edi
	movq	%rax, -168(%rbp)
	movq	-152(%rbp), %rax
	movq	-168(%rbp), %rdx
	movq	%rdx, -1080(%rbp)       # 8-byte Spill
	movq	%rax, -1088(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1080(%rbp), %rdx       # 8-byte Reload
	cmpq	%rax, %rdx
	je	.LBB20_428
# BB#427:                               # %lor.lhs.false.2241
                                        #   in Loop: Header=BB20_425 Depth=1
	movl	$738, %edi              # imm = 0x2E2
	movq	-168(%rbp), %rax
	movq	%rax, -1096(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1096(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB20_429
.LBB20_428:                             # %cond.true.2245
                                        #   in Loop: Header=BB20_425 Depth=1
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -1104(%rbp)       # 8-byte Spill
	jmp	.LBB20_430
.LBB20_429:                             # %cond.false.2247
                                        #   in Loop: Header=BB20_425 Depth=1
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -1104(%rbp)       # 8-byte Spill
.LBB20_430:                             # %cond.end.2249
                                        #   in Loop: Header=BB20_425 Depth=1
	movq	-1104(%rbp), %rax       # 8-byte Reload
	movl	$5, %ecx
	movl	%ecx, %esi
	movq	-1088(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rdx
	callq	ASET
	xorl	%edi, %edi
	movq	-152(%rbp), %rax
	movq	-144(%rbp), %rdx
	movq	%rdx, -1112(%rbp)       # 8-byte Spill
	movq	%rax, -1120(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1112(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	Ffont_xlfd_name
	movl	$6, %ecx
	movl	%ecx, %esi
	movq	-1120(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rdx
	callq	ASET
	movl	$4, %ecx
	movl	%ecx, %esi
	movq	-152(%rbp), %rdi
	movq	-144(%rbp), %rax
	movq	%rdi, -1128(%rbp)       # 8-byte Spill
	movq	%rax, %rdi
	callq	AREF
	movl	$7, %ecx
	movl	%ecx, %esi
	movq	-1128(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rdx
	callq	ASET
	movq	-152(%rbp), %rdi
	movq	-96(%rbp), %rsi
	callq	Fcons
	movq	%rax, -96(%rbp)
# BB#431:                               # %for.inc.2255
                                        #   in Loop: Header=BB20_425 Depth=1
	movq	-72(%rbp), %rax
	addq	$-1, %rax
	movq	%rax, -72(%rbp)
	jmp	.LBB20_425
.LBB20_432:                             # %for.end.2256
	jmp	.LBB20_433
.LBB20_433:                             # %do.body.2257
	testb	$1, -113(%rbp)
	je	.LBB20_435
# BB#434:                               # %if.then.2258
	xorl	%edi, %edi
	movb	$0, -113(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, -1136(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1136(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	movq	%rax, -1144(%rbp)       # 8-byte Spill
.LBB20_435:                             # %if.end.2261
	jmp	.LBB20_436
.LBB20_436:                             # %do.end.2262
	movq	-96(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB20_437:                             # %return
	movq	-8(%rbp), %rax
	movq	%rbp, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	Fx_family_fonts, .Lfunc_end20-Fx_family_fonts
	.cfi_endproc

	.align	16, 0x90
	.type	compare_fonts_by_sort_order,@function
compare_fonts_by_sort_order:            # @compare_fonts_by_sort_order
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
	subq	$112, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rsi, -40(%rbp)
	movq	-32(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, -48(%rbp)
	movq	-40(%rbp), %rsi
	movq	(%rsi), %rsi
	movq	%rsi, -56(%rbp)
	movl	$0, -60(%rbp)
.LBB21_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$8, -60(%rbp)
	jge	.LBB21_22
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB21_1 Depth=1
	movslq	-60(%rbp), %rax
	movl	font_props_for_sorting(,%rax,4), %ecx
	movl	%ecx, -64(%rbp)
	movq	-48(%rbp), %rdi
	movl	-64(%rbp), %ecx
	movl	%ecx, %esi
	callq	AREF
	movq	%rax, -72(%rbp)
	movq	-56(%rbp), %rdi
	movl	-64(%rbp), %ecx
	movl	%ecx, %esi
	callq	AREF
	movq	%rax, -80(%rbp)
	cmpl	$4, -64(%rbp)
	ja	.LBB21_10
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB21_1 Depth=1
	movq	-72(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB21_4
	jmp	.LBB21_8
.LBB21_4:                               # %if.then.6
                                        #   in Loop: Header=BB21_1 Depth=1
	movq	-80(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB21_5
	jmp	.LBB21_6
.LBB21_5:                               # %cond.true
                                        #   in Loop: Header=BB21_1 Depth=1
	movq	-72(%rbp), %rdi
	callq	SSDATA
	movq	-80(%rbp), %rdi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	SSDATA
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	strcmp
	movl	%eax, -100(%rbp)        # 4-byte Spill
	jmp	.LBB21_7
.LBB21_6:                               # %cond.false
                                        #   in Loop: Header=BB21_1 Depth=1
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movl	%eax, -100(%rbp)        # 4-byte Spill
	jmp	.LBB21_7
.LBB21_7:                               # %cond.end
                                        #   in Loop: Header=BB21_1 Depth=1
	movl	-100(%rbp), %eax        # 4-byte Reload
	movl	%eax, -84(%rbp)
	jmp	.LBB21_9
.LBB21_8:                               # %if.else
                                        #   in Loop: Header=BB21_1 Depth=1
	movq	-80(%rbp), %rdi
	callq	STRINGP
	xorl	%ecx, %ecx
	movl	$1, %edx
	testb	$1, %al
	cmovnel	%edx, %ecx
	movl	%ecx, -84(%rbp)
.LBB21_9:                               # %if.end
                                        #   in Loop: Header=BB21_1 Depth=1
	jmp	.LBB21_18
.LBB21_10:                              # %if.else.15
                                        #   in Loop: Header=BB21_1 Depth=1
	movq	-72(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB21_16
# BB#11:                                # %if.then.20
                                        #   in Loop: Header=BB21_1 Depth=1
	movq	-80(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB21_14
# BB#12:                                # %land.lhs.true
                                        #   in Loop: Header=BB21_1 Depth=1
	movq	-72(%rbp), %rax
	sarq	$2, %rax
	movq	-80(%rbp), %rcx
	sarq	$2, %rcx
	cmpq	%rcx, %rax
	jl	.LBB21_14
# BB#13:                                # %cond.true.29
                                        #   in Loop: Header=BB21_1 Depth=1
	movq	-72(%rbp), %rax
	sarq	$2, %rax
	movq	-80(%rbp), %rcx
	sarq	$2, %rcx
	cmpq	%rcx, %rax
	setg	%dl
	andb	$1, %dl
	movzbl	%dl, %esi
	movl	%esi, -104(%rbp)        # 4-byte Spill
	jmp	.LBB21_15
.LBB21_14:                              # %cond.false.34
                                        #   in Loop: Header=BB21_1 Depth=1
	movl	$4294967295, %eax       # imm = 0xFFFFFFFF
	movl	%eax, -104(%rbp)        # 4-byte Spill
	jmp	.LBB21_15
.LBB21_15:                              # %cond.end.35
                                        #   in Loop: Header=BB21_1 Depth=1
	movl	-104(%rbp), %eax        # 4-byte Reload
	movl	%eax, -84(%rbp)
	jmp	.LBB21_17
.LBB21_16:                              # %if.else.37
                                        #   in Loop: Header=BB21_1 Depth=1
	xorl	%eax, %eax
	movl	$1, %ecx
	movq	-80(%rbp), %rdx
	andq	$7, %rdx
	movl	%edx, %esi
	andl	$-5, %esi
	cmpl	$2, %esi
	cmovel	%ecx, %eax
	movl	%eax, -84(%rbp)
.LBB21_17:                              # %if.end.44
                                        #   in Loop: Header=BB21_1 Depth=1
	jmp	.LBB21_18
.LBB21_18:                              # %if.end.45
                                        #   in Loop: Header=BB21_1 Depth=1
	cmpl	$0, -84(%rbp)
	je	.LBB21_20
# BB#19:                                # %if.then.46
	movl	-84(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB21_23
.LBB21_20:                              # %if.end.47
                                        #   in Loop: Header=BB21_1 Depth=1
	jmp	.LBB21_21
.LBB21_21:                              # %for.inc
                                        #   in Loop: Header=BB21_1 Depth=1
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
	jmp	.LBB21_1
.LBB21_22:                              # %for.end
	movl	$0, -4(%rbp)
.LBB21_23:                              # %return
	movl	-4(%rbp), %eax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	compare_fonts_by_sort_order, .Lfunc_end21-compare_fonts_by_sort_order
	.cfi_endproc

	.globl	Fx_list_fonts
	.align	16, 0x90
	.type	Fx_list_fonts,@function
Fx_list_fonts:                          # @Fx_list_fonts
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
	subq	$272, %rsp              # imm = 0x110
	xorl	%eax, %eax
	movl	%eax, %r9d
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movq	%r9, %rdi
	callq	check_window_system
	movq	-16(%rbp), %rdi
	callq	CHECK_STRING
	xorl	%edi, %edi
	movq	-40(%rbp), %rcx
	movq	%rcx, -144(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-144(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB22_2
# BB#1:                                 # %if.then
	movq	-40(%rbp), %rdi
	callq	CHECK_NATNUM
.LBB22_2:                               # %if.end
	xorl	%edi, %edi
	movq	-48(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-152(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB22_7
# BB#3:                                 # %if.then.3
	movq	-48(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB22_5
# BB#4:                                 # %cond.true
	jmp	.LBB22_6
.LBB22_5:                               # %cond.false
	movl	$559, %edi              # imm = 0x22F
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -160(%rbp)        # 8-byte Spill
.LBB22_6:                               # %cond.end
	jmp	.LBB22_7
.LBB22_7:                               # %if.end.8
	movq	-32(%rbp), %rdi
	callq	decode_live_frame
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$2, %ecx
	je	.LBB22_9
# BB#8:                                 # %if.then.12
	xorl	%edi, %edi
	movq	$0, -56(%rbp)
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -32(%rbp)
	callq	builtin_lisp_symbol
	movq	%rax, -24(%rbp)
	jmp	.LBB22_10
.LBB22_9:                               # %if.else
	movl	$5, %esi
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	callq	make_lisp_ptr
	movq	%rax, -32(%rbp)
.LBB22_10:                              # %if.end.16
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-168(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB22_12
# BB#11:                                # %if.then.20
	movl	$0, -60(%rbp)
	jmp	.LBB22_27
.LBB22_12:                              # %if.else.21
	xorl	%edx, %edx
	movq	-56(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	lookup_named_face
	movl	%eax, -68(%rbp)
	cmpl	$0, -68(%rbp)
	jge	.LBB22_14
# BB#13:                                # %cond.true.25
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -176(%rbp)        # 8-byte Spill
	jmp	.LBB22_20
.LBB22_14:                              # %cond.false.26
	movb	$1, %al
	testb	$1, %al
	jne	.LBB22_15
	jmp	.LBB22_16
.LBB22_15:                              # %cond.true.27
	movl	-68(%rbp), %eax
	addl	$0, %eax
	movq	-56(%rbp), %rcx
	movq	160(%rcx), %rcx
	movl	32(%rcx), %edx
	addl	$0, %edx
	cmpl	%edx, %eax
	jb	.LBB22_17
	jmp	.LBB22_18
.LBB22_16:                              # %cond.false.31
	movslq	-68(%rbp), %rax
	addq	$0, %rax
	movq	-56(%rbp), %rcx
	movq	160(%rcx), %rcx
	movslq	32(%rcx), %rcx
	addq	$0, %rcx
	cmpq	%rcx, %rax
	jae	.LBB22_18
.LBB22_17:                              # %cond.true.40
	movslq	-68(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	160(%rcx), %rcx
	movq	16(%rcx), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	jmp	.LBB22_19
.LBB22_18:                              # %cond.false.42
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -184(%rbp)        # 8-byte Spill
	jmp	.LBB22_19
.LBB22_19:                              # %cond.end.43
	movq	-184(%rbp), %rax        # 8-byte Reload
	movq	%rax, -176(%rbp)        # 8-byte Spill
.LBB22_20:                              # %cond.end.44
	movq	-176(%rbp), %rax        # 8-byte Reload
	movq	%rax, -80(%rbp)
	cmpq	$0, -80(%rbp)
	je	.LBB22_23
# BB#21:                                # %land.lhs.true
	movq	-80(%rbp), %rax
	cmpq	$0, 224(%rax)
	je	.LBB22_23
# BB#22:                                # %if.then.47
	movq	-80(%rbp), %rax
	movq	224(%rax), %rax
	movl	152(%rax), %ecx
	movl	%ecx, -60(%rbp)
	movq	-80(%rbp), %rax
	movq	224(%rax), %rax
	movl	164(%rax), %ecx
	movl	%ecx, -64(%rbp)
	jmp	.LBB22_24
.LBB22_23:                              # %if.else.50
	movq	-56(%rbp), %rax
	movq	384(%rax), %rax
	movq	232(%rax), %rax
	movl	152(%rax), %ecx
	movl	%ecx, -60(%rbp)
	movq	-56(%rbp), %rax
	movq	384(%rax), %rax
	movq	232(%rax), %rax
	movl	164(%rax), %ecx
	movl	%ecx, -64(%rbp)
.LBB22_24:                              # %if.end.57
	xorl	%edi, %edi
	movq	-48(%rbp), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-192(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB22_26
# BB#25:                                # %if.then.61
	movq	-48(%rbp), %rax
	sarq	$2, %rax
	movslq	-64(%rbp), %rcx
	imulq	%rax, %rcx
	movl	%ecx, %edx
	movl	%edx, -64(%rbp)
.LBB22_26:                              # %if.end.64
	jmp	.LBB22_27
.LBB22_27:                              # %if.end.65
	movq	-16(%rbp), %rdi
	callq	font_spec_from_name
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rdi
	callq	FONTP
	testb	$1, %al
	jne	.LBB22_29
# BB#28:                                # %if.then.68
	movabsq	$.L.str, %rdi
	movq	-16(%rbp), %rsi
	callq	signal_error
.LBB22_29:                              # %if.end.69
	cmpl	$0, -60(%rbp)
	je	.LBB22_31
# BB#30:                                # %if.then.71
	movl	$118, %edi
	movq	-88(%rbp), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movslq	-60(%rbp), %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	movq	%rcx, %rdx
	callq	Ffont_put
	movl	$12, %edi
	movq	-88(%rbp), %rcx
	movq	%rax, -208(%rbp)        # 8-byte Spill
	movq	%rcx, -216(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movslq	-64(%rbp), %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	movq	%rcx, %rdx
	callq	Ffont_put
	movq	%rax, -224(%rbp)        # 8-byte Spill
.LBB22_31:                              # %if.end.81
	movq	-88(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-40(%rbp), %rdx
	movq	-88(%rbp), %rcx
	callq	Flist_fonts
	movq	%rax, -96(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -104(%rbp)
.LBB22_32:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-104(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB22_39
# BB#33:                                # %for.body
                                        #   in Loop: Header=BB22_32 Depth=1
	movl	$8, %eax
	movl	%eax, %esi
	movq	-104(%rbp), %rcx
	subq	$3, %rcx
	movq	(%rcx), %rcx
	movq	%rcx, -112(%rbp)
	movq	-112(%rbp), %rdi
	callq	AREF
	xorl	%edi, %edi
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-232(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB22_35
# BB#34:                                # %lor.lhs.false
                                        #   in Loop: Header=BB22_32 Depth=1
	movl	$8, %eax
	movl	%eax, %esi
	movq	-112(%rbp), %rdi
	callq	AREF
	sarq	$2, %rax
	cmpq	$0, %rax
	jne	.LBB22_37
.LBB22_35:                              # %land.lhs.true.95
                                        #   in Loop: Header=BB22_32 Depth=1
	movl	$8, %eax
	movl	%eax, %esi
	movq	-88(%rbp), %rdi
	callq	AREF
	xorl	%edi, %edi
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-240(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB22_37
# BB#36:                                # %if.then.100
                                        #   in Loop: Header=BB22_32 Depth=1
	movq	-112(%rbp), %rdi
	callq	copy_font_spec
	movl	$8, %ecx
	movl	%ecx, %esi
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rdi
	movq	-88(%rbp), %rax
	movq	%rdi, -248(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	AREF
	movl	$8, %ecx
	movl	%ecx, %esi
	movq	-248(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	ASET
.LBB22_37:                              # %if.end.103
                                        #   in Loop: Header=BB22_32 Depth=1
	xorl	%edi, %edi
	movq	-104(%rbp), %rax
	movq	-112(%rbp), %rcx
	movq	%rcx, -256(%rbp)        # 8-byte Spill
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Ffont_xlfd_name
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	XSETCAR
# BB#38:                                # %for.inc
                                        #   in Loop: Header=BB22_32 Depth=1
	movq	-104(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -104(%rbp)
	jmp	.LBB22_32
.LBB22_39:                              # %for.end
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-272(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB22_41
# BB#40:                                # %if.then.110
	movq	-96(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB22_42
.LBB22_41:                              # %if.end.111
	movq	-56(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	-60(%rbp), %edx
	callq	list_fontsets
	movl	$2, %edx
	movl	%edx, %edi
	leaq	-136(%rbp), %rsi
	movq	%rax, -120(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -136(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -128(%rbp)
	callq	Fnconc
	movq	%rax, -8(%rbp)
.LBB22_42:                              # %return
	movq	-8(%rbp), %rax
	addq	$272, %rsp              # imm = 0x110
	popq	%rbp
	retq
.Lfunc_end22:
	.size	Fx_list_fonts, .Lfunc_end22-Fx_list_fonts
	.cfi_endproc

	.globl	lookup_named_face
	.align	16, 0x90
	.type	lookup_named_face,@function
lookup_named_face:                      # @lookup_named_face
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
	subq	$416, %rsp              # imm = 0x1A0
	movb	%dl, %al
	movb	$1, %cl
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	andb	$1, %al
	movb	%al, -25(%rbp)
	testb	$1, %cl
	jne	.LBB23_1
	jmp	.LBB23_2
.LBB23_1:                               # %cond.true
	xorl	%eax, %eax
	movq	-16(%rbp), %rcx
	movq	160(%rcx), %rcx
	movl	32(%rcx), %edx
	addl	$0, %edx
	cmpl	%edx, %eax
	jb	.LBB23_3
	jmp	.LBB23_4
.LBB23_2:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movq	160(%rdx), %rdx
	movslq	32(%rdx), %rdx
	addq	$0, %rdx
	cmpq	%rdx, %rcx
	jae	.LBB23_4
.LBB23_3:                               # %cond.true.6
	movq	-16(%rbp), %rax
	movq	160(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -368(%rbp)        # 8-byte Spill
	jmp	.LBB23_5
.LBB23_4:                               # %cond.false.8
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -368(%rbp)        # 8-byte Spill
	jmp	.LBB23_5
.LBB23_5:                               # %cond.end
	movq	-368(%rbp), %rax        # 8-byte Reload
	movq	%rax, -360(%rbp)
	cmpq	$0, -360(%rbp)
	jne	.LBB23_16
# BB#6:                                 # %if.then
	movq	-16(%rbp), %rdi
	callq	realize_basic_faces
	testb	$1, %al
	jne	.LBB23_8
# BB#7:                                 # %if.then.11
	movl	$-1, -4(%rbp)
	jmp	.LBB23_19
.LBB23_8:                               # %if.end
	movb	$1, %al
	testb	$1, %al
	jne	.LBB23_9
	jmp	.LBB23_10
.LBB23_9:                               # %cond.true.12
	xorl	%eax, %eax
	movq	-16(%rbp), %rcx
	movq	160(%rcx), %rcx
	movl	32(%rcx), %edx
	addl	$0, %edx
	cmpl	%edx, %eax
	jb	.LBB23_11
	jmp	.LBB23_12
.LBB23_10:                              # %cond.false.18
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdx
	movq	160(%rdx), %rdx
	movslq	32(%rdx), %rdx
	addq	$0, %rdx
	cmpq	%rdx, %rcx
	jae	.LBB23_12
.LBB23_11:                              # %cond.true.25
	movq	-16(%rbp), %rax
	movq	160(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -376(%rbp)        # 8-byte Spill
	jmp	.LBB23_13
.LBB23_12:                              # %cond.false.29
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -376(%rbp)        # 8-byte Spill
	jmp	.LBB23_13
.LBB23_13:                              # %cond.end.30
	movq	-376(%rbp), %rax        # 8-byte Reload
	movq	%rax, -360(%rbp)
	cmpq	$0, -360(%rbp)
	jne	.LBB23_15
# BB#14:                                # %if.then.34
	callq	emacs_abort
.LBB23_15:                              # %if.end.35
	jmp	.LBB23_16
.LBB23_16:                              # %if.end.36
	xorl	%eax, %eax
	movl	%eax, %r8d
	leaq	-352(%rbp), %rdx
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movb	-25(%rbp), %cl
	andb	$1, %cl
	movzbl	%cl, %ecx
	callq	get_lface_attributes
	testb	$1, %al
	jne	.LBB23_18
# BB#17:                                # %if.then.38
	movl	$-1, -4(%rbp)
	jmp	.LBB23_19
.LBB23_18:                              # %if.end.39
	xorl	%eax, %eax
	movl	%eax, %ecx
	leaq	-192(%rbp), %rdx
	leaq	-352(%rbp), %rsi
	movl	$152, %eax
	movl	%eax, %edi
	movq	%rdx, %r8
	movq	-360(%rbp), %r9
	movq	%rdi, -384(%rbp)        # 8-byte Spill
	movq	%r8, %rdi
	movq	%rsi, -392(%rbp)        # 8-byte Spill
	movq	%r9, %rsi
	movq	-384(%rbp), %r8         # 8-byte Reload
	movq	%rdx, -400(%rbp)        # 8-byte Spill
	movq	%r8, %rdx
	movq	%rcx, -408(%rbp)        # 8-byte Spill
	callq	memcpy
	movq	-16(%rbp), %rdi
	movq	-392(%rbp), %rsi        # 8-byte Reload
	movq	-400(%rbp), %rdx        # 8-byte Reload
	movq	-408(%rbp), %rcx        # 8-byte Reload
	callq	merge_face_vectors
	leaq	-192(%rbp), %rsi
	movq	-16(%rbp), %rdi
	callq	lookup_face
	movl	%eax, -4(%rbp)
.LBB23_19:                              # %return
	movl	-4(%rbp), %eax
	addq	$416, %rsp              # imm = 0x1A0
	popq	%rbp
	retq
.Lfunc_end23:
	.size	lookup_named_face, .Lfunc_end23-lookup_named_face
	.cfi_endproc

	.globl	Finternal_make_lisp_face
	.align	16, 0x90
	.type	Finternal_make_lisp_face,@function
Finternal_make_lisp_face:               # @Finternal_make_lisp_face
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
	subq	$176, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	andq	$7, %rsi
	movl	%esi, %eax
	cmpl	$0, %eax
	jne	.LBB24_2
# BB#1:                                 # %cond.true
	jmp	.LBB24_3
.LBB24_2:                               # %cond.false
	movl	$897, %edi              # imm = 0x381
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -56(%rbp)         # 8-byte Spill
.LBB24_3:                               # %cond.end
	xorl	%eax, %eax
	movl	%eax, %edi
	xorl	%edx, %edx
	movq	-8(%rbp), %rsi
	callq	lface_from_face_name
	xorl	%edi, %edi
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-64(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB24_9
# BB#4:                                 # %if.then
	movq	-16(%rbp), %rdi
	callq	FRAMEP
	testb	$1, %al
	jne	.LBB24_5
	jmp	.LBB24_7
.LBB24_5:                               # %land.lhs.true
	movq	-16(%rbp), %rax
	subq	$5, %rax
	cmpq	$0, 376(%rax)
	je	.LBB24_7
# BB#6:                                 # %cond.true.10
	jmp	.LBB24_8
.LBB24_7:                               # %cond.false.11
	movl	$458, %edi              # imm = 0x1CA
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -72(%rbp)         # 8-byte Spill
.LBB24_8:                               # %cond.end.13
	xorl	%edx, %edx
	movq	-16(%rbp), %rax
	subq	$5, %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	movq	-8(%rbp), %rsi
	callq	lface_from_face_name
	movq	%rax, -32(%rbp)
	jmp	.LBB24_10
.LBB24_9:                               # %if.else
	xorl	%edi, %edi
	movq	$0, -40(%rbp)
	callq	builtin_lisp_symbol
	movq	%rax, -32(%rbp)
.LBB24_10:                              # %if.end
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-80(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB24_14
# BB#11:                                # %if.then.20
	movl	$975, %edi              # imm = 0x3CF
	callq	builtin_lisp_symbol
	movl	$78, %edi
                                        # kill: RDI<def> EDI<kill>
	movq	%rax, %rsi
	callq	Fmake_vector
	movl	$397, %edi              # imm = 0x18D
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movl	%edi, %esi
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	ASET
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	Fcons
	movq	globals+720, %rsi
	movq	%rax, %rdi
	callq	Fcons
	movq	%rax, globals+720
	movslq	next_lface_id, %rax
	cmpq	lface_id_to_name_size, %rax
	jne	.LBB24_13
# BB#12:                                # %if.then.29
	movabsq	$lface_id_to_name_size, %rsi
	movl	$1, %eax
	movl	%eax, %edx
	movl	$1048575, %eax          # imm = 0xFFFFF
	movl	%eax, %ecx
	movl	$8, %eax
	movl	%eax, %r8d
	movq	lface_id_to_name, %rdi
	callq	xpalloc
	movq	%rax, lface_id_to_name
.LBB24_13:                              # %if.end.31
	movl	$397, %edi              # imm = 0x18D
	movq	-8(%rbp), %rax
	movslq	next_lface_id, %rcx
	movq	lface_id_to_name, %rdx
	movq	%rax, (%rdx,%rcx,8)
	movq	-8(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movslq	next_lface_id, %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	movq	%rcx, %rdx
	callq	Fput
	movl	next_lface_id, %r8d
	addl	$1, %r8d
	movl	%r8d, next_lface_id
	movq	%rax, -104(%rbp)        # 8-byte Spill
	jmp	.LBB24_21
.LBB24_14:                              # %if.else.35
	cmpq	$0, -40(%rbp)
	jne	.LBB24_20
# BB#15:                                # %if.then.38
	movl	$1, -44(%rbp)
.LBB24_16:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$19, -44(%rbp)
	jge	.LBB24_19
# BB#17:                                # %for.body
                                        #   in Loop: Header=BB24_16 Depth=1
	movl	$975, %edi              # imm = 0x3CF
	movq	-24(%rbp), %rax
	movslq	-44(%rbp), %rsi
	movq	%rsi, -112(%rbp)        # 8-byte Spill
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	-112(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	ASET
# BB#18:                                # %for.inc
                                        #   in Loop: Header=BB24_16 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB24_16
.LBB24_19:                              # %for.end
	jmp	.LBB24_20
.LBB24_20:                              # %if.end.44
	jmp	.LBB24_21
.LBB24_21:                              # %if.end.45
	cmpq	$0, -40(%rbp)
	je	.LBB24_30
# BB#22:                                # %if.then.46
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-128(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB24_24
# BB#23:                                # %if.then.50
	movl	$975, %edi              # imm = 0x3CF
	callq	builtin_lisp_symbol
	movl	$78, %edi
                                        # kill: RDI<def> EDI<kill>
	movq	%rax, %rsi
	callq	Fmake_vector
	movl	$397, %edi              # imm = 0x18D
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movl	%edi, %esi
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	ASET
	movq	-40(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rsi
	movq	%rdi, -144(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	Fcons
	movq	-40(%rbp), %rdx
	movq	96(%rdx), %rsi
	movq	%rax, %rdi
	callq	Fcons
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	fset_face_alist
	jmp	.LBB24_29
.LBB24_24:                              # %if.else.56
	movl	$1, -44(%rbp)
.LBB24_25:                              # %for.cond.57
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$19, -44(%rbp)
	jge	.LBB24_28
# BB#26:                                # %for.body.60
                                        #   in Loop: Header=BB24_25 Depth=1
	movl	$975, %edi              # imm = 0x3CF
	movq	-32(%rbp), %rax
	movslq	-44(%rbp), %rsi
	movq	%rsi, -152(%rbp)        # 8-byte Spill
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	-152(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	ASET
# BB#27:                                # %for.inc.63
                                        #   in Loop: Header=BB24_25 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB24_25
.LBB24_28:                              # %for.end.65
	jmp	.LBB24_29
.LBB24_29:                              # %if.end.66
	jmp	.LBB24_31
.LBB24_30:                              # %if.else.67
	movq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)
.LBB24_31:                              # %if.end.68
	movl	$399, %edi              # imm = 0x18F
	movq	-8(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fget
	xorl	%edi, %edi
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-176(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB24_36
# BB#32:                                # %if.then.74
	cmpq	$0, -40(%rbp)
	je	.LBB24_34
# BB#33:                                # %if.then.76
	movq	-40(%rbp), %rax
	movabsq	$-1099511627777, %rcx   # imm = 0xFFFFFEFFFFFFFFFF
	andq	208(%rax), %rcx
	movabsq	$1099511627776, %rdx    # imm = 0x10000000000
	orq	%rdx, %rcx
	movq	%rcx, 208(%rax)
	movq	-40(%rbp), %rdi
	callq	fset_redisplay
	jmp	.LBB24_35
.LBB24_34:                              # %if.else.77
	movb	$1, face_change
	movl	$54, windows_or_buffers_changed
.LBB24_35:                              # %if.end.78
	jmp	.LBB24_36
.LBB24_36:                              # %if.end.79
	movq	-32(%rbp), %rax
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end24:
	.size	Finternal_make_lisp_face, .Lfunc_end24-Finternal_make_lisp_face
	.cfi_endproc

	.align	16, 0x90
	.type	lface_from_face_name,@function
lface_from_face_name:                   # @lface_from_face_name
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
	movb	%dl, %al
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	andb	$1, %al
	movb	%al, -17(%rbp)
	movq	-16(%rbp), %rdi
	movb	-17(%rbp), %al
	andb	$1, %al
	movzbl	%al, %esi
	callq	resolve_face_name
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movb	-17(%rbp), %cl
	andb	$1, %cl
	movzbl	%cl, %edx
	callq	lface_from_face_name_no_resolve
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end25:
	.size	lface_from_face_name, .Lfunc_end25-lface_from_face_name
	.cfi_endproc

	.globl	Finternal_lisp_face_p
	.align	16, 0x90
	.type	Finternal_lisp_face_p,@function
Finternal_lisp_face_p:                  # @Finternal_lisp_face_p
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
	subq	$48, %rsp
	movl	$1, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movl	%eax, %esi
	callq	resolve_face_name
	xorl	%edi, %edi
	movq	%rax, -8(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB26_6
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rdi
	callq	FRAMEP
	testb	$1, %al
	jne	.LBB26_2
	jmp	.LBB26_4
.LBB26_2:                               # %land.lhs.true
	movq	-16(%rbp), %rax
	subq	$5, %rax
	cmpq	$0, 376(%rax)
	je	.LBB26_4
# BB#3:                                 # %cond.true
	jmp	.LBB26_5
.LBB26_4:                               # %cond.false
	movl	$458, %edi              # imm = 0x1CA
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -40(%rbp)         # 8-byte Spill
.LBB26_5:                               # %cond.end
	xorl	%edx, %edx
	movq	-16(%rbp), %rax
	subq	$5, %rax
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	lface_from_face_name
	movq	%rax, -24(%rbp)
	jmp	.LBB26_7
.LBB26_6:                               # %if.else
	xorl	%eax, %eax
	movl	%eax, %edi
	xorl	%edx, %edx
	movq	-8(%rbp), %rsi
	callq	lface_from_face_name
	movq	%rax, -24(%rbp)
.LBB26_7:                               # %if.end
	movq	-24(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end26:
	.size	Finternal_lisp_face_p, .Lfunc_end26-Finternal_lisp_face_p
	.cfi_endproc

	.align	16, 0x90
	.type	resolve_face_name,@function
resolve_face_name:                      # @resolve_face_name
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
	subq	$112, %rsp
	movb	%sil, %al
	movq	%rdi, -16(%rbp)
	andb	$1, %al
	movb	%al, -17(%rbp)
	movq	-16(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB27_1
	jmp	.LBB27_2
.LBB27_1:                               # %if.then
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Fintern
	movq	%rax, -16(%rbp)
.LBB27_2:                               # %if.end
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-64(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB27_4
# BB#3:                                 # %lor.lhs.false
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	je	.LBB27_5
.LBB27_4:                               # %if.then.6
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB27_18
.LBB27_5:                               # %if.end.7
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)
	movq	%rax, -40(%rbp)
.LBB27_6:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	movl	$398, %edi              # imm = 0x18E
	movq	-48(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Fget
	xorl	%edi, %edi
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-80(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB27_8
# BB#7:                                 # %lor.lhs.false.13
                                        #   in Loop: Header=BB27_6 Depth=1
	movq	-48(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	je	.LBB27_9
.LBB27_8:                               # %if.then.18
	jmp	.LBB27_17
.LBB27_9:                               # %if.end.19
                                        #   in Loop: Header=BB27_6 Depth=1
	movl	$398, %edi              # imm = 0x18E
	movq	-48(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Fget
	xorl	%edi, %edi
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-96(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB27_11
# BB#10:                                # %lor.lhs.false.25
                                        #   in Loop: Header=BB27_6 Depth=1
	movq	-48(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	je	.LBB27_12
.LBB27_11:                              # %if.then.30
	jmp	.LBB27_17
.LBB27_12:                              # %if.end.31
                                        #   in Loop: Header=BB27_6 Depth=1
	movl	$398, %edi              # imm = 0x18E
	movq	-40(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fget
	movq	%rax, -40(%rbp)
	movq	-48(%rbp), %rax
	cmpq	-40(%rbp), %rax
	jne	.LBB27_16
# BB#13:                                # %if.then.36
	testb	$1, -17(%rbp)
	je	.LBB27_15
# BB#14:                                # %if.then.37
	movl	$265, %edi              # imm = 0x109
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	callq	xsignal1
.LBB27_15:                              # %if.end.39
	movl	$324, %edi              # imm = 0x144
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB27_18
.LBB27_16:                              # %if.end.41
                                        #   in Loop: Header=BB27_6 Depth=1
	jmp	.LBB27_6
.LBB27_17:                              # %while.end
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB27_18:                              # %return
	movq	-8(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end27:
	.size	resolve_face_name, .Lfunc_end27-resolve_face_name
	.cfi_endproc

	.globl	Finternal_copy_lisp_face
	.align	16, 0x90
	.type	Finternal_copy_lisp_face,@function
Finternal_copy_lisp_face:               # @Finternal_copy_lisp_face
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
	subq	$144, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rcx
	andq	$7, %rcx
	movl	%ecx, %eax
	cmpl	$0, %eax
	jne	.LBB28_2
# BB#1:                                 # %cond.true
	jmp	.LBB28_3
.LBB28_2:                               # %cond.false
	movl	$897, %edi              # imm = 0x381
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -64(%rbp)         # 8-byte Spill
.LBB28_3:                               # %cond.end
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	.LBB28_5
# BB#4:                                 # %cond.true.6
	jmp	.LBB28_6
.LBB28_5:                               # %cond.false.7
	movl	$897, %edi              # imm = 0x381
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -72(%rbp)         # 8-byte Spill
.LBB28_6:                               # %cond.end.9
	movl	$901, %edi              # imm = 0x385
	movq	-24(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-80(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB28_8
# BB#7:                                 # %if.then
	xorl	%eax, %eax
	movl	%eax, %edi
	movl	$1, %edx
	movq	-8(%rbp), %rsi
	callq	lface_from_face_name
	xorl	%edi, %edi
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Finternal_make_lisp_face
	movq	%rax, -48(%rbp)
	movq	$0, -56(%rbp)
	jmp	.LBB28_19
.LBB28_8:                               # %if.else
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-96(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB28_10
# BB#9:                                 # %if.then.19
	movq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)
.LBB28_10:                              # %if.end
	movq	-24(%rbp), %rdi
	callq	FRAMEP
	testb	$1, %al
	jne	.LBB28_11
	jmp	.LBB28_13
.LBB28_11:                              # %land.lhs.true
	movq	-24(%rbp), %rax
	subq	$5, %rax
	cmpq	$0, 376(%rax)
	je	.LBB28_13
# BB#12:                                # %cond.true.24
	jmp	.LBB28_14
.LBB28_13:                              # %cond.false.25
	movl	$458, %edi              # imm = 0x1CA
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -104(%rbp)        # 8-byte Spill
.LBB28_14:                              # %cond.end.27
	movq	-32(%rbp), %rdi
	callq	FRAMEP
	testb	$1, %al
	jne	.LBB28_15
	jmp	.LBB28_17
.LBB28_15:                              # %land.lhs.true.30
	movq	-32(%rbp), %rax
	subq	$5, %rax
	cmpq	$0, 376(%rax)
	je	.LBB28_17
# BB#16:                                # %cond.true.35
	jmp	.LBB28_18
.LBB28_17:                              # %cond.false.36
	movl	$458, %edi              # imm = 0x1CA
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -112(%rbp)        # 8-byte Spill
.LBB28_18:                              # %cond.end.38
	movl	$1, %edx
	movq	-24(%rbp), %rax
	subq	$5, %rax
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	lface_from_face_name
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	Finternal_make_lisp_face
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rax
	subq	$5, %rax
	movq	%rax, -56(%rbp)
.LBB28_19:                              # %if.end.43
	movq	-48(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	XVECTOR
	xorl	%ecx, %ecx
	movl	%ecx, %esi
	movl	$19, %ecx
                                        # kill: RCX<def> ECX<kill>
	addq	$8, %rax
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	vcopy
	movl	$399, %edi              # imm = 0x18F
	movq	-16(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fget
	xorl	%edi, %edi
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-136(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB28_24
# BB#20:                                # %if.then.50
	cmpq	$0, -56(%rbp)
	je	.LBB28_22
# BB#21:                                # %if.then.51
	movq	-56(%rbp), %rax
	movabsq	$-1099511627777, %rcx   # imm = 0xFFFFFEFFFFFFFFFF
	andq	208(%rax), %rcx
	movabsq	$1099511627776, %rdx    # imm = 0x10000000000
	orq	%rdx, %rcx
	movq	%rcx, 208(%rax)
	movq	-56(%rbp), %rdi
	callq	fset_redisplay
	jmp	.LBB28_23
.LBB28_22:                              # %if.else.52
	movb	$1, face_change
	movl	$55, windows_or_buffers_changed
.LBB28_23:                              # %if.end.53
	jmp	.LBB28_24
.LBB28_24:                              # %if.end.54
	movq	-16(%rbp), %rax
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end28:
	.size	Finternal_copy_lisp_face, .Lfunc_end28-Finternal_copy_lisp_face
	.cfi_endproc

	.globl	Finternal_set_lisp_face_attribute
	.align	16, 0x90
	.type	Finternal_set_lisp_face_attribute,@function
Finternal_set_lisp_face_attribute:      # @Finternal_set_lisp_face_attribute
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
	subq	$1344, %rsp             # imm = 0x540
	xorl	%eax, %eax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -56(%rbp)
	movl	$0, -60(%rbp)
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %edi
	cmpl	$0, %edi
	jne	.LBB29_2
# BB#1:                                 # %cond.true
	jmp	.LBB29_3
.LBB29_2:                               # %cond.false
	movl	$897, %edi              # imm = 0x381
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -240(%rbp)        # 8-byte Spill
.LBB29_3:                               # %cond.end
	movq	-24(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	.LBB29_5
# BB#4:                                 # %cond.true.7
	jmp	.LBB29_6
.LBB29_5:                               # %cond.false.8
	movl	$897, %edi              # imm = 0x381
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -248(%rbp)        # 8-byte Spill
.LBB29_6:                               # %cond.end.10
	movl	$1, %esi
	movq	-16(%rbp), %rdi
	callq	resolve_face_name
	movq	%rax, -16(%rbp)
	movq	-40(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %esi
	andl	$-5, %esi
	cmpl	$2, %esi
	jne	.LBB29_15
# BB#7:                                 # %land.lhs.true
	movq	-40(%rbp), %rax
	sarq	$2, %rax
	cmpq	$0, %rax
	jne	.LBB29_15
# BB#8:                                 # %if.then
	movl	$901, %edi              # imm = 0x385
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movq	%rdx, -256(%rbp)        # 8-byte Spill
	movq	%rax, -264(%rbp)        # 8-byte Spill
	movq	%rsi, -272(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	-272(%rbp), %rsi        # 8-byte Reload
	movq	-256(%rbp), %rdx        # 8-byte Reload
	movq	%rax, %rcx
	callq	Finternal_set_lisp_face_attribute
	movq	Vframe_list, %rcx
	movq	%rcx, -80(%rbp)
	movq	%rax, -280(%rbp)        # 8-byte Spill
.LBB29_9:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-80(%rbp), %rdx
	andq	$7, %rdx
	movl	%edx, %eax
	cmpl	$3, %eax
	movb	%cl, -281(%rbp)         # 1-byte Spill
	jne	.LBB29_11
# BB#10:                                # %land.rhs
                                        #   in Loop: Header=BB29_9 Depth=1
	movb	$1, %al
	movq	-80(%rbp), %rcx
	subq	$3, %rcx
	movq	(%rcx), %rcx
	movq	%rcx, -40(%rbp)
	movb	%al, -281(%rbp)         # 1-byte Spill
.LBB29_11:                              # %land.end
                                        #   in Loop: Header=BB29_9 Depth=1
	movb	-281(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB29_12
	jmp	.LBB29_14
.LBB29_12:                              # %for.body
                                        #   in Loop: Header=BB29_9 Depth=1
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rcx
	callq	Finternal_set_lisp_face_attribute
	movq	%rax, -296(%rbp)        # 8-byte Spill
# BB#13:                                # %for.inc
                                        #   in Loop: Header=BB29_9 Depth=1
	movq	-80(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -80(%rbp)
	jmp	.LBB29_9
.LBB29_14:                              # %for.end
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB29_373
.LBB29_15:                              # %if.end
	movl	$901, %edi              # imm = 0x385
	movq	-40(%rbp), %rax
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-304(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB29_19
# BB#16:                                # %if.then.30
	xorl	%eax, %eax
	movl	%eax, %edi
	movl	$1, %edx
	movq	$0, -72(%rbp)
	movq	-16(%rbp), %rsi
	callq	lface_from_face_name
	movl	$975, %edi              # imm = 0x3CF
	movq	%rax, -48(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-312(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB29_18
# BB#17:                                # %if.then.35
	movl	$64, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -32(%rbp)
.LBB29_18:                              # %if.end.37
	jmp	.LBB29_28
.LBB29_19:                              # %if.else
	xorl	%edi, %edi
	movq	-40(%rbp), %rax
	movq	%rax, -320(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-320(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB29_21
# BB#20:                                # %if.then.41
	movq	selected_frame, %rax
	movq	%rax, -40(%rbp)
.LBB29_21:                              # %if.end.42
	movq	-40(%rbp), %rdi
	callq	FRAMEP
	testb	$1, %al
	jne	.LBB29_22
	jmp	.LBB29_24
.LBB29_22:                              # %land.lhs.true.45
	movq	-40(%rbp), %rax
	subq	$5, %rax
	cmpq	$0, 376(%rax)
	je	.LBB29_24
# BB#23:                                # %cond.true.49
	jmp	.LBB29_25
.LBB29_24:                              # %cond.false.50
	movl	$458, %edi              # imm = 0x1CA
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -328(%rbp)        # 8-byte Spill
.LBB29_25:                              # %cond.end.52
	xorl	%edx, %edx
	movq	-40(%rbp), %rax
	subq	$5, %rax
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	lface_from_face_name
	xorl	%edi, %edi
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-336(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB29_27
# BB#26:                                # %if.then.58
	movq	-16(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	Finternal_make_lisp_face
	movq	%rax, -48(%rbp)
.LBB29_27:                              # %if.end.60
	jmp	.LBB29_28
.LBB29_28:                              # %if.end.61
	movl	$40, %edi
	movq	-24(%rbp), %rax
	movq	%rax, -344(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-344(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB29_35
# BB#29:                                # %if.then.65
	movl	$975, %edi              # imm = 0x3CF
	movq	-32(%rbp), %rax
	movq	%rax, -352(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-352(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB29_34
# BB#30:                                # %land.lhs.true.69
	movl	$64, %edi
	movq	-32(%rbp), %rax
	movq	%rax, -360(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-360(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB29_34
# BB#31:                                # %if.then.73
	movq	-32(%rbp), %rdi
	callq	CHECK_STRING
	movq	-32(%rbp), %rdi
	callq	SCHARS
	cmpq	$0, %rax
	jne	.LBB29_33
# BB#32:                                # %if.then.77
	movabsq	$.L.str.1, %rdi
	movq	-32(%rbp), %rsi
	callq	signal_error
.LBB29_33:                              # %if.end.78
	jmp	.LBB29_34
.LBB29_34:                              # %if.end.79
	movl	$1, %eax
	movl	%eax, %esi
	movq	-48(%rbp), %rdi
	callq	AREF
	movl	$1, %ecx
	movl	%ecx, %esi
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rdi
	movq	-32(%rbp), %rdx
	callq	ASET
	movl	$2, -60(%rbp)
	jmp	.LBB29_313
.LBB29_35:                              # %if.else.81
	movl	$48, %edi
	movq	-24(%rbp), %rax
	movq	%rax, -368(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-368(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB29_42
# BB#36:                                # %if.then.85
	movl	$975, %edi              # imm = 0x3CF
	movq	-32(%rbp), %rax
	movq	%rax, -376(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-376(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB29_41
# BB#37:                                # %land.lhs.true.89
	movl	$64, %edi
	movq	-32(%rbp), %rax
	movq	%rax, -384(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-384(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB29_41
# BB#38:                                # %if.then.93
	movq	-32(%rbp), %rdi
	callq	CHECK_STRING
	movq	-32(%rbp), %rdi
	callq	SCHARS
	cmpq	$0, %rax
	jne	.LBB29_40
# BB#39:                                # %if.then.97
	movabsq	$.L.str.2, %rdi
	movq	-32(%rbp), %rsi
	callq	signal_error
.LBB29_40:                              # %if.end.98
	jmp	.LBB29_41
.LBB29_41:                              # %if.end.99
	movl	$2, %eax
	movl	%eax, %esi
	movq	-48(%rbp), %rdi
	callq	AREF
	movl	$2, %ecx
	movl	%ecx, %esi
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rdi
	movq	-32(%rbp), %rdx
	callq	ASET
	movl	$1, -60(%rbp)
	jmp	.LBB29_312
.LBB29_42:                              # %if.else.101
	movl	$58, %edi
	movq	-24(%rbp), %rax
	movq	%rax, -392(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-392(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB29_56
# BB#43:                                # %if.then.105
	movl	$975, %edi              # imm = 0x3CF
	movq	-32(%rbp), %rax
	movq	%rax, -400(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-400(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB29_55
# BB#44:                                # %land.lhs.true.109
	movl	$64, %edi
	movq	-32(%rbp), %rax
	movq	%rax, -408(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-408(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB29_55
# BB#45:                                # %if.then.113
	movl	$324, %edi              # imm = 0x144
	movq	-16(%rbp), %rax
	movq	%rax, -416(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-416(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB29_50
# BB#46:                                # %if.then.117
	movq	-32(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB29_48
# BB#47:                                # %lor.lhs.false
	movq	-32(%rbp), %rax
	sarq	$2, %rax
	cmpq	$0, %rax
	jg	.LBB29_49
.LBB29_48:                              # %if.then.126
	movabsq	$.L.str.3, %rdi
	movq	-32(%rbp), %rsi
	callq	signal_error
.LBB29_49:                              # %if.end.127
	jmp	.LBB29_54
.LBB29_50:                              # %if.else.128
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	movq	%rax, -424(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$42, %edi
	movl	%edi, %esi
	movq	-424(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	merge_face_heights
	movq	%rax, -88(%rbp)
	movq	-88(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB29_52
# BB#51:                                # %lor.lhs.false.136
	movq	-88(%rbp), %rax
	sarq	$2, %rax
	cmpq	$0, %rax
	jg	.LBB29_53
.LBB29_52:                              # %if.then.140
	movabsq	$.L.str.4, %rdi
	movq	-32(%rbp), %rsi
	callq	signal_error
.LBB29_53:                              # %if.end.141
	jmp	.LBB29_54
.LBB29_54:                              # %if.end.142
	jmp	.LBB29_55
.LBB29_55:                              # %if.end.143
	movl	$4, %eax
	movl	%eax, %esi
	movq	-48(%rbp), %rdi
	callq	AREF
	movl	$4, %ecx
	movl	%ecx, %esi
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rdi
	movq	-32(%rbp), %rdx
	callq	ASET
	movl	$8, -60(%rbp)
	jmp	.LBB29_311
.LBB29_56:                              # %if.else.145
	movl	$138, %edi
	movq	-24(%rbp), %rax
	movq	%rax, -432(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-432(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB29_66
# BB#57:                                # %if.then.149
	movl	$975, %edi              # imm = 0x3CF
	movq	-32(%rbp), %rax
	movq	%rax, -440(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-440(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB29_65
# BB#58:                                # %land.lhs.true.153
	movl	$64, %edi
	movq	-32(%rbp), %rax
	movq	%rax, -448(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-448(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB29_65
# BB#59:                                # %if.then.157
	movq	-32(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	.LBB29_61
# BB#60:                                # %cond.true.162
	jmp	.LBB29_62
.LBB29_61:                              # %cond.false.163
	movl	$897, %edi              # imm = 0x381
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -456(%rbp)        # 8-byte Spill
.LBB29_62:                              # %cond.end.165
	movl	$5, %edi
	xorl	%edx, %edx
	movq	-32(%rbp), %rsi
	callq	font_style_to_value
	sarl	$8, %eax
	cmpl	$0, %eax
	jge	.LBB29_64
# BB#63:                                # %if.then.170
	movabsq	$.L.str.5, %rdi
	movq	-32(%rbp), %rsi
	callq	signal_error
.LBB29_64:                              # %if.end.171
	jmp	.LBB29_65
.LBB29_65:                              # %if.end.172
	movl	$5, %eax
	movl	%eax, %esi
	movq	-48(%rbp), %rdi
	callq	AREF
	movl	$5, %ecx
	movl	%ecx, %esi
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rdi
	movq	-32(%rbp), %rdx
	callq	ASET
	movl	$5, -60(%rbp)
	jmp	.LBB29_310
.LBB29_66:                              # %if.else.174
	movl	$119, %edi
	movq	-24(%rbp), %rax
	movq	%rax, -464(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-464(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB29_76
# BB#67:                                # %if.then.178
	movl	$975, %edi              # imm = 0x3CF
	movq	-32(%rbp), %rax
	movq	%rax, -472(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-472(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB29_75
# BB#68:                                # %land.lhs.true.182
	movl	$64, %edi
	movq	-32(%rbp), %rax
	movq	%rax, -480(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-480(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB29_75
# BB#69:                                # %if.then.186
	movq	-32(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	.LBB29_71
# BB#70:                                # %cond.true.191
	jmp	.LBB29_72
.LBB29_71:                              # %cond.false.192
	movl	$897, %edi              # imm = 0x381
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -488(%rbp)        # 8-byte Spill
.LBB29_72:                              # %cond.end.194
	movl	$6, %edi
	xorl	%edx, %edx
	movq	-32(%rbp), %rsi
	callq	font_style_to_value
	sarl	$8, %eax
	cmpl	$0, %eax
	jge	.LBB29_74
# BB#73:                                # %if.then.199
	movabsq	$.L.str.6, %rdi
	movq	-32(%rbp), %rsi
	callq	signal_error
.LBB29_74:                              # %if.end.200
	jmp	.LBB29_75
.LBB29_75:                              # %if.end.201
	movl	$6, %eax
	movl	%eax, %esi
	movq	-48(%rbp), %rdi
	callq	AREF
	movl	$6, %ecx
	movl	%ecx, %esi
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rdi
	movq	-32(%rbp), %rdx
	callq	ASET
	movl	$6, -60(%rbp)
	jmp	.LBB29_309
.LBB29_76:                              # %if.else.203
	movl	$132, %edi
	movq	-24(%rbp), %rax
	movq	%rax, -496(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-496(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB29_111
# BB#77:                                # %if.then.207
	movl	$975, %edi              # imm = 0x3CF
	movb	$0, -89(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -504(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-504(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB29_79
# BB#78:                                # %lor.lhs.false.211
	movl	$64, %edi
	movq	-32(%rbp), %rax
	movq	%rax, -512(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-512(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB29_80
.LBB29_79:                              # %if.then.215
	movb	$1, -89(%rbp)
	jmp	.LBB29_108
.LBB29_80:                              # %if.else.216
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	movq	%rax, -520(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-520(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB29_82
# BB#81:                                # %lor.lhs.false.220
	movl	$901, %edi              # imm = 0x385
	movq	-32(%rbp), %rax
	movq	%rax, -528(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-528(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB29_83
.LBB29_82:                              # %if.then.224
	movb	$1, -89(%rbp)
	jmp	.LBB29_107
.LBB29_83:                              # %if.else.225
	movq	-32(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB29_84
	jmp	.LBB29_86
.LBB29_84:                              # %land.lhs.true.228
	movq	-32(%rbp), %rdi
	callq	SCHARS
	cmpq	$0, %rax
	jle	.LBB29_86
# BB#85:                                # %if.then.232
	movb	$1, -89(%rbp)
	jmp	.LBB29_106
.LBB29_86:                              # %if.else.233
	movq	-32(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB29_105
# BB#87:                                # %if.then.238
	movq	-32(%rbp), %rax
	movq	%rax, -120(%rbp)
	movb	$1, -89(%rbp)
.LBB29_88:                              # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-120(%rbp), %rdi
	callq	CAR_SAFE
	xorl	%edi, %edi
	movq	%rax, -536(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-536(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	sete	%dl
	xorb	$-1, %dl
	testb	$1, %dl
	jne	.LBB29_89
	jmp	.LBB29_104
.LBB29_89:                              # %while.body
                                        #   in Loop: Header=BB29_88 Depth=1
	movq	-120(%rbp), %rdi
	callq	CAR_SAFE
	movq	%rax, -104(%rbp)
	movq	-120(%rbp), %rdi
	callq	CDR_SAFE
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rdi
	callq	CAR_SAFE
	movq	%rax, -112(%rbp)
	movq	-120(%rbp), %rdi
	callq	CDR_SAFE
	xorl	%edi, %edi
	movq	%rax, -120(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -544(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-544(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB29_91
# BB#90:                                # %lor.lhs.false.250
                                        #   in Loop: Header=BB29_88 Depth=1
	xorl	%edi, %edi
	movq	-112(%rbp), %rax
	movq	%rax, -552(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-552(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB29_92
.LBB29_91:                              # %if.then.254
	movb	$0, -89(%rbp)
	jmp	.LBB29_104
.LBB29_92:                              # %if.else.255
                                        #   in Loop: Header=BB29_88 Depth=1
	movl	$21, %edi
	movq	-104(%rbp), %rax
	movq	%rax, -560(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-560(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB29_97
# BB#93:                                # %land.lhs.true.259
                                        #   in Loop: Header=BB29_88 Depth=1
	movl	$451, %edi              # imm = 0x1C3
	movq	-112(%rbp), %rax
	movq	%rax, -568(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-568(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB29_97
# BB#94:                                # %lor.lhs.false.263
                                        #   in Loop: Header=BB29_88 Depth=1
	movq	-112(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB29_95
	jmp	.LBB29_96
.LBB29_95:                              # %land.lhs.true.266
                                        #   in Loop: Header=BB29_88 Depth=1
	movq	-112(%rbp), %rdi
	callq	SCHARS
	cmpq	$0, %rax
	jg	.LBB29_97
.LBB29_96:                              # %if.then.270
	movb	$0, -89(%rbp)
	jmp	.LBB29_104
.LBB29_97:                              # %if.else.271
                                        #   in Loop: Header=BB29_88 Depth=1
	movl	$127, %edi
	movq	-104(%rbp), %rax
	movq	%rax, -576(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-576(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB29_101
# BB#98:                                # %land.lhs.true.275
                                        #   in Loop: Header=BB29_88 Depth=1
	movl	$620, %edi              # imm = 0x26C
	movq	-112(%rbp), %rax
	movq	%rax, -584(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-584(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB29_101
# BB#99:                                # %lor.lhs.false.279
                                        #   in Loop: Header=BB29_88 Depth=1
	movl	$1012, %edi             # imm = 0x3F4
	movq	-112(%rbp), %rax
	movq	%rax, -592(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-592(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB29_101
# BB#100:                               # %if.then.283
	movb	$0, -89(%rbp)
	jmp	.LBB29_104
.LBB29_101:                             # %if.end.284
                                        #   in Loop: Header=BB29_88 Depth=1
	jmp	.LBB29_102
.LBB29_102:                             # %if.end.285
                                        #   in Loop: Header=BB29_88 Depth=1
	jmp	.LBB29_103
.LBB29_103:                             # %if.end.286
                                        #   in Loop: Header=BB29_88 Depth=1
	jmp	.LBB29_88
.LBB29_104:                             # %while.end
	jmp	.LBB29_105
.LBB29_105:                             # %if.end.287
	jmp	.LBB29_106
.LBB29_106:                             # %if.end.288
	jmp	.LBB29_107
.LBB29_107:                             # %if.end.289
	jmp	.LBB29_108
.LBB29_108:                             # %if.end.290
	testb	$1, -89(%rbp)
	jne	.LBB29_110
# BB#109:                               # %if.then.291
	movabsq	$.L.str.7, %rdi
	movq	-32(%rbp), %rsi
	callq	signal_error
.LBB29_110:                             # %if.end.292
	movl	$7, %eax
	movl	%eax, %esi
	movq	-48(%rbp), %rdi
	callq	AREF
	movl	$7, %ecx
	movl	%ecx, %esi
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rdi
	movq	-32(%rbp), %rdx
	callq	ASET
	jmp	.LBB29_308
.LBB29_111:                             # %if.else.294
	movl	$90, %edi
	movq	-24(%rbp), %rax
	movq	%rax, -600(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-600(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB29_122
# BB#112:                               # %if.then.298
	movl	$975, %edi              # imm = 0x3CF
	movq	-32(%rbp), %rax
	movq	%rax, -608(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-608(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB29_121
# BB#113:                               # %land.lhs.true.302
	movl	$64, %edi
	movq	-32(%rbp), %rax
	movq	%rax, -616(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-616(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB29_121
# BB#114:                               # %if.then.306
	movq	-32(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	.LBB29_117
# BB#115:                               # %land.lhs.true.311
	movl	$901, %edi              # imm = 0x385
	movq	-32(%rbp), %rax
	movq	%rax, -624(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-624(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB29_117
# BB#116:                               # %land.lhs.true.315
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	movq	%rax, -632(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-632(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB29_119
.LBB29_117:                             # %lor.lhs.false.319
	movq	-32(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB29_118
	jmp	.LBB29_120
.LBB29_118:                             # %land.lhs.true.322
	movq	-32(%rbp), %rdi
	callq	SCHARS
	cmpq	$0, %rax
	jne	.LBB29_120
.LBB29_119:                             # %if.then.326
	movabsq	$.L.str.8, %rdi
	movq	-32(%rbp), %rsi
	callq	signal_error
.LBB29_120:                             # %if.end.327
	jmp	.LBB29_121
.LBB29_121:                             # %if.end.328
	movl	$12, %eax
	movl	%eax, %esi
	movq	-48(%rbp), %rdi
	callq	AREF
	movl	$12, %ecx
	movl	%ecx, %esi
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rdi
	movq	-32(%rbp), %rdx
	callq	ASET
	jmp	.LBB29_307
.LBB29_122:                             # %if.else.330
	movl	$126, %edi
	movq	-24(%rbp), %rax
	movq	%rax, -640(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-640(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB29_133
# BB#123:                               # %if.then.334
	movl	$975, %edi              # imm = 0x3CF
	movq	-32(%rbp), %rax
	movq	%rax, -648(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-648(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB29_132
# BB#124:                               # %land.lhs.true.338
	movl	$64, %edi
	movq	-32(%rbp), %rax
	movq	%rax, -656(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-656(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB29_132
# BB#125:                               # %if.then.342
	movq	-32(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	.LBB29_128
# BB#126:                               # %land.lhs.true.347
	movl	$901, %edi              # imm = 0x385
	movq	-32(%rbp), %rax
	movq	%rax, -664(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-664(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB29_128
# BB#127:                               # %land.lhs.true.351
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	movq	%rax, -672(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-672(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB29_130
.LBB29_128:                             # %lor.lhs.false.355
	movq	-32(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB29_129
	jmp	.LBB29_131
.LBB29_129:                             # %land.lhs.true.358
	movq	-32(%rbp), %rdi
	callq	SCHARS
	cmpq	$0, %rax
	jne	.LBB29_131
.LBB29_130:                             # %if.then.362
	movabsq	$.L.str.9, %rdi
	movq	-32(%rbp), %rsi
	callq	signal_error
.LBB29_131:                             # %if.end.363
	jmp	.LBB29_132
.LBB29_132:                             # %if.end.364
	movl	$13, %eax
	movl	%eax, %esi
	movq	-48(%rbp), %rdi
	callq	AREF
	movl	$13, %ecx
	movl	%ecx, %esi
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rdi
	movq	-32(%rbp), %rdx
	callq	ASET
	jmp	.LBB29_306
.LBB29_133:                             # %if.else.366
	movl	$15, %edi
	movq	-24(%rbp), %rax
	movq	%rax, -680(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-680(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB29_179
# BB#134:                               # %if.then.370
	movl	$901, %edi              # imm = 0x385
	movq	-32(%rbp), %rax
	movq	%rax, -688(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-688(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB29_136
# BB#135:                               # %if.then.375
	movq	$6, -32(%rbp)
.LBB29_136:                             # %if.end.376
	movl	$975, %edi              # imm = 0x3CF
	movq	-32(%rbp), %rax
	movq	%rax, -696(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-696(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB29_138
# BB#137:                               # %lor.lhs.false.380
	movl	$64, %edi
	movq	-32(%rbp), %rax
	movq	%rax, -704(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-704(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB29_139
.LBB29_138:                             # %if.then.384
	movb	$1, -121(%rbp)
	jmp	.LBB29_176
.LBB29_139:                             # %if.else.385
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	movq	%rax, -712(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-712(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB29_141
# BB#140:                               # %if.then.389
	movb	$1, -121(%rbp)
	jmp	.LBB29_175
.LBB29_141:                             # %if.else.390
	movq	-32(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB29_143
# BB#142:                               # %if.then.396
	movq	-32(%rbp), %rax
	sarq	$2, %rax
	cmpq	$0, %rax
	setne	%cl
	andb	$1, %cl
	movb	%cl, -121(%rbp)
	jmp	.LBB29_174
.LBB29_143:                             # %if.else.400
	movq	-32(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB29_144
	jmp	.LBB29_145
.LBB29_144:                             # %if.then.402
	movq	-32(%rbp), %rdi
	callq	SCHARS
	cmpq	$0, %rax
	setg	%cl
	andb	$1, %cl
	movb	%cl, -121(%rbp)
	jmp	.LBB29_173
.LBB29_145:                             # %if.else.407
	movq	-32(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB29_171
# BB#146:                               # %if.then.412
	movq	-32(%rbp), %rax
	movq	%rax, -136(%rbp)
.LBB29_147:                             # %while.cond.413
                                        # =>This Inner Loop Header: Depth=1
	movq	-136(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB29_170
# BB#148:                               # %while.body.418
                                        #   in Loop: Header=BB29_147 Depth=1
	movq	-136(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -144(%rbp)
	movq	-136(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -136(%rbp)
	movq	-136(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	je	.LBB29_150
# BB#149:                               # %if.then.428
	jmp	.LBB29_170
.LBB29_150:                             # %if.end.429
                                        #   in Loop: Header=BB29_147 Depth=1
	movl	$75, %edi
	movq	-136(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -152(%rbp)
	movq	-136(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -136(%rbp)
	movq	-144(%rbp), %rax
	movq	%rax, -720(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-720(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB29_155
# BB#151:                               # %if.then.438
                                        #   in Loop: Header=BB29_147 Depth=1
	movq	-152(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB29_153
# BB#152:                               # %lor.lhs.false.444
                                        #   in Loop: Header=BB29_147 Depth=1
	movq	-152(%rbp), %rax
	sarq	$2, %rax
	cmpq	$0, %rax
	jne	.LBB29_154
.LBB29_153:                             # %if.then.448
	jmp	.LBB29_170
.LBB29_154:                             # %if.end.449
                                        #   in Loop: Header=BB29_147 Depth=1
	jmp	.LBB29_169
.LBB29_155:                             # %if.else.450
                                        #   in Loop: Header=BB29_147 Depth=1
	movl	$21, %edi
	movq	-144(%rbp), %rax
	movq	%rax, -728(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-728(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB29_161
# BB#156:                               # %if.then.454
                                        #   in Loop: Header=BB29_147 Depth=1
	xorl	%edi, %edi
	movq	-152(%rbp), %rax
	movq	%rax, -736(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-736(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB29_160
# BB#157:                               # %land.lhs.true.458
                                        #   in Loop: Header=BB29_147 Depth=1
	movq	-152(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB29_158
	jmp	.LBB29_159
.LBB29_158:                             # %lor.lhs.false.460
                                        #   in Loop: Header=BB29_147 Depth=1
	movq	-152(%rbp), %rdi
	callq	SCHARS
	cmpq	$0, %rax
	jne	.LBB29_160
.LBB29_159:                             # %if.then.464
	jmp	.LBB29_170
.LBB29_160:                             # %if.end.465
                                        #   in Loop: Header=BB29_147 Depth=1
	jmp	.LBB29_168
.LBB29_161:                             # %if.else.466
                                        #   in Loop: Header=BB29_147 Depth=1
	movl	$127, %edi
	movq	-144(%rbp), %rax
	movq	%rax, -744(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-744(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB29_166
# BB#162:                               # %if.then.470
                                        #   in Loop: Header=BB29_147 Depth=1
	movl	$768, %edi              # imm = 0x300
	movq	-152(%rbp), %rax
	movq	%rax, -752(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-752(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB29_165
# BB#163:                               # %land.lhs.true.474
                                        #   in Loop: Header=BB29_147 Depth=1
	movl	$804, %edi              # imm = 0x324
	movq	-152(%rbp), %rax
	movq	%rax, -760(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-760(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB29_165
# BB#164:                               # %if.then.478
	jmp	.LBB29_170
.LBB29_165:                             # %if.end.479
                                        #   in Loop: Header=BB29_147 Depth=1
	jmp	.LBB29_167
.LBB29_166:                             # %if.else.480
	jmp	.LBB29_170
.LBB29_167:                             # %if.end.481
                                        #   in Loop: Header=BB29_147 Depth=1
	jmp	.LBB29_168
.LBB29_168:                             # %if.end.482
                                        #   in Loop: Header=BB29_147 Depth=1
	jmp	.LBB29_169
.LBB29_169:                             # %if.end.483
                                        #   in Loop: Header=BB29_147 Depth=1
	jmp	.LBB29_147
.LBB29_170:                             # %while.end.484
	xorl	%edi, %edi
	movq	-136(%rbp), %rax
	movq	%rax, -768(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-768(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	sete	%dl
	andb	$1, %dl
	movb	%dl, -121(%rbp)
	jmp	.LBB29_172
.LBB29_171:                             # %if.else.489
	movb	$0, -121(%rbp)
.LBB29_172:                             # %if.end.490
	jmp	.LBB29_173
.LBB29_173:                             # %if.end.491
	jmp	.LBB29_174
.LBB29_174:                             # %if.end.492
	jmp	.LBB29_175
.LBB29_175:                             # %if.end.493
	jmp	.LBB29_176
.LBB29_176:                             # %if.end.494
	testb	$1, -121(%rbp)
	jne	.LBB29_178
# BB#177:                               # %if.then.496
	movabsq	$.L.str.10, %rdi
	movq	-32(%rbp), %rsi
	callq	signal_error
.LBB29_178:                             # %if.end.497
	movl	$14, %eax
	movl	%eax, %esi
	movq	-48(%rbp), %rdi
	callq	AREF
	movl	$14, %ecx
	movl	%ecx, %esi
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rdi
	movq	-32(%rbp), %rdx
	callq	ASET
	jmp	.LBB29_305
.LBB29_179:                             # %if.else.499
	movl	$68, %edi
	movq	-24(%rbp), %rax
	movq	%rax, -776(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-776(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB29_181
# BB#180:                               # %lor.lhs.false.503
	movl	$109, %edi
	movq	-24(%rbp), %rax
	movq	%rax, -784(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-784(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB29_191
.LBB29_181:                             # %if.then.507
	movl	$975, %edi              # imm = 0x3CF
	movq	-32(%rbp), %rax
	movq	%rax, -792(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-792(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB29_190
# BB#182:                               # %land.lhs.true.511
	movl	$64, %edi
	movq	-32(%rbp), %rax
	movq	%rax, -800(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-800(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB29_190
# BB#183:                               # %if.then.515
	movq	-32(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	.LBB29_185
# BB#184:                               # %cond.true.520
	jmp	.LBB29_186
.LBB29_185:                             # %cond.false.521
	movl	$897, %edi              # imm = 0x381
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -808(%rbp)        # 8-byte Spill
.LBB29_186:                             # %cond.end.523
	movl	$901, %edi              # imm = 0x385
	movq	-32(%rbp), %rax
	movq	%rax, -816(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-816(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB29_189
# BB#187:                               # %land.lhs.true.527
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	movq	%rax, -824(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-824(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB29_189
# BB#188:                               # %if.then.531
	movabsq	$.L.str.11, %rdi
	movq	-32(%rbp), %rsi
	callq	signal_error
.LBB29_189:                             # %if.end.532
	jmp	.LBB29_190
.LBB29_190:                             # %if.end.533
	movl	$8, %eax
	movl	%eax, %esi
	movq	-48(%rbp), %rdi
	callq	AREF
	movl	$8, %ecx
	movl	%ecx, %esi
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rdi
	movq	-32(%rbp), %rdx
	callq	ASET
	jmp	.LBB29_304
.LBB29_191:                             # %if.else.535
	movl	$47, %edi
	movq	-24(%rbp), %rax
	movq	%rax, -832(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-832(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB29_200
# BB#192:                               # %if.then.539
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	movq	%rax, -840(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-840(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB29_194
# BB#193:                               # %if.then.543
	movl	$975, %edi              # imm = 0x3CF
	callq	builtin_lisp_symbol
	movq	%rax, -32(%rbp)
.LBB29_194:                             # %if.end.545
	movl	$975, %edi              # imm = 0x3CF
	movq	-32(%rbp), %rax
	movq	%rax, -848(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-848(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB29_199
# BB#195:                               # %land.lhs.true.549
	movl	$64, %edi
	movq	-32(%rbp), %rax
	movq	%rax, -856(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-856(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB29_199
# BB#196:                               # %if.then.553
	movq	-32(%rbp), %rdi
	callq	CHECK_STRING
	movq	-32(%rbp), %rdi
	callq	SCHARS
	cmpq	$0, %rax
	jne	.LBB29_198
# BB#197:                               # %if.then.557
	movabsq	$.L.str.12, %rdi
	movq	-32(%rbp), %rsi
	callq	signal_error
.LBB29_198:                             # %if.end.558
	jmp	.LBB29_199
.LBB29_199:                             # %if.end.559
	movl	$9, %eax
	movl	%eax, %esi
	movq	-48(%rbp), %rdi
	callq	AREF
	movl	$9, %ecx
	movl	%ecx, %esi
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rdi
	movq	-32(%rbp), %rdx
	callq	ASET
	jmp	.LBB29_303
.LBB29_200:                             # %if.else.561
	movl	$33, %edi
	movq	-24(%rbp), %rax
	movq	%rax, -864(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-864(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB29_209
# BB#201:                               # %if.then.565
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	movq	%rax, -872(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-872(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB29_203
# BB#202:                               # %if.then.569
	movl	$975, %edi              # imm = 0x3CF
	callq	builtin_lisp_symbol
	movq	%rax, -32(%rbp)
.LBB29_203:                             # %if.end.571
	movl	$975, %edi              # imm = 0x3CF
	movq	-32(%rbp), %rax
	movq	%rax, -880(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-880(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB29_208
# BB#204:                               # %land.lhs.true.575
	movl	$64, %edi
	movq	-32(%rbp), %rax
	movq	%rax, -888(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-888(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB29_208
# BB#205:                               # %if.then.579
	movq	-32(%rbp), %rdi
	callq	CHECK_STRING
	movq	-32(%rbp), %rdi
	callq	SCHARS
	cmpq	$0, %rax
	jne	.LBB29_207
# BB#206:                               # %if.then.583
	movabsq	$.L.str.13, %rdi
	movq	-32(%rbp), %rsi
	callq	signal_error
.LBB29_207:                             # %if.end.584
	jmp	.LBB29_208
.LBB29_208:                             # %if.end.585
	movl	$18, %eax
	movl	%eax, %esi
	movq	-48(%rbp), %rdi
	callq	AREF
	movl	$18, %ecx
	movl	%ecx, %esi
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rdi
	movq	-32(%rbp), %rdx
	callq	ASET
	jmp	.LBB29_302
.LBB29_209:                             # %if.else.587
	movl	$13, %edi
	movq	-24(%rbp), %rax
	movq	%rax, -896(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-896(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB29_218
# BB#210:                               # %if.then.591
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	movq	%rax, -904(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-904(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB29_212
# BB#211:                               # %if.then.595
	movl	$975, %edi              # imm = 0x3CF
	callq	builtin_lisp_symbol
	movq	%rax, -32(%rbp)
.LBB29_212:                             # %if.end.597
	movl	$975, %edi              # imm = 0x3CF
	movq	-32(%rbp), %rax
	movq	%rax, -912(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-912(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB29_217
# BB#213:                               # %land.lhs.true.601
	movl	$64, %edi
	movq	-32(%rbp), %rax
	movq	%rax, -920(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-920(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB29_217
# BB#214:                               # %if.then.605
	movq	-32(%rbp), %rdi
	callq	CHECK_STRING
	movq	-32(%rbp), %rdi
	callq	SCHARS
	cmpq	$0, %rax
	jne	.LBB29_216
# BB#215:                               # %if.then.609
	movabsq	$.L.str.14, %rdi
	movq	-32(%rbp), %rsi
	callq	signal_error
.LBB29_216:                             # %if.end.610
	jmp	.LBB29_217
.LBB29_217:                             # %if.end.611
	movl	$10, %eax
	movl	%eax, %esi
	movq	-48(%rbp), %rdi
	callq	AREF
	movl	$10, %ecx
	movl	%ecx, %esi
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rdi
	movq	-32(%rbp), %rdx
	callq	ASET
	jmp	.LBB29_301
.LBB29_218:                             # %if.else.613
	movl	$123, %edi
	movq	-24(%rbp), %rax
	movq	%rax, -928(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-928(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB29_225
# BB#219:                               # %if.then.617
	movl	$975, %edi              # imm = 0x3CF
	movq	-32(%rbp), %rax
	movq	%rax, -936(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-936(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB29_224
# BB#220:                               # %land.lhs.true.621
	movl	$64, %edi
	movq	-32(%rbp), %rax
	movq	%rax, -944(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-944(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB29_224
# BB#221:                               # %land.lhs.true.625
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	movq	%rax, -952(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-952(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB29_224
# BB#222:                               # %land.lhs.true.629
	movq	-32(%rbp), %rdi
	callq	Fbitmap_spec_p
	xorl	%edi, %edi
	movq	%rax, -960(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-960(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB29_224
# BB#223:                               # %if.then.634
	movabsq	$.L.str.15, %rdi
	movq	-32(%rbp), %rsi
	callq	signal_error
.LBB29_224:                             # %if.end.635
	movl	$11, %eax
	movl	%eax, %esi
	movq	-48(%rbp), %rdi
	callq	AREF
	movl	$11, %ecx
	movl	%ecx, %esi
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rdi
	movq	-32(%rbp), %rdx
	callq	ASET
	jmp	.LBB29_300
.LBB29_225:                             # %if.else.637
	movl	$139, %edi
	movq	-24(%rbp), %rax
	movq	%rax, -968(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-968(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB29_235
# BB#226:                               # %if.then.641
	movl	$975, %edi              # imm = 0x3CF
	movq	-32(%rbp), %rax
	movq	%rax, -976(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-976(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB29_234
# BB#227:                               # %land.lhs.true.645
	movl	$64, %edi
	movq	-32(%rbp), %rax
	movq	%rax, -984(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-984(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB29_234
# BB#228:                               # %if.then.649
	movq	-32(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	.LBB29_230
# BB#229:                               # %cond.true.654
	jmp	.LBB29_231
.LBB29_230:                             # %cond.false.655
	movl	$897, %edi              # imm = 0x381
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -992(%rbp)        # 8-byte Spill
.LBB29_231:                             # %cond.end.657
	movl	$7, %edi
	xorl	%edx, %edx
	movq	-32(%rbp), %rsi
	callq	font_style_to_value
	sarl	$8, %eax
	cmpl	$0, %eax
	jge	.LBB29_233
# BB#232:                               # %if.then.662
	movabsq	$.L.str.16, %rdi
	movq	-32(%rbp), %rsi
	callq	signal_error
.LBB29_233:                             # %if.end.663
	jmp	.LBB29_234
.LBB29_234:                             # %if.end.664
	movl	$3, %eax
	movl	%eax, %esi
	movq	-48(%rbp), %rdi
	callq	AREF
	movl	$3, %ecx
	movl	%ecx, %esi
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rdi
	movq	-32(%rbp), %rdx
	callq	ASET
	movl	$7, -60(%rbp)
	jmp	.LBB29_299
.LBB29_235:                             # %if.else.666
	movl	$44, %edi
	movq	-24(%rbp), %rax
	movq	%rax, -1000(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1000(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB29_262
# BB#236:                               # %if.then.670
	movl	$901, %edi              # imm = 0x385
	movq	-40(%rbp), %rax
	movq	%rax, -1008(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1008(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB29_238
# BB#237:                               # %lor.lhs.false.674
	movq	-72(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$2, %ecx
	jne	.LBB29_261
.LBB29_238:                             # %if.then.677
	movl	$975, %edi              # imm = 0x3CF
	movq	-32(%rbp), %rax
	movq	%rax, -1016(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1016(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB29_259
# BB#239:                               # %land.lhs.true.681
	movl	$64, %edi
	movq	-32(%rbp), %rax
	movq	%rax, -1024(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1024(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB29_259
# BB#240:                               # %if.then.685
	movl	$15, %eax
	movl	%eax, %esi
	movq	-48(%rbp), %rdi
	callq	AREF
	movq	%rax, -56(%rbp)
	movq	-32(%rbp), %rdi
	callq	FONTP
	testb	$1, %al
	jne	.LBB29_249
# BB#241:                               # %if.then.688
	movq	-32(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB29_242
	jmp	.LBB29_247
.LBB29_242:                             # %if.then.690
	xorl	%esi, %esi
	movq	-32(%rbp), %rax
	movq	%rax, -168(%rbp)
	movq	-168(%rbp), %rdi
	callq	fs_query_fontset
	movl	%eax, -172(%rbp)
	cmpl	$0, -172(%rbp)
	jl	.LBB29_244
# BB#243:                               # %if.then.694
	movl	-172(%rbp), %edi
	callq	fontset_ascii
	movq	%rax, -168(%rbp)
.LBB29_244:                             # %if.end.696
	movq	-168(%rbp), %rdi
	callq	font_spec_from_name
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	FONTP
	testb	$1, %al
	jne	.LBB29_246
# BB#245:                               # %if.then.699
	movabsq	$.L.str, %rdi
	movq	-168(%rbp), %rsi
	callq	signal_error
.LBB29_246:                             # %if.end.700
	jmp	.LBB29_248
.LBB29_247:                             # %if.else.701
	movabsq	$.L.str.17, %rdi
	movq	-32(%rbp), %rsi
	callq	signal_error
.LBB29_248:                             # %if.end.702
	jmp	.LBB29_249
.LBB29_249:                             # %if.end.703
	movl	$901, %edi              # imm = 0x385
	movq	-40(%rbp), %rax
	movq	%rax, -1032(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1032(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB29_251
# BB#250:                               # %if.then.707
	movq	selected_frame, %rax
	subq	$5, %rax
	movq	%rax, -160(%rbp)
	jmp	.LBB29_252
.LBB29_251:                             # %if.else.709
	movq	-40(%rbp), %rax
	subq	$5, %rax
	movq	%rax, -160(%rbp)
.LBB29_252:                             # %if.end.711
	movq	-160(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$2, %ecx
	jne	.LBB29_258
# BB#253:                               # %if.then.719
	movq	-32(%rbp), %rdi
	callq	FONT_OBJECT_P
	testb	$1, %al
	jne	.LBB29_257
# BB#254:                               # %if.then.721
	movq	-48(%rbp), %rdi
	callq	XVECTOR
	addq	$8, %rax
	movq	%rax, -184(%rbp)
	movq	-160(%rbp), %rdi
	movq	-184(%rbp), %rsi
	movq	-32(%rbp), %rdx
	callq	font_load_for_lface
	xorl	%edi, %edi
	movq	%rax, -192(%rbp)
	movq	-192(%rbp), %rax
	movq	%rax, -1040(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1040(%rbp), %rdx       # 8-byte Reload
	cmpq	%rax, %rdx
	jne	.LBB29_256
# BB#255:                               # %if.then.727
	movabsq	$.L.str.18, %rdi
	movq	-32(%rbp), %rsi
	callq	signal_error
.LBB29_256:                             # %if.end.728
	movq	-192(%rbp), %rax
	movq	%rax, -32(%rbp)
.LBB29_257:                             # %if.end.729
	movl	$1, %ecx
	movq	-160(%rbp), %rdi
	movq	-48(%rbp), %rsi
	movq	-32(%rbp), %rdx
	callq	set_lface_from_font
	movq	-160(%rbp), %rdx
	movabsq	$-1099511627777, %rsi   # imm = 0xFFFFFEFFFFFFFFFF
	andq	208(%rdx), %rsi
	movabsq	$1099511627776, %rdi    # imm = 0x10000000000
	orq	%rdi, %rsi
	movq	%rsi, 208(%rdx)
.LBB29_258:                             # %if.end.732
	jmp	.LBB29_260
.LBB29_259:                             # %if.else.733
	movl	$15, %eax
	movl	%eax, %esi
	movq	-48(%rbp), %rdi
	movq	-32(%rbp), %rdx
	callq	ASET
.LBB29_260:                             # %if.end.734
	jmp	.LBB29_261
.LBB29_261:                             # %if.end.735
	jmp	.LBB29_298
.LBB29_262:                             # %if.else.736
	movl	$46, %edi
	movq	-24(%rbp), %rax
	movq	%rax, -1048(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1048(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB29_269
# BB#263:                               # %if.then.740
	movl	$901, %edi              # imm = 0x385
	movq	-40(%rbp), %rax
	movq	%rax, -1056(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1056(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB29_265
# BB#264:                               # %lor.lhs.false.744
	movq	-72(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$2, %ecx
	jne	.LBB29_268
.LBB29_265:                             # %if.then.752
	movl	$17, %eax
	movl	%eax, %esi
	movq	-48(%rbp), %rdi
	callq	AREF
	xorl	%edi, %edi
	movq	%rax, -56(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -1064(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1064(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	Fquery_fontset
	xorl	%edi, %edi
	movq	%rax, -200(%rbp)
	movq	-200(%rbp), %rax
	movq	%rax, -1072(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1072(%rbp), %rsi       # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB29_267
# BB#266:                               # %if.then.759
	movabsq	$.L.str.19, %rdi
	movq	-32(%rbp), %rsi
	callq	signal_error
.LBB29_267:                             # %if.end.760
	movl	$17, %eax
	movl	%eax, %esi
	movq	-48(%rbp), %rdi
	movq	-200(%rbp), %rcx
	movq	%rcx, -32(%rbp)
	movq	%rcx, %rdx
	callq	ASET
.LBB29_268:                             # %if.end.761
	jmp	.LBB29_297
.LBB29_269:                             # %if.else.762
	movl	$67, %edi
	movq	-24(%rbp), %rax
	movq	%rax, -1080(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1080(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB29_283
# BB#270:                               # %if.then.766
	movq	-32(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	.LBB29_272
# BB#271:                               # %if.then.773
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -208(%rbp)
	jmp	.LBB29_279
.LBB29_272:                             # %if.else.775
	movq	-32(%rbp), %rax
	movq	%rax, -208(%rbp)
.LBB29_273:                             # %for.cond.776
                                        # =>This Inner Loop Header: Depth=1
	movq	-208(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB29_278
# BB#274:                               # %for.body.781
                                        #   in Loop: Header=BB29_273 Depth=1
	movq	-208(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	je	.LBB29_276
# BB#275:                               # %if.then.788
	jmp	.LBB29_278
.LBB29_276:                             # %if.end.789
                                        #   in Loop: Header=BB29_273 Depth=1
	jmp	.LBB29_277
.LBB29_277:                             # %for.inc.790
                                        #   in Loop: Header=BB29_273 Depth=1
	movq	-208(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -208(%rbp)
	jmp	.LBB29_273
.LBB29_278:                             # %for.end.794
	jmp	.LBB29_279
.LBB29_279:                             # %if.end.795
	xorl	%edi, %edi
	movq	-208(%rbp), %rax
	movq	%rax, -1088(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1088(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB29_281
# BB#280:                               # %if.then.799
	movl	$16, %eax
	movl	%eax, %esi
	movq	-48(%rbp), %rdi
	movq	-32(%rbp), %rdx
	callq	ASET
	jmp	.LBB29_282
.LBB29_281:                             # %if.else.800
	movabsq	$.L.str.20, %rdi
	movq	-32(%rbp), %rsi
	callq	signal_error
.LBB29_282:                             # %if.end.801
	jmp	.LBB29_296
.LBB29_283:                             # %if.else.802
	movl	$14, %edi
	movq	-24(%rbp), %rax
	movq	%rax, -1096(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1096(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB29_288
# BB#284:                               # %if.then.806
	movl	$5, %eax
	movl	%eax, %esi
	movq	-48(%rbp), %rdi
	callq	AREF
	xorl	%edi, %edi
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rax
	movq	-32(%rbp), %rsi
	movq	%rsi, -1104(%rbp)       # 8-byte Spill
	movq	%rax, -1112(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1104(%rbp), %rsi       # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB29_286
# BB#285:                               # %cond.true.811
	movl	$707, %edi              # imm = 0x2C3
	callq	builtin_lisp_symbol
	movq	%rax, -1120(%rbp)       # 8-byte Spill
	jmp	.LBB29_287
.LBB29_286:                             # %cond.false.813
	movl	$205, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -1120(%rbp)       # 8-byte Spill
.LBB29_287:                             # %cond.end.815
	movq	-1120(%rbp), %rax       # 8-byte Reload
	movl	$5, %ecx
	movl	%ecx, %esi
	movq	-1112(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rdx
	callq	ASET
	movl	$5, -60(%rbp)
	jmp	.LBB29_295
.LBB29_288:                             # %if.else.816
	movl	$69, %edi
	movq	-24(%rbp), %rax
	movq	%rax, -1128(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1128(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB29_293
# BB#289:                               # %if.then.820
	movl	$119, %edi
	callq	builtin_lisp_symbol
	movl	$6, %edi
	movl	%edi, %esi
	movq	%rax, -24(%rbp)
	movq	-48(%rbp), %rdi
	callq	AREF
	xorl	%edi, %edi
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rax
	movq	-32(%rbp), %rsi
	movq	%rsi, -1136(%rbp)       # 8-byte Spill
	movq	%rax, -1144(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1136(%rbp), %rsi       # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB29_291
# BB#290:                               # %cond.true.826
	movl	$707, %edi              # imm = 0x2C3
	callq	builtin_lisp_symbol
	movq	%rax, -1152(%rbp)       # 8-byte Spill
	jmp	.LBB29_292
.LBB29_291:                             # %cond.false.828
	movl	$582, %edi              # imm = 0x246
	callq	builtin_lisp_symbol
	movq	%rax, -1152(%rbp)       # 8-byte Spill
.LBB29_292:                             # %cond.end.830
	movq	-1152(%rbp), %rax       # 8-byte Reload
	movl	$6, %ecx
	movl	%ecx, %esi
	movq	-1144(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rdx
	callq	ASET
	movl	$6, -60(%rbp)
	jmp	.LBB29_294
.LBB29_293:                             # %if.else.832
	movabsq	$.L.str.21, %rdi
	movq	-24(%rbp), %rsi
	callq	signal_error
.LBB29_294:                             # %if.end.833
	jmp	.LBB29_295
.LBB29_295:                             # %if.end.834
	jmp	.LBB29_296
.LBB29_296:                             # %if.end.835
	jmp	.LBB29_297
.LBB29_297:                             # %if.end.836
	jmp	.LBB29_298
.LBB29_298:                             # %if.end.837
	jmp	.LBB29_299
.LBB29_299:                             # %if.end.838
	jmp	.LBB29_300
.LBB29_300:                             # %if.end.839
	jmp	.LBB29_301
.LBB29_301:                             # %if.end.840
	jmp	.LBB29_302
.LBB29_302:                             # %if.end.841
	jmp	.LBB29_303
.LBB29_303:                             # %if.end.842
	jmp	.LBB29_304
.LBB29_304:                             # %if.end.843
	jmp	.LBB29_305
.LBB29_305:                             # %if.end.844
	jmp	.LBB29_306
.LBB29_306:                             # %if.end.845
	jmp	.LBB29_307
.LBB29_307:                             # %if.end.846
	jmp	.LBB29_308
.LBB29_308:                             # %if.end.847
	jmp	.LBB29_309
.LBB29_309:                             # %if.end.848
	jmp	.LBB29_310
.LBB29_310:                             # %if.end.849
	jmp	.LBB29_311
.LBB29_311:                             # %if.end.850
	jmp	.LBB29_312
.LBB29_312:                             # %if.end.851
	jmp	.LBB29_313
.LBB29_313:                             # %if.end.852
	cmpl	$0, -60(%rbp)
	je	.LBB29_315
# BB#314:                               # %if.then.854
	movq	-48(%rbp), %rdi
	callq	XVECTOR
	addq	$8, %rax
	movl	-60(%rbp), %esi
	movq	%rax, %rdi
	callq	font_clear_prop
.LBB29_315:                             # %if.end.858
	movl	$901, %edi              # imm = 0x385
	movq	-40(%rbp), %rax
	movq	%rax, -1160(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1160(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB29_319
# BB#316:                               # %land.lhs.true.862
	movl	$399, %edi              # imm = 0x18F
	movq	-16(%rbp), %rax
	movq	%rax, -1168(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1168(%rbp), %rdi       # 8-byte Reload
	movq	%rax, %rsi
	callq	Fget
	xorl	%edi, %edi
	movq	%rax, -1176(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1176(%rbp), %rsi       # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB29_319
# BB#317:                               # %land.lhs.true.868
	movq	-56(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	Fequal
	xorl	%edi, %edi
	movq	%rax, -1184(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1184(%rbp), %rsi       # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB29_319
# BB#318:                               # %if.then.873
	movq	-72(%rbp), %rax
	movabsq	$-1099511627777, %rcx   # imm = 0xFFFFFEFFFFFFFFFF
	andq	208(%rax), %rcx
	movabsq	$1099511627776, %rdx    # imm = 0x10000000000
	orq	%rdx, %rcx
	movq	%rcx, 208(%rax)
	movq	-72(%rbp), %rdi
	callq	fset_redisplay
.LBB29_319:                             # %if.end.878
	movl	$975, %edi              # imm = 0x3CF
	movq	-32(%rbp), %rax
	movq	%rax, -1192(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1192(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB29_372
# BB#320:                               # %land.lhs.true.882
	movl	$64, %edi
	movq	-32(%rbp), %rax
	movq	%rax, -1200(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1200(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB29_372
# BB#321:                               # %land.lhs.true.886
	movq	-56(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	Fequal
	xorl	%edi, %edi
	movq	%rax, -1208(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1208(%rbp), %rsi       # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB29_372
# BB#322:                               # %if.then.891
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movl	$324, %edi              # imm = 0x144
	movq	%rax, -216(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, -1216(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1216(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB29_335
# BB#323:                               # %if.then.897
	movq	-40(%rbp), %rdi
	callq	FRAMEP
	testb	$1, %al
	jne	.LBB29_324
	jmp	.LBB29_328
.LBB29_324:                             # %land.lhs.true.900
	cmpl	$0, -60(%rbp)
	jne	.LBB29_326
# BB#325:                               # %lor.lhs.false.902
	movl	$44, %edi
	movq	-24(%rbp), %rax
	movq	%rax, -1224(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1224(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB29_328
.LBB29_326:                             # %land.lhs.true.906
	movq	-48(%rbp), %rdi
	callq	XVECTOR
	addq	$8, %rax
	movq	%rax, %rdi
	callq	lface_fully_specified_p
	testb	$1, %al
	jne	.LBB29_327
	jmp	.LBB29_328
.LBB29_327:                             # %if.then.912
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	set_font_frame_param
	jmp	.LBB29_334
.LBB29_328:                             # %if.else.913
	movl	$47, %edi
	movq	-24(%rbp), %rax
	movq	%rax, -1232(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1232(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB29_330
# BB#329:                               # %if.then.917
	movl	$451, %edi              # imm = 0x1C3
	callq	builtin_lisp_symbol
	movq	%rax, -216(%rbp)
	jmp	.LBB29_333
.LBB29_330:                             # %if.else.919
	movl	$13, %edi
	movq	-24(%rbp), %rax
	movq	%rax, -1240(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1240(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB29_332
# BB#331:                               # %if.then.923
	movl	$193, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -216(%rbp)
.LBB29_332:                             # %if.end.925
	jmp	.LBB29_333
.LBB29_333:                             # %if.end.926
	jmp	.LBB29_334
.LBB29_334:                             # %if.end.927
	jmp	.LBB29_366
.LBB29_335:                             # %if.else.928
	movl	$830, %edi              # imm = 0x33E
	movq	-16(%rbp), %rax
	movq	%rax, -1248(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1248(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB29_342
# BB#336:                               # %if.then.932
	movl	$47, %edi
	movq	-24(%rbp), %rax
	movq	%rax, -1256(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1256(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB29_338
# BB#337:                               # %if.then.936
	movl	$832, %edi              # imm = 0x340
	callq	builtin_lisp_symbol
	movq	%rax, -216(%rbp)
	jmp	.LBB29_341
.LBB29_338:                             # %if.else.938
	movl	$13, %edi
	movq	-24(%rbp), %rax
	movq	%rax, -1264(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1264(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB29_340
# BB#339:                               # %if.then.942
	movl	$831, %edi              # imm = 0x33F
	callq	builtin_lisp_symbol
	movq	%rax, -216(%rbp)
.LBB29_340:                             # %if.end.944
	jmp	.LBB29_341
.LBB29_341:                             # %if.end.945
	jmp	.LBB29_365
.LBB29_342:                             # %if.else.946
	movl	$208, %edi
	movq	-16(%rbp), %rax
	movq	%rax, -1272(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1272(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB29_346
# BB#343:                               # %if.then.950
	movl	$13, %edi
	movq	-24(%rbp), %rax
	movq	%rax, -1280(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1280(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB29_345
# BB#344:                               # %if.then.954
	movl	$209, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -216(%rbp)
.LBB29_345:                             # %if.end.956
	jmp	.LBB29_364
.LBB29_346:                             # %if.else.957
	movl	$306, %edi              # imm = 0x132
	movq	-16(%rbp), %rax
	movq	%rax, -1288(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1288(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB29_350
# BB#347:                               # %if.then.961
	movl	$13, %edi
	movq	-24(%rbp), %rax
	movq	%rax, -1296(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1296(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB29_349
# BB#348:                               # %if.then.965
	movl	$307, %edi              # imm = 0x133
	callq	builtin_lisp_symbol
	movq	%rax, -216(%rbp)
.LBB29_349:                             # %if.end.967
	jmp	.LBB29_363
.LBB29_350:                             # %if.else.968
	movl	$684, %edi              # imm = 0x2AC
	movq	-16(%rbp), %rax
	movq	%rax, -1304(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1304(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB29_354
# BB#351:                               # %if.then.972
	movl	$13, %edi
	movq	-24(%rbp), %rax
	movq	%rax, -1312(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1312(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB29_353
# BB#352:                               # %if.then.976
	movl	$686, %edi              # imm = 0x2AE
	callq	builtin_lisp_symbol
	movq	%rax, -216(%rbp)
.LBB29_353:                             # %if.end.978
	jmp	.LBB29_362
.LBB29_354:                             # %if.else.979
	movl	$650, %edi              # imm = 0x28A
	movq	-16(%rbp), %rax
	movq	%rax, -1320(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1320(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB29_361
# BB#355:                               # %if.then.983
	movq	-40(%rbp), %rdi
	callq	FRAMEP
	testb	$1, %al
	jne	.LBB29_356
	jmp	.LBB29_359
.LBB29_356:                             # %if.then.985
	movq	-40(%rbp), %rax
	subq	$5, %rax
	movq	%rax, -224(%rbp)
	movq	-224(%rbp), %rax
	cmpq	$0, 160(%rax)
	jne	.LBB29_358
# BB#357:                               # %if.then.991
	movq	-224(%rbp), %rdi
	callq	make_face_cache
	movq	-224(%rbp), %rdi
	movq	%rax, 160(%rdi)
.LBB29_358:                             # %if.end.994
	movq	-224(%rbp), %rax
	movq	160(%rax), %rax
	movb	36(%rax), %cl
	andb	$-2, %cl
	orb	$1, %cl
	movb	%cl, 36(%rax)
	jmp	.LBB29_360
.LBB29_359:                             # %if.else.999
	movb	$1, menu_face_changed_default
.LBB29_360:                             # %if.end.1000
	jmp	.LBB29_361
.LBB29_361:                             # %if.end.1001
	jmp	.LBB29_362
.LBB29_362:                             # %if.end.1002
	jmp	.LBB29_363
.LBB29_363:                             # %if.end.1003
	jmp	.LBB29_364
.LBB29_364:                             # %if.end.1004
	jmp	.LBB29_365
.LBB29_365:                             # %if.end.1005
	jmp	.LBB29_366
.LBB29_366:                             # %if.end.1006
	xorl	%edi, %edi
	movq	-216(%rbp), %rax
	movq	%rax, -1328(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1328(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB29_371
# BB#367:                               # %if.then.1010
	movl	$901, %edi              # imm = 0x385
	movq	-40(%rbp), %rax
	movq	%rax, -1336(%rbp)       # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-1336(%rbp), %rcx       # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB29_369
# BB#368:                               # %if.then.1014
	movabsq	$globals, %rax
	addq	$480, %rax              # imm = 0x1E0
	movq	-216(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movq	%rax, %rdi
	callq	store_in_alist
	jmp	.LBB29_370
.LBB29_369:                             # %if.else.1015
	movq	Vparam_value_alist, %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -232(%rbp)
	movq	-232(%rbp), %rdi
	movq	-216(%rbp), %rsi
	callq	XSETCAR
	movq	-232(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	XSETCDR
	movq	-40(%rbp), %rdi
	movq	Vparam_value_alist, %rsi
	callq	Fmodify_frame_parameters
	movq	%rax, -1344(%rbp)       # 8-byte Spill
.LBB29_370:                             # %if.end.1020
	jmp	.LBB29_371
.LBB29_371:                             # %if.end.1021
	jmp	.LBB29_372
.LBB29_372:                             # %if.end.1022
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB29_373:                             # %return
	movq	-8(%rbp), %rax
	addq	$1344, %rsp             # imm = 0x540
	popq	%rbp
	retq
.Lfunc_end29:
	.size	Finternal_set_lisp_face_attribute, .Lfunc_end29-Finternal_set_lisp_face_attribute
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI30_0:
	.quad	4890909195324358656     # double 9.2233720368547758E+18
	.text
	.align	16, 0x90
	.type	merge_face_heights,@function
merge_face_heights:                     # @merge_face_heights
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
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	%rdx, -32(%rbp)
	movq	-8(%rbp), %rdx
	andq	$7, %rdx
	movl	%edx, %eax
	andl	$-5, %eax
	cmpl	$2, %eax
	jne	.LBB30_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB30_19
.LBB30_2:                               # %if.else
	movq	-8(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$7, %ecx
	jne	.LBB30_12
# BB#3:                                 # %if.then.7
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB30_5
# BB#4:                                 # %if.then.13
	movq	-8(%rbp), %rdi
	callq	XFLOAT_DATA
	movq	-16(%rbp), %rdi
	sarq	$2, %rdi
	cvtsi2sdq	%rdi, %xmm1
	mulsd	%xmm1, %xmm0
	movsd	.LCPI30_0(%rip), %xmm1  # xmm1 = mem[0],zero
	movaps	%xmm0, %xmm2
	subsd	%xmm1, %xmm2
	cvttsd2si	%xmm2, %rdi
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	xorq	%rax, %rdi
	cvttsd2si	%xmm0, %rax
	ucomisd	%xmm1, %xmm0
	cmovbq	%rax, %rdi
	shlq	$2, %rdi
	addq	$2, %rdi
	movq	%rdi, -32(%rbp)
	jmp	.LBB30_11
.LBB30_5:                               # %if.else.16
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$7, %ecx
	jne	.LBB30_7
# BB#6:                                 # %if.then.21
	movq	-8(%rbp), %rdi
	callq	XFLOAT_DATA
	movq	-16(%rbp), %rdi
	movsd	%xmm0, -40(%rbp)        # 8-byte Spill
	callq	XFLOAT_DATA
	movsd	-40(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	mulsd	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	callq	make_float
	movq	%rax, -32(%rbp)
	jmp	.LBB30_10
.LBB30_7:                               # %if.else.26
	movl	$975, %edi              # imm = 0x3CF
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB30_9
# BB#8:                                 # %if.then.30
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
.LBB30_9:                               # %if.end
	jmp	.LBB30_10
.LBB30_10:                              # %if.end.31
	jmp	.LBB30_11
.LBB30_11:                              # %if.end.32
	jmp	.LBB30_18
.LBB30_12:                              # %if.else.33
	movq	-8(%rbp), %rdi
	callq	FUNCTIONP
	testb	$1, %al
	jne	.LBB30_13
	jmp	.LBB30_17
.LBB30_13:                              # %if.then.35
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	safe_call1
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB30_16
# BB#14:                                # %land.lhs.true
	movq	-32(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	je	.LBB30_16
# BB#15:                                # %if.then.47
	movq	-24(%rbp), %rax
	movq	%rax, -32(%rbp)
.LBB30_16:                              # %if.end.48
	jmp	.LBB30_17
.LBB30_17:                              # %if.end.49
	jmp	.LBB30_18
.LBB30_18:                              # %if.end.50
	jmp	.LBB30_19
.LBB30_19:                              # %if.end.51
	movq	-32(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end30:
	.size	merge_face_heights, .Lfunc_end30-merge_face_heights
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI31_0:
	.quad	4602678819172646912     # double 0.5
.LCPI31_1:
	.quad	4634785966078589665     # double 72.269999999999996
	.text
	.align	16, 0x90
	.type	set_lface_from_font,@function
set_lface_from_font:                    # @set_lface_from_font
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
	subq	$208, %rsp
	movb	%cl, %al
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	andb	$1, %al
	movb	%al, -25(%rbp)
	movq	-24(%rbp), %rdi
	callq	XFONT_OBJECT
	movq	%rax, -48(%rbp)
	testb	$1, -25(%rbp)
	jne	.LBB31_2
# BB#1:                                 # %lor.lhs.false
	movl	$1, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rdi
	callq	AREF
	movl	$975, %edi              # imm = 0x3CF
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-80(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB31_3
.LBB31_2:                               # %if.then
	movl	$2, %eax
	movl	%eax, %esi
	movq	-24(%rbp), %rdi
	callq	AREF
	movq	%rax, -56(%rbp)
	movq	-16(%rbp), %rdi
	movq	-56(%rbp), %rax
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	SYMBOL_NAME
	movl	$1, %ecx
	movl	%ecx, %esi
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	ASET
.LBB31_3:                               # %if.end
	testb	$1, -25(%rbp)
	jne	.LBB31_5
# BB#4:                                 # %lor.lhs.false.6
	movl	$2, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rdi
	callq	AREF
	movl	$975, %edi              # imm = 0x3CF
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-96(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB31_6
.LBB31_5:                               # %if.then.10
	movl	$1, %eax
	movl	%eax, %esi
	movq	-24(%rbp), %rdi
	callq	AREF
	movq	%rax, -64(%rbp)
	movq	-16(%rbp), %rdi
	movq	-64(%rbp), %rax
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	SYMBOL_NAME
	movl	$2, %ecx
	movl	%ecx, %esi
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	ASET
.LBB31_6:                               # %if.end.13
	testb	$1, -25(%rbp)
	jne	.LBB31_8
# BB#7:                                 # %lor.lhs.false.15
	movl	$4, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rdi
	callq	AREF
	movl	$975, %edi              # imm = 0x3CF
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-112(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB31_9
.LBB31_8:                               # %if.then.19
	movl	$4, %eax
	movl	%eax, %esi
	movsd	.LCPI31_0, %xmm0        # xmm0 = mem[0],zero
	movsd	.LCPI31_1, %xmm1        # xmm1 = mem[0],zero
	movq	-48(%rbp), %rcx
	imull	$10, 152(%rcx), %eax
	cvtsi2sdl	%eax, %xmm2
	mulsd	%xmm1, %xmm2
	movq	-8(%rbp), %rcx
	movq	384(%rcx), %rcx
	movq	424(%rcx), %rcx
	divsd	64(%rcx), %xmm2
	addsd	%xmm0, %xmm2
	cvttsd2si	%xmm2, %eax
	movl	%eax, -68(%rbp)
	movq	-16(%rbp), %rdi
	movslq	-68(%rbp), %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	%rcx, %rdx
	callq	ASET
.LBB31_9:                               # %if.end.24
	testb	$1, -25(%rbp)
	jne	.LBB31_11
# BB#10:                                # %lor.lhs.false.27
	movl	$5, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rdi
	callq	AREF
	movl	$975, %edi              # imm = 0x3CF
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-120(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB31_15
.LBB31_11:                              # %if.then.32
	movl	$5, %esi
	movl	$1, %edx
	movq	-24(%rbp), %rdi
	callq	font_style_symbolic
	xorl	%edi, %edi
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rcx, -128(%rbp)        # 8-byte Spill
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-128(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB31_13
# BB#12:                                # %cond.true
	movq	-40(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	jmp	.LBB31_14
.LBB31_13:                              # %cond.false
	movl	$707, %edi              # imm = 0x2C3
	callq	builtin_lisp_symbol
	movq	%rax, -144(%rbp)        # 8-byte Spill
.LBB31_14:                              # %cond.end
	movq	-144(%rbp), %rax        # 8-byte Reload
	movl	$5, %ecx
	movl	%ecx, %esi
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	ASET
.LBB31_15:                              # %if.end.38
	testb	$1, -25(%rbp)
	jne	.LBB31_17
# BB#16:                                # %lor.lhs.false.41
	movl	$6, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rdi
	callq	AREF
	movl	$975, %edi              # imm = 0x3CF
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-152(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB31_21
.LBB31_17:                              # %if.then.46
	movl	$6, %esi
	movl	$1, %edx
	movq	-24(%rbp), %rdi
	callq	font_style_symbolic
	xorl	%edi, %edi
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rcx, -160(%rbp)        # 8-byte Spill
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-160(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB31_19
# BB#18:                                # %cond.true.51
	movq	-40(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	jmp	.LBB31_20
.LBB31_19:                              # %cond.false.52
	movl	$707, %edi              # imm = 0x2C3
	callq	builtin_lisp_symbol
	movq	%rax, -176(%rbp)        # 8-byte Spill
.LBB31_20:                              # %cond.end.54
	movq	-176(%rbp), %rax        # 8-byte Reload
	movl	$6, %ecx
	movl	%ecx, %esi
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	ASET
.LBB31_21:                              # %if.end.56
	testb	$1, -25(%rbp)
	jne	.LBB31_23
# BB#22:                                # %lor.lhs.false.59
	movl	$3, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rdi
	callq	AREF
	movl	$975, %edi              # imm = 0x3CF
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-184(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB31_27
.LBB31_23:                              # %if.then.64
	movl	$7, %esi
	movl	$1, %edx
	movq	-24(%rbp), %rdi
	callq	font_style_symbolic
	xorl	%edi, %edi
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rcx, -192(%rbp)        # 8-byte Spill
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-192(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB31_25
# BB#24:                                # %cond.true.69
	movq	-40(%rbp), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	jmp	.LBB31_26
.LBB31_25:                              # %cond.false.70
	movl	$707, %edi              # imm = 0x2C3
	callq	builtin_lisp_symbol
	movq	%rax, -208(%rbp)        # 8-byte Spill
.LBB31_26:                              # %cond.end.72
	movq	-208(%rbp), %rax        # 8-byte Reload
	movl	$3, %ecx
	movl	%ecx, %esi
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	ASET
.LBB31_27:                              # %if.end.74
	movl	$15, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rdx
	callq	ASET
	addq	$208, %rsp
	popq	%rbp
	retq
.Lfunc_end31:
	.size	set_lface_from_font, .Lfunc_end31-set_lface_from_font
	.cfi_endproc

	.align	16, 0x90
	.type	lface_fully_specified_p,@function
lface_fully_specified_p:                # @lface_fully_specified_p
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	$1, -12(%rbp)
.LBB32_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$19, -12(%rbp)
	jge	.LBB32_11
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB32_1 Depth=1
	cmpl	$15, -12(%rbp)
	je	.LBB32_9
# BB#3:                                 # %land.lhs.true
                                        #   in Loop: Header=BB32_1 Depth=1
	cmpl	$16, -12(%rbp)
	je	.LBB32_9
# BB#4:                                 # %land.lhs.true.3
                                        #   in Loop: Header=BB32_1 Depth=1
	cmpl	$18, -12(%rbp)
	je	.LBB32_9
# BB#5:                                 # %if.then
                                        #   in Loop: Header=BB32_1 Depth=1
	movl	$975, %edi              # imm = 0x3CF
	movslq	-12(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB32_7
# BB#6:                                 # %lor.lhs.false
                                        #   in Loop: Header=BB32_1 Depth=1
	movl	$64, %edi
	movslq	-12(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB32_8
.LBB32_7:                               # %if.then.10
	jmp	.LBB32_11
.LBB32_8:                               # %if.end
                                        #   in Loop: Header=BB32_1 Depth=1
	jmp	.LBB32_9
.LBB32_9:                               # %if.end.11
                                        #   in Loop: Header=BB32_1 Depth=1
	jmp	.LBB32_10
.LBB32_10:                              # %for.inc
                                        #   in Loop: Header=BB32_1 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB32_1
.LBB32_11:                              # %for.end
	cmpl	$19, -12(%rbp)
	sete	%al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end32:
	.size	lface_fully_specified_p, .Lfunc_end32-lface_fully_specified_p
	.cfi_endproc

	.align	16, 0x90
	.type	set_font_frame_param,@function
set_font_frame_param:                   # @set_font_frame_param
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	subq	$5, %rsi
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	208(%rsi), %rsi
	shrq	$23, %rsi
	andq	$7, %rsi
	movl	%esi, %eax
	cmpl	$2, %eax
	jne	.LBB33_7
# BB#1:                                 # %land.lhs.true
	movl	$15, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rdi
	callq	AREF
	movl	$975, %edi              # imm = 0x3CF
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-80(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	sete	%cl
	xorb	$-1, %cl
	testb	$1, %cl
	jne	.LBB33_2
	jmp	.LBB33_7
.LBB33_2:                               # %if.then
	movq	-32(%rbp), %rdi
	callq	FONT_SPEC_P
	testb	$1, %al
	jne	.LBB33_3
	jmp	.LBB33_6
.LBB33_3:                               # %if.then.4
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	XVECTOR
	addq	$8, %rax
	movq	-32(%rbp), %rdx
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	font_load_for_lface
	xorl	%edi, %edi
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-96(%rbp), %rdx         # 8-byte Reload
	cmpq	%rax, %rdx
	jne	.LBB33_5
# BB#4:                                 # %if.then.9
	jmp	.LBB33_7
.LBB33_5:                               # %if.end
	movl	$15, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rdx
	callq	ASET
.LBB33_6:                               # %if.end.10
	movl	$439, %edi              # imm = 0x1B7
	movq	-24(%rbp), %rax
	movq	208(%rax), %rcx
	andq	$-5, %rcx
	movq	%rcx, 208(%rax)
	callq	builtin_lisp_symbol
	movl	$3, %esi
	leaq	-72(%rbp), %rcx
	movq	%rax, -72(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	%rcx, %rdi
	callq	make_lisp_ptr
	xorl	%edi, %edi
	movq	%rax, -56(%rbp)
	callq	builtin_lisp_symbol
	movl	$3, %esi
	leaq	-56(%rbp), %rcx
	movq	%rax, -48(%rbp)
	movq	%rcx, %rdi
	callq	make_lisp_ptr
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	Fmodify_frame_parameters
	movq	%rax, -104(%rbp)        # 8-byte Spill
.LBB33_7:                               # %if.end.25
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end33:
	.size	set_font_frame_param, .Lfunc_end33-set_font_frame_param
	.cfi_endproc

	.globl	update_face_from_frame_parameter
	.align	16, 0x90
	.type	update_face_from_frame_parameter,@function
update_face_from_frame_parameter:       # @update_face_from_frame_parameter
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
	subq	$224, %rsp
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	movq	96(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-56(%rbp), %rdx         # 8-byte Reload
	cmpq	%rax, %rdx
	jne	.LBB34_2
# BB#1:                                 # %if.then
	jmp	.LBB34_34
.LBB34_2:                               # %if.end
	movl	$451, %edi              # imm = 0x1C3
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-64(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB34_7
# BB#3:                                 # %if.then.4
	movl	$324, %edi              # imm = 0x144
	callq	builtin_lisp_symbol
	movl	$1, %edx
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	lface_from_face_name
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB34_4
	jmp	.LBB34_5
.LBB34_4:                               # %cond.true
	movq	-24(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	jmp	.LBB34_6
.LBB34_5:                               # %cond.false
	movl	$975, %edi              # imm = 0x3CF
	callq	builtin_lisp_symbol
	movq	%rax, -80(%rbp)         # 8-byte Spill
.LBB34_6:                               # %cond.end
	movq	-80(%rbp), %rax         # 8-byte Reload
	movl	$9, %ecx
	movl	%ecx, %esi
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rdx
	callq	ASET
	movq	-8(%rbp), %rdi
	callq	realize_basic_faces
	movb	%al, -81(%rbp)          # 1-byte Spill
	jmp	.LBB34_31
.LBB34_7:                               # %if.else
	movl	$193, %edi
	movq	-16(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-96(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB34_12
# BB#8:                                 # %if.then.12
	movl	$5, %esi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	make_lisp_ptr
	movl	$459, %edi              # imm = 0x1CB
	movq	%rax, -48(%rbp)
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rsi
	movq	%rax, %rdi
	callq	call1
	movl	$324, %edi              # imm = 0x144
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$1, %edx
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	lface_from_face_name
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB34_9
	jmp	.LBB34_10
.LBB34_9:                               # %cond.true.19
	movq	-24(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	jmp	.LBB34_11
.LBB34_10:                              # %cond.false.20
	movl	$975, %edi              # imm = 0x3CF
	callq	builtin_lisp_symbol
	movq	%rax, -120(%rbp)        # 8-byte Spill
.LBB34_11:                              # %cond.end.22
	movq	-120(%rbp), %rax        # 8-byte Reload
	movl	$10, %ecx
	movl	%ecx, %esi
	movq	-112(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	ASET
	movq	-8(%rbp), %rdi
	callq	realize_basic_faces
	movb	%al, -121(%rbp)         # 1-byte Spill
	jmp	.LBB34_30
.LBB34_12:                              # %if.else.25
	movl	$209, %edi
	movq	-16(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-136(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB34_17
# BB#13:                                # %if.then.28
	movl	$208, %edi
	callq	builtin_lisp_symbol
	movl	$1, %edx
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	lface_from_face_name
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -144(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB34_14
	jmp	.LBB34_15
.LBB34_14:                              # %cond.true.32
	movq	-24(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	jmp	.LBB34_16
.LBB34_15:                              # %cond.false.33
	movl	$975, %edi              # imm = 0x3CF
	callq	builtin_lisp_symbol
	movq	%rax, -152(%rbp)        # 8-byte Spill
.LBB34_16:                              # %cond.end.35
	movq	-152(%rbp), %rax        # 8-byte Reload
	movl	$10, %ecx
	movl	%ecx, %esi
	movq	-144(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	ASET
	jmp	.LBB34_29
.LBB34_17:                              # %if.else.37
	movl	$307, %edi              # imm = 0x133
	movq	-16(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-160(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB34_22
# BB#18:                                # %if.then.40
	movl	$306, %edi              # imm = 0x132
	callq	builtin_lisp_symbol
	movl	$1, %edx
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	lface_from_face_name
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -168(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB34_19
	jmp	.LBB34_20
.LBB34_19:                              # %cond.true.44
	movq	-24(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	jmp	.LBB34_21
.LBB34_20:                              # %cond.false.45
	movl	$975, %edi              # imm = 0x3CF
	callq	builtin_lisp_symbol
	movq	%rax, -176(%rbp)        # 8-byte Spill
.LBB34_21:                              # %cond.end.47
	movq	-176(%rbp), %rax        # 8-byte Reload
	movl	$10, %ecx
	movl	%ecx, %esi
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	ASET
	jmp	.LBB34_28
.LBB34_22:                              # %if.else.49
	movl	$686, %edi              # imm = 0x2AE
	movq	-16(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-184(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB34_27
# BB#23:                                # %if.then.52
	movl	$684, %edi              # imm = 0x2AC
	callq	builtin_lisp_symbol
	movl	$1, %edx
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	lface_from_face_name
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rax
	movq	%rdi, -192(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB34_24
	jmp	.LBB34_25
.LBB34_24:                              # %cond.true.56
	movq	-24(%rbp), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	jmp	.LBB34_26
.LBB34_25:                              # %cond.false.57
	movl	$975, %edi              # imm = 0x3CF
	callq	builtin_lisp_symbol
	movq	%rax, -200(%rbp)        # 8-byte Spill
.LBB34_26:                              # %cond.end.59
	movq	-200(%rbp), %rax        # 8-byte Reload
	movl	$10, %ecx
	movl	%ecx, %esi
	movq	-192(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	ASET
.LBB34_27:                              # %if.end.61
	jmp	.LBB34_28
.LBB34_28:                              # %if.end.62
	jmp	.LBB34_29
.LBB34_29:                              # %if.end.63
	jmp	.LBB34_30
.LBB34_30:                              # %if.end.64
	jmp	.LBB34_31
.LBB34_31:                              # %if.end.65
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-208(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB34_34
# BB#32:                                # %land.lhs.true
	movl	$399, %edi              # imm = 0x18F
	movq	-32(%rbp), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-216(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	Fget
	xorl	%edi, %edi
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-224(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB34_34
# BB#33:                                # %if.then.72
	movq	-8(%rbp), %rax
	movabsq	$-1099511627777, %rcx   # imm = 0xFFFFFEFFFFFFFFFF
	andq	208(%rax), %rcx
	movabsq	$1099511627776, %rdx    # imm = 0x10000000000
	orq	%rdx, %rcx
	movq	%rcx, 208(%rax)
	movq	-8(%rbp), %rdi
	callq	fset_redisplay
.LBB34_34:                              # %if.end.73
	addq	$224, %rsp
	popq	%rbp
	retq
.Lfunc_end34:
	.size	update_face_from_frame_parameter, .Lfunc_end34-update_face_from_frame_parameter
	.cfi_endproc

	.globl	Finternal_face_x_get_resource
	.align	16, 0x90
	.type	Finternal_face_x_get_resource,@function
Finternal_face_x_get_resource:          # @Finternal_face_x_get_resource
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
	subq	$80, %rsp
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rdi
	callq	CHECK_STRING
	movq	-16(%rbp), %rdi
	callq	CHECK_STRING
	movq	-24(%rbp), %rdi
	callq	decode_live_frame
	movq	%rax, -40(%rbp)
	callq	block_input
	xorl	%edi, %edi
	movq	-40(%rbp), %rax
	movq	384(%rax), %rax
	movq	424(%rax), %rax
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdx
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	-64(%rbp), %rsi         # 8-byte Reload
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movq	-72(%rbp), %rcx         # 8-byte Reload
	movq	%rax, %r8
	callq	display_x_get_resource
	movq	%rax, -32(%rbp)
	callq	unblock_input
	movq	-32(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end35:
	.size	Finternal_face_x_get_resource, .Lfunc_end35-Finternal_face_x_get_resource
	.cfi_endproc

	.globl	Finternal_set_lisp_face_attribute_from_resource
	.align	16, 0x90
	.type	Finternal_set_lisp_face_attribute_from_resource,@function
Finternal_set_lisp_face_attribute_from_resource: # @Finternal_set_lisp_face_attribute_from_resource
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
	subq	$176, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-8(%rbp), %rcx
	andq	$7, %rcx
	movl	%ecx, %eax
	cmpl	$0, %eax
	jne	.LBB36_2
# BB#1:                                 # %cond.true
	jmp	.LBB36_3
.LBB36_2:                               # %cond.false
	movl	$897, %edi              # imm = 0x381
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -48(%rbp)         # 8-byte Spill
.LBB36_3:                               # %cond.end
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	.LBB36_5
# BB#4:                                 # %cond.true.6
	jmp	.LBB36_6
.LBB36_5:                               # %cond.false.7
	movl	$897, %edi              # imm = 0x381
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -56(%rbp)         # 8-byte Spill
.LBB36_6:                               # %cond.end.9
	movq	-24(%rbp), %rdi
	callq	CHECK_STRING
	movq	-24(%rbp), %rdi
	callq	SSDATA
	movabsq	$.L.str.22, %rsi
	movq	%rax, %rdi
	callq	xstrcasecmp
	cmpl	$0, %eax
	jne	.LBB36_8
# BB#7:                                 # %if.then
	movl	$975, %edi              # imm = 0x3CF
	callq	builtin_lisp_symbol
	movq	%rax, -24(%rbp)
	jmp	.LBB36_37
.LBB36_8:                               # %if.else
	movl	$58, %edi
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-64(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB36_12
# BB#9:                                 # %if.then.18
	movl	$42, %eax
	movl	%eax, %esi
	movq	-24(%rbp), %rdi
	callq	Fstring_to_number
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	sarq	$2, %rax
	cmpq	$0, %rax
	jg	.LBB36_11
# BB#10:                                # %if.then.22
	movabsq	$.L.str.23, %rdi
	movq	-24(%rbp), %rsi
	callq	signal_error
.LBB36_11:                              # %if.end
	jmp	.LBB36_36
.LBB36_12:                              # %if.else.23
	movl	$14, %edi
	movq	-16(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-72(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB36_14
# BB#13:                                # %lor.lhs.false
	movl	$69, %edi
	movq	-16(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-80(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB36_15
.LBB36_14:                              # %if.then.30
	movl	$1, %esi
	movq	-24(%rbp), %rdi
	callq	face_boolean_x_resource_value
	movq	%rax, -24(%rbp)
	jmp	.LBB36_35
.LBB36_15:                              # %if.else.32
	movl	$138, %edi
	movq	-16(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-88(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB36_18
# BB#16:                                # %lor.lhs.false.36
	movl	$119, %edi
	movq	-16(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-96(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB36_18
# BB#17:                                # %lor.lhs.false.40
	movl	$139, %edi
	movq	-16(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-104(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB36_19
.LBB36_18:                              # %if.then.44
	movq	-24(%rbp), %rdi
	callq	SSDATA
	movq	%rax, %rdi
	callq	intern
	movq	%rax, -24(%rbp)
	jmp	.LBB36_34
.LBB36_19:                              # %if.else.47
	movl	$109, %edi
	movq	-16(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-112(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB36_21
# BB#20:                                # %lor.lhs.false.51
	movl	$68, %edi
	movq	-16(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-120(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB36_22
.LBB36_21:                              # %if.then.55
	movl	$1, %esi
	movq	-24(%rbp), %rdi
	callq	face_boolean_x_resource_value
	movq	%rax, -24(%rbp)
	jmp	.LBB36_33
.LBB36_22:                              # %if.else.57
	movl	$132, %edi
	movq	-16(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-128(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB36_25
# BB#23:                                # %lor.lhs.false.61
	movl	$90, %edi
	movq	-16(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-136(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB36_25
# BB#24:                                # %lor.lhs.false.65
	movl	$126, %edi
	movq	-16(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-144(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB36_28
.LBB36_25:                              # %if.then.69
	xorl	%esi, %esi
	movq	-24(%rbp), %rdi
	callq	face_boolean_x_resource_value
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %esi
	cmpl	$0, %esi
	jne	.LBB36_27
# BB#26:                                # %if.then.75
	movq	-40(%rbp), %rax
	movq	%rax, -24(%rbp)
.LBB36_27:                              # %if.end.76
	jmp	.LBB36_32
.LBB36_28:                              # %if.else.77
	movl	$15, %edi
	movq	-16(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-152(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB36_30
# BB#29:                                # %lor.lhs.false.81
	movl	$67, %edi
	movq	-16(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-160(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB36_31
.LBB36_30:                              # %if.then.85
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	-176(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	Fread_from_string
	movq	%rax, %rdi
	callq	Fcar
	movq	%rax, -24(%rbp)
.LBB36_31:                              # %if.end.90
	jmp	.LBB36_32
.LBB36_32:                              # %if.end.91
	jmp	.LBB36_33
.LBB36_33:                              # %if.end.92
	jmp	.LBB36_34
.LBB36_34:                              # %if.end.93
	jmp	.LBB36_35
.LBB36_35:                              # %if.end.94
	jmp	.LBB36_36
.LBB36_36:                              # %if.end.95
	jmp	.LBB36_37
.LBB36_37:                              # %if.end.96
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	callq	Finternal_set_lisp_face_attribute
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end36:
	.size	Finternal_set_lisp_face_attribute_from_resource, .Lfunc_end36-Finternal_set_lisp_face_attribute_from_resource
	.cfi_endproc

	.align	16, 0x90
	.type	face_boolean_x_resource_value,@function
face_boolean_x_resource_value:          # @face_boolean_x_resource_value
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
	subq	$32, %rsp
	movb	%sil, %al
	movq	%rdi, -8(%rbp)
	andb	$1, %al
	movb	%al, -9(%rbp)
	movq	$2, -24(%rbp)
	movq	-8(%rbp), %rdi
	callq	SSDATA
	movabsq	$.L.str.47, %rsi
	movq	%rax, %rdi
	callq	xstrcasecmp
	cmpl	$0, %eax
	je	.LBB37_2
# BB#1:                                 # %lor.lhs.false
	movq	-8(%rbp), %rdi
	callq	SSDATA
	movabsq	$.L.str.48, %rsi
	movq	%rax, %rdi
	callq	xstrcasecmp
	cmpl	$0, %eax
	jne	.LBB37_3
.LBB37_2:                               # %if.then
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -24(%rbp)
	jmp	.LBB37_13
.LBB37_3:                               # %if.else
	movq	-8(%rbp), %rdi
	callq	SSDATA
	movabsq	$.L.str.49, %rsi
	movq	%rax, %rdi
	callq	xstrcasecmp
	cmpl	$0, %eax
	je	.LBB37_5
# BB#4:                                 # %lor.lhs.false.9
	movq	-8(%rbp), %rdi
	callq	SSDATA
	movabsq	$.L.str.50, %rsi
	movq	%rax, %rdi
	callq	xstrcasecmp
	cmpl	$0, %eax
	jne	.LBB37_6
.LBB37_5:                               # %if.then.13
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -24(%rbp)
	jmp	.LBB37_12
.LBB37_6:                               # %if.else.15
	movq	-8(%rbp), %rdi
	callq	SSDATA
	movabsq	$.L.str.22, %rsi
	movq	%rax, %rdi
	callq	xstrcasecmp
	cmpl	$0, %eax
	jne	.LBB37_8
# BB#7:                                 # %if.then.19
	movl	$975, %edi              # imm = 0x3CF
	callq	builtin_lisp_symbol
	movq	%rax, -24(%rbp)
	jmp	.LBB37_11
.LBB37_8:                               # %if.else.21
	testb	$1, -9(%rbp)
	je	.LBB37_10
# BB#9:                                 # %if.then.22
	movabsq	$.L.str.51, %rdi
	movq	-8(%rbp), %rsi
	callq	signal_error
.LBB37_10:                              # %if.end
	jmp	.LBB37_11
.LBB37_11:                              # %if.end.23
	jmp	.LBB37_12
.LBB37_12:                              # %if.end.24
	jmp	.LBB37_13
.LBB37_13:                              # %if.end.25
	movq	-24(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end37:
	.size	face_boolean_x_resource_value, .Lfunc_end37-face_boolean_x_resource_value
	.cfi_endproc

	.globl	Fface_attribute_relative_p
	.align	16, 0x90
	.type	Fface_attribute_relative_p,@function
Fface_attribute_relative_p:             # @Fface_attribute_relative_p
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp114:
	.cfi_def_cfa_offset 16
.Ltmp115:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp116:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movl	$975, %eax              # imm = 0x3CF
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rsi
	movl	%eax, %edi
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB38_2
# BB#1:                                 # %lor.lhs.false
	movl	$64, %edi
	movq	-24(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB38_3
.LBB38_2:                               # %if.then
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB38_9
.LBB38_3:                               # %if.else
	movl	$58, %edi
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB38_8
# BB#4:                                 # %if.then.6
	movq	-24(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB38_6
# BB#5:                                 # %cond.true
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -56(%rbp)         # 8-byte Spill
	jmp	.LBB38_7
.LBB38_6:                               # %cond.false
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -56(%rbp)         # 8-byte Spill
.LBB38_7:                               # %cond.end
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	%rax, -8(%rbp)
	jmp	.LBB38_9
.LBB38_8:                               # %if.else.12
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
.LBB38_9:                               # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end38:
	.size	Fface_attribute_relative_p, .Lfunc_end38-Fface_attribute_relative_p
	.cfi_endproc

	.globl	Fmerge_face_attribute
	.align	16, 0x90
	.type	Fmerge_face_attribute,@function
Fmerge_face_attribute:                  # @Fmerge_face_attribute
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp117:
	.cfi_def_cfa_offset 16
.Ltmp118:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp119:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movl	$975, %eax              # imm = 0x3CF
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-24(%rbp), %rdx
	movl	%eax, %edi
	movq	%rdx, -40(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rdx         # 8-byte Reload
	cmpq	%rax, %rdx
	je	.LBB39_2
# BB#1:                                 # %lor.lhs.false
	movl	$64, %edi
	movq	-24(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB39_3
.LBB39_2:                               # %if.then
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB39_6
.LBB39_3:                               # %if.else
	movl	$58, %edi
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-56(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB39_5
# BB#4:                                 # %if.then.5
	movq	-24(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	merge_face_heights
	movq	%rax, -8(%rbp)
	jmp	.LBB39_6
.LBB39_5:                               # %if.else.7
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB39_6:                               # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end39:
	.size	Fmerge_face_attribute, .Lfunc_end39-Fmerge_face_attribute
	.cfi_endproc

	.globl	Finternal_get_lisp_face_attribute
	.align	16, 0x90
	.type	Finternal_get_lisp_face_attribute,@function
Finternal_get_lisp_face_attribute:      # @Finternal_get_lisp_face_attribute
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp120:
	.cfi_def_cfa_offset 16
.Ltmp121:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp122:
	.cfi_def_cfa_register %rbp
	subq	$256, %rsp              # imm = 0x100
	movl	$901, %eax              # imm = 0x385
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-32(%rbp), %rdx
	movl	%eax, %edi
	movq	%rdx, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-64(%rbp), %rdx         # 8-byte Reload
	cmpq	%rax, %rdx
	jne	.LBB40_2
# BB#1:                                 # %cond.true
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	jmp	.LBB40_3
.LBB40_2:                               # %cond.false
	movq	-32(%rbp), %rdi
	callq	decode_live_frame
	movq	%rax, -72(%rbp)         # 8-byte Spill
.LBB40_3:                               # %cond.end
	movq	-72(%rbp), %rax         # 8-byte Reload
	movl	$1, %edx
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	lface_from_face_name
	xorl	%edi, %edi
	movq	%rax, -48(%rbp)
	callq	builtin_lisp_symbol
	movq	%rax, -56(%rbp)
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %edx
	cmpl	$0, %edx
	jne	.LBB40_5
# BB#4:                                 # %cond.true.6
	jmp	.LBB40_6
.LBB40_5:                               # %cond.false.7
	movl	$897, %edi              # imm = 0x381
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -80(%rbp)         # 8-byte Spill
.LBB40_6:                               # %cond.end.9
	movq	-24(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	.LBB40_8
# BB#7:                                 # %cond.true.14
	jmp	.LBB40_9
.LBB40_8:                               # %cond.false.15
	movl	$897, %edi              # imm = 0x381
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -88(%rbp)         # 8-byte Spill
.LBB40_9:                               # %cond.end.17
	movl	$40, %edi
	movq	-24(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-96(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB40_11
# BB#10:                                # %if.then
	movl	$1, %eax
	movl	%eax, %esi
	movq	-48(%rbp), %rdi
	callq	AREF
	movq	%rax, -56(%rbp)
	jmp	.LBB40_64
.LBB40_11:                              # %if.else
	movl	$48, %edi
	movq	-24(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-104(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB40_13
# BB#12:                                # %if.then.25
	movl	$2, %eax
	movl	%eax, %esi
	movq	-48(%rbp), %rdi
	callq	AREF
	movq	%rax, -56(%rbp)
	jmp	.LBB40_63
.LBB40_13:                              # %if.else.27
	movl	$58, %edi
	movq	-24(%rbp), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-112(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB40_15
# BB#14:                                # %if.then.31
	movl	$4, %eax
	movl	%eax, %esi
	movq	-48(%rbp), %rdi
	callq	AREF
	movq	%rax, -56(%rbp)
	jmp	.LBB40_62
.LBB40_15:                              # %if.else.33
	movl	$138, %edi
	movq	-24(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-120(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB40_17
# BB#16:                                # %if.then.37
	movl	$5, %eax
	movl	%eax, %esi
	movq	-48(%rbp), %rdi
	callq	AREF
	movq	%rax, -56(%rbp)
	jmp	.LBB40_61
.LBB40_17:                              # %if.else.39
	movl	$119, %edi
	movq	-24(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-128(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB40_19
# BB#18:                                # %if.then.43
	movl	$6, %eax
	movl	%eax, %esi
	movq	-48(%rbp), %rdi
	callq	AREF
	movq	%rax, -56(%rbp)
	jmp	.LBB40_60
.LBB40_19:                              # %if.else.45
	movl	$132, %edi
	movq	-24(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-136(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB40_21
# BB#20:                                # %if.then.49
	movl	$7, %eax
	movl	%eax, %esi
	movq	-48(%rbp), %rdi
	callq	AREF
	movq	%rax, -56(%rbp)
	jmp	.LBB40_59
.LBB40_21:                              # %if.else.51
	movl	$90, %edi
	movq	-24(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-144(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB40_23
# BB#22:                                # %if.then.55
	movl	$12, %eax
	movl	%eax, %esi
	movq	-48(%rbp), %rdi
	callq	AREF
	movq	%rax, -56(%rbp)
	jmp	.LBB40_58
.LBB40_23:                              # %if.else.57
	movl	$126, %edi
	movq	-24(%rbp), %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-152(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB40_25
# BB#24:                                # %if.then.61
	movl	$13, %eax
	movl	%eax, %esi
	movq	-48(%rbp), %rdi
	callq	AREF
	movq	%rax, -56(%rbp)
	jmp	.LBB40_57
.LBB40_25:                              # %if.else.63
	movl	$15, %edi
	movq	-24(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-160(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB40_27
# BB#26:                                # %if.then.67
	movl	$14, %eax
	movl	%eax, %esi
	movq	-48(%rbp), %rdi
	callq	AREF
	movq	%rax, -56(%rbp)
	jmp	.LBB40_56
.LBB40_27:                              # %if.else.69
	movl	$68, %edi
	movq	-24(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-168(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB40_29
# BB#28:                                # %lor.lhs.false
	movl	$109, %edi
	movq	-24(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-176(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB40_30
.LBB40_29:                              # %if.then.76
	movl	$8, %eax
	movl	%eax, %esi
	movq	-48(%rbp), %rdi
	callq	AREF
	movq	%rax, -56(%rbp)
	jmp	.LBB40_55
.LBB40_30:                              # %if.else.78
	movl	$47, %edi
	movq	-24(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-184(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB40_32
# BB#31:                                # %if.then.82
	movl	$9, %eax
	movl	%eax, %esi
	movq	-48(%rbp), %rdi
	callq	AREF
	movq	%rax, -56(%rbp)
	jmp	.LBB40_54
.LBB40_32:                              # %if.else.84
	movl	$33, %edi
	movq	-24(%rbp), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-192(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB40_34
# BB#33:                                # %if.then.88
	movl	$18, %eax
	movl	%eax, %esi
	movq	-48(%rbp), %rdi
	callq	AREF
	movq	%rax, -56(%rbp)
	jmp	.LBB40_53
.LBB40_34:                              # %if.else.90
	movl	$13, %edi
	movq	-24(%rbp), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-200(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB40_36
# BB#35:                                # %if.then.94
	movl	$10, %eax
	movl	%eax, %esi
	movq	-48(%rbp), %rdi
	callq	AREF
	movq	%rax, -56(%rbp)
	jmp	.LBB40_52
.LBB40_36:                              # %if.else.96
	movl	$123, %edi
	movq	-24(%rbp), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-208(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB40_38
# BB#37:                                # %if.then.100
	movl	$11, %eax
	movl	%eax, %esi
	movq	-48(%rbp), %rdi
	callq	AREF
	movq	%rax, -56(%rbp)
	jmp	.LBB40_51
.LBB40_38:                              # %if.else.102
	movl	$139, %edi
	movq	-24(%rbp), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-216(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB40_40
# BB#39:                                # %if.then.106
	movl	$3, %eax
	movl	%eax, %esi
	movq	-48(%rbp), %rdi
	callq	AREF
	movq	%rax, -56(%rbp)
	jmp	.LBB40_50
.LBB40_40:                              # %if.else.108
	movl	$67, %edi
	movq	-24(%rbp), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-224(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB40_42
# BB#41:                                # %if.then.112
	movl	$16, %eax
	movl	%eax, %esi
	movq	-48(%rbp), %rdi
	callq	AREF
	movq	%rax, -56(%rbp)
	jmp	.LBB40_49
.LBB40_42:                              # %if.else.114
	movl	$44, %edi
	movq	-24(%rbp), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-232(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB40_44
# BB#43:                                # %if.then.118
	movl	$15, %eax
	movl	%eax, %esi
	movq	-48(%rbp), %rdi
	callq	AREF
	movq	%rax, -56(%rbp)
	jmp	.LBB40_48
.LBB40_44:                              # %if.else.120
	movl	$46, %edi
	movq	-24(%rbp), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-240(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB40_46
# BB#45:                                # %if.then.124
	movl	$17, %eax
	movl	%eax, %esi
	movq	-48(%rbp), %rdi
	callq	AREF
	movq	%rax, -56(%rbp)
	jmp	.LBB40_47
.LBB40_46:                              # %if.else.126
	movabsq	$.L.str.21, %rdi
	movq	-24(%rbp), %rsi
	callq	signal_error
.LBB40_47:                              # %if.end
	jmp	.LBB40_48
.LBB40_48:                              # %if.end.127
	jmp	.LBB40_49
.LBB40_49:                              # %if.end.128
	jmp	.LBB40_50
.LBB40_50:                              # %if.end.129
	jmp	.LBB40_51
.LBB40_51:                              # %if.end.130
	jmp	.LBB40_52
.LBB40_52:                              # %if.end.131
	jmp	.LBB40_53
.LBB40_53:                              # %if.end.132
	jmp	.LBB40_54
.LBB40_54:                              # %if.end.133
	jmp	.LBB40_55
.LBB40_55:                              # %if.end.134
	jmp	.LBB40_56
.LBB40_56:                              # %if.end.135
	jmp	.LBB40_57
.LBB40_57:                              # %if.end.136
	jmp	.LBB40_58
.LBB40_58:                              # %if.end.137
	jmp	.LBB40_59
.LBB40_59:                              # %if.end.138
	jmp	.LBB40_60
.LBB40_60:                              # %if.end.139
	jmp	.LBB40_61
.LBB40_61:                              # %if.end.140
	jmp	.LBB40_62
.LBB40_62:                              # %if.end.141
	jmp	.LBB40_63
.LBB40_63:                              # %if.end.142
	jmp	.LBB40_64
.LBB40_64:                              # %if.end.143
	movl	$64, %edi
	movq	-56(%rbp), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-248(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB40_66
# BB#65:                                # %if.then.147
	movl	$975, %edi              # imm = 0x3CF
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB40_67
.LBB40_66:                              # %if.end.149
	movq	-56(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB40_67:                              # %return
	movq	-8(%rbp), %rax
	addq	$256, %rsp              # imm = 0x100
	popq	%rbp
	retq
.Lfunc_end40:
	.size	Finternal_get_lisp_face_attribute, .Lfunc_end40-Finternal_get_lisp_face_attribute
	.cfi_endproc

	.globl	Finternal_lisp_face_attribute_values
	.align	16, 0x90
	.type	Finternal_lisp_face_attribute_values,@function
Finternal_lisp_face_attribute_values:   # @Finternal_lisp_face_attribute_values
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp123:
	.cfi_def_cfa_offset 16
.Ltmp124:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp125:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -16(%rbp)
	movq	-8(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %edi
	cmpl	$0, %edi
	jne	.LBB41_2
# BB#1:                                 # %cond.true
	jmp	.LBB41_3
.LBB41_2:                               # %cond.false
	movl	$897, %edi              # imm = 0x381
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -24(%rbp)         # 8-byte Spill
.LBB41_3:                               # %cond.end
	movl	$132, %edi
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB41_8
# BB#4:                                 # %lor.lhs.false
	movl	$90, %edi
	movq	-8(%rbp), %rax
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB41_8
# BB#5:                                 # %lor.lhs.false.9
	movl	$126, %edi
	movq	-8(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB41_8
# BB#6:                                 # %lor.lhs.false.13
	movl	$68, %edi
	movq	-8(%rbp), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-56(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB41_8
# BB#7:                                 # %lor.lhs.false.17
	movl	$109, %edi
	movq	-8(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-64(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB41_9
.LBB41_8:                               # %if.then
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	list2
	movq	%rax, -16(%rbp)
.LBB41_9:                               # %if.end
	movq	-16(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end41:
	.size	Finternal_lisp_face_attribute_values, .Lfunc_end41-Finternal_lisp_face_attribute_values
	.cfi_endproc

	.globl	Finternal_merge_in_global_face
	.align	16, 0x90
	.type	Finternal_merge_in_global_face,@function
Finternal_merge_in_global_face:         # @Finternal_merge_in_global_face
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp126:
	.cfi_def_cfa_offset 16
.Ltmp127:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp128:
	.cfi_def_cfa_register %rbp
	subq	$560, %rsp              # imm = 0x230
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	subq	$5, %rsi
	movq	%rsi, -64(%rbp)
	movq	-16(%rbp), %rdi
	callq	FRAMEP
	testb	$1, %al
	jne	.LBB42_1
	jmp	.LBB42_3
.LBB42_1:                               # %land.lhs.true
	movq	-16(%rbp), %rax
	subq	$5, %rax
	cmpq	$0, 376(%rax)
	je	.LBB42_3
# BB#2:                                 # %cond.true
	jmp	.LBB42_4
.LBB42_3:                               # %cond.false
	movl	$458, %edi              # imm = 0x1CA
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -376(%rbp)        # 8-byte Spill
.LBB42_4:                               # %cond.end
	xorl	%eax, %eax
	movl	%eax, %edi
	movl	$1, %edx
	movq	-8(%rbp), %rsi
	callq	lface_from_face_name
	xorl	%edx, %edx
	movq	%rax, -32(%rbp)
	movq	-64(%rbp), %rdi
	movq	-8(%rbp), %rsi
	callq	lface_from_face_name
	xorl	%edi, %edi
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -384(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-384(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB42_6
# BB#5:                                 # %if.then
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	Finternal_make_lisp_face
	movq	%rax, -40(%rbp)
.LBB42_6:                               # %if.end
	movq	-40(%rbp), %rdi
	callq	XVECTOR
	addq	$8, %rax
	movq	%rax, -56(%rbp)
	movq	-32(%rbp), %rdi
	callq	XVECTOR
	addq	$8, %rax
	movq	%rax, -48(%rbp)
	movl	$1, -20(%rbp)
.LBB42_7:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$19, -20(%rbp)
	jge	.LBB42_15
# BB#8:                                 # %for.body
                                        #   in Loop: Header=BB42_7 Depth=1
	movl	$64, %edi
	movslq	-20(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -392(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-392(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB42_10
# BB#9:                                 # %if.then.15
                                        #   in Loop: Header=BB42_7 Depth=1
	movl	$975, %edi              # imm = 0x3CF
	movq	-40(%rbp), %rax
	movslq	-20(%rbp), %rsi
	movq	%rsi, -400(%rbp)        # 8-byte Spill
	movq	%rax, -408(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-408(%rbp), %rdi        # 8-byte Reload
	movq	-400(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	ASET
	jmp	.LBB42_13
.LBB42_10:                              # %if.else
                                        #   in Loop: Header=BB42_7 Depth=1
	movl	$975, %edi              # imm = 0x3CF
	movslq	-20(%rbp), %rax
	movq	-48(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -416(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-416(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB42_12
# BB#11:                                # %if.then.22
                                        #   in Loop: Header=BB42_7 Depth=1
	movq	-40(%rbp), %rdi
	movslq	-20(%rbp), %rsi
	movq	-32(%rbp), %rax
	movslq	-20(%rbp), %rcx
	movq	%rdi, -424(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -432(%rbp)        # 8-byte Spill
	movq	%rcx, %rsi
	callq	AREF
	movq	-424(%rbp), %rdi        # 8-byte Reload
	movq	-432(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	ASET
.LBB42_12:                              # %if.end.26
                                        #   in Loop: Header=BB42_7 Depth=1
	jmp	.LBB42_13
.LBB42_13:                              # %if.end.27
                                        #   in Loop: Header=BB42_7 Depth=1
	jmp	.LBB42_14
.LBB42_14:                              # %for.inc
                                        #   in Loop: Header=BB42_7 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB42_7
.LBB42_15:                              # %for.end
	movl	$324, %edi              # imm = 0x144
	movq	-8(%rbp), %rax
	movq	%rax, -440(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-440(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB42_37
# BB#16:                                # %if.then.31
	movb	$1, %al
	movq	-64(%rbp), %rcx
	movq	160(%rcx), %rcx
	movq	%rcx, -72(%rbp)
	testb	$1, %al
	jne	.LBB42_17
	jmp	.LBB42_18
.LBB42_17:                              # %cond.true.32
	xorl	%eax, %eax
	movq	-64(%rbp), %rcx
	movq	160(%rcx), %rcx
	movl	32(%rcx), %edx
	addl	$0, %edx
	cmpl	%edx, %eax
	jb	.LBB42_19
	jmp	.LBB42_20
.LBB42_18:                              # %cond.false.36
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-64(%rbp), %rdx
	movq	160(%rdx), %rdx
	movslq	32(%rdx), %rdx
	addq	$0, %rdx
	cmpq	%rdx, %rcx
	jae	.LBB42_20
.LBB42_19:                              # %cond.true.43
	movq	-64(%rbp), %rax
	movq	160(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -448(%rbp)        # 8-byte Spill
	jmp	.LBB42_21
.LBB42_20:                              # %cond.false.46
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -448(%rbp)        # 8-byte Spill
	jmp	.LBB42_21
.LBB42_21:                              # %cond.end.47
	movq	-448(%rbp), %rax        # 8-byte Reload
	movq	%rax, -88(%rbp)
	cmpq	$0, -88(%rbp)
	je	.LBB42_36
# BB#22:                                # %if.then.48
	xorl	%eax, %eax
	movl	%eax, %ecx
	leaq	-240(%rbp), %rdx
	movl	$152, %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	movq	-88(%rbp), %r8
	movq	%rsi, -456(%rbp)        # 8-byte Spill
	movq	%r8, %rsi
	movq	-456(%rbp), %r8         # 8-byte Reload
	movq	%rdx, -464(%rbp)        # 8-byte Spill
	movq	%r8, %rdx
	movq	%rcx, -472(%rbp)        # 8-byte Spill
	callq	memcpy
	movq	-64(%rbp), %rdi
	movq	-56(%rbp), %rsi
	movq	-464(%rbp), %rdx        # 8-byte Reload
	movq	-472(%rbp), %rcx        # 8-byte Reload
	callq	merge_face_vectors
	xorl	%eax, %eax
	movl	%eax, %esi
	movl	$19, %eax
	movl	%eax, %ecx
	leaq	-240(%rbp), %rdx
	movq	-40(%rbp), %rdi
	callq	vcopy
	xorl	%edx, %edx
	movq	-72(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	realize_face
	movl	$975, %edi              # imm = 0x3CF
	movq	%rax, -80(%rbp)
	movq	-48(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -480(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-480(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB42_29
# BB#23:                                # %lor.lhs.false
	movl	$975, %edi              # imm = 0x3CF
	movq	-48(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -488(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-488(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB42_29
# BB#24:                                # %lor.lhs.false.60
	movl	$975, %edi              # imm = 0x3CF
	movq	-48(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -496(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-496(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB42_29
# BB#25:                                # %lor.lhs.false.65
	movl	$975, %edi              # imm = 0x3CF
	movq	-48(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -504(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-504(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB42_29
# BB#26:                                # %lor.lhs.false.70
	movl	$975, %edi              # imm = 0x3CF
	movq	-48(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -512(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-512(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB42_29
# BB#27:                                # %lor.lhs.false.75
	movl	$975, %edi              # imm = 0x3CF
	movq	-48(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -520(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-520(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB42_29
# BB#28:                                # %lor.lhs.false.80
	movl	$975, %edi              # imm = 0x3CF
	movq	-48(%rbp), %rax
	movq	120(%rax), %rax
	movq	%rax, -528(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-528(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB42_31
.LBB42_29:                              # %land.lhs.true.85
	movq	-80(%rbp), %rax
	cmpq	$0, 224(%rax)
	je	.LBB42_31
# BB#30:                                # %if.then.87
	movl	$439, %edi              # imm = 0x1B7
	movq	-80(%rbp), %rax
	movq	224(%rax), %rax
	movq	120(%rax), %rax
	movq	%rax, -248(%rbp)
	callq	builtin_lisp_symbol
	movl	$3, %esi
	leaq	-288(%rbp), %rcx
	movq	%rax, -288(%rbp)
	movq	-248(%rbp), %rax
	movq	%rax, -280(%rbp)
	movq	%rcx, %rdi
	callq	make_lisp_ptr
	xorl	%edi, %edi
	movq	%rax, -272(%rbp)
	callq	builtin_lisp_symbol
	movl	$3, %esi
	leaq	-272(%rbp), %rcx
	movq	%rax, -264(%rbp)
	movq	%rcx, %rdi
	callq	make_lisp_ptr
	movq	%rax, -256(%rbp)
	movq	-16(%rbp), %rdi
	movq	-256(%rbp), %rsi
	callq	Fmodify_frame_parameters
	movq	%rax, -536(%rbp)        # 8-byte Spill
.LBB42_31:                              # %if.end.102
	movq	-48(%rbp), %rax
	movq	72(%rax), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB42_32
	jmp	.LBB42_33
.LBB42_32:                              # %if.then.105
	movl	$451, %edi              # imm = 0x1C3
	callq	builtin_lisp_symbol
	movl	$3, %esi
	leaq	-328(%rbp), %rcx
	movq	%rax, -328(%rbp)
	movq	-48(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, -320(%rbp)
	movq	%rcx, %rdi
	callq	make_lisp_ptr
	xorl	%edi, %edi
	movq	%rax, -312(%rbp)
	callq	builtin_lisp_symbol
	movl	$3, %esi
	leaq	-312(%rbp), %rcx
	movq	%rax, -304(%rbp)
	movq	%rcx, %rdi
	callq	make_lisp_ptr
	movq	%rax, -296(%rbp)
	movq	-16(%rbp), %rdi
	movq	-296(%rbp), %rsi
	callq	Fmodify_frame_parameters
	movq	%rax, -544(%rbp)        # 8-byte Spill
.LBB42_33:                              # %if.end.125
	movq	-48(%rbp), %rax
	movq	80(%rax), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB42_34
	jmp	.LBB42_35
.LBB42_34:                              # %if.then.128
	movl	$193, %edi
	callq	builtin_lisp_symbol
	movl	$3, %esi
	leaq	-368(%rbp), %rcx
	movq	%rax, -368(%rbp)
	movq	-48(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rax, -360(%rbp)
	movq	%rcx, %rdi
	callq	make_lisp_ptr
	xorl	%edi, %edi
	movq	%rax, -352(%rbp)
	callq	builtin_lisp_symbol
	movl	$3, %esi
	leaq	-352(%rbp), %rcx
	movq	%rax, -344(%rbp)
	movq	%rcx, %rdi
	callq	make_lisp_ptr
	movq	%rax, -336(%rbp)
	movq	-16(%rbp), %rdi
	movq	-336(%rbp), %rsi
	callq	Fmodify_frame_parameters
	movq	%rax, -552(%rbp)        # 8-byte Spill
.LBB42_35:                              # %if.end.148
	jmp	.LBB42_36
.LBB42_36:                              # %if.end.149
	jmp	.LBB42_37
.LBB42_37:                              # %if.end.150
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	addq	$560, %rsp              # imm = 0x230
	popq	%rbp
	retq
.Lfunc_end42:
	.size	Finternal_merge_in_global_face, .Lfunc_end42-Finternal_merge_in_global_face
	.cfi_endproc

	.align	16, 0x90
	.type	merge_face_vectors,@function
merge_face_vectors:                     # @merge_face_vectors
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp129:
	.cfi_def_cfa_offset 16
.Ltmp130:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp131:
	.cfi_def_cfa_register %rbp
	subq	$176, %rsp
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	movl	$975, %edi              # imm = 0x3CF
	movq	%rax, -48(%rbp)
	movq	-16(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-56(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB43_3
# BB#1:                                 # %land.lhs.true
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	128(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-64(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB43_3
# BB#2:                                 # %if.then
	xorl	%ecx, %ecx
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	128(%rax), %rsi
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %r8
	callq	merge_face_ref
	movb	%al, -65(%rbp)          # 1-byte Spill
.LBB43_3:                               # %if.end
	movq	-16(%rbp), %rax
	movq	120(%rax), %rdi
	callq	FONT_SPEC_P
	testb	$1, %al
	jne	.LBB43_4
	jmp	.LBB43_8
.LBB43_4:                               # %if.then.9
	movl	$975, %edi              # imm = 0x3CF
	movq	-24(%rbp), %rax
	movq	120(%rax), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-80(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB43_6
# BB#5:                                 # %if.then.13
	movq	-16(%rbp), %rax
	movq	120(%rax), %rdi
	movq	-24(%rbp), %rax
	movq	120(%rax), %rsi
	callq	merge_font_spec
	movq	%rax, -48(%rbp)
	jmp	.LBB43_7
.LBB43_6:                               # %if.else
	movq	-16(%rbp), %rax
	movq	120(%rax), %rdi
	callq	copy_font_spec
	movq	%rax, -48(%rbp)
.LBB43_7:                               # %if.end.19
	movq	-48(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, 120(%rcx)
.LBB43_8:                               # %if.end.21
	movl	$1, -36(%rbp)
.LBB43_9:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$19, -36(%rbp)
	jge	.LBB43_36
# BB#10:                                # %for.body
                                        #   in Loop: Header=BB43_9 Depth=1
	movl	$975, %edi              # imm = 0x3CF
	movslq	-36(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-88(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB43_34
# BB#11:                                # %if.then.26
                                        #   in Loop: Header=BB43_9 Depth=1
	cmpl	$4, -36(%rbp)
	jne	.LBB43_14
# BB#12:                                # %land.lhs.true.28
                                        #   in Loop: Header=BB43_9 Depth=1
	movslq	-36(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	andq	$7, %rax
	movl	%eax, %edx
	andl	$-5, %edx
	cmpl	$2, %edx
	je	.LBB43_14
# BB#13:                                # %if.then.34
                                        #   in Loop: Header=BB43_9 Depth=1
	movslq	-36(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdi
	movslq	-36(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	(%rcx,%rax,8), %rsi
	movslq	-36(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdx
	callq	merge_face_heights
	movl	$8, %esi
	movslq	-36(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	%rax, (%rdx,%rcx,8)
	movq	-24(%rbp), %rdi
	callq	font_clear_prop
	jmp	.LBB43_33
.LBB43_14:                              # %if.else.44
                                        #   in Loop: Header=BB43_9 Depth=1
	cmpl	$15, -36(%rbp)
	je	.LBB43_32
# BB#15:                                # %land.lhs.true.47
                                        #   in Loop: Header=BB43_9 Depth=1
	movslq	-36(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movslq	-36(%rbp), %rcx
	movq	-16(%rbp), %rdx
	cmpq	(%rdx,%rcx,8), %rax
	je	.LBB43_32
# BB#16:                                # %if.then.54
                                        #   in Loop: Header=BB43_9 Depth=1
	movslq	-36(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movslq	-36(%rbp), %rcx
	movq	-24(%rbp), %rdx
	movq	%rax, (%rdx,%rcx,8)
	cmpl	$1, -36(%rbp)
	jl	.LBB43_31
# BB#17:                                # %land.lhs.true.61
                                        #   in Loop: Header=BB43_9 Depth=1
	cmpl	$6, -36(%rbp)
	jg	.LBB43_31
# BB#18:                                # %if.then.64
                                        #   in Loop: Header=BB43_9 Depth=1
	movq	-24(%rbp), %rdi
	cmpl	$1, -36(%rbp)
	movq	%rdi, -96(%rbp)         # 8-byte Spill
	jne	.LBB43_20
# BB#19:                                # %cond.true
                                        #   in Loop: Header=BB43_9 Depth=1
	movl	$2, %eax
	movl	%eax, -100(%rbp)        # 4-byte Spill
	jmp	.LBB43_30
.LBB43_20:                              # %cond.false
                                        #   in Loop: Header=BB43_9 Depth=1
	cmpl	$2, -36(%rbp)
	jne	.LBB43_22
# BB#21:                                # %cond.true.69
                                        #   in Loop: Header=BB43_9 Depth=1
	movl	$1, %eax
	movl	%eax, -104(%rbp)        # 4-byte Spill
	jmp	.LBB43_29
.LBB43_22:                              # %cond.false.70
                                        #   in Loop: Header=BB43_9 Depth=1
	cmpl	$3, -36(%rbp)
	jne	.LBB43_24
# BB#23:                                # %cond.true.73
                                        #   in Loop: Header=BB43_9 Depth=1
	movl	$7, %eax
	movl	%eax, -108(%rbp)        # 4-byte Spill
	jmp	.LBB43_28
.LBB43_24:                              # %cond.false.74
                                        #   in Loop: Header=BB43_9 Depth=1
	cmpl	$4, -36(%rbp)
	jne	.LBB43_26
# BB#25:                                # %cond.true.77
                                        #   in Loop: Header=BB43_9 Depth=1
	movl	$8, %eax
	movl	%eax, -112(%rbp)        # 4-byte Spill
	jmp	.LBB43_27
.LBB43_26:                              # %cond.false.78
                                        #   in Loop: Header=BB43_9 Depth=1
	movl	$6, %eax
	movl	$5, %ecx
	cmpl	$5, -36(%rbp)
	cmovel	%ecx, %eax
	movl	%eax, -112(%rbp)        # 4-byte Spill
.LBB43_27:                              # %cond.end
                                        #   in Loop: Header=BB43_9 Depth=1
	movl	-112(%rbp), %eax        # 4-byte Reload
	movl	%eax, -108(%rbp)        # 4-byte Spill
.LBB43_28:                              # %cond.end.82
                                        #   in Loop: Header=BB43_9 Depth=1
	movl	-108(%rbp), %eax        # 4-byte Reload
	movl	%eax, -104(%rbp)        # 4-byte Spill
.LBB43_29:                              # %cond.end.84
                                        #   in Loop: Header=BB43_9 Depth=1
	movl	-104(%rbp), %eax        # 4-byte Reload
	movl	%eax, -100(%rbp)        # 4-byte Spill
.LBB43_30:                              # %cond.end.86
                                        #   in Loop: Header=BB43_9 Depth=1
	movl	-100(%rbp), %eax        # 4-byte Reload
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movl	%eax, %esi
	callq	font_clear_prop
.LBB43_31:                              # %if.end.88
                                        #   in Loop: Header=BB43_9 Depth=1
	jmp	.LBB43_32
.LBB43_32:                              # %if.end.89
                                        #   in Loop: Header=BB43_9 Depth=1
	jmp	.LBB43_33
.LBB43_33:                              # %if.end.90
                                        #   in Loop: Header=BB43_9 Depth=1
	jmp	.LBB43_34
.LBB43_34:                              # %if.end.91
                                        #   in Loop: Header=BB43_9 Depth=1
	jmp	.LBB43_35
.LBB43_35:                              # %for.inc
                                        #   in Loop: Header=BB43_9 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB43_9
.LBB43_36:                              # %for.end
	xorl	%edi, %edi
	movq	-48(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-120(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB43_48
# BB#37:                                # %if.then.95
	movl	$1, %eax
	movl	%eax, %esi
	movq	-48(%rbp), %rdi
	callq	AREF
	xorl	%edi, %edi
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-128(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB43_39
# BB#38:                                # %if.then.100
	movl	$1, %eax
	movl	%eax, %esi
	movq	-48(%rbp), %rdi
	callq	AREF
	movq	%rax, %rdi
	callq	SYMBOL_NAME
	movq	-24(%rbp), %rsi
	movq	%rax, 16(%rsi)
.LBB43_39:                              # %if.end.104
	movl	$2, %eax
	movl	%eax, %esi
	movq	-48(%rbp), %rdi
	callq	AREF
	xorl	%edi, %edi
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-136(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB43_41
# BB#40:                                # %if.then.109
	movl	$2, %eax
	movl	%eax, %esi
	movq	-48(%rbp), %rdi
	callq	AREF
	movq	%rax, %rdi
	callq	SYMBOL_NAME
	movq	-24(%rbp), %rsi
	movq	%rax, 8(%rsi)
.LBB43_41:                              # %if.end.113
	movl	$5, %eax
	movl	%eax, %esi
	movq	-48(%rbp), %rdi
	callq	AREF
	xorl	%edi, %edi
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-144(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB43_43
# BB#42:                                # %if.then.118
	movl	$5, %esi
	movl	$1, %edx
	movq	-48(%rbp), %rdi
	callq	font_style_symbolic
	movq	-24(%rbp), %rdi
	movq	%rax, 40(%rdi)
.LBB43_43:                              # %if.end.121
	movl	$6, %eax
	movl	%eax, %esi
	movq	-48(%rbp), %rdi
	callq	AREF
	xorl	%edi, %edi
	movq	%rax, -152(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-152(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB43_45
# BB#44:                                # %if.then.126
	movl	$6, %esi
	movl	$1, %edx
	movq	-48(%rbp), %rdi
	callq	font_style_symbolic
	movq	-24(%rbp), %rdi
	movq	%rax, 48(%rdi)
.LBB43_45:                              # %if.end.129
	movl	$7, %eax
	movl	%eax, %esi
	movq	-48(%rbp), %rdi
	callq	AREF
	xorl	%edi, %edi
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-160(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB43_47
# BB#46:                                # %if.then.134
	movl	$7, %esi
	movl	$1, %edx
	movq	-48(%rbp), %rdi
	callq	font_style_symbolic
	movq	-24(%rbp), %rdi
	movq	%rax, 24(%rdi)
.LBB43_47:                              # %if.end.137
	xorl	%edi, %edi
	movq	-48(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$8, %edi
	movl	%edi, %esi
	movq	-168(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	ASET
.LBB43_48:                              # %if.end.139
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rcx
	movq	%rax, 128(%rcx)
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end43:
	.size	merge_face_vectors, .Lfunc_end43-merge_face_vectors
	.cfi_endproc

	.align	16, 0x90
	.type	realize_face,@function
realize_face:                           # @realize_face
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp132:
	.cfi_def_cfa_offset 16
.Ltmp133:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp134:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	cmpl	$0, -20(%rbp)
	jl	.LBB44_3
# BB#1:                                 # %land.lhs.true
	movq	-8(%rbp), %rax
	movl	32(%rax), %ecx
	cmpl	-20(%rbp), %ecx
	jle	.LBB44_3
# BB#2:                                 # %if.then
	movslq	-20(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	16(%rcx), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	uncache_face
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdi
	movq	-40(%rbp), %rsi
	callq	free_realized_face
	movb	$1, frame_garbaged
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdi
	callq	fset_redisplay
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	208(%rax), %rcx
	andq	$-8193, %rcx            # imm = 0xFFFFFFFFFFFFDFFF
	orq	$8192, %rcx             # imm = 0x2000
	movq	%rcx, 208(%rax)
.LBB44_3:                               # %if.end
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$2, %ecx
	jne	.LBB44_5
# BB#4:                                 # %if.then.8
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	realize_x_face
	movq	%rax, -32(%rbp)
	jmp	.LBB44_12
.LBB44_5:                               # %if.else
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$1, %ecx
	jne	.LBB44_7
# BB#6:                                 # %if.then.16
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	realize_tty_face
	movq	%rax, -32(%rbp)
	jmp	.LBB44_11
.LBB44_7:                               # %if.else.18
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	.LBB44_9
# BB#8:                                 # %if.then.26
	movq	-16(%rbp), %rdi
	callq	make_realized_face
	movq	%rax, -32(%rbp)
	jmp	.LBB44_10
.LBB44_9:                               # %if.else.28
	callq	emacs_abort
.LBB44_10:                              # %if.end.29
	jmp	.LBB44_11
.LBB44_11:                              # %if.end.30
	jmp	.LBB44_12
.LBB44_12:                              # %if.end.31
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	callq	lface_hash
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movl	%eax, %edx
	callq	cache_face
	movq	-32(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end44:
	.size	realize_face, .Lfunc_end44-realize_face
	.cfi_endproc

	.globl	Fface_font
	.align	16, 0x90
	.type	Fface_font,@function
Fface_font:                             # @Fface_font
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp135:
	.cfi_def_cfa_offset 16
.Ltmp136:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp137:
	.cfi_def_cfa_register %rbp
	subq	$176, %rsp
	movl	$901, %eax              # imm = 0x385
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-24(%rbp), %rdx
	movl	%eax, %edi
	movq	%rdx, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-80(%rbp), %rdx         # 8-byte Reload
	cmpq	%rax, %rdx
	jne	.LBB45_8
# BB#1:                                 # %if.then
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
                                        # kill: RDI<def> EDI<kill>
	movl	$1, %edx
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rsi
	callq	lface_from_face_name
	movl	$5, %edx
	movl	%edx, %esi
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	AREF
	movl	$975, %edi              # imm = 0x3CF
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-88(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB45_4
# BB#2:                                 # %land.lhs.true
	movl	$5, %eax
	movl	%eax, %esi
	movq	-48(%rbp), %rdi
	callq	AREF
	movl	$707, %edi              # imm = 0x2C3
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-96(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB45_4
# BB#3:                                 # %if.then.9
	movl	$205, %edi
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	Fcons
	movq	%rax, -40(%rbp)
.LBB45_4:                               # %if.end
	movl	$6, %eax
	movl	%eax, %esi
	movq	-48(%rbp), %rdi
	callq	AREF
	movl	$975, %edi              # imm = 0x3CF
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-104(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB45_7
# BB#5:                                 # %land.lhs.true.15
	movl	$6, %eax
	movl	%eax, %esi
	movq	-48(%rbp), %rdi
	callq	AREF
	movl	$707, %edi              # imm = 0x2C3
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-112(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB45_7
# BB#6:                                 # %if.then.19
	movl	$582, %edi              # imm = 0x246
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	Fcons
	movq	%rax, -40(%rbp)
.LBB45_7:                               # %if.end.22
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	.LBB45_31
.LBB45_8:                               # %if.else
	movq	-24(%rbp), %rdi
	callq	decode_live_frame
	movl	$1, %edx
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	lookup_named_face
	movb	$1, %cl
	movl	%eax, -60(%rbp)
	testb	$1, %cl
	jne	.LBB45_9
	jmp	.LBB45_10
.LBB45_9:                               # %cond.true
	movl	-60(%rbp), %eax
	addl	$0, %eax
	movq	-56(%rbp), %rcx
	movq	160(%rcx), %rcx
	movl	32(%rcx), %edx
	addl	$0, %edx
	cmpl	%edx, %eax
	jb	.LBB45_11
	jmp	.LBB45_12
.LBB45_10:                              # %cond.false
	movslq	-60(%rbp), %rax
	addq	$0, %rax
	movq	-56(%rbp), %rcx
	movq	160(%rcx), %rcx
	movslq	32(%rcx), %rcx
	addq	$0, %rcx
	cmpq	%rcx, %rax
	jae	.LBB45_12
.LBB45_11:                              # %cond.true.34
	movslq	-60(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	160(%rcx), %rcx
	movq	16(%rcx), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	jmp	.LBB45_13
.LBB45_12:                              # %cond.false.36
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -120(%rbp)        # 8-byte Spill
	jmp	.LBB45_13
.LBB45_13:                              # %cond.end
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	%rax, -72(%rbp)
	cmpq	$0, -72(%rbp)
	jne	.LBB45_15
# BB#14:                                # %if.then.37
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB45_31
.LBB45_15:                              # %if.end.39
	movq	-56(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$2, %ecx
	jne	.LBB45_27
# BB#16:                                # %land.lhs.true.42
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-128(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB45_27
# BB#17:                                # %if.then.46
	movq	-32(%rbp), %rdi
	callq	NATNUMP
	testb	$1, %al
	jne	.LBB45_18
	jmp	.LBB45_20
.LBB45_18:                              # %land.lhs.true.49
	movq	-32(%rbp), %rax
	sarq	$2, %rax
	cmpq	$4194303, %rax          # imm = 0x3FFFFF
	jg	.LBB45_20
# BB#19:                                # %cond.true.52
	jmp	.LBB45_21
.LBB45_20:                              # %cond.false.53
	movl	$260, %edi              # imm = 0x104
	callq	builtin_lisp_symbol
	movq	-32(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -136(%rbp)        # 8-byte Spill
.LBB45_21:                              # %cond.end.55
	xorl	%edi, %edi
	movq	-56(%rbp), %rax
	movq	-72(%rbp), %rsi
	movq	-32(%rbp), %rcx
	sarq	$2, %rcx
	movl	%ecx, %edx
	movl	%edx, -140(%rbp)        # 4-byte Spill
	movq	%rax, -152(%rbp)        # 8-byte Spill
	movq	%rsi, -160(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	$-1, %rcx
	movq	-152(%rbp), %rdi        # 8-byte Reload
	movq	-160(%rbp), %rsi        # 8-byte Reload
	movl	-140(%rbp), %edx        # 4-byte Reload
	movq	%rax, %r8
	callq	face_for_char
	movb	$1, %r9b
	movl	%eax, -60(%rbp)
	testb	$1, %r9b
	jne	.LBB45_22
	jmp	.LBB45_23
.LBB45_22:                              # %cond.true.60
	movl	-60(%rbp), %eax
	addl	$0, %eax
	movq	-56(%rbp), %rcx
	movq	160(%rcx), %rcx
	movl	32(%rcx), %edx
	addl	$0, %edx
	cmpl	%edx, %eax
	jb	.LBB45_24
	jmp	.LBB45_25
.LBB45_23:                              # %cond.false.67
	movslq	-60(%rbp), %rax
	addq	$0, %rax
	movq	-56(%rbp), %rcx
	movq	160(%rcx), %rcx
	movslq	32(%rcx), %rcx
	addq	$0, %rcx
	cmpq	%rcx, %rax
	jae	.LBB45_25
.LBB45_24:                              # %cond.true.76
	movslq	-60(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	160(%rcx), %rcx
	movq	16(%rcx), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	jmp	.LBB45_26
.LBB45_25:                              # %cond.false.81
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -168(%rbp)        # 8-byte Spill
	jmp	.LBB45_26
.LBB45_26:                              # %cond.end.82
	movq	-168(%rbp), %rax        # 8-byte Reload
	movq	%rax, -72(%rbp)
.LBB45_27:                              # %if.end.84
	movq	-72(%rbp), %rax
	cmpq	$0, 224(%rax)
	je	.LBB45_29
# BB#28:                                # %cond.true.86
	movq	-72(%rbp), %rax
	movq	224(%rax), %rax
	movq	120(%rax), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	jmp	.LBB45_30
.LBB45_29:                              # %cond.false.89
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -176(%rbp)        # 8-byte Spill
.LBB45_30:                              # %cond.end.91
	movq	-176(%rbp), %rax        # 8-byte Reload
	movq	%rax, -8(%rbp)
.LBB45_31:                              # %return
	movq	-8(%rbp), %rax
	addq	$176, %rsp
	popq	%rbp
	retq
.Lfunc_end45:
	.size	Fface_font, .Lfunc_end45-Fface_font
	.cfi_endproc

	.globl	Finternal_lisp_face_equal_p
	.align	16, 0x90
	.type	Finternal_lisp_face_equal_p,@function
Finternal_lisp_face_equal_p:            # @Finternal_lisp_face_equal_p
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp138:
	.cfi_def_cfa_offset 16
.Ltmp139:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp140:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movl	$901, %eax              # imm = 0x385
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movl	%eax, %edi
	movq	%rdx, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-64(%rbp), %rdx         # 8-byte Reload
	cmpq	%rax, %rdx
	jne	.LBB46_2
# BB#1:                                 # %cond.true
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	jmp	.LBB46_3
.LBB46_2:                               # %cond.false
	movq	-24(%rbp), %rdi
	callq	decode_live_frame
	movq	%rax, -72(%rbp)         # 8-byte Spill
.LBB46_3:                               # %cond.end
	movq	-72(%rbp), %rax         # 8-byte Reload
	movl	$1, %edx
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	movq	-8(%rbp), %rsi
	callq	lface_from_face_name
	movl	$1, %edx
	movq	%rax, -48(%rbp)
	movq	-40(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	lface_from_face_name
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rdi
	callq	XVECTOR
	addq	$8, %rax
	movq	-56(%rbp), %rdi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	XVECTOR
	addq	$8, %rax
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	lface_equal_p
	andb	$1, %al
	movb	%al, -25(%rbp)
	testb	$1, -25(%rbp)
	je	.LBB46_5
# BB#4:                                 # %cond.true.9
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -88(%rbp)         # 8-byte Spill
	jmp	.LBB46_6
.LBB46_5:                               # %cond.false.11
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -88(%rbp)         # 8-byte Spill
.LBB46_6:                               # %cond.end.13
	movq	-88(%rbp), %rax         # 8-byte Reload
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end46:
	.size	Finternal_lisp_face_equal_p, .Lfunc_end46-Finternal_lisp_face_equal_p
	.cfi_endproc

	.align	16, 0x90
	.type	lface_equal_p,@function
lface_equal_p:                          # @lface_equal_p
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp141:
	.cfi_def_cfa_offset 16
.Ltmp142:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp143:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movb	$1, -21(%rbp)
	movl	$1, -20(%rbp)
.LBB47_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$19, -20(%rbp)
	movb	%cl, -22(%rbp)          # 1-byte Spill
	jge	.LBB47_3
# BB#2:                                 # %land.rhs
                                        #   in Loop: Header=BB47_1 Depth=1
	movb	-21(%rbp), %al
	movb	%al, -22(%rbp)          # 1-byte Spill
.LBB47_3:                               # %land.end
                                        #   in Loop: Header=BB47_1 Depth=1
	movb	-22(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB47_4
	jmp	.LBB47_6
.LBB47_4:                               # %for.body
                                        #   in Loop: Header=BB47_1 Depth=1
	movslq	-20(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdi
	movslq	-20(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	(%rcx,%rax,8), %rsi
	callq	face_attr_equal_p
	andb	$1, %al
	movb	%al, -21(%rbp)
# BB#5:                                 # %for.inc
                                        #   in Loop: Header=BB47_1 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB47_1
.LBB47_6:                               # %for.end
	movb	-21(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end47:
	.size	lface_equal_p, .Lfunc_end47-lface_equal_p
	.cfi_endproc

	.globl	Finternal_lisp_face_empty_p
	.align	16, 0x90
	.type	Finternal_lisp_face_empty_p,@function
Finternal_lisp_face_empty_p:            # @Finternal_lisp_face_empty_p
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
	subq	$80, %rsp
	movl	$901, %eax              # imm = 0x385
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movl	%eax, %edi
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB48_2
# BB#1:                                 # %cond.true
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	jmp	.LBB48_3
.LBB48_2:                               # %cond.false
	movq	-16(%rbp), %rdi
	callq	decode_live_frame
	movq	%rax, -56(%rbp)         # 8-byte Spill
.LBB48_3:                               # %cond.end
	movq	-56(%rbp), %rax         # 8-byte Reload
	movl	$1, %edx
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %rsi
	callq	lface_from_face_name
	movq	%rax, -32(%rbp)
	movl	$1, -36(%rbp)
.LBB48_4:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$19, -36(%rbp)
	jge	.LBB48_9
# BB#5:                                 # %for.body
                                        #   in Loop: Header=BB48_4 Depth=1
	movq	-32(%rbp), %rdi
	movslq	-36(%rbp), %rsi
	callq	AREF
	movl	$975, %edi              # imm = 0x3CF
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-64(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB48_7
# BB#6:                                 # %if.then
	jmp	.LBB48_9
.LBB48_7:                               # %if.end
                                        #   in Loop: Header=BB48_4 Depth=1
	jmp	.LBB48_8
.LBB48_8:                               # %for.inc
                                        #   in Loop: Header=BB48_4 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB48_4
.LBB48_9:                               # %for.end
	cmpl	$19, -36(%rbp)
	jne	.LBB48_11
# BB#10:                                # %cond.true.10
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -72(%rbp)         # 8-byte Spill
	jmp	.LBB48_12
.LBB48_11:                              # %cond.false.12
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -72(%rbp)         # 8-byte Spill
.LBB48_12:                              # %cond.end.14
	movq	-72(%rbp), %rax         # 8-byte Reload
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end48:
	.size	Finternal_lisp_face_empty_p, .Lfunc_end48-Finternal_lisp_face_empty_p
	.cfi_endproc

	.globl	Fframe_face_alist
	.align	16, 0x90
	.type	Fframe_face_alist,@function
Fframe_face_alist:                      # @Fframe_face_alist
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	decode_live_frame
	movq	96(%rax), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end49:
	.size	Fframe_face_alist, .Lfunc_end49-Fframe_face_alist
	.cfi_endproc

	.globl	prepare_face_for_display
	.align	16, 0x90
	.type	prepare_face_for_display,@function
prepare_face_for_display:               # @prepare_face_for_display
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
	subq	$160, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	cmpq	$0, 160(%rsi)
	jne	.LBB50_6
# BB#1:                                 # %if.then
	movq	$65548, -152(%rbp)      # imm = 0x1000C
	movq	-16(%rbp), %rax
	movq	176(%rax), %rax
	movq	%rax, -128(%rbp)
	movq	-16(%rbp), %rax
	movq	184(%rax), %rax
	movq	%rax, -120(%rbp)
	movl	$0, -44(%rbp)
	callq	block_input
	movq	-16(%rbp), %rax
	cmpq	$0, 168(%rax)
	je	.LBB50_3
# BB#2:                                 # %if.then.3
	movl	$3, -96(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	168(%rax), %rsi
	callq	x_bitmap_pixmap
	movq	%rax, -72(%rbp)
	movq	-152(%rbp), %rax
	orq	$2304, %rax             # imm = 0x900
	movq	%rax, -152(%rbp)
.LBB50_3:                               # %if.end
	leaq	-144(%rbp), %rdx
	movq	-8(%rbp), %rdi
	movq	-152(%rbp), %rsi
	callq	x_create_gc
	movq	-16(%rbp), %rdx
	movq	%rax, 160(%rdx)
	movq	-16(%rbp), %rax
	cmpq	$0, 224(%rax)
	je	.LBB50_5
# BB#4:                                 # %if.then.9
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	font_prepare_for_face
.LBB50_5:                               # %if.end.10
	callq	unblock_input
.LBB50_6:                               # %if.end.11
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end50:
	.size	prepare_face_for_display, .Lfunc_end50-prepare_face_for_display
	.cfi_endproc

	.align	16, 0x90
	.type	x_create_gc,@function
x_create_gc:                            # @x_create_gc
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp153:
	.cfi_def_cfa_offset 16
.Ltmp154:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp155:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	callq	block_input
	movq	-8(%rbp), %rdx
	movq	384(%rdx), %rdx
	movq	424(%rdx), %rdx
	movq	16(%rdx), %rdi
	movq	-8(%rbp), %rdx
	movq	384(%rdx), %rdx
	movq	56(%rdx), %rsi
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rcx
	callq	XCreateGC
	movq	%rax, -32(%rbp)
	callq	unblock_input
	movq	-32(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end51:
	.size	x_create_gc, .Lfunc_end51-x_create_gc
	.cfi_endproc

	.globl	Fcolor_distance
	.align	16, 0x90
	.type	Fcolor_distance,@function
Fcolor_distance:                        # @Fcolor_distance
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp156:
	.cfi_def_cfa_offset 16
.Ltmp157:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp158:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	decode_live_frame
	movq	%rax, -32(%rbp)
	movq	-8(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB52_2
# BB#1:                                 # %land.lhs.true
	leaq	-48(%rbp), %rsi
	movq	-8(%rbp), %rdi
	callq	parse_rgb_list
	testb	$1, %al
	jne	.LBB52_5
.LBB52_2:                               # %land.lhs.true.4
	movq	-8(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB52_3
	jmp	.LBB52_4
.LBB52_3:                               # %land.lhs.true.7
	movq	-32(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	SSDATA
	leaq	-48(%rbp), %rdx
	xorl	%ecx, %ecx
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	defined_color
	testb	$1, %al
	jne	.LBB52_5
.LBB52_4:                               # %if.then
	movabsq	$.L.str.24, %rdi
	movq	-8(%rbp), %rsi
	callq	signal_error
.LBB52_5:                               # %if.end
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB52_7
# BB#6:                                 # %land.lhs.true.15
	leaq	-64(%rbp), %rsi
	movq	-16(%rbp), %rdi
	callq	parse_rgb_list
	testb	$1, %al
	jne	.LBB52_10
.LBB52_7:                               # %land.lhs.true.18
	movq	-16(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB52_8
	jmp	.LBB52_9
.LBB52_8:                               # %land.lhs.true.21
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	SSDATA
	leaq	-64(%rbp), %rdx
	xorl	%ecx, %ecx
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	defined_color
	testb	$1, %al
	jne	.LBB52_10
.LBB52_9:                               # %if.then.25
	movabsq	$.L.str.24, %rdi
	movq	-16(%rbp), %rsi
	callq	signal_error
.LBB52_10:                              # %if.end.26
	leaq	-48(%rbp), %rdi
	leaq	-64(%rbp), %rsi
	callq	color_distance
	movslq	%eax, %rsi
	shlq	$2, %rsi
	addq	$2, %rsi
	movq	%rsi, %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end52:
	.size	Fcolor_distance, .Lfunc_end52-Fcolor_distance
	.cfi_endproc

	.align	16, 0x90
	.type	parse_rgb_list,@function
parse_rgb_list:                         # @parse_rgb_list
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp159:
	.cfi_def_cfa_offset 16
.Ltmp160:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp161:
	.cfi_def_cfa_register %rbp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	andq	$7, %rsi
	movl	%esi, %eax
	cmpl	$3, %eax
	jne	.LBB53_3
# BB#1:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB53_3
# BB#2:                                 # %if.then
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	sarq	$2, %rax
	movw	%ax, %cx
	movq	-24(%rbp), %rax
	movw	%cx, 8(%rax)
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB53_4
.LBB53_3:                               # %if.else
	movb	$0, -1(%rbp)
	jmp	.LBB53_13
.LBB53_4:                               # %if.end
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB53_7
# BB#5:                                 # %land.lhs.true.15
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB53_7
# BB#6:                                 # %if.then.23
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	sarq	$2, %rax
	movw	%ax, %cx
	movq	-24(%rbp), %rax
	movw	%cx, 10(%rax)
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB53_8
.LBB53_7:                               # %if.else.31
	movb	$0, -1(%rbp)
	jmp	.LBB53_13
.LBB53_8:                               # %if.end.32
	movq	-16(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB53_11
# BB#9:                                 # %land.lhs.true.37
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB53_11
# BB#10:                                # %if.then.45
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	sarq	$2, %rax
	movw	%ax, %cx
	movq	-24(%rbp), %rax
	movw	%cx, 12(%rax)
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB53_12
.LBB53_11:                              # %if.else.53
	movb	$0, -1(%rbp)
	jmp	.LBB53_13
.LBB53_12:                              # %if.end.54
	movb	$1, -1(%rbp)
.LBB53_13:                              # %return
	movb	-1(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	popq	%rbp
	retq
.Lfunc_end53:
	.size	parse_rgb_list, .Lfunc_end53-parse_rgb_list
	.cfi_endproc

	.align	16, 0x90
	.type	defined_color,@function
defined_color:                          # @defined_color
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp162:
	.cfi_def_cfa_offset 16
.Ltmp163:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp164:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movb	%cl, %al
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	andb	$1, %al
	movb	%al, -33(%rbp)
	movq	-16(%rbp), %rdx
	movq	208(%rdx), %rdx
	shrq	$23, %rdx
	andq	$7, %rdx
	movl	%edx, %ecx
	cmpl	$2, %ecx
	je	.LBB54_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movb	-33(%rbp), %al
	andb	$1, %al
	movzbl	%al, %ecx
	callq	tty_defined_color
	andb	$1, %al
	movb	%al, -1(%rbp)
	jmp	.LBB54_5
.LBB54_2:                               # %if.else
	movq	-16(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$2, %ecx
	jne	.LBB54_4
# BB#3:                                 # %if.then.7
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movb	-33(%rbp), %al
	andb	$1, %al
	movzbl	%al, %ecx
	callq	x_defined_color
	andb	$1, %al
	movb	%al, -1(%rbp)
	jmp	.LBB54_5
.LBB54_4:                               # %if.else.10
	callq	emacs_abort
.LBB54_5:                               # %return
	movb	-1(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end54:
	.size	defined_color, .Lfunc_end54-defined_color
	.cfi_endproc

	.align	16, 0x90
	.type	color_distance,@function
color_distance:                         # @color_distance
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp165:
	.cfi_def_cfa_offset 16
.Ltmp166:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp167:
	.cfi_def_cfa_register %rbp
	movl	$767, %eax              # imm = 0x2FF
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movzwl	8(%rsi), %eax
	movq	-16(%rbp), %rsi
	movzwl	8(%rsi), %edx
	subl	%edx, %eax
	sarl	$8, %eax
	movslq	%eax, %rsi
	movq	%rsi, -24(%rbp)
	movq	-8(%rbp), %rsi
	movzwl	10(%rsi), %eax
	movq	-16(%rbp), %rsi
	movzwl	10(%rsi), %edx
	subl	%edx, %eax
	sarl	$8, %eax
	movslq	%eax, %rsi
	movq	%rsi, -32(%rbp)
	movq	-8(%rbp), %rsi
	movzwl	12(%rsi), %eax
	movq	-16(%rbp), %rsi
	movzwl	12(%rsi), %edx
	subl	%edx, %eax
	sarl	$8, %eax
	movslq	%eax, %rsi
	movq	%rsi, -40(%rbp)
	movq	-8(%rbp), %rsi
	movzwl	8(%rsi), %eax
	movq	-16(%rbp), %rsi
	movzwl	8(%rsi), %edx
	addl	%edx, %eax
	sarl	$9, %eax
	movslq	%eax, %rsi
	movq	%rsi, -48(%rbp)
	movq	-48(%rbp), %rsi
	addq	$512, %rsi              # imm = 0x200
	imulq	-24(%rbp), %rsi
	imulq	-24(%rbp), %rsi
	sarq	$8, %rsi
	movq	-32(%rbp), %rdi
	shlq	$2, %rdi
	imulq	-32(%rbp), %rdi
	addq	%rdi, %rsi
	subq	-48(%rbp), %rcx
	imulq	-40(%rbp), %rcx
	imulq	-40(%rbp), %rcx
	sarq	$8, %rcx
	addq	%rcx, %rsi
	movl	%esi, %eax
	popq	%rbp
	retq
.Lfunc_end55:
	.size	color_distance, .Lfunc_end55-color_distance
	.cfi_endproc

	.align	16, 0x90
	.type	free_realized_faces,@function
free_realized_faces:                    # @free_realized_faces
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp168:
	.cfi_def_cfa_offset 16
.Ltmp169:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp170:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.LBB56_9
# BB#1:                                 # %land.lhs.true
	movq	-8(%rbp), %rax
	cmpl	$0, 32(%rax)
	je	.LBB56_9
# BB#2:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	callq	block_input
	movl	$0, -12(%rbp)
.LBB56_3:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	32(%rcx), %eax
	jge	.LBB56_6
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB56_3 Depth=1
	movq	-24(%rbp), %rdi
	movslq	-12(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	16(%rcx), %rcx
	movq	(%rcx,%rax,8), %rsi
	callq	free_realized_face
	movslq	-12(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	16(%rcx), %rcx
	movq	$0, (%rcx,%rax,8)
# BB#5:                                 # %for.inc
                                        #   in Loop: Header=BB56_3 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB56_3
.LBB56_6:                               # %for.end
	callq	forget_escape_and_glyphless_faces
	xorl	%esi, %esi
	movq	-8(%rbp), %rax
	movl	$0, 32(%rax)
	movl	$8008, -16(%rbp)        # imm = 0x1F48
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movslq	-16(%rbp), %rdx
	movq	%rax, %rdi
	callq	memset
	movq	-24(%rbp), %rax
	movq	40(%rax), %rdi
	callq	WINDOWP
	testb	$1, %al
	jne	.LBB56_7
	jmp	.LBB56_8
.LBB56_7:                               # %if.then.8
	movq	-24(%rbp), %rdi
	callq	clear_current_matrices
	movq	-24(%rbp), %rdi
	callq	fset_redisplay
.LBB56_8:                               # %if.end
	callq	unblock_input
.LBB56_9:                               # %if.end.9
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end56:
	.size	free_realized_faces, .Lfunc_end56-free_realized_faces
	.cfi_endproc

	.globl	face_for_font
	.align	16, 0x90
	.type	face_for_font,@function
face_for_font:                          # @face_for_font
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp171:
	.cfi_def_cfa_offset 16
.Ltmp172:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp173:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-16(%rbp), %rdx
	movq	160(%rdx), %rdx
	movq	%rdx, -40(%rbp)
	movq	-32(%rbp), %rdx
	movq	264(%rdx), %rdx
	movq	%rdx, -32(%rbp)
	movq	-32(%rbp), %rdi
	callq	lface_hash
	movl	$1001, %ecx             # imm = 0x3E9
	movl	%eax, -44(%rbp)
	movl	-44(%rbp), %eax
	xorl	%edx, %edx
	divl	%ecx
	movl	%edx, -48(%rbp)
	movslq	-48(%rbp), %rsi
	movq	-40(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	(%rdi,%rsi,8), %rsi
	movq	%rsi, -56(%rbp)
.LBB57_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -56(%rbp)
	je	.LBB57_13
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB57_1 Depth=1
	movq	-56(%rbp), %rax
	movq	264(%rax), %rax
	cmpq	-56(%rbp), %rax
	jne	.LBB57_4
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB57_1 Depth=1
	jmp	.LBB57_12
.LBB57_4:                               # %if.end
                                        #   in Loop: Header=BB57_1 Depth=1
	movq	-56(%rbp), %rax
	movq	264(%rax), %rax
	cmpq	-32(%rbp), %rax
	jne	.LBB57_11
# BB#5:                                 # %land.lhs.true
                                        #   in Loop: Header=BB57_1 Depth=1
	xorl	%edi, %edi
	movq	-56(%rbp), %rax
	movq	224(%rax), %rax
	movq	-24(%rbp), %rcx
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-64(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB57_7
# BB#6:                                 # %cond.true
                                        #   in Loop: Header=BB57_1 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	jmp	.LBB57_8
.LBB57_7:                               # %cond.false
                                        #   in Loop: Header=BB57_1 Depth=1
	movq	-24(%rbp), %rdi
	callq	XFONT_OBJECT
	movq	%rax, -80(%rbp)         # 8-byte Spill
.LBB57_8:                               # %cond.end
                                        #   in Loop: Header=BB57_1 Depth=1
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	-72(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB57_11
# BB#9:                                 # %land.lhs.true.8
                                        #   in Loop: Header=BB57_1 Depth=1
	movq	-56(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	lface_equal_p
	testb	$1, %al
	jne	.LBB57_10
	jmp	.LBB57_11
.LBB57_10:                              # %if.then.14
	movq	-56(%rbp), %rax
	movl	152(%rax), %ecx
	movl	%ecx, -4(%rbp)
	jmp	.LBB57_14
.LBB57_11:                              # %if.end.15
                                        #   in Loop: Header=BB57_1 Depth=1
	jmp	.LBB57_12
.LBB57_12:                              # %for.inc
                                        #   in Loop: Header=BB57_1 Depth=1
	movq	-56(%rbp), %rax
	movq	248(%rax), %rax
	movq	%rax, -56(%rbp)
	jmp	.LBB57_1
.LBB57_13:                              # %for.end
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	callq	realize_non_ascii_face
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movl	152(%rax), %ecx
	movl	%ecx, -4(%rbp)
.LBB57_14:                              # %return
	movl	-4(%rbp), %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end57:
	.size	face_for_font, .Lfunc_end57-face_for_font
	.cfi_endproc

	.align	16, 0x90
	.type	lface_hash,@function
lface_hash:                             # @lface_hash
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp174:
	.cfi_def_cfa_offset 16
.Ltmp175:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp176:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	8(%rdi), %rdi
	callq	hash_string_case_insensitive
	movq	-8(%rbp), %rdi
	movq	16(%rdi), %rdi
	movl	%eax, -12(%rbp)         # 4-byte Spill
	callq	hash_string_case_insensitive
	movl	-12(%rbp), %ecx         # 4-byte Reload
	xorl	%eax, %ecx
	movq	-8(%rbp), %rdi
	movq	72(%rdi), %rdi
	movl	%ecx, -16(%rbp)         # 4-byte Spill
	callq	hash_string_case_insensitive
	movl	-16(%rbp), %ecx         # 4-byte Reload
	xorl	%eax, %ecx
	movq	-8(%rbp), %rdi
	movq	80(%rdi), %rdi
	movl	%ecx, -20(%rbp)         # 4-byte Spill
	callq	hash_string_case_insensitive
	movl	-20(%rbp), %ecx         # 4-byte Reload
	xorl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, %edi
	movq	-8(%rbp), %rdx
	movq	40(%rdx), %rdx
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	callq	XUINT
	movq	-32(%rbp), %rdx         # 8-byte Reload
	xorq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	48(%rax), %rdi
	movq	%rdx, -40(%rbp)         # 8-byte Spill
	callq	XUINT
	movq	-40(%rbp), %rdx         # 8-byte Reload
	xorq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	24(%rax), %rdi
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	callq	XUINT
	movq	-48(%rbp), %rdx         # 8-byte Reload
	xorq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	32(%rax), %rdi
	movq	%rdx, -56(%rbp)         # 8-byte Spill
	callq	XUINT
	movq	-56(%rbp), %rdx         # 8-byte Reload
	xorq	%rax, %rdx
	movl	%edx, %ecx
	movl	%ecx, %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end58:
	.size	lface_hash, .Lfunc_end58-lface_hash
	.cfi_endproc

	.align	16, 0x90
	.type	realize_non_ascii_face,@function
realize_non_ascii_face:                 # @realize_non_ascii_face
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp177:
	.cfi_def_cfa_offset 16
.Ltmp178:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp179:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movl	$280, %eax              # imm = 0x118
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rdx
	movq	160(%rdx), %rdx
	movq	%rdx, -32(%rbp)
	movq	%rcx, %rdi
	callq	xmalloc
	xorl	%edi, %edi
	movl	$280, %r8d              # imm = 0x118
	movl	%r8d, %edx
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	-24(%rbp), %rcx
	movl	%edi, -44(%rbp)         # 4-byte Spill
	movq	%rax, %rdi
	movq	%rcx, %rsi
	callq	memcpy
	movq	-40(%rbp), %rax
	movq	$0, 160(%rax)
	movq	-16(%rbp), %rax
	movl	-44(%rbp), %edi         # 4-byte Reload
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movb	%dil, %r9b
	movq	-56(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	movb	%r9b, -57(%rbp)         # 1-byte Spill
	je	.LBB59_6
# BB#1:                                 # %land.lhs.true
	movl	$5, %edi
	xorl	%edx, %edx
	movq	-40(%rbp), %rax
	movq	40(%rax), %rsi
	callq	font_style_to_value
	xorl	%edx, %edx
	movb	%dl, %cl
	sarl	$8, %eax
	cmpl	$100, %eax
	movb	%cl, -57(%rbp)          # 1-byte Spill
	jle	.LBB59_6
# BB#2:                                 # %land.rhs
	movl	$5, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rdi
	callq	AREF
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB59_4
# BB#3:                                 # %cond.true
	movl	$5, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rdi
	callq	AREF
	sarq	$2, %rax
	sarq	$8, %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	jmp	.LBB59_5
.LBB59_4:                               # %cond.false
	movq	$-1, %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	jmp	.LBB59_5
.LBB59_5:                               # %cond.end
	movq	-72(%rbp), %rax         # 8-byte Reload
	cmpq	$100, %rax
	setle	%cl
	movb	%cl, -57(%rbp)          # 1-byte Spill
.LBB59_6:                               # %land.end
	movb	-57(%rbp), %al          # 1-byte Reload
	xorl	%edi, %edi
	movq	-40(%rbp), %rcx
	andb	$1, %al
	movzbl	%al, %edx
	movl	240(%rcx), %esi
	shll	$18, %edx
	andl	$-262145, %esi          # imm = 0xFFFFFFFFFFFBFFFF
	orl	%edx, %esi
	movl	%esi, 240(%rcx)
	movq	-40(%rbp), %rcx
	movl	240(%rcx), %edx
	andl	$-131073, %edx          # imm = 0xFFFFFFFFFFFDFFFF
	orl	$131072, %edx           # imm = 0x20000
	movl	%edx, 240(%rcx)
	movq	-16(%rbp), %rcx
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-80(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB59_8
# BB#7:                                 # %cond.true.19
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	jmp	.LBB59_9
.LBB59_8:                               # %cond.false.20
	movq	-16(%rbp), %rdi
	callq	XFONT_OBJECT
	movq	%rax, -88(%rbp)         # 8-byte Spill
.LBB59_9:                               # %cond.end.22
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	-40(%rbp), %rcx
	movq	%rax, 224(%rcx)
	movq	-40(%rbp), %rax
	movq	$0, 160(%rax)
	movq	-32(%rbp), %rdi
	movq	-40(%rbp), %rsi
	movq	-40(%rbp), %rax
	movl	244(%rax), %edx
	callq	cache_face
	movq	-40(%rbp), %rax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end59:
	.size	realize_non_ascii_face, .Lfunc_end59-realize_non_ascii_face
	.cfi_endproc

	.align	16, 0x90
	.type	get_lface_attributes,@function
get_lface_attributes:                   # @get_lface_attributes
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp180:
	.cfi_def_cfa_offset 16
.Ltmp181:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp182:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movb	%cl, %al
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	andb	$1, %al
	movb	%al, -33(%rbp)
	movq	%r8, -48(%rbp)
	movq	-24(%rbp), %rdi
	movb	-33(%rbp), %al
	andb	$1, %al
	movzbl	%al, %esi
	callq	resolve_face_name
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	movq	globals+728, %rsi
	callq	assq_no_quit
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB60_8
# BB#1:                                 # %if.then
	leaq	-80(%rbp), %rdi
	movl	$1, %edx
	leaq	-48(%rbp), %rcx
	movq	-24(%rbp), %rsi
	callq	push_named_merge_point
	testb	$1, %al
	jne	.LBB60_2
	jmp	.LBB60_7
.LBB60_2:                               # %if.then.4
	movl	$1, -84(%rbp)
.LBB60_3:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$19, -84(%rbp)
	jge	.LBB60_6
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB60_3 Depth=1
	movl	$975, %edi              # imm = 0x3CF
	callq	builtin_lisp_symbol
	movslq	-84(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	%rax, (%rdx,%rcx,8)
# BB#5:                                 # %for.inc
                                        #   in Loop: Header=BB60_3 Depth=1
	movl	-84(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -84(%rbp)
	jmp	.LBB60_3
.LBB60_6:                               # %for.end
	movq	-16(%rbp), %rdi
	movq	-56(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rsi
	movq	-32(%rbp), %rdx
	movb	-33(%rbp), %cl
	movq	-48(%rbp), %r8
	andb	$1, %cl
	movzbl	%cl, %ecx
	callq	merge_face_ref
	andb	$1, %al
	movb	%al, -1(%rbp)
	jmp	.LBB60_9
.LBB60_7:                               # %if.end
	jmp	.LBB60_8
.LBB60_8:                               # %if.end.10
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-32(%rbp), %rdx
	movb	-33(%rbp), %al
	andb	$1, %al
	movzbl	%al, %ecx
	callq	get_lface_attributes_no_remap
	andb	$1, %al
	movb	%al, -1(%rbp)
.LBB60_9:                               # %return
	movb	-1(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end60:
	.size	get_lface_attributes, .Lfunc_end60-get_lface_attributes
	.cfi_endproc

	.align	16, 0x90
	.type	lookup_face,@function
lookup_face:                            # @lookup_face
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp183:
	.cfi_def_cfa_offset 16
.Ltmp184:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp185:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	160(%rsi), %rsi
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	lface_hash
	movl	$1001, %ecx             # imm = 0x3E9
	movl	%eax, -28(%rbp)
	movl	-28(%rbp), %eax
	xorl	%edx, %edx
	divl	%ecx
	movl	%edx, -32(%rbp)
	movslq	-32(%rbp), %rsi
	movq	-24(%rbp), %rdi
	movq	(%rdi), %rdi
	movq	(%rdi,%rsi,8), %rsi
	movq	%rsi, -40(%rbp)
.LBB61_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -40(%rbp)
	je	.LBB61_9
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB61_1 Depth=1
	movq	-40(%rbp), %rax
	movq	264(%rax), %rax
	cmpq	-40(%rbp), %rax
	je	.LBB61_4
# BB#3:                                 # %if.then
	movq	$0, -40(%rbp)
	jmp	.LBB61_9
.LBB61_4:                               # %if.end
                                        #   in Loop: Header=BB61_1 Depth=1
	movq	-40(%rbp), %rax
	movl	244(%rax), %ecx
	cmpl	-28(%rbp), %ecx
	jne	.LBB61_7
# BB#5:                                 # %land.lhs.true
                                        #   in Loop: Header=BB61_1 Depth=1
	movq	-40(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	lface_equal_p
	testb	$1, %al
	jne	.LBB61_6
	jmp	.LBB61_7
.LBB61_6:                               # %if.then.4
	jmp	.LBB61_9
.LBB61_7:                               # %if.end.5
                                        #   in Loop: Header=BB61_1 Depth=1
	jmp	.LBB61_8
.LBB61_8:                               # %for.inc
                                        #   in Loop: Header=BB61_1 Depth=1
	movq	-40(%rbp), %rax
	movq	248(%rax), %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB61_1
.LBB61_9:                               # %for.end
	cmpq	$0, -40(%rbp)
	jne	.LBB61_11
# BB#10:                                # %if.then.7
	movl	$4294967295, %edx       # imm = 0xFFFFFFFF
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	realize_face
	movq	%rax, -40(%rbp)
.LBB61_11:                              # %if.end.9
	movq	-40(%rbp), %rax
	movl	152(%rax), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end61:
	.size	lookup_face, .Lfunc_end61-lookup_face
	.cfi_endproc

	.globl	lookup_basic_face
	.align	16, 0x90
	.type	lookup_basic_face,@function
lookup_basic_face:                      # @lookup_basic_face
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp186:
	.cfi_def_cfa_offset 16
.Ltmp187:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp188:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	xorl	%eax, %eax
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	globals+728, %rdi
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	movq	-56(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB62_2
# BB#1:                                 # %if.then
	movl	-20(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB62_20
.LBB62_2:                               # %if.end
	movl	-20(%rbp), %eax
	movl	%eax, %ecx
	movq	%rcx, %rdx
	subq	$10, %rdx
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	movq	%rdx, -72(%rbp)         # 8-byte Spill
	ja	.LBB62_14
# BB#21:                                # %if.end
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	.LJTI62_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB62_3:                               # %sw.bb
	movl	$324, %edi              # imm = 0x144
	callq	builtin_lisp_symbol
	movq	%rax, -32(%rbp)
	jmp	.LBB62_15
.LBB62_4:                               # %sw.bb.2
	movl	$672, %edi              # imm = 0x2A0
	callq	builtin_lisp_symbol
	movq	%rax, -32(%rbp)
	jmp	.LBB62_15
.LBB62_5:                               # %sw.bb.4
	movl	$674, %edi              # imm = 0x2A2
	callq	builtin_lisp_symbol
	movq	%rax, -32(%rbp)
	jmp	.LBB62_15
.LBB62_6:                               # %sw.bb.6
	movl	$513, %edi              # imm = 0x201
	callq	builtin_lisp_symbol
	movq	%rax, -32(%rbp)
	jmp	.LBB62_15
.LBB62_7:                               # %sw.bb.8
	movl	$921, %edi              # imm = 0x399
	callq	builtin_lisp_symbol
	movq	%rax, -32(%rbp)
	jmp	.LBB62_15
.LBB62_8:                               # %sw.bb.10
	movl	$467, %edi              # imm = 0x1D3
	callq	builtin_lisp_symbol
	movq	%rax, -32(%rbp)
	jmp	.LBB62_15
.LBB62_9:                               # %sw.bb.12
	movl	$830, %edi              # imm = 0x33E
	callq	builtin_lisp_symbol
	movq	%rax, -32(%rbp)
	jmp	.LBB62_15
.LBB62_10:                              # %sw.bb.14
	movl	$208, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -32(%rbp)
	jmp	.LBB62_15
.LBB62_11:                              # %sw.bb.16
	movl	$306, %edi              # imm = 0x132
	callq	builtin_lisp_symbol
	movq	%rax, -32(%rbp)
	jmp	.LBB62_15
.LBB62_12:                              # %sw.bb.18
	movl	$684, %edi              # imm = 0x2AC
	callq	builtin_lisp_symbol
	movq	%rax, -32(%rbp)
	jmp	.LBB62_15
.LBB62_13:                              # %sw.bb.20
	movl	$650, %edi              # imm = 0x28A
	callq	builtin_lisp_symbol
	movq	%rax, -32(%rbp)
	jmp	.LBB62_15
.LBB62_14:                              # %sw.default
	callq	emacs_abort
.LBB62_15:                              # %sw.epilog
	movq	-32(%rbp), %rdi
	movq	globals+728, %rsi
	callq	assq_no_quit
	xorl	%edi, %edi
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-80(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB62_17
# BB#16:                                # %if.then.25
	movl	-20(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB62_20
.LBB62_17:                              # %if.end.26
	xorl	%edx, %edx
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	lookup_named_face
	movl	%eax, -44(%rbp)
	cmpl	$0, -44(%rbp)
	jge	.LBB62_19
# BB#18:                                # %if.then.29
	movl	-20(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB62_20
.LBB62_19:                              # %if.end.30
	movl	-44(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB62_20:                              # %return
	movl	-4(%rbp), %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end62:
	.size	lookup_basic_face, .Lfunc_end62-lookup_basic_face
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI62_0:
	.quad	.LBB62_3
	.quad	.LBB62_4
	.quad	.LBB62_5
	.quad	.LBB62_7
	.quad	.LBB62_8
	.quad	.LBB62_6
	.quad	.LBB62_9
	.quad	.LBB62_10
	.quad	.LBB62_11
	.quad	.LBB62_12
	.quad	.LBB62_13

	.text
	.globl	smaller_face
	.align	16, 0x90
	.type	smaller_face,@function
smaller_face:                           # @smaller_face
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp189:
	.cfi_def_cfa_offset 16
.Ltmp190:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp191:
	.cfi_def_cfa_register %rbp
	subq	$256, %rsp              # imm = 0x100
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movq	-16(%rbp), %rdi
	movq	208(%rdi), %rdi
	shrq	$23, %rdi
	andq	$7, %rdi
	movl	%edi, %edx
	cmpl	$1, %edx
	jne	.LBB63_2
# BB#1:                                 # %if.then
	movl	-20(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB63_30
.LBB63_2:                               # %if.end
	movl	$4294967291, %eax       # imm = 0xFFFFFFFB
	movl	$5, %ecx
	cmpl	$0, -24(%rbp)
	cmovll	%ecx, %eax
	movl	%eax, -208(%rbp)
	cmpl	$0, -24(%rbp)
	jge	.LBB63_4
# BB#3:                                 # %cond.true
	xorl	%eax, %eax
	subl	-24(%rbp), %eax
	movl	%eax, -228(%rbp)        # 4-byte Spill
	jmp	.LBB63_5
.LBB63_4:                               # %cond.false
	movl	-24(%rbp), %eax
	movl	%eax, -228(%rbp)        # 4-byte Spill
.LBB63_5:                               # %cond.end
	movl	-228(%rbp), %eax        # 4-byte Reload
	movb	$1, %cl
	movl	%eax, -24(%rbp)
	testb	$1, %cl
	jne	.LBB63_6
	jmp	.LBB63_7
.LBB63_6:                               # %cond.true.4
	movl	-20(%rbp), %eax
	addl	$0, %eax
	movq	-16(%rbp), %rcx
	movq	160(%rcx), %rcx
	movl	32(%rcx), %edx
	addl	$0, %edx
	cmpl	%edx, %eax
	jb	.LBB63_8
	jmp	.LBB63_9
.LBB63_7:                               # %cond.false.7
	movslq	-20(%rbp), %rax
	addq	$0, %rax
	movq	-16(%rbp), %rcx
	movq	160(%rcx), %rcx
	movslq	32(%rcx), %rcx
	addq	$0, %rcx
	cmpq	%rcx, %rax
	jae	.LBB63_9
.LBB63_8:                               # %cond.true.15
	movslq	-20(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	160(%rcx), %rcx
	movq	16(%rcx), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	jmp	.LBB63_10
.LBB63_9:                               # %cond.false.17
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -240(%rbp)        # 8-byte Spill
	jmp	.LBB63_10
.LBB63_10:                              # %cond.end.18
	movq	-240(%rbp), %rax        # 8-byte Reload
	movl	$152, %ecx
	movl	%ecx, %edx
	leaq	-192(%rbp), %rsi
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rsi, %rdi
	movq	%rax, %rsi
	callq	memcpy
	movq	-160(%rbp), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movl	%ecx, -200(%rbp)
	movl	%ecx, -196(%rbp)
	movl	-20(%rbp), %ecx
	movl	%ecx, -212(%rbp)
	movq	-32(%rbp), %rax
	movq	224(%rax), %rax
	movl	156(%rax), %ecx
	movl	%ecx, -204(%rbp)
.LBB63_11:                              # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	cmpl	$0, -24(%rbp)
	movb	%cl, -241(%rbp)         # 1-byte Spill
	je	.LBB63_17
# BB#12:                                # %land.lhs.true
                                        #   in Loop: Header=BB63_11 Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movl	-196(%rbp), %eax
	addl	-208(%rbp), %eax
	cmpl	$0, %eax
	movb	%cl, -241(%rbp)         # 1-byte Spill
	jle	.LBB63_17
# BB#13:                                # %land.rhs
                                        #   in Loop: Header=BB63_11 Depth=1
	movl	-200(%rbp), %eax
	subl	-196(%rbp), %eax
	cmpl	$0, %eax
	jge	.LBB63_15
# BB#14:                                # %cond.true.28
                                        #   in Loop: Header=BB63_11 Depth=1
	xorl	%eax, %eax
	movl	-200(%rbp), %ecx
	subl	-196(%rbp), %ecx
	subl	%ecx, %eax
	movl	%eax, -248(%rbp)        # 4-byte Spill
	jmp	.LBB63_16
.LBB63_15:                              # %cond.false.31
                                        #   in Loop: Header=BB63_11 Depth=1
	movl	-200(%rbp), %eax
	subl	-196(%rbp), %eax
	movl	%eax, -248(%rbp)        # 4-byte Spill
.LBB63_16:                              # %cond.end.33
                                        #   in Loop: Header=BB63_11 Depth=1
	movl	-248(%rbp), %eax        # 4-byte Reload
	cmpl	$100, %eax
	setl	%cl
	movb	%cl, -241(%rbp)         # 1-byte Spill
.LBB63_17:                              # %land.end
                                        #   in Loop: Header=BB63_11 Depth=1
	movb	-241(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB63_18
	jmp	.LBB63_29
.LBB63_18:                              # %while.body
                                        #   in Loop: Header=BB63_11 Depth=1
	leaq	-192(%rbp), %rsi
	movl	-208(%rbp), %eax
	addl	-196(%rbp), %eax
	movl	%eax, -196(%rbp)
	movslq	-196(%rbp), %rcx
	shlq	$2, %rcx
	addq	$2, %rcx
	movq	%rcx, -160(%rbp)
	movq	-16(%rbp), %rdi
	callq	lookup_face
	movb	$1, %dl
	movl	%eax, -212(%rbp)
	testb	$1, %dl
	jne	.LBB63_19
	jmp	.LBB63_20
.LBB63_19:                              # %cond.true.41
                                        #   in Loop: Header=BB63_11 Depth=1
	movl	-212(%rbp), %eax
	addl	$0, %eax
	movq	-16(%rbp), %rcx
	movq	160(%rcx), %rcx
	movl	32(%rcx), %edx
	addl	$0, %edx
	cmpl	%edx, %eax
	jb	.LBB63_21
	jmp	.LBB63_22
.LBB63_20:                              # %cond.false.48
                                        #   in Loop: Header=BB63_11 Depth=1
	movslq	-212(%rbp), %rax
	addq	$0, %rax
	movq	-16(%rbp), %rcx
	movq	160(%rcx), %rcx
	movslq	32(%rcx), %rcx
	addq	$0, %rcx
	cmpq	%rcx, %rax
	jae	.LBB63_22
.LBB63_21:                              # %cond.true.57
                                        #   in Loop: Header=BB63_11 Depth=1
	movslq	-212(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	160(%rcx), %rcx
	movq	16(%rcx), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	jmp	.LBB63_23
.LBB63_22:                              # %cond.false.62
                                        #   in Loop: Header=BB63_11 Depth=1
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -256(%rbp)        # 8-byte Spill
	jmp	.LBB63_23
.LBB63_23:                              # %cond.end.63
                                        #   in Loop: Header=BB63_11 Depth=1
	movq	-256(%rbp), %rax        # 8-byte Reload
	movq	%rax, -224(%rbp)
	cmpl	$0, -208(%rbp)
	jge	.LBB63_25
# BB#24:                                # %land.lhs.true.67
                                        #   in Loop: Header=BB63_11 Depth=1
	movq	-224(%rbp), %rax
	movq	224(%rax), %rax
	movl	156(%rax), %ecx
	cmpl	-204(%rbp), %ecx
	jl	.LBB63_27
.LBB63_25:                              # %lor.lhs.false
                                        #   in Loop: Header=BB63_11 Depth=1
	cmpl	$0, -208(%rbp)
	jle	.LBB63_28
# BB#26:                                # %land.lhs.true.74
                                        #   in Loop: Header=BB63_11 Depth=1
	movq	-224(%rbp), %rax
	movq	224(%rax), %rax
	movl	156(%rax), %ecx
	cmpl	-204(%rbp), %ecx
	jle	.LBB63_28
.LBB63_27:                              # %if.then.79
                                        #   in Loop: Header=BB63_11 Depth=1
	movl	-24(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -24(%rbp)
	movq	-224(%rbp), %rcx
	movq	224(%rcx), %rcx
	movl	156(%rcx), %eax
	movl	%eax, -204(%rbp)
	movl	-196(%rbp), %eax
	movl	%eax, -200(%rbp)
.LBB63_28:                              # %if.end.82
                                        #   in Loop: Header=BB63_11 Depth=1
	jmp	.LBB63_11
.LBB63_29:                              # %while.end
	movl	-212(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB63_30:                              # %return
	movl	-4(%rbp), %eax
	addq	$256, %rsp              # imm = 0x100
	popq	%rbp
	retq
.Lfunc_end63:
	.size	smaller_face, .Lfunc_end63-smaller_face
	.cfi_endproc

	.globl	face_with_height
	.align	16, 0x90
	.type	face_with_height,@function
face_with_height:                       # @face_with_height
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp192:
	.cfi_def_cfa_offset 16
.Ltmp193:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp194:
	.cfi_def_cfa_register %rbp
	subq	$224, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movq	-16(%rbp), %rdi
	movq	208(%rdi), %rdi
	shrq	$23, %rdi
	andq	$7, %rdi
	movl	%edi, %edx
	cmpl	$1, %edx
	je	.LBB64_2
# BB#1:                                 # %lor.lhs.false
	cmpl	$0, -24(%rbp)
	jg	.LBB64_3
.LBB64_2:                               # %if.then
	movl	-20(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB64_9
.LBB64_3:                               # %if.end
	movb	$1, %al
	testb	$1, %al
	jne	.LBB64_4
	jmp	.LBB64_5
.LBB64_4:                               # %cond.true
	movl	-20(%rbp), %eax
	addl	$0, %eax
	movq	-16(%rbp), %rcx
	movq	160(%rcx), %rcx
	movl	32(%rcx), %edx
	addl	$0, %edx
	cmpl	%edx, %eax
	jb	.LBB64_6
	jmp	.LBB64_7
.LBB64_5:                               # %cond.false
	movslq	-20(%rbp), %rax
	addq	$0, %rax
	movq	-16(%rbp), %rcx
	movq	160(%rcx), %rcx
	movslq	32(%rcx), %rcx
	addq	$0, %rcx
	cmpq	%rcx, %rax
	jae	.LBB64_7
.LBB64_6:                               # %cond.true.11
	movslq	-20(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	160(%rcx), %rcx
	movq	16(%rcx), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	jmp	.LBB64_8
.LBB64_7:                               # %cond.false.13
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -200(%rbp)        # 8-byte Spill
	jmp	.LBB64_8
.LBB64_8:                               # %cond.end
	movq	-200(%rbp), %rax        # 8-byte Reload
	movl	$8, %esi
	leaq	-192(%rbp), %rcx
	movl	$152, %edx
                                        # kill: RDX<def> EDX<kill>
	movq	%rax, -32(%rbp)
	movq	%rcx, %rax
	movq	-32(%rbp), %rdi
	movq	%rdi, -208(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-208(%rbp), %rax        # 8-byte Reload
	movl	%esi, -212(%rbp)        # 4-byte Spill
	movq	%rax, %rsi
	movq	%rcx, -224(%rbp)        # 8-byte Spill
	callq	memcpy
	movslq	-24(%rbp), %rax
	shlq	$2, %rax
	addq	$2, %rax
	movq	%rax, -160(%rbp)
	movq	-224(%rbp), %rdi        # 8-byte Reload
	movl	-212(%rbp), %esi        # 4-byte Reload
	callq	font_clear_prop
	leaq	-192(%rbp), %rsi
	movq	-16(%rbp), %rdi
	callq	lookup_face
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %eax
	movl	%eax, -4(%rbp)
.LBB64_9:                               # %return
	movl	-4(%rbp), %eax
	addq	$224, %rsp
	popq	%rbp
	retq
.Lfunc_end64:
	.size	face_with_height, .Lfunc_end64-face_with_height
	.cfi_endproc

	.globl	lookup_derived_face
	.align	16, 0x90
	.type	lookup_derived_face,@function
lookup_derived_face:                    # @lookup_derived_face
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp195:
	.cfi_def_cfa_offset 16
.Ltmp196:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp197:
	.cfi_def_cfa_register %rbp
	subq	$400, %rsp              # imm = 0x190
	movb	%cl, %al
	movb	$1, %r8b
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	andb	$1, %al
	movb	%al, -29(%rbp)
	testb	$1, %r8b
	jne	.LBB65_1
	jmp	.LBB65_2
.LBB65_1:                               # %cond.true
	movl	-28(%rbp), %eax
	addl	$0, %eax
	movq	-16(%rbp), %rcx
	movq	160(%rcx), %rcx
	movl	32(%rcx), %edx
	addl	$0, %edx
	cmpl	%edx, %eax
	jb	.LBB65_3
	jmp	.LBB65_4
.LBB65_2:                               # %cond.false
	movslq	-28(%rbp), %rax
	addq	$0, %rax
	movq	-16(%rbp), %rcx
	movq	160(%rcx), %rcx
	movslq	32(%rcx), %rcx
	addq	$0, %rcx
	cmpq	%rcx, %rax
	jae	.LBB65_4
.LBB65_3:                               # %cond.true.9
	movslq	-28(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	160(%rcx), %rcx
	movq	16(%rcx), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -368(%rbp)        # 8-byte Spill
	jmp	.LBB65_5
.LBB65_4:                               # %cond.false.11
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -368(%rbp)        # 8-byte Spill
	jmp	.LBB65_5
.LBB65_5:                               # %cond.end
	movq	-368(%rbp), %rax        # 8-byte Reload
	movq	%rax, -360(%rbp)
	cmpq	$0, -360(%rbp)
	jne	.LBB65_7
# BB#6:                                 # %if.then
	callq	emacs_abort
.LBB65_7:                               # %if.end
	xorl	%eax, %eax
	movl	%eax, %r8d
	leaq	-352(%rbp), %rdx
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movb	-29(%rbp), %cl
	andb	$1, %cl
	movzbl	%cl, %ecx
	callq	get_lface_attributes
	testb	$1, %al
	jne	.LBB65_9
# BB#8:                                 # %if.then.13
	movl	$-1, -4(%rbp)
	jmp	.LBB65_10
.LBB65_9:                               # %if.end.14
	xorl	%eax, %eax
	movl	%eax, %ecx
	leaq	-192(%rbp), %rdx
	leaq	-352(%rbp), %rsi
	movl	$152, %eax
	movl	%eax, %edi
	movq	%rdx, %r8
	movq	-360(%rbp), %r9
	movq	%rdi, -376(%rbp)        # 8-byte Spill
	movq	%r8, %rdi
	movq	%rsi, -384(%rbp)        # 8-byte Spill
	movq	%r9, %rsi
	movq	-376(%rbp), %r8         # 8-byte Reload
	movq	%rdx, -392(%rbp)        # 8-byte Spill
	movq	%r8, %rdx
	movq	%rcx, -400(%rbp)        # 8-byte Spill
	callq	memcpy
	movq	-16(%rbp), %rdi
	movq	-384(%rbp), %rsi        # 8-byte Reload
	movq	-392(%rbp), %rdx        # 8-byte Reload
	movq	-400(%rbp), %rcx        # 8-byte Reload
	callq	merge_face_vectors
	leaq	-192(%rbp), %rsi
	movq	-16(%rbp), %rdi
	callq	lookup_face
	movl	%eax, -4(%rbp)
.LBB65_10:                              # %return
	movl	-4(%rbp), %eax
	addq	$400, %rsp              # imm = 0x190
	popq	%rbp
	retq
.Lfunc_end65:
	.size	lookup_derived_face, .Lfunc_end65-lookup_derived_face
	.cfi_endproc

	.globl	Fface_attributes_as_vector
	.align	16, 0x90
	.type	Fface_attributes_as_vector,@function
Fface_attributes_as_vector:             # @Fface_attributes_as_vector
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp198:
	.cfi_def_cfa_offset 16
.Ltmp199:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp200:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movl	$975, %eax              # imm = 0x3CF
	movq	%rdi, -8(%rbp)
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	movl	$78, %edi
                                        # kill: RDI<def> EDI<kill>
	movq	%rax, %rsi
	callq	Fmake_vector
	movq	%rax, -16(%rbp)
	movq	selected_frame, %rax
	subq	$5, %rax
	movq	-8(%rbp), %rsi
	movq	-16(%rbp), %rdi
	movq	%rax, -24(%rbp)         # 8-byte Spill
	movq	%rsi, -32(%rbp)         # 8-byte Spill
	callq	XVECTOR
	movl	$1, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	addq	$8, %rax
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	-32(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	merge_face_ref
	movq	-16(%rbp), %rdx
	movb	%al, -33(%rbp)          # 1-byte Spill
	movq	%rdx, %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end66:
	.size	Fface_attributes_as_vector, .Lfunc_end66-Fface_attributes_as_vector
	.cfi_endproc

	.align	16, 0x90
	.type	merge_face_ref,@function
merge_face_ref:                         # @merge_face_ref
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp201:
	.cfi_def_cfa_offset 16
.Ltmp202:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp203:
	.cfi_def_cfa_register %rbp
	subq	$432, %rsp              # imm = 0x1B0
	movb	%cl, %al
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	andb	$1, %al
	movb	%al, -25(%rbp)
	movq	%r8, -40(%rbp)
	movb	$1, -41(%rbp)
	movq	-16(%rbp), %rdx
	andq	$7, %rdx
	movl	%edx, %ecx
	cmpl	$3, %ecx
	jne	.LBB67_150
# BB#1:                                 # %if.then
	movl	$451, %edi              # imm = 0x1C3
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-128(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB67_3
# BB#2:                                 # %lor.lhs.false
	movl	$193, %edi
	movq	-56(%rbp), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-136(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB67_12
.LBB67_3:                               # %if.then.7
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -72(%rbp)
	movq	-64(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB67_4
	jmp	.LBB67_8
.LBB67_4:                               # %if.then.10
	movl	$451, %edi              # imm = 0x1C3
	movq	-72(%rbp), %rax
	movq	%rax, -144(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-144(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB67_6
# BB#5:                                 # %if.then.14
	movq	-64(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, 72(%rcx)
	jmp	.LBB67_7
.LBB67_6:                               # %if.else
	movq	-64(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, 80(%rcx)
.LBB67_7:                               # %if.end
	jmp	.LBB67_11
.LBB67_8:                               # %if.else.16
	testb	$1, -25(%rbp)
	je	.LBB67_10
# BB#9:                                 # %if.then.17
	movabsq	$.L.str.52, %rdi
	movq	-64(%rbp), %rsi
	movb	$0, %al
	callq	add_to_log
.LBB67_10:                              # %if.end.18
	movb	$0, -41(%rbp)
.LBB67_11:                              # %if.end.19
	jmp	.LBB67_149
.LBB67_12:                              # %if.else.20
	movq	-56(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	.LBB67_143
# BB#13:                                # %land.lhs.true
	movq	-56(%rbp), %rdi
	callq	SYMBOL_NAME
	movq	%rax, %rdi
	callq	SDATA
	movzbl	(%rax), %ecx
	cmpl	$58, %ecx
	jne	.LBB67_143
# BB#14:                                # %if.then.30
	jmp	.LBB67_15
.LBB67_15:                              # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-16(%rbp), %rdx
	andq	$7, %rdx
	movl	%edx, %eax
	cmpl	$3, %eax
	movb	%cl, -145(%rbp)         # 1-byte Spill
	jne	.LBB67_17
# BB#16:                                # %land.rhs
                                        #   in Loop: Header=BB67_15 Depth=1
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	sete	%dl
	movb	%dl, -145(%rbp)         # 1-byte Spill
.LBB67_17:                              # %land.end
                                        #   in Loop: Header=BB67_15 Depth=1
	movb	-145(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB67_18
	jmp	.LBB67_142
.LBB67_18:                              # %while.body
                                        #   in Loop: Header=BB67_15 Depth=1
	movl	$975, %edi              # imm = 0x3CF
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -80(%rbp)
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -88(%rbp)
	movb	$0, -89(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-160(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB67_20
# BB#19:                                # %if.then.52
                                        #   in Loop: Header=BB67_15 Depth=1
	jmp	.LBB67_139
.LBB67_20:                              # %if.else.53
                                        #   in Loop: Header=BB67_15 Depth=1
	movl	$40, %edi
	movq	-80(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-168(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB67_25
# BB#21:                                # %if.then.57
                                        #   in Loop: Header=BB67_15 Depth=1
	movq	-88(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB67_22
	jmp	.LBB67_23
.LBB67_22:                              # %if.then.59
                                        #   in Loop: Header=BB67_15 Depth=1
	movl	$2, %esi
	movq	-88(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, 8(%rcx)
	movq	-24(%rbp), %rdi
	callq	font_clear_prop
	jmp	.LBB67_24
.LBB67_23:                              # %if.else.61
                                        #   in Loop: Header=BB67_15 Depth=1
	movb	$1, -89(%rbp)
.LBB67_24:                              # %if.end.62
                                        #   in Loop: Header=BB67_15 Depth=1
	jmp	.LBB67_138
.LBB67_25:                              # %if.else.63
                                        #   in Loop: Header=BB67_15 Depth=1
	movl	$48, %edi
	movq	-80(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-176(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB67_30
# BB#26:                                # %if.then.67
                                        #   in Loop: Header=BB67_15 Depth=1
	movq	-88(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB67_27
	jmp	.LBB67_28
.LBB67_27:                              # %if.then.69
                                        #   in Loop: Header=BB67_15 Depth=1
	movl	$1, %esi
	movq	-88(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, 16(%rcx)
	movq	-24(%rbp), %rdi
	callq	font_clear_prop
	jmp	.LBB67_29
.LBB67_28:                              # %if.else.71
                                        #   in Loop: Header=BB67_15 Depth=1
	movb	$1, -89(%rbp)
.LBB67_29:                              # %if.end.72
                                        #   in Loop: Header=BB67_15 Depth=1
	jmp	.LBB67_137
.LBB67_30:                              # %if.else.73
                                        #   in Loop: Header=BB67_15 Depth=1
	movl	$58, %edi
	movq	-80(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-184(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB67_35
# BB#31:                                # %if.then.77
                                        #   in Loop: Header=BB67_15 Depth=1
	xorl	%edi, %edi
	movq	-88(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	32(%rcx), %rsi
	movq	%rsi, -192(%rbp)        # 8-byte Spill
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-200(%rbp), %rdi        # 8-byte Reload
	movq	-192(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	merge_face_heights
	xorl	%edi, %edi
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-208(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB67_33
# BB#32:                                # %if.then.84
                                        #   in Loop: Header=BB67_15 Depth=1
	movl	$8, %esi
	movq	-104(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, 32(%rcx)
	movq	-24(%rbp), %rdi
	callq	font_clear_prop
	jmp	.LBB67_34
.LBB67_33:                              # %if.else.86
                                        #   in Loop: Header=BB67_15 Depth=1
	movb	$1, -89(%rbp)
.LBB67_34:                              # %if.end.87
                                        #   in Loop: Header=BB67_15 Depth=1
	jmp	.LBB67_136
.LBB67_35:                              # %if.else.88
                                        #   in Loop: Header=BB67_15 Depth=1
	movl	$138, %edi
	movq	-80(%rbp), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-216(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB67_41
# BB#36:                                # %if.then.92
                                        #   in Loop: Header=BB67_15 Depth=1
	movq	-88(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	.LBB67_39
# BB#37:                                # %land.lhs.true.97
                                        #   in Loop: Header=BB67_15 Depth=1
	movl	$5, %edi
	xorl	%edx, %edx
	movq	-88(%rbp), %rsi
	callq	font_style_to_value
	sarl	$8, %eax
	cmpl	$0, %eax
	jl	.LBB67_39
# BB#38:                                # %if.then.101
                                        #   in Loop: Header=BB67_15 Depth=1
	movl	$5, %esi
	movq	-88(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, 40(%rcx)
	movq	-24(%rbp), %rdi
	callq	font_clear_prop
	jmp	.LBB67_40
.LBB67_39:                              # %if.else.103
                                        #   in Loop: Header=BB67_15 Depth=1
	movb	$1, -89(%rbp)
.LBB67_40:                              # %if.end.104
                                        #   in Loop: Header=BB67_15 Depth=1
	jmp	.LBB67_135
.LBB67_41:                              # %if.else.105
                                        #   in Loop: Header=BB67_15 Depth=1
	movl	$119, %edi
	movq	-80(%rbp), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-224(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB67_47
# BB#42:                                # %if.then.109
                                        #   in Loop: Header=BB67_15 Depth=1
	movq	-88(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	.LBB67_45
# BB#43:                                # %land.lhs.true.114
                                        #   in Loop: Header=BB67_15 Depth=1
	movl	$6, %edi
	xorl	%edx, %edx
	movq	-88(%rbp), %rsi
	callq	font_style_to_value
	sarl	$8, %eax
	cmpl	$0, %eax
	jl	.LBB67_45
# BB#44:                                # %if.then.119
                                        #   in Loop: Header=BB67_15 Depth=1
	movl	$6, %esi
	movq	-88(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, 48(%rcx)
	movq	-24(%rbp), %rdi
	callq	font_clear_prop
	jmp	.LBB67_46
.LBB67_45:                              # %if.else.121
                                        #   in Loop: Header=BB67_15 Depth=1
	movb	$1, -89(%rbp)
.LBB67_46:                              # %if.end.122
                                        #   in Loop: Header=BB67_15 Depth=1
	jmp	.LBB67_134
.LBB67_47:                              # %if.else.123
                                        #   in Loop: Header=BB67_15 Depth=1
	movl	$132, %edi
	movq	-80(%rbp), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-232(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB67_55
# BB#48:                                # %if.then.127
                                        #   in Loop: Header=BB67_15 Depth=1
	movl	$901, %edi              # imm = 0x385
	movq	-88(%rbp), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-240(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB67_52
# BB#49:                                # %lor.lhs.false.131
                                        #   in Loop: Header=BB67_15 Depth=1
	xorl	%edi, %edi
	movq	-88(%rbp), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-248(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB67_52
# BB#50:                                # %lor.lhs.false.135
                                        #   in Loop: Header=BB67_15 Depth=1
	movq	-88(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB67_52
# BB#51:                                # %lor.lhs.false.138
                                        #   in Loop: Header=BB67_15 Depth=1
	movq	-88(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB67_53
.LBB67_52:                              # %if.then.143
                                        #   in Loop: Header=BB67_15 Depth=1
	movq	-88(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, 56(%rcx)
	jmp	.LBB67_54
.LBB67_53:                              # %if.else.145
                                        #   in Loop: Header=BB67_15 Depth=1
	movb	$1, -89(%rbp)
.LBB67_54:                              # %if.end.146
                                        #   in Loop: Header=BB67_15 Depth=1
	jmp	.LBB67_133
.LBB67_55:                              # %if.else.147
                                        #   in Loop: Header=BB67_15 Depth=1
	movl	$90, %edi
	movq	-80(%rbp), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-256(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB67_62
# BB#56:                                # %if.then.151
                                        #   in Loop: Header=BB67_15 Depth=1
	movl	$901, %edi              # imm = 0x385
	movq	-88(%rbp), %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-264(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB67_59
# BB#57:                                # %lor.lhs.false.155
                                        #   in Loop: Header=BB67_15 Depth=1
	xorl	%edi, %edi
	movq	-88(%rbp), %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-272(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB67_59
# BB#58:                                # %lor.lhs.false.159
                                        #   in Loop: Header=BB67_15 Depth=1
	movq	-88(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB67_59
	jmp	.LBB67_60
.LBB67_59:                              # %if.then.162
                                        #   in Loop: Header=BB67_15 Depth=1
	movq	-88(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, 96(%rcx)
	jmp	.LBB67_61
.LBB67_60:                              # %if.else.164
                                        #   in Loop: Header=BB67_15 Depth=1
	movb	$1, -89(%rbp)
.LBB67_61:                              # %if.end.165
                                        #   in Loop: Header=BB67_15 Depth=1
	jmp	.LBB67_132
.LBB67_62:                              # %if.else.166
                                        #   in Loop: Header=BB67_15 Depth=1
	movl	$126, %edi
	movq	-80(%rbp), %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-280(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB67_69
# BB#63:                                # %if.then.170
                                        #   in Loop: Header=BB67_15 Depth=1
	movl	$901, %edi              # imm = 0x385
	movq	-88(%rbp), %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-288(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB67_66
# BB#64:                                # %lor.lhs.false.174
                                        #   in Loop: Header=BB67_15 Depth=1
	xorl	%edi, %edi
	movq	-88(%rbp), %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-296(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB67_66
# BB#65:                                # %lor.lhs.false.178
                                        #   in Loop: Header=BB67_15 Depth=1
	movq	-88(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB67_66
	jmp	.LBB67_67
.LBB67_66:                              # %if.then.181
                                        #   in Loop: Header=BB67_15 Depth=1
	movq	-88(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, 104(%rcx)
	jmp	.LBB67_68
.LBB67_67:                              # %if.else.183
                                        #   in Loop: Header=BB67_15 Depth=1
	movb	$1, -89(%rbp)
.LBB67_68:                              # %if.end.184
                                        #   in Loop: Header=BB67_15 Depth=1
	jmp	.LBB67_131
.LBB67_69:                              # %if.else.185
                                        #   in Loop: Header=BB67_15 Depth=1
	movl	$15, %edi
	movq	-80(%rbp), %rax
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-304(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB67_79
# BB#70:                                # %if.then.189
                                        #   in Loop: Header=BB67_15 Depth=1
	movl	$901, %edi              # imm = 0x385
	movq	-88(%rbp), %rax
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-312(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB67_72
# BB#71:                                # %if.then.193
                                        #   in Loop: Header=BB67_15 Depth=1
	movq	$6, -88(%rbp)
.LBB67_72:                              # %if.end.194
                                        #   in Loop: Header=BB67_15 Depth=1
	movq	-88(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	je	.LBB67_76
# BB#73:                                # %lor.lhs.false.200
                                        #   in Loop: Header=BB67_15 Depth=1
	movq	-88(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB67_76
# BB#74:                                # %lor.lhs.false.203
                                        #   in Loop: Header=BB67_15 Depth=1
	movq	-88(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	je	.LBB67_76
# BB#75:                                # %lor.lhs.false.208
                                        #   in Loop: Header=BB67_15 Depth=1
	xorl	%edi, %edi
	movq	-88(%rbp), %rax
	movq	%rax, -320(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-320(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB67_77
.LBB67_76:                              # %if.then.212
                                        #   in Loop: Header=BB67_15 Depth=1
	movq	-88(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, 112(%rcx)
	jmp	.LBB67_78
.LBB67_77:                              # %if.else.214
                                        #   in Loop: Header=BB67_15 Depth=1
	movb	$1, -89(%rbp)
.LBB67_78:                              # %if.end.215
                                        #   in Loop: Header=BB67_15 Depth=1
	jmp	.LBB67_130
.LBB67_79:                              # %if.else.216
                                        #   in Loop: Header=BB67_15 Depth=1
	movl	$68, %edi
	movq	-80(%rbp), %rax
	movq	%rax, -328(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-328(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB67_81
# BB#80:                                # %lor.lhs.false.220
                                        #   in Loop: Header=BB67_15 Depth=1
	movl	$109, %edi
	movq	-80(%rbp), %rax
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-336(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB67_86
.LBB67_81:                              # %if.then.224
                                        #   in Loop: Header=BB67_15 Depth=1
	movl	$901, %edi              # imm = 0x385
	movq	-88(%rbp), %rax
	movq	%rax, -344(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-344(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB67_83
# BB#82:                                # %lor.lhs.false.228
                                        #   in Loop: Header=BB67_15 Depth=1
	xorl	%edi, %edi
	movq	-88(%rbp), %rax
	movq	%rax, -352(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-352(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB67_84
.LBB67_83:                              # %if.then.232
                                        #   in Loop: Header=BB67_15 Depth=1
	movq	-88(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, 64(%rcx)
	jmp	.LBB67_85
.LBB67_84:                              # %if.else.234
                                        #   in Loop: Header=BB67_15 Depth=1
	movb	$1, -89(%rbp)
.LBB67_85:                              # %if.end.235
                                        #   in Loop: Header=BB67_15 Depth=1
	jmp	.LBB67_129
.LBB67_86:                              # %if.else.236
                                        #   in Loop: Header=BB67_15 Depth=1
	movl	$47, %edi
	movq	-80(%rbp), %rax
	movq	%rax, -360(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-360(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB67_91
# BB#87:                                # %if.then.240
                                        #   in Loop: Header=BB67_15 Depth=1
	movq	-88(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB67_88
	jmp	.LBB67_89
.LBB67_88:                              # %if.then.242
                                        #   in Loop: Header=BB67_15 Depth=1
	movq	-88(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, 72(%rcx)
	jmp	.LBB67_90
.LBB67_89:                              # %if.else.244
                                        #   in Loop: Header=BB67_15 Depth=1
	movb	$1, -89(%rbp)
.LBB67_90:                              # %if.end.245
                                        #   in Loop: Header=BB67_15 Depth=1
	jmp	.LBB67_128
.LBB67_91:                              # %if.else.246
                                        #   in Loop: Header=BB67_15 Depth=1
	movl	$33, %edi
	movq	-80(%rbp), %rax
	movq	%rax, -368(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-368(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB67_96
# BB#92:                                # %if.then.250
                                        #   in Loop: Header=BB67_15 Depth=1
	movq	-88(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB67_93
	jmp	.LBB67_94
.LBB67_93:                              # %if.then.252
                                        #   in Loop: Header=BB67_15 Depth=1
	movq	-88(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, 144(%rcx)
	jmp	.LBB67_95
.LBB67_94:                              # %if.else.254
                                        #   in Loop: Header=BB67_15 Depth=1
	movb	$1, -89(%rbp)
.LBB67_95:                              # %if.end.255
                                        #   in Loop: Header=BB67_15 Depth=1
	jmp	.LBB67_127
.LBB67_96:                              # %if.else.256
                                        #   in Loop: Header=BB67_15 Depth=1
	movl	$13, %edi
	movq	-80(%rbp), %rax
	movq	%rax, -376(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-376(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB67_101
# BB#97:                                # %if.then.260
                                        #   in Loop: Header=BB67_15 Depth=1
	movq	-88(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB67_98
	jmp	.LBB67_99
.LBB67_98:                              # %if.then.262
                                        #   in Loop: Header=BB67_15 Depth=1
	movq	-88(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, 80(%rcx)
	jmp	.LBB67_100
.LBB67_99:                              # %if.else.264
                                        #   in Loop: Header=BB67_15 Depth=1
	movb	$1, -89(%rbp)
.LBB67_100:                             # %if.end.265
                                        #   in Loop: Header=BB67_15 Depth=1
	jmp	.LBB67_126
.LBB67_101:                             # %if.else.266
                                        #   in Loop: Header=BB67_15 Depth=1
	movl	$123, %edi
	movq	-80(%rbp), %rax
	movq	%rax, -384(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-384(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB67_106
# BB#102:                               # %if.then.270
                                        #   in Loop: Header=BB67_15 Depth=1
	movq	-88(%rbp), %rdi
	callq	Fbitmap_spec_p
	xorl	%edi, %edi
	movq	%rax, -112(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, -392(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-392(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB67_104
# BB#103:                               # %if.then.275
                                        #   in Loop: Header=BB67_15 Depth=1
	movq	-88(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, 88(%rcx)
	jmp	.LBB67_105
.LBB67_104:                             # %if.else.277
                                        #   in Loop: Header=BB67_15 Depth=1
	movb	$1, -89(%rbp)
.LBB67_105:                             # %if.end.278
                                        #   in Loop: Header=BB67_15 Depth=1
	jmp	.LBB67_125
.LBB67_106:                             # %if.else.279
                                        #   in Loop: Header=BB67_15 Depth=1
	movl	$139, %edi
	movq	-80(%rbp), %rax
	movq	%rax, -400(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-400(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB67_112
# BB#107:                               # %if.then.283
                                        #   in Loop: Header=BB67_15 Depth=1
	movq	-88(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	jne	.LBB67_110
# BB#108:                               # %land.lhs.true.288
                                        #   in Loop: Header=BB67_15 Depth=1
	movl	$7, %edi
	xorl	%edx, %edx
	movq	-88(%rbp), %rsi
	callq	font_style_to_value
	sarl	$8, %eax
	cmpl	$0, %eax
	jl	.LBB67_110
# BB#109:                               # %if.then.293
                                        #   in Loop: Header=BB67_15 Depth=1
	movl	$7, %esi
	movq	-88(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, 24(%rcx)
	movq	-24(%rbp), %rdi
	callq	font_clear_prop
	jmp	.LBB67_111
.LBB67_110:                             # %if.else.295
                                        #   in Loop: Header=BB67_15 Depth=1
	movb	$1, -89(%rbp)
.LBB67_111:                             # %if.end.296
                                        #   in Loop: Header=BB67_15 Depth=1
	jmp	.LBB67_124
.LBB67_112:                             # %if.else.297
                                        #   in Loop: Header=BB67_15 Depth=1
	movl	$44, %edi
	movq	-80(%rbp), %rax
	movq	%rax, -408(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-408(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB67_117
# BB#113:                               # %if.then.301
                                        #   in Loop: Header=BB67_15 Depth=1
	movq	-88(%rbp), %rdi
	callq	FONTP
	testb	$1, %al
	jne	.LBB67_114
	jmp	.LBB67_115
.LBB67_114:                             # %if.then.303
                                        #   in Loop: Header=BB67_15 Depth=1
	movq	-88(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, 120(%rcx)
	jmp	.LBB67_116
.LBB67_115:                             # %if.else.305
                                        #   in Loop: Header=BB67_15 Depth=1
	movb	$1, -89(%rbp)
.LBB67_116:                             # %if.end.306
                                        #   in Loop: Header=BB67_15 Depth=1
	jmp	.LBB67_123
.LBB67_117:                             # %if.else.307
                                        #   in Loop: Header=BB67_15 Depth=1
	movl	$67, %edi
	movq	-80(%rbp), %rax
	movq	%rax, -416(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-416(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB67_121
# BB#118:                               # %if.then.311
                                        #   in Loop: Header=BB67_15 Depth=1
	movq	-8(%rbp), %rdi
	movq	-88(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movb	-25(%rbp), %al
	movq	-40(%rbp), %r8
	andb	$1, %al
	movzbl	%al, %ecx
	callq	merge_face_ref
	testb	$1, %al
	jne	.LBB67_120
# BB#119:                               # %if.then.314
                                        #   in Loop: Header=BB67_15 Depth=1
	movb	$1, -89(%rbp)
.LBB67_120:                             # %if.end.315
                                        #   in Loop: Header=BB67_15 Depth=1
	jmp	.LBB67_122
.LBB67_121:                             # %if.else.316
                                        #   in Loop: Header=BB67_15 Depth=1
	movb	$1, -89(%rbp)
.LBB67_122:                             # %if.end.317
                                        #   in Loop: Header=BB67_15 Depth=1
	jmp	.LBB67_123
.LBB67_123:                             # %if.end.318
                                        #   in Loop: Header=BB67_15 Depth=1
	jmp	.LBB67_124
.LBB67_124:                             # %if.end.319
                                        #   in Loop: Header=BB67_15 Depth=1
	jmp	.LBB67_125
.LBB67_125:                             # %if.end.320
                                        #   in Loop: Header=BB67_15 Depth=1
	jmp	.LBB67_126
.LBB67_126:                             # %if.end.321
                                        #   in Loop: Header=BB67_15 Depth=1
	jmp	.LBB67_127
.LBB67_127:                             # %if.end.322
                                        #   in Loop: Header=BB67_15 Depth=1
	jmp	.LBB67_128
.LBB67_128:                             # %if.end.323
                                        #   in Loop: Header=BB67_15 Depth=1
	jmp	.LBB67_129
.LBB67_129:                             # %if.end.324
                                        #   in Loop: Header=BB67_15 Depth=1
	jmp	.LBB67_130
.LBB67_130:                             # %if.end.325
                                        #   in Loop: Header=BB67_15 Depth=1
	jmp	.LBB67_131
.LBB67_131:                             # %if.end.326
                                        #   in Loop: Header=BB67_15 Depth=1
	jmp	.LBB67_132
.LBB67_132:                             # %if.end.327
                                        #   in Loop: Header=BB67_15 Depth=1
	jmp	.LBB67_133
.LBB67_133:                             # %if.end.328
                                        #   in Loop: Header=BB67_15 Depth=1
	jmp	.LBB67_134
.LBB67_134:                             # %if.end.329
                                        #   in Loop: Header=BB67_15 Depth=1
	jmp	.LBB67_135
.LBB67_135:                             # %if.end.330
                                        #   in Loop: Header=BB67_15 Depth=1
	jmp	.LBB67_136
.LBB67_136:                             # %if.end.331
                                        #   in Loop: Header=BB67_15 Depth=1
	jmp	.LBB67_137
.LBB67_137:                             # %if.end.332
                                        #   in Loop: Header=BB67_15 Depth=1
	jmp	.LBB67_138
.LBB67_138:                             # %if.end.333
                                        #   in Loop: Header=BB67_15 Depth=1
	jmp	.LBB67_139
.LBB67_139:                             # %if.end.334
                                        #   in Loop: Header=BB67_15 Depth=1
	testb	$1, -89(%rbp)
	je	.LBB67_141
# BB#140:                               # %if.then.336
                                        #   in Loop: Header=BB67_15 Depth=1
	movabsq	$.L.str.53, %rdi
	movq	-80(%rbp), %rsi
	movq	-88(%rbp), %rdx
	movb	$0, %al
	callq	add_to_log
	movb	$0, -41(%rbp)
.LBB67_141:                             # %if.end.337
                                        #   in Loop: Header=BB67_15 Depth=1
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB67_15
.LBB67_142:                             # %while.end
	jmp	.LBB67_148
.LBB67_143:                             # %if.else.344
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rax
	movq	%rax, -424(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-424(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB67_145
# BB#144:                               # %if.then.351
	movq	-8(%rbp), %rdi
	movq	-120(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movb	-25(%rbp), %al
	movq	-40(%rbp), %r8
	andb	$1, %al
	movzbl	%al, %ecx
	callq	merge_face_ref
	andb	$1, %al
	movb	%al, -41(%rbp)
.LBB67_145:                             # %if.end.355
	movq	-8(%rbp), %rdi
	movq	-56(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movb	-25(%rbp), %al
	movq	-40(%rbp), %r8
	andb	$1, %al
	movzbl	%al, %ecx
	callq	merge_face_ref
	testb	$1, %al
	jne	.LBB67_147
# BB#146:                               # %if.then.358
	movb	$0, -41(%rbp)
.LBB67_147:                             # %if.end.359
	jmp	.LBB67_148
.LBB67_148:                             # %if.end.360
	jmp	.LBB67_149
.LBB67_149:                             # %if.end.361
	jmp	.LBB67_154
.LBB67_150:                             # %if.else.362
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	-40(%rbp), %rcx
	callq	merge_named_face
	andb	$1, %al
	movb	%al, -41(%rbp)
	testb	$1, -41(%rbp)
	jne	.LBB67_153
# BB#151:                               # %land.lhs.true.366
	testb	$1, -25(%rbp)
	je	.LBB67_153
# BB#152:                               # %if.then.369
	movabsq	$.L.str.54, %rdi
	movq	-16(%rbp), %rsi
	movb	$0, %al
	callq	add_to_log
.LBB67_153:                             # %if.end.370
	jmp	.LBB67_154
.LBB67_154:                             # %if.end.371
	movb	-41(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$432, %rsp              # imm = 0x1B0
	popq	%rbp
	retq
.Lfunc_end67:
	.size	merge_face_ref, .Lfunc_end67-merge_face_ref
	.cfi_endproc

	.globl	Fdisplay_supports_face_attributes_p
	.align	16, 0x90
	.type	Fdisplay_supports_face_attributes_p,@function
Fdisplay_supports_face_attributes_p:    # @Fdisplay_supports_face_attributes_p
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp204:
	.cfi_def_cfa_offset 16
.Ltmp205:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp206:
	.cfi_def_cfa_register %rbp
	subq	$288, %rsp              # imm = 0x120
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movb	$0, -25(%rbp)
	testb	$1, noninteractive
	jne	.LBB68_2
# BB#1:                                 # %lor.lhs.false
	testb	$1, initialized
	jne	.LBB68_3
.LBB68_2:                               # %if.then
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -8(%rbp)
	jmp	.LBB68_48
.LBB68_3:                               # %if.end
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-224(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB68_5
# BB#4:                                 # %if.then.3
	movq	selected_frame, %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB68_17
.LBB68_5:                               # %if.else
	movq	-24(%rbp), %rdi
	callq	FRAMEP
	testb	$1, %al
	jne	.LBB68_6
	jmp	.LBB68_7
.LBB68_6:                               # %if.then.5
	movq	-24(%rbp), %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB68_16
.LBB68_7:                               # %if.else.6
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -40(%rbp)
	movq	Vframe_list, %rax
	movq	%rax, -216(%rbp)
.LBB68_8:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-216(%rbp), %rdx
	andq	$7, %rdx
	movl	%edx, %eax
	cmpl	$3, %eax
	movb	%cl, -225(%rbp)         # 1-byte Spill
	jne	.LBB68_10
# BB#9:                                 # %land.rhs
                                        #   in Loop: Header=BB68_8 Depth=1
	movb	$1, %al
	movq	-216(%rbp), %rcx
	subq	$3, %rcx
	movq	(%rcx), %rcx
	movq	%rcx, -40(%rbp)
	movb	%al, -225(%rbp)         # 1-byte Spill
.LBB68_10:                              # %land.end
                                        #   in Loop: Header=BB68_8 Depth=1
	movb	-225(%rbp), %al         # 1-byte Reload
	testb	$1, %al
	jne	.LBB68_11
	jmp	.LBB68_15
.LBB68_11:                              # %for.body
                                        #   in Loop: Header=BB68_8 Depth=1
	movl	$344, %edi              # imm = 0x158
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rcx
	subq	$5, %rcx
	movq	64(%rcx), %rsi
	movq	%rax, %rdi
	callq	Fassq
	movq	%rax, %rdi
	callq	Fcdr
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	Fequal
	xorl	%edi, %edi
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-240(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB68_13
# BB#12:                                # %if.then.18
	jmp	.LBB68_15
.LBB68_13:                              # %if.end.19
                                        #   in Loop: Header=BB68_8 Depth=1
	jmp	.LBB68_14
.LBB68_14:                              # %for.inc
                                        #   in Loop: Header=BB68_8 Depth=1
	movq	-216(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -216(%rbp)
	jmp	.LBB68_8
.LBB68_15:                              # %for.end
	jmp	.LBB68_16
.LBB68_16:                              # %if.end.21
	jmp	.LBB68_17
.LBB68_17:                              # %if.end.22
	movq	-40(%rbp), %rdi
	callq	FRAMEP
	testb	$1, %al
	jne	.LBB68_18
	jmp	.LBB68_20
.LBB68_18:                              # %land.lhs.true
	movq	-40(%rbp), %rax
	subq	$5, %rax
	cmpq	$0, 376(%rax)
	je	.LBB68_20
# BB#19:                                # %cond.true
	jmp	.LBB68_21
.LBB68_20:                              # %cond.false
	movl	$458, %edi              # imm = 0x1CA
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -248(%rbp)        # 8-byte Spill
.LBB68_21:                              # %cond.end
	movq	-40(%rbp), %rax
	subq	$5, %rax
	movq	%rax, -48(%rbp)
	movl	$0, -32(%rbp)
.LBB68_22:                              # %for.cond.30
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$19, -32(%rbp)
	jge	.LBB68_25
# BB#23:                                # %for.body.33
                                        #   in Loop: Header=BB68_22 Depth=1
	movl	$975, %edi              # imm = 0x3CF
	callq	builtin_lisp_symbol
	movslq	-32(%rbp), %rcx
	movq	%rax, -208(%rbp,%rcx,8)
# BB#24:                                # %for.inc.35
                                        #   in Loop: Header=BB68_22 Depth=1
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB68_22
.LBB68_25:                              # %for.end.36
	movl	$1, %ecx
	xorl	%eax, %eax
	movl	%eax, %r8d
	leaq	-208(%rbp), %rdx
	movq	-48(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	merge_face_ref
	movb	$1, %r9b
	testb	$1, %r9b
	movb	%al, -249(%rbp)         # 1-byte Spill
	jne	.LBB68_26
	jmp	.LBB68_27
.LBB68_26:                              # %cond.true.38
	xorl	%eax, %eax
	movq	-48(%rbp), %rcx
	movq	160(%rcx), %rcx
	movl	32(%rcx), %edx
	addl	$0, %edx
	cmpl	%edx, %eax
	jb	.LBB68_28
	jmp	.LBB68_29
.LBB68_27:                              # %cond.false.41
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-48(%rbp), %rdx
	movq	160(%rdx), %rdx
	movslq	32(%rdx), %rdx
	addq	$0, %rdx
	cmpq	%rdx, %rcx
	jae	.LBB68_29
.LBB68_28:                              # %cond.true.48
	movq	-48(%rbp), %rax
	movq	160(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	jmp	.LBB68_30
.LBB68_29:                              # %cond.false.51
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -264(%rbp)        # 8-byte Spill
	jmp	.LBB68_30
.LBB68_30:                              # %cond.end.52
	movq	-264(%rbp), %rax        # 8-byte Reload
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB68_41
# BB#31:                                # %if.then.55
	movq	-48(%rbp), %rdi
	callq	realize_basic_faces
	testb	$1, %al
	jne	.LBB68_33
# BB#32:                                # %if.then.57
	movabsq	$.L.str.25, %rdi
	movb	$0, %al
	callq	error
.LBB68_33:                              # %if.end.58
	movb	$1, %al
	testb	$1, %al
	jne	.LBB68_34
	jmp	.LBB68_35
.LBB68_34:                              # %cond.true.59
	xorl	%eax, %eax
	movq	-48(%rbp), %rcx
	movq	160(%rcx), %rcx
	movl	32(%rcx), %edx
	addl	$0, %edx
	cmpl	%edx, %eax
	jb	.LBB68_36
	jmp	.LBB68_37
.LBB68_35:                              # %cond.false.65
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-48(%rbp), %rdx
	movq	160(%rdx), %rdx
	movslq	32(%rdx), %rdx
	addq	$0, %rdx
	cmpq	%rdx, %rcx
	jae	.LBB68_37
.LBB68_36:                              # %cond.true.72
	movq	-48(%rbp), %rax
	movq	160(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
	jmp	.LBB68_38
.LBB68_37:                              # %cond.false.76
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -272(%rbp)        # 8-byte Spill
	jmp	.LBB68_38
.LBB68_38:                              # %cond.end.77
	movq	-272(%rbp), %rax        # 8-byte Reload
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB68_40
# BB#39:                                # %if.then.81
	callq	emacs_abort
.LBB68_40:                              # %if.end.82
	jmp	.LBB68_41
.LBB68_41:                              # %if.end.83
	movq	-48(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$1, %ecx
	jne	.LBB68_43
# BB#42:                                # %if.then.86
	leaq	-208(%rbp), %rsi
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rdx
	callq	tty_supports_face_attributes_p
	andb	$1, %al
	movb	%al, -25(%rbp)
	jmp	.LBB68_44
.LBB68_43:                              # %if.else.89
	leaq	-208(%rbp), %rsi
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rdx
	callq	x_supports_face_attributes_p
	andb	$1, %al
	movb	%al, -25(%rbp)
.LBB68_44:                              # %if.end.93
	testb	$1, -25(%rbp)
	je	.LBB68_46
# BB#45:                                # %cond.true.96
	movl	$901, %edi              # imm = 0x385
	callq	builtin_lisp_symbol
	movq	%rax, -280(%rbp)        # 8-byte Spill
	jmp	.LBB68_47
.LBB68_46:                              # %cond.false.98
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, -280(%rbp)        # 8-byte Spill
.LBB68_47:                              # %cond.end.100
	movq	-280(%rbp), %rax        # 8-byte Reload
	movq	%rax, -8(%rbp)
.LBB68_48:                              # %return
	movq	-8(%rbp), %rax
	addq	$288, %rsp              # imm = 0x120
	popq	%rbp
	retq
.Lfunc_end68:
	.size	Fdisplay_supports_face_attributes_p, .Lfunc_end68-Fdisplay_supports_face_attributes_p
	.cfi_endproc

	.align	16, 0x90
	.type	tty_supports_face_attributes_p,@function
tty_supports_face_attributes_p:         # @tty_supports_face_attributes_p
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp207:
	.cfi_def_cfa_offset 16
.Ltmp208:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp209:
	.cfi_def_cfa_register %rbp
	subq	$336, %rsp              # imm = 0x150
	movl	$975, %eax              # imm = 0x3CF
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movl	$0, -132(%rbp)
	movq	-32(%rbp), %rdx
	movq	%rdx, -144(%rbp)
	movq	-24(%rbp), %rdx
	movq	8(%rdx), %rdx
	movl	%eax, %edi
	movq	%rdx, -216(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-216(%rbp), %rdx        # 8-byte Reload
	cmpq	%rax, %rdx
	jne	.LBB69_8
# BB#1:                                 # %lor.lhs.false
	movl	$975, %edi              # imm = 0x3CF
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-224(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB69_8
# BB#2:                                 # %lor.lhs.false.4
	movl	$975, %edi              # imm = 0x3CF
	movq	-24(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-232(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB69_8
# BB#3:                                 # %lor.lhs.false.8
	movl	$975, %edi              # imm = 0x3CF
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-240(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB69_8
# BB#4:                                 # %lor.lhs.false.12
	movl	$975, %edi              # imm = 0x3CF
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-248(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB69_8
# BB#5:                                 # %lor.lhs.false.16
	movl	$975, %edi              # imm = 0x3CF
	movq	-24(%rbp), %rax
	movq	96(%rax), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-256(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB69_8
# BB#6:                                 # %lor.lhs.false.20
	movl	$975, %edi              # imm = 0x3CF
	movq	-24(%rbp), %rax
	movq	104(%rax), %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-264(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB69_8
# BB#7:                                 # %lor.lhs.false.24
	movl	$975, %edi              # imm = 0x3CF
	movq	-24(%rbp), %rax
	movq	112(%rax), %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-272(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB69_9
.LBB69_8:                               # %if.then
	movb	$0, -1(%rbp)
	jmp	.LBB69_87
.LBB69_9:                               # %if.end
	movl	$975, %edi              # imm = 0x3CF
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-280(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB69_24
# BB#10:                                # %land.lhs.true
	movl	$5, %edi
	xorl	%edx, %edx
	movq	-48(%rbp), %rsi
	callq	font_style_to_value
	sarl	$8, %eax
	movl	%eax, -36(%rbp)
	cmpl	$0, -36(%rbp)
	jl	.LBB69_24
# BB#11:                                # %if.then.33
	movl	$5, %edi
	xorl	%edx, %edx
	movq	-144(%rbp), %rax
	movq	40(%rax), %rsi
	callq	font_style_to_value
	sarl	$8, %eax
	movl	%eax, -148(%rbp)
	cmpl	$100, -36(%rbp)
	jle	.LBB69_15
# BB#12:                                # %if.then.38
	cmpl	$100, -148(%rbp)
	jle	.LBB69_14
# BB#13:                                # %if.then.40
	movb	$0, -1(%rbp)
	jmp	.LBB69_87
.LBB69_14:                              # %if.end.41
	movl	$4, -132(%rbp)
	jmp	.LBB69_23
.LBB69_15:                              # %if.else
	cmpl	$100, -36(%rbp)
	jge	.LBB69_19
# BB#16:                                # %if.then.43
	cmpl	$100, -148(%rbp)
	jge	.LBB69_18
# BB#17:                                # %if.then.45
	movb	$0, -1(%rbp)
	jmp	.LBB69_87
.LBB69_18:                              # %if.end.46
	movl	$8, -132(%rbp)
	jmp	.LBB69_22
.LBB69_19:                              # %if.else.47
	cmpl	$100, -148(%rbp)
	jne	.LBB69_21
# BB#20:                                # %if.then.49
	movb	$0, -1(%rbp)
	jmp	.LBB69_87
.LBB69_21:                              # %if.end.50
	jmp	.LBB69_22
.LBB69_22:                              # %if.end.51
	jmp	.LBB69_23
.LBB69_23:                              # %if.end.52
	jmp	.LBB69_24
.LBB69_24:                              # %if.end.53
	movl	$975, %edi              # imm = 0x3CF
	movq	-24(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-288(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB69_31
# BB#25:                                # %land.lhs.true.57
	movl	$6, %edi
	xorl	%edx, %edx
	movq	-48(%rbp), %rsi
	callq	font_style_to_value
	sarl	$8, %eax
	movl	%eax, -40(%rbp)
	cmpl	$0, -40(%rbp)
	jl	.LBB69_31
# BB#26:                                # %if.then.61
	movl	$6, %edi
	xorl	%edx, %edx
	movq	-144(%rbp), %rax
	movq	48(%rax), %rsi
	callq	font_style_to_value
	sarl	$8, %eax
	movl	%eax, -152(%rbp)
	cmpl	$100, -40(%rbp)
	je	.LBB69_28
# BB#27:                                # %lor.lhs.false.66
	movl	-40(%rbp), %eax
	cmpl	-152(%rbp), %eax
	jne	.LBB69_29
.LBB69_28:                              # %if.then.68
	movb	$0, -1(%rbp)
	jmp	.LBB69_87
.LBB69_29:                              # %if.else.69
	movl	-132(%rbp), %eax
	orl	$16, %eax
	movl	%eax, -132(%rbp)
# BB#30:                                # %if.end.70
	jmp	.LBB69_31
.LBB69_31:                              # %if.end.71
	movl	$975, %edi              # imm = 0x3CF
	movq	-24(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-296(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB69_43
# BB#32:                                # %if.then.75
	movq	-48(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB69_33
	jmp	.LBB69_34
.LBB69_33:                              # %if.then.77
	movb	$0, -1(%rbp)
	jmp	.LBB69_87
.LBB69_34:                              # %if.else.78
	movq	-48(%rbp), %rdi
	callq	CAR_SAFE
	movl	$127, %edi
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-304(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB69_37
# BB#35:                                # %land.lhs.true.82
	movq	-48(%rbp), %rdi
	callq	CDR_SAFE
	movq	%rax, %rdi
	callq	CAR_SAFE
	movl	$1012, %edi             # imm = 0x3F4
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-312(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB69_37
# BB#36:                                # %if.then.87
	movb	$0, -1(%rbp)
	jmp	.LBB69_87
.LBB69_37:                              # %if.else.88
	movq	-48(%rbp), %rdi
	movq	-144(%rbp), %rax
	movq	56(%rax), %rsi
	callq	face_attr_equal_p
	testb	$1, %al
	jne	.LBB69_38
	jmp	.LBB69_39
.LBB69_38:                              # %if.then.91
	movb	$0, -1(%rbp)
	jmp	.LBB69_87
.LBB69_39:                              # %if.else.92
	movl	-132(%rbp), %eax
	orl	$2, %eax
	movl	%eax, -132(%rbp)
# BB#40:                                # %if.end.94
	jmp	.LBB69_41
.LBB69_41:                              # %if.end.95
	jmp	.LBB69_42
.LBB69_42:                              # %if.end.96
	jmp	.LBB69_43
.LBB69_43:                              # %if.end.97
	movl	$975, %edi              # imm = 0x3CF
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -320(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-320(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB69_48
# BB#44:                                # %if.then.101
	movq	-48(%rbp), %rdi
	movq	-144(%rbp), %rax
	movq	64(%rax), %rsi
	callq	face_attr_equal_p
	testb	$1, %al
	jne	.LBB69_45
	jmp	.LBB69_46
.LBB69_45:                              # %if.then.104
	movb	$0, -1(%rbp)
	jmp	.LBB69_87
.LBB69_46:                              # %if.else.105
	movl	-132(%rbp), %eax
	orl	$1, %eax
	movl	%eax, -132(%rbp)
# BB#47:                                # %if.end.107
	jmp	.LBB69_48
.LBB69_48:                              # %if.end.108
	movq	-24(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB69_49
	jmp	.LBB69_62
.LBB69_49:                              # %if.then.111
	movq	-144(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, -160(%rbp)
	movq	-56(%rbp), %rdi
	movq	-160(%rbp), %rsi
	callq	face_attr_equal_p
	testb	$1, %al
	jne	.LBB69_50
	jmp	.LBB69_51
.LBB69_50:                              # %if.then.114
	movb	$0, -1(%rbp)
	jmp	.LBB69_87
.LBB69_51:                              # %if.else.115
	leaq	-80(%rbp), %rdx
	leaq	-96(%rbp), %rcx
	movq	-16(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	tty_lookup_color
	testb	$1, %al
	jne	.LBB69_53
# BB#52:                                # %if.then.117
	movb	$0, -1(%rbp)
	jmp	.LBB69_87
.LBB69_53:                              # %if.else.118
	leaq	-80(%rbp), %rdi
	leaq	-96(%rbp), %rsi
	callq	color_distance
	cmpl	$10000, %eax            # imm = 0x2710
	jle	.LBB69_55
# BB#54:                                # %if.then.121
	movb	$0, -1(%rbp)
	jmp	.LBB69_87
.LBB69_55:                              # %if.else.122
	leaq	-176(%rbp), %rdx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdi
	movq	-160(%rbp), %rsi
	callq	tty_lookup_color
	testb	$1, %al
	jne	.LBB69_56
	jmp	.LBB69_58
.LBB69_56:                              # %land.lhs.true.124
	leaq	-80(%rbp), %rdi
	leaq	-176(%rbp), %rsi
	callq	color_distance
	cmpl	$10000, %eax            # imm = 0x2710
	jg	.LBB69_58
# BB#57:                                # %if.then.127
	movb	$0, -1(%rbp)
	jmp	.LBB69_87
.LBB69_58:                              # %if.end.128
	jmp	.LBB69_59
.LBB69_59:                              # %if.end.129
	jmp	.LBB69_60
.LBB69_60:                              # %if.end.130
	jmp	.LBB69_61
.LBB69_61:                              # %if.end.131
	jmp	.LBB69_62
.LBB69_62:                              # %if.end.132
	movq	-24(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB69_63
	jmp	.LBB69_76
.LBB69_63:                              # %if.then.135
	movq	-144(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rax, -184(%rbp)
	movq	-64(%rbp), %rdi
	movq	-184(%rbp), %rsi
	callq	face_attr_equal_p
	testb	$1, %al
	jne	.LBB69_64
	jmp	.LBB69_65
.LBB69_64:                              # %if.then.138
	movb	$0, -1(%rbp)
	jmp	.LBB69_87
.LBB69_65:                              # %if.else.139
	leaq	-112(%rbp), %rdx
	leaq	-128(%rbp), %rcx
	movq	-16(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	tty_lookup_color
	testb	$1, %al
	jne	.LBB69_67
# BB#66:                                # %if.then.141
	movb	$0, -1(%rbp)
	jmp	.LBB69_87
.LBB69_67:                              # %if.else.142
	leaq	-112(%rbp), %rdi
	leaq	-128(%rbp), %rsi
	callq	color_distance
	cmpl	$10000, %eax            # imm = 0x2710
	jle	.LBB69_69
# BB#68:                                # %if.then.145
	movb	$0, -1(%rbp)
	jmp	.LBB69_87
.LBB69_69:                              # %if.else.146
	leaq	-200(%rbp), %rdx
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-16(%rbp), %rdi
	movq	-184(%rbp), %rsi
	callq	tty_lookup_color
	testb	$1, %al
	jne	.LBB69_70
	jmp	.LBB69_72
.LBB69_70:                              # %land.lhs.true.148
	leaq	-112(%rbp), %rdi
	leaq	-200(%rbp), %rsi
	callq	color_distance
	cmpl	$10000, %eax            # imm = 0x2710
	jg	.LBB69_72
# BB#71:                                # %if.then.151
	movb	$0, -1(%rbp)
	jmp	.LBB69_87
.LBB69_72:                              # %if.end.152
	jmp	.LBB69_73
.LBB69_73:                              # %if.end.153
	jmp	.LBB69_74
.LBB69_74:                              # %if.end.154
	jmp	.LBB69_75
.LBB69_75:                              # %if.end.155
	jmp	.LBB69_76
.LBB69_76:                              # %if.end.156
	movq	-56(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB69_77
	jmp	.LBB69_82
.LBB69_77:                              # %land.lhs.true.158
	movq	-64(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB69_78
	jmp	.LBB69_82
.LBB69_78:                              # %if.then.160
	leaq	-96(%rbp), %rdi
	leaq	-128(%rbp), %rsi
	callq	color_distance
	leaq	-80(%rbp), %rdi
	leaq	-112(%rbp), %rsi
	movl	%eax, -324(%rbp)        # 4-byte Spill
	callq	color_distance
	movl	-324(%rbp), %ecx        # 4-byte Reload
	subl	%eax, %ecx
	movl	%ecx, -204(%rbp)
	cmpl	$10000, -204(%rbp)      # imm = 0x2710
	jg	.LBB69_80
# BB#79:                                # %lor.lhs.false.164
	cmpl	$-10000, -204(%rbp)     # imm = 0xFFFFFFFFFFFFD8F0
	jge	.LBB69_81
.LBB69_80:                              # %if.then.166
	movb	$0, -1(%rbp)
	jmp	.LBB69_87
.LBB69_81:                              # %if.end.167
	jmp	.LBB69_82
.LBB69_82:                              # %if.end.168
	movq	-16(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$1, %ecx
	je	.LBB69_84
# BB#83:                                # %lor.lhs.false.170
	movq	-16(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB69_85
.LBB69_84:                              # %cond.true
	movq	-16(%rbp), %rax
	movq	376(%rax), %rax
	movq	88(%rax), %rdi
	movq	%rdi, -336(%rbp)        # 8-byte Spill
	jmp	.LBB69_86
.LBB69_85:                              # %cond.false
	callq	emacs_abort
.LBB69_86:                              # %cond.end
	movl	-132(%rbp), %esi
	movq	-336(%rbp), %rdi        # 8-byte Reload
	callq	tty_capable_p
	andb	$1, %al
	movb	%al, -1(%rbp)
.LBB69_87:                              # %return
	movb	-1(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$336, %rsp              # imm = 0x150
	popq	%rbp
	retq
.Lfunc_end69:
	.size	tty_supports_face_attributes_p, .Lfunc_end69-tty_supports_face_attributes_p
	.cfi_endproc

	.align	16, 0x90
	.type	x_supports_face_attributes_p,@function
x_supports_face_attributes_p:           # @x_supports_face_attributes_p
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
	subq	$448, %rsp              # imm = 0x1C0
	movl	$975, %eax              # imm = 0x3CF
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	-32(%rbp), %rdx
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rdx
	movq	56(%rdx), %rdx
	movl	%eax, %edi
	movq	%rdx, -240(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-240(%rbp), %rdx        # 8-byte Reload
	cmpq	%rax, %rdx
	je	.LBB70_2
# BB#1:                                 # %land.lhs.true
	movq	-24(%rbp), %rax
	movq	56(%rax), %rdi
	movq	-40(%rbp), %rax
	movq	56(%rax), %rsi
	callq	face_attr_equal_p
	testb	$1, %al
	jne	.LBB70_18
.LBB70_2:                               # %lor.lhs.false
	movl	$975, %edi              # imm = 0x3CF
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-248(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB70_4
# BB#3:                                 # %land.lhs.true.7
	movq	-24(%rbp), %rax
	movq	64(%rax), %rdi
	movq	-40(%rbp), %rax
	movq	64(%rax), %rsi
	callq	face_attr_equal_p
	testb	$1, %al
	jne	.LBB70_18
.LBB70_4:                               # %lor.lhs.false.11
	movl	$975, %edi              # imm = 0x3CF
	movq	-24(%rbp), %rax
	movq	72(%rax), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-256(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB70_6
# BB#5:                                 # %land.lhs.true.15
	movq	-24(%rbp), %rax
	movq	72(%rax), %rdi
	movq	-40(%rbp), %rax
	movq	72(%rax), %rsi
	callq	face_attr_equal_p
	testb	$1, %al
	jne	.LBB70_18
.LBB70_6:                               # %lor.lhs.false.19
	movl	$975, %edi              # imm = 0x3CF
	movq	-24(%rbp), %rax
	movq	144(%rax), %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-264(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB70_8
# BB#7:                                 # %land.lhs.true.23
	movq	-24(%rbp), %rax
	movq	144(%rax), %rdi
	movq	-40(%rbp), %rax
	movq	144(%rax), %rsi
	callq	face_attr_equal_p
	testb	$1, %al
	jne	.LBB70_18
.LBB70_8:                               # %lor.lhs.false.27
	movl	$975, %edi              # imm = 0x3CF
	movq	-24(%rbp), %rax
	movq	80(%rax), %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-272(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB70_10
# BB#9:                                 # %land.lhs.true.31
	movq	-24(%rbp), %rax
	movq	80(%rax), %rdi
	movq	-40(%rbp), %rax
	movq	80(%rax), %rsi
	callq	face_attr_equal_p
	testb	$1, %al
	jne	.LBB70_18
.LBB70_10:                              # %lor.lhs.false.35
	movl	$975, %edi              # imm = 0x3CF
	movq	-24(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-280(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB70_12
# BB#11:                                # %land.lhs.true.39
	movq	-24(%rbp), %rax
	movq	88(%rax), %rdi
	movq	-40(%rbp), %rax
	movq	88(%rax), %rsi
	callq	face_attr_equal_p
	testb	$1, %al
	jne	.LBB70_18
.LBB70_12:                              # %lor.lhs.false.43
	movl	$975, %edi              # imm = 0x3CF
	movq	-24(%rbp), %rax
	movq	96(%rax), %rax
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-288(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB70_14
# BB#13:                                # %land.lhs.true.47
	movq	-24(%rbp), %rax
	movq	96(%rax), %rdi
	movq	-40(%rbp), %rax
	movq	96(%rax), %rsi
	callq	face_attr_equal_p
	testb	$1, %al
	jne	.LBB70_18
.LBB70_14:                              # %lor.lhs.false.51
	movl	$975, %edi              # imm = 0x3CF
	movq	-24(%rbp), %rax
	movq	104(%rax), %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-296(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB70_16
# BB#15:                                # %land.lhs.true.55
	movq	-24(%rbp), %rax
	movq	104(%rax), %rdi
	movq	-40(%rbp), %rax
	movq	104(%rax), %rsi
	callq	face_attr_equal_p
	testb	$1, %al
	jne	.LBB70_18
.LBB70_16:                              # %lor.lhs.false.59
	movl	$975, %edi              # imm = 0x3CF
	movq	-24(%rbp), %rax
	movq	112(%rax), %rax
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-304(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB70_19
# BB#17:                                # %land.lhs.true.63
	movq	-24(%rbp), %rax
	movq	112(%rax), %rdi
	movq	-40(%rbp), %rax
	movq	112(%rax), %rsi
	callq	face_attr_equal_p
	testb	$1, %al
	jne	.LBB70_18
	jmp	.LBB70_19
.LBB70_18:                              # %if.then
	movb	$0, -1(%rbp)
	jmp	.LBB70_49
.LBB70_19:                              # %if.end
	movl	$975, %edi              # imm = 0x3CF
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-312(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB70_25
# BB#20:                                # %lor.lhs.false.70
	movl	$975, %edi              # imm = 0x3CF
	movq	-24(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -320(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-320(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB70_25
# BB#21:                                # %lor.lhs.false.74
	movl	$975, %edi              # imm = 0x3CF
	movq	-24(%rbp), %rax
	movq	32(%rax), %rax
	movq	%rax, -328(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-328(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB70_25
# BB#22:                                # %lor.lhs.false.78
	movl	$975, %edi              # imm = 0x3CF
	movq	-24(%rbp), %rax
	movq	40(%rax), %rax
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-336(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB70_25
# BB#23:                                # %lor.lhs.false.82
	movl	$975, %edi              # imm = 0x3CF
	movq	-24(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -344(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-344(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB70_25
# BB#24:                                # %lor.lhs.false.86
	movl	$975, %edi              # imm = 0x3CF
	movq	-24(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -352(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-352(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB70_48
.LBB70_25:                              # %if.then.90
	xorl	%eax, %eax
	movl	%eax, %ecx
	leaq	-208(%rbp), %rdx
	movl	$152, %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	movq	-40(%rbp), %r8
	movq	%rsi, -360(%rbp)        # 8-byte Spill
	movq	%r8, %rsi
	movq	-360(%rbp), %r8         # 8-byte Reload
	movq	%rdx, -368(%rbp)        # 8-byte Spill
	movq	%r8, %rdx
	movq	%rcx, -376(%rbp)        # 8-byte Spill
	callq	memcpy
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-368(%rbp), %rdx        # 8-byte Reload
	movq	-376(%rbp), %rcx        # 8-byte Reload
	callq	merge_face_vectors
	leaq	-208(%rbp), %rsi
	movq	-16(%rbp), %rdi
	callq	lookup_face
	movb	$1, %r9b
	movl	%eax, -44(%rbp)
	testb	$1, %r9b
	jne	.LBB70_26
	jmp	.LBB70_27
.LBB70_26:                              # %cond.true
	movl	-44(%rbp), %eax
	addl	$0, %eax
	movq	-16(%rbp), %rcx
	movq	160(%rcx), %rcx
	movl	32(%rcx), %edx
	addl	$0, %edx
	cmpl	%edx, %eax
	jb	.LBB70_28
	jmp	.LBB70_29
.LBB70_27:                              # %cond.false
	movslq	-44(%rbp), %rax
	addq	$0, %rax
	movq	-16(%rbp), %rcx
	movq	160(%rcx), %rcx
	movslq	32(%rcx), %rcx
	addq	$0, %rcx
	cmpq	%rcx, %rax
	jae	.LBB70_29
.LBB70_28:                              # %cond.true.103
	movslq	-44(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	160(%rcx), %rcx
	movq	16(%rcx), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -384(%rbp)        # 8-byte Spill
	jmp	.LBB70_30
.LBB70_29:                              # %cond.false.106
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -384(%rbp)        # 8-byte Spill
	jmp	.LBB70_30
.LBB70_30:                              # %cond.end
	movq	-384(%rbp), %rax        # 8-byte Reload
	movq	%rax, -56(%rbp)
	cmpq	$0, -56(%rbp)
	jne	.LBB70_32
# BB#31:                                # %if.then.107
	movabsq	$.L.str.55, %rdi
	movb	$0, %al
	callq	error
.LBB70_32:                              # %if.end.108
	movq	-56(%rbp), %rax
	movq	224(%rax), %rax
	movq	-32(%rbp), %rcx
	cmpq	224(%rcx), %rax
	je	.LBB70_34
# BB#33:                                # %lor.lhs.false.112
	movq	-56(%rbp), %rax
	cmpq	$0, 224(%rax)
	jne	.LBB70_35
.LBB70_34:                              # %if.then.115
	movb	$0, -1(%rbp)
	jmp	.LBB70_49
.LBB70_35:                              # %if.end.116
	movl	$0, -212(%rbp)
.LBB70_36:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$8, -212(%rbp)
	jg	.LBB70_47
# BB#37:                                # %for.body
                                        #   in Loop: Header=BB70_36 Depth=1
	movslq	-212(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	224(%rcx), %rcx
	movq	8(%rcx,%rax,8), %rax
	movslq	-212(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movq	224(%rdx), %rdx
	cmpq	8(%rdx,%rcx,8), %rax
	je	.LBB70_45
# BB#38:                                # %if.then.128
                                        #   in Loop: Header=BB70_36 Depth=1
	cmpl	$1, -212(%rbp)
	jl	.LBB70_41
# BB#39:                                # %lor.lhs.false.131
                                        #   in Loop: Header=BB70_36 Depth=1
	cmpl	$4, -212(%rbp)
	jg	.LBB70_41
# BB#40:                                # %lor.lhs.false.134
                                        #   in Loop: Header=BB70_36 Depth=1
	movq	-56(%rbp), %rax
	movq	224(%rax), %rax
	movq	208(%rax), %rax
	testb	$1, 8(%rax)
	je	.LBB70_42
.LBB70_41:                              # %if.then.138
	movb	$1, -1(%rbp)
	jmp	.LBB70_49
.LBB70_42:                              # %if.end.139
                                        #   in Loop: Header=BB70_36 Depth=1
	movslq	-212(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	224(%rcx), %rcx
	movq	8(%rcx,%rax,8), %rdi
	callq	SYMBOL_NAME
	movq	%rax, -224(%rbp)
	movslq	-212(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	224(%rcx), %rcx
	movq	8(%rcx,%rax,8), %rdi
	callq	SYMBOL_NAME
	xorl	%edi, %edi
	movq	%rax, -232(%rbp)
	movq	-224(%rbp), %rax
	movq	%rax, -392(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	-232(%rbp), %rcx
	movq	%rax, -400(%rbp)        # 8-byte Spill
	movq	%rcx, -408(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$901, %edi              # imm = 0x385
	movq	%rax, -416(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$2, %edi
	movl	%edi, %ecx
	movq	-392(%rbp), %rdi        # 8-byte Reload
	movq	%rcx, %rsi
	movq	-400(%rbp), %rdx        # 8-byte Reload
	movq	-408(%rbp), %r8         # 8-byte Reload
	movq	%rcx, -424(%rbp)        # 8-byte Spill
	movq	%r8, %rcx
	movq	-424(%rbp), %r8         # 8-byte Reload
	movq	-416(%rbp), %r9         # 8-byte Reload
	movq	%rax, (%rsp)
	callq	Fcompare_strings
	movl	$901, %edi              # imm = 0x385
	movq	%rax, -432(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-432(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB70_44
# BB#43:                                # %if.then.157
	movb	$1, -1(%rbp)
	jmp	.LBB70_49
.LBB70_44:                              # %if.end.158
                                        #   in Loop: Header=BB70_36 Depth=1
	jmp	.LBB70_45
.LBB70_45:                              # %if.end.159
                                        #   in Loop: Header=BB70_36 Depth=1
	jmp	.LBB70_46
.LBB70_46:                              # %for.inc
                                        #   in Loop: Header=BB70_36 Depth=1
	movl	-212(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -212(%rbp)
	jmp	.LBB70_36
.LBB70_47:                              # %for.end
	movb	$0, -1(%rbp)
	jmp	.LBB70_49
.LBB70_48:                              # %if.end.160
	movb	$1, -1(%rbp)
.LBB70_49:                              # %return
	movb	-1(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$448, %rsp              # imm = 0x1C0
	popq	%rbp
	retq
.Lfunc_end70:
	.size	x_supports_face_attributes_p, .Lfunc_end70-x_supports_face_attributes_p
	.cfi_endproc

	.globl	Finternal_set_font_selection_order
	.align	16, 0x90
	.type	Finternal_set_font_selection_order,@function
Finternal_set_font_selection_order:     # @Finternal_set_font_selection_order
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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	CHECK_LIST
	xorl	%esi, %esi
	movl	$16, %eax
	movl	%eax, %edx
	leaq	-48(%rbp), %rdi
	callq	memset
	movl	$0, -20(%rbp)
	movq	-8(%rbp), %rdx
	movq	%rdx, -16(%rbp)
.LBB71_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-16(%rbp), %rdx
	andq	$7, %rdx
	movl	%edx, %eax
	cmpl	$3, %eax
	movb	%cl, -61(%rbp)          # 1-byte Spill
	jne	.LBB71_3
# BB#2:                                 # %land.rhs
                                        #   in Loop: Header=BB71_1 Depth=1
	movslq	-20(%rbp), %rax
	cmpq	$4, %rax
	setb	%cl
	movb	%cl, -61(%rbp)          # 1-byte Spill
.LBB71_3:                               # %land.end
                                        #   in Loop: Header=BB71_1 Depth=1
	movb	-61(%rbp), %al          # 1-byte Reload
	testb	$1, %al
	jne	.LBB71_4
	jmp	.LBB71_20
.LBB71_4:                               # %for.body
                                        #   in Loop: Header=BB71_1 Depth=1
	movl	$139, %edi
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-72(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB71_6
# BB#5:                                 # %if.then
                                        #   in Loop: Header=BB71_1 Depth=1
	movl	$4, -60(%rbp)
	jmp	.LBB71_16
.LBB71_6:                               # %if.else
                                        #   in Loop: Header=BB71_1 Depth=1
	movl	$58, %edi
	movq	-56(%rbp), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-80(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB71_8
# BB#7:                                 # %if.then.10
                                        #   in Loop: Header=BB71_1 Depth=1
	movl	$7, -60(%rbp)
	jmp	.LBB71_15
.LBB71_8:                               # %if.else.11
                                        #   in Loop: Header=BB71_1 Depth=1
	movl	$138, %edi
	movq	-56(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-88(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB71_10
# BB#9:                                 # %if.then.15
                                        #   in Loop: Header=BB71_1 Depth=1
	movl	$2, -60(%rbp)
	jmp	.LBB71_14
.LBB71_10:                              # %if.else.16
                                        #   in Loop: Header=BB71_1 Depth=1
	movl	$119, %edi
	movq	-56(%rbp), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-96(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB71_12
# BB#11:                                # %if.then.20
                                        #   in Loop: Header=BB71_1 Depth=1
	movl	$3, -60(%rbp)
	jmp	.LBB71_13
.LBB71_12:                              # %if.else.21
	jmp	.LBB71_20
.LBB71_13:                              # %if.end
                                        #   in Loop: Header=BB71_1 Depth=1
	jmp	.LBB71_14
.LBB71_14:                              # %if.end.22
                                        #   in Loop: Header=BB71_1 Depth=1
	jmp	.LBB71_15
.LBB71_15:                              # %if.end.23
                                        #   in Loop: Header=BB71_1 Depth=1
	jmp	.LBB71_16
.LBB71_16:                              # %if.end.24
                                        #   in Loop: Header=BB71_1 Depth=1
	movslq	-20(%rbp), %rax
	cmpl	$0, -48(%rbp,%rax,4)
	je	.LBB71_18
# BB#17:                                # %if.then.27
	jmp	.LBB71_20
.LBB71_18:                              # %if.end.28
                                        #   in Loop: Header=BB71_1 Depth=1
	movl	-60(%rbp), %eax
	movslq	-20(%rbp), %rcx
	movl	%eax, -48(%rbp,%rcx,4)
# BB#19:                                # %for.inc
                                        #   in Loop: Header=BB71_1 Depth=1
	movq	-16(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	movl	-20(%rbp), %ecx
	addl	$1, %ecx
	movl	%ecx, -20(%rbp)
	jmp	.LBB71_1
.LBB71_20:                              # %for.end
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-104(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB71_22
# BB#21:                                # %lor.lhs.false
	movslq	-20(%rbp), %rax
	cmpq	$4, %rax
	je	.LBB71_23
.LBB71_22:                              # %if.then.38
	movabsq	$.L.str.26, %rdi
	movq	-8(%rbp), %rsi
	callq	signal_error
.LBB71_23:                              # %if.end.39
	movl	$0, -20(%rbp)
.LBB71_24:                              # %for.cond.40
                                        # =>This Inner Loop Header: Depth=1
	movslq	-20(%rbp), %rax
	cmpq	$4, %rax
	jae	.LBB71_29
# BB#25:                                # %for.body.44
                                        #   in Loop: Header=BB71_24 Depth=1
	movslq	-20(%rbp), %rax
	cmpl	$0, -48(%rbp,%rax,4)
	jne	.LBB71_27
# BB#26:                                # %if.then.49
	movabsq	$.L.str.26, %rdi
	movq	-8(%rbp), %rsi
	callq	signal_error
.LBB71_27:                              # %if.end.50
                                        #   in Loop: Header=BB71_24 Depth=1
	jmp	.LBB71_28
.LBB71_28:                              # %for.inc.51
                                        #   in Loop: Header=BB71_24 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	.LBB71_24
.LBB71_29:                              # %for.end.53
	leaq	-48(%rbp), %rax
	movl	$font_sort_order, %ecx
	movl	%ecx, %esi
	movl	$16, %ecx
	movl	%ecx, %edx
	movq	%rax, %rdi
	callq	memcmp
	cmpl	$0, %eax
	je	.LBB71_31
# BB#30:                                # %if.then.57
	xorl	%edi, %edi
	movq	-48(%rbp), %rax
	movq	%rax, font_sort_order
	movq	-40(%rbp), %rax
	movq	%rax, font_sort_order+8
	callq	builtin_lisp_symbol
	movq	%rax, %rdi
	callq	free_all_realized_faces
.LBB71_31:                              # %if.end.59
	movabsq	$font_sort_order, %rdi
	callq	font_update_sort_order
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	addq	$112, %rsp
	popq	%rbp
	retq
.Lfunc_end71:
	.size	Finternal_set_font_selection_order, .Lfunc_end71-Finternal_set_font_selection_order
	.cfi_endproc

	.globl	Finternal_set_alternative_font_family_alist
	.align	16, 0x90
	.type	Finternal_set_alternative_font_family_alist,@function
Finternal_set_alternative_font_family_alist: # @Finternal_set_alternative_font_family_alist
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	CHECK_LIST
	movq	-8(%rbp), %rdi
	callq	Fcopy_sequence
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
.LBB72_1:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB72_3 Depth 2
	movq	-24(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB72_8
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB72_1 Depth=1
	movq	-24(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	CHECK_LIST
	movq	-16(%rbp), %rdi
	callq	Fcopy_sequence
	movq	%rax, -16(%rbp)
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	XSETCAR
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
.LBB72_3:                               # %for.cond.4
                                        #   Parent Loop BB72_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-32(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB72_6
# BB#4:                                 # %for.body.9
                                        #   in Loop: Header=BB72_3 Depth=2
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	movq	-32(%rbp), %rcx
	subq	$3, %rcx
	movq	(%rcx), %rcx
	movq	%rcx, -40(%rbp)         # 8-byte Spill
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	Fintern
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	XSETCAR
# BB#5:                                 # %for.inc
                                        #   in Loop: Header=BB72_3 Depth=2
	movq	-32(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB72_3
.LBB72_6:                               # %for.end
                                        #   in Loop: Header=BB72_1 Depth=1
	jmp	.LBB72_7
.LBB72_7:                               # %for.inc.15
                                        #   in Loop: Header=BB72_1 Depth=1
	movq	-24(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB72_1
.LBB72_8:                               # %for.end.19
	xorl	%edi, %edi
	movq	-8(%rbp), %rax
	movq	%rax, Vface_alternative_font_family_alist
	callq	builtin_lisp_symbol
	movq	%rax, %rdi
	callq	free_all_realized_faces
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end72:
	.size	Finternal_set_alternative_font_family_alist, .Lfunc_end72-Finternal_set_alternative_font_family_alist
	.cfi_endproc

	.globl	Finternal_set_alternative_font_registry_alist
	.align	16, 0x90
	.type	Finternal_set_alternative_font_registry_alist,@function
Finternal_set_alternative_font_registry_alist: # @Finternal_set_alternative_font_registry_alist
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	CHECK_LIST
	movq	-8(%rbp), %rdi
	callq	Fcopy_sequence
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -24(%rbp)
.LBB73_1:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB73_3 Depth 2
	movq	-24(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB73_8
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB73_1 Depth=1
	movq	-24(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	CHECK_LIST
	movq	-16(%rbp), %rdi
	callq	Fcopy_sequence
	movq	%rax, -16(%rbp)
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	XSETCAR
	movq	-16(%rbp), %rax
	movq	%rax, -32(%rbp)
.LBB73_3:                               # %for.cond.4
                                        #   Parent Loop BB73_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	-32(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB73_6
# BB#4:                                 # %for.body.9
                                        #   in Loop: Header=BB73_3 Depth=2
	movq	-32(%rbp), %rdi
	movq	-32(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	Fdowncase
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	XSETCAR
# BB#5:                                 # %for.inc
                                        #   in Loop: Header=BB73_3 Depth=2
	movq	-32(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB73_3
.LBB73_6:                               # %for.end
                                        #   in Loop: Header=BB73_1 Depth=1
	jmp	.LBB73_7
.LBB73_7:                               # %for.inc.14
                                        #   in Loop: Header=BB73_1 Depth=1
	movq	-24(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -24(%rbp)
	jmp	.LBB73_1
.LBB73_8:                               # %for.end.18
	xorl	%edi, %edi
	movq	-8(%rbp), %rax
	movq	%rax, Vface_alternative_font_registry_alist
	callq	builtin_lisp_symbol
	movq	%rax, %rdi
	callq	free_all_realized_faces
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end73:
	.size	Finternal_set_alternative_font_registry_alist, .Lfunc_end73-Finternal_set_alternative_font_registry_alist
	.cfi_endproc

	.globl	Ftty_suppress_bold_inverse_default_colors
	.align	16, 0x90
	.type	Ftty_suppress_bold_inverse_default_colors,@function
Ftty_suppress_bold_inverse_default_colors: # @Ftty_suppress_bold_inverse_default_colors
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
	subq	$16, %rsp
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	%rdi, -16(%rbp)         # 8-byte Spill
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	sete	%dl
	xorb	$-1, %dl
	andb	$1, %dl
	movb	%dl, tty_suppress_bold_inverse_default_colors_p
	movb	$1, face_change
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end74:
	.size	Ftty_suppress_bold_inverse_default_colors, .Lfunc_end74-Ftty_suppress_bold_inverse_default_colors
	.cfi_endproc

	.globl	compute_char_face
	.align	16, 0x90
	.type	compute_char_face,@function
compute_char_face:                      # @compute_char_face
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
	subq	$304, %rsp              # imm = 0x130
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	current_buffer, %rdx
	movq	312(%rdx), %rdx
	movl	%eax, %edi
	movq	%rdx, -208(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-208(%rbp), %rdx        # 8-byte Reload
	cmpq	%rax, %rdx
	jne	.LBB75_2
# BB#1:                                 # %if.then
	movl	$0, -12(%rbp)
.LBB75_2:                               # %if.end
	xorl	%edi, %edi
	movq	-24(%rbp), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-216(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB75_9
# BB#3:                                 # %if.then.3
	movb	$1, %al
	testb	$1, %al
	jne	.LBB75_4
	jmp	.LBB75_5
.LBB75_4:                               # %cond.true
	xorl	%eax, %eax
	movq	-8(%rbp), %rcx
	movq	160(%rcx), %rcx
	movl	32(%rcx), %edx
	addl	$0, %edx
	cmpl	%edx, %eax
	jb	.LBB75_6
	jmp	.LBB75_7
.LBB75_5:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movq	160(%rdx), %rdx
	movslq	32(%rdx), %rdx
	addq	$0, %rdx
	cmpq	%rdx, %rcx
	jae	.LBB75_7
.LBB75_6:                               # %cond.true.10
	movq	-8(%rbp), %rax
	movq	160(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	jmp	.LBB75_8
.LBB75_7:                               # %cond.false.12
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -224(%rbp)        # 8-byte Spill
	jmp	.LBB75_8
.LBB75_8:                               # %cond.end
	movq	-224(%rbp), %rax        # 8-byte Reload
	xorl	%edi, %edi
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rax
	movq	-40(%rbp), %rsi
	movl	-12(%rbp), %edx
	movl	%edx, -228(%rbp)        # 4-byte Spill
	movq	%rax, -240(%rbp)        # 8-byte Spill
	movq	%rsi, -248(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	$-1, %rcx
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	-248(%rbp), %rsi        # 8-byte Reload
	movl	-228(%rbp), %edx        # 4-byte Reload
	movq	%rax, %r8
	callq	face_for_char
	movl	%eax, -28(%rbp)
	jmp	.LBB75_15
.LBB75_9:                               # %if.else
	movb	$1, %al
	testb	$1, %al
	jne	.LBB75_10
	jmp	.LBB75_11
.LBB75_10:                              # %cond.true.15
	xorl	%eax, %eax
	movq	-8(%rbp), %rcx
	movq	160(%rcx), %rcx
	movl	32(%rcx), %edx
	addl	$0, %edx
	cmpl	%edx, %eax
	jb	.LBB75_12
	jmp	.LBB75_13
.LBB75_11:                              # %cond.false.21
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-8(%rbp), %rdx
	movq	160(%rdx), %rdx
	movslq	32(%rdx), %rdx
	addq	$0, %rdx
	cmpq	%rdx, %rcx
	jae	.LBB75_13
.LBB75_12:                              # %cond.true.28
	movq	-8(%rbp), %rax
	movq	160(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	jmp	.LBB75_14
.LBB75_13:                              # %cond.false.32
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -256(%rbp)        # 8-byte Spill
	jmp	.LBB75_14
.LBB75_14:                              # %cond.end.33
	movq	-256(%rbp), %rax        # 8-byte Reload
	movl	$1, %ecx
	xorl	%edx, %edx
	movl	%edx, %r8d
	leaq	-192(%rbp), %rsi
	movl	$152, %edx
                                        # kill: RDX<def> EDX<kill>
	movq	%rax, -200(%rbp)
	movq	%rsi, %rax
	movq	-200(%rbp), %rdi
	movq	%rdi, -264(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	movq	-264(%rbp), %rax        # 8-byte Reload
	movq	%rsi, -272(%rbp)        # 8-byte Spill
	movq	%rax, %rsi
	movl	%ecx, -276(%rbp)        # 4-byte Spill
	movq	%r8, -288(%rbp)         # 8-byte Spill
	callq	memcpy
	movq	-8(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-272(%rbp), %rdx        # 8-byte Reload
	movl	-276(%rbp), %ecx        # 4-byte Reload
	movq	-288(%rbp), %r8         # 8-byte Reload
	callq	merge_face_ref
	leaq	-192(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movb	%al, -289(%rbp)         # 1-byte Spill
	callq	lookup_face
	movl	%eax, -28(%rbp)
.LBB75_15:                              # %if.end.38
	movl	-28(%rbp), %eax
	addq	$304, %rsp              # imm = 0x130
	popq	%rbp
	retq
.Lfunc_end75:
	.size	compute_char_face, .Lfunc_end75-compute_char_face
	.cfi_endproc

	.globl	face_at_buffer_position
	.align	16, 0x90
	.type	face_at_buffer_position,@function
face_at_buffer_position:                # @face_at_buffer_position
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
	subq	$480, %rsp              # imm = 0x1E0
	movb	%r8b, %al
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	andb	$1, %al
	movb	%al, -41(%rbp)
	movl	%r9d, -48(%rbp)
	movq	-16(%rbp), %rcx
	movq	8(%rcx), %rcx
	subq	$5, %rcx
	movq	%rcx, -56(%rbp)
	testb	$1, -41(%rbp)
	je	.LBB76_2
# BB#1:                                 # %cond.true
	movl	$687, %edi              # imm = 0x2AF
	callq	builtin_lisp_symbol
	movq	%rax, -360(%rbp)        # 8-byte Spill
	jmp	.LBB76_3
.LBB76_2:                               # %cond.false
	movl	$397, %edi              # imm = 0x18D
	callq	builtin_lisp_symbol
	movq	%rax, -360(%rbp)        # 8-byte Spill
.LBB76_3:                               # %cond.end
	movq	-360(%rbp), %rax        # 8-byte Reload
	movq	%rax, -264(%rbp)
	movq	-24(%rbp), %rdi
	callq	make_natnum
	movq	%rax, -224(%rbp)
	movq	current_buffer, %rax
	movq	768(%rax), %rax
	movq	%rax, -256(%rbp)
	movq	-224(%rbp), %rdi
	movq	-264(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	80(%rax), %rdx
	callq	Fget_text_property
	movq	%rax, -216(%rbp)
	movq	-40(%rbp), %rax
	cmpq	-256(%rbp), %rax
	jge	.LBB76_5
# BB#4:                                 # %cond.true.4
	movq	-40(%rbp), %rax
	movq	%rax, -368(%rbp)        # 8-byte Spill
	jmp	.LBB76_6
.LBB76_5:                               # %cond.false.5
	movq	-256(%rbp), %rax
	movq	%rax, -368(%rbp)        # 8-byte Spill
.LBB76_6:                               # %cond.end.6
	movq	-368(%rbp), %rax        # 8-byte Reload
	movq	%rax, %rdi
	callq	make_natnum
	movq	%rax, -272(%rbp)
	movq	-224(%rbp), %rdi
	movq	-264(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	80(%rax), %rdx
	movq	-272(%rbp), %rcx
	callq	Fnext_single_property_change
	movq	%rax, -280(%rbp)
	movq	-280(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %r8d
	andl	$-5, %r8d
	cmpl	$2, %r8d
	jne	.LBB76_8
# BB#7:                                 # %if.then
	movq	-280(%rbp), %rax
	sarq	$2, %rax
	movq	%rax, -256(%rbp)
.LBB76_8:                               # %if.end
	movq	$16384, -296(%rbp)      # imm = 0x4000
	callq	SPECPDL_INDEX
	movq	%rax, -304(%rbp)
	movb	$0, -305(%rbp)
# BB#9:                                 # %do.body
	movq	$40, -328(%rbp)
# BB#10:                                # %do.body.15
	movq	-328(%rbp), %rax
	movq	-296(%rbp), %rcx
	shrq	$3, %rcx
	shrq	$0, %rcx
	cmpq	%rcx, %rax
	ja	.LBB76_12
# BB#11:                                # %if.then.19
	movq	-328(%rbp), %rax
	shlq	$3, %rax
	movq	-296(%rbp), %rcx
	subq	%rax, %rcx
	movq	%rcx, -296(%rbp)
	movq	-328(%rbp), %rax
	leaq	15(,%rax,8), %rax
	andq	$-16, %rax
	movq	%rsp, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rsp
	movq	%rcx, -248(%rbp)
	jmp	.LBB76_13
.LBB76_12:                              # %if.else
	movl	$8, %eax
	movl	%eax, %esi
	movq	-328(%rbp), %rdi
	callq	xnmalloc
	movabsq	$xfree, %rdi
	movq	%rax, -248(%rbp)
	movb	$1, -305(%rbp)
	movq	-248(%rbp), %rax
	movq	%rax, %rsi
	callq	record_unwind_protect_ptr
.LBB76_13:                              # %if.end.23
	jmp	.LBB76_14
.LBB76_14:                              # %do.end
	xorl	%esi, %esi
	leaq	-248(%rbp), %rdx
	leaq	-328(%rbp), %rcx
	leaq	-320(%rbp), %r8
	xorl	%eax, %eax
	movl	%eax, %r9d
	movq	-24(%rbp), %rdi
	subq	$16, %rsp
	movl	$0, (%rsp)
	callq	overlays_at
	addq	$16, %rsp
	movq	%rax, -240(%rbp)
	movq	-240(%rbp), %rax
	cmpq	-328(%rbp), %rax
	jle	.LBB76_21
# BB#15:                                # %if.then.27
	movq	-240(%rbp), %rax
	movq	%rax, -328(%rbp)
# BB#16:                                # %do.body.28
	movq	-328(%rbp), %rax
	movq	-296(%rbp), %rcx
	shrq	$3, %rcx
	shrq	$0, %rcx
	cmpq	%rcx, %rax
	ja	.LBB76_18
# BB#17:                                # %if.then.33
	movq	-328(%rbp), %rax
	shlq	$3, %rax
	movq	-296(%rbp), %rcx
	subq	%rax, %rcx
	movq	%rcx, -296(%rbp)
	movq	-328(%rbp), %rax
	leaq	15(,%rax,8), %rax
	andq	$-16, %rax
	movq	%rsp, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rsp
	movq	%rcx, -248(%rbp)
	jmp	.LBB76_19
.LBB76_18:                              # %if.else.37
	movl	$8, %eax
	movl	%eax, %esi
	movq	-328(%rbp), %rdi
	callq	xnmalloc
	movabsq	$xfree, %rdi
	movq	%rax, -248(%rbp)
	movb	$1, -305(%rbp)
	movq	-248(%rbp), %rax
	movq	%rax, %rsi
	callq	record_unwind_protect_ptr
.LBB76_19:                              # %if.end.39
	jmp	.LBB76_20
.LBB76_20:                              # %do.end.40
	xorl	%esi, %esi
	leaq	-248(%rbp), %rdx
	leaq	-328(%rbp), %rcx
	leaq	-320(%rbp), %r8
	xorl	%eax, %eax
	movl	%eax, %r9d
	movq	-24(%rbp), %rdi
	subq	$16, %rsp
	movl	$0, (%rsp)
	callq	overlays_at
	addq	$16, %rsp
	movq	%rax, -240(%rbp)
.LBB76_21:                              # %if.end.42
	jmp	.LBB76_22
.LBB76_22:                              # %do.end.43
	movq	-320(%rbp), %rax
	cmpq	-256(%rbp), %rax
	jge	.LBB76_24
# BB#23:                                # %if.then.46
	movq	-320(%rbp), %rax
	movq	%rax, -256(%rbp)
.LBB76_24:                              # %if.end.47
	movq	-256(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
	cmpl	$0, -48(%rbp)
	jl	.LBB76_26
# BB#25:                                # %if.then.50
	movl	-48(%rbp), %eax
	movl	%eax, -332(%rbp)
	jmp	.LBB76_30
.LBB76_26:                              # %if.else.51
	xorl	%edi, %edi
	movq	globals+728, %rax
	movq	%rax, -376(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-376(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB76_28
# BB#27:                                # %if.then.55
	movl	$0, -332(%rbp)
	jmp	.LBB76_29
.LBB76_28:                              # %if.else.56
	xorl	%esi, %esi
	movq	-56(%rbp), %rdi
	callq	lookup_basic_face
	movl	%eax, -332(%rbp)
.LBB76_29:                              # %if.end.58
	jmp	.LBB76_30
.LBB76_30:                              # %if.end.59
	movb	$1, %al
	testb	$1, %al
	jne	.LBB76_31
	jmp	.LBB76_32
.LBB76_31:                              # %cond.true.60
	movl	-332(%rbp), %eax
	addl	$0, %eax
	movq	-56(%rbp), %rcx
	movq	160(%rcx), %rcx
	movl	32(%rcx), %edx
	addl	$0, %edx
	cmpl	%edx, %eax
	jb	.LBB76_33
	jmp	.LBB76_34
.LBB76_32:                              # %cond.false.64
	movslq	-332(%rbp), %rax
	addq	$0, %rax
	movq	-56(%rbp), %rcx
	movq	160(%rcx), %rcx
	movslq	32(%rcx), %rcx
	addq	$0, %rcx
	cmpq	%rcx, %rax
	jae	.LBB76_34
.LBB76_33:                              # %cond.true.73
	movslq	-332(%rbp), %rax
	movq	-56(%rbp), %rcx
	movq	160(%rcx), %rcx
	movq	16(%rcx), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -384(%rbp)        # 8-byte Spill
	jmp	.LBB76_35
.LBB76_34:                              # %cond.false.75
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -384(%rbp)        # 8-byte Spill
	jmp	.LBB76_35
.LBB76_35:                              # %cond.end.76
	movq	-384(%rbp), %rax        # 8-byte Reload
	movq	%rax, -288(%rbp)
	cmpq	$0, -240(%rbp)
	jne	.LBB76_42
# BB#36:                                # %land.lhs.true
	xorl	%edi, %edi
	movq	-216(%rbp), %rax
	movq	%rax, -392(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-392(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB76_42
# BB#37:                                # %if.then.83
	jmp	.LBB76_38
.LBB76_38:                              # %do.body.84
	testb	$1, -305(%rbp)
	je	.LBB76_40
# BB#39:                                # %if.then.86
	xorl	%edi, %edi
	movb	$0, -305(%rbp)
	movq	-304(%rbp), %rax
	movq	%rax, -400(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-400(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	movq	%rax, -408(%rbp)        # 8-byte Spill
.LBB76_40:                              # %if.end.89
	jmp	.LBB76_41
.LBB76_41:                              # %do.end.90
	movq	-288(%rbp), %rax
	movl	152(%rax), %ecx
	movl	%ecx, -4(%rbp)
	jmp	.LBB76_61
.LBB76_42:                              # %if.end.91
	xorl	%edi, %edi
	movl	$152, %eax
	movl	%eax, %edx
	leaq	-208(%rbp), %rcx
	movq	-288(%rbp), %rsi
	movl	%edi, -412(%rbp)        # 4-byte Spill
	movq	%rcx, %rdi
	callq	memcpy
	movq	-216(%rbp), %rcx
	movl	-412(%rbp), %edi        # 4-byte Reload
	movq	%rcx, -424(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-424(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB76_44
# BB#43:                                # %if.then.95
	movl	$1, %ecx
	xorl	%eax, %eax
	movl	%eax, %r8d
	leaq	-208(%rbp), %rdx
	movq	-56(%rbp), %rdi
	movq	-216(%rbp), %rsi
	callq	merge_face_ref
	movb	%al, -425(%rbp)         # 1-byte Spill
.LBB76_44:                              # %if.end.97
	movq	-248(%rbp), %rdi
	movq	-240(%rbp), %rsi
	movq	-16(%rbp), %rdx
	callq	sort_overlays
	movq	%rax, -240(%rbp)
	movq	$0, -232(%rbp)
.LBB76_45:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-232(%rbp), %rax
	cmpq	-240(%rbp), %rax
	jge	.LBB76_56
# BB#46:                                # %for.body
                                        #   in Loop: Header=BB76_45 Depth=1
	movq	-232(%rbp), %rax
	movq	-248(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdi
	movq	-264(%rbp), %rsi
	callq	Foverlay_get
	xorl	%edi, %edi
	movq	%rax, -216(%rbp)
	movq	-216(%rbp), %rax
	movq	%rax, -440(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-440(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB76_48
# BB#47:                                # %if.then.106
                                        #   in Loop: Header=BB76_45 Depth=1
	movl	$1, %ecx
	xorl	%eax, %eax
	movl	%eax, %r8d
	leaq	-208(%rbp), %rdx
	movq	-56(%rbp), %rdi
	movq	-216(%rbp), %rsi
	callq	merge_face_ref
	movb	%al, -441(%rbp)         # 1-byte Spill
.LBB76_48:                              # %if.end.109
                                        #   in Loop: Header=BB76_45 Depth=1
	movq	-232(%rbp), %rax
	movq	-248(%rbp), %rcx
	movq	(%rcx,%rax,8), %rdi
	callq	XOVERLAY
	movq	24(%rax), %rax
	movq	%rax, -344(%rbp)
	movq	-344(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %edx
	cmpl	$1, %edx
	jne	.LBB76_51
# BB#49:                                # %land.lhs.true.117
                                        #   in Loop: Header=BB76_45 Depth=1
	movq	-344(%rbp), %rdi
	callq	XMISCTYPE
	cmpl	$24236, %eax            # imm = 0x5EAC
	jne	.LBB76_51
# BB#50:                                # %cond.true.121
                                        #   in Loop: Header=BB76_45 Depth=1
	movq	-344(%rbp), %rdi
	callq	marker_position
	movq	%rax, -456(%rbp)        # 8-byte Spill
	jmp	.LBB76_52
.LBB76_51:                              # %cond.false.123
	callq	emacs_abort
.LBB76_52:                              # %cond.end.124
                                        #   in Loop: Header=BB76_45 Depth=1
	movq	-456(%rbp), %rax        # 8-byte Reload
	movq	%rax, -352(%rbp)
	movq	-352(%rbp), %rcx
	cmpq	-256(%rbp), %rcx
	jge	.LBB76_54
# BB#53:                                # %if.then.128
                                        #   in Loop: Header=BB76_45 Depth=1
	movq	-352(%rbp), %rax
	movq	%rax, -256(%rbp)
.LBB76_54:                              # %if.end.129
                                        #   in Loop: Header=BB76_45 Depth=1
	jmp	.LBB76_55
.LBB76_55:                              # %for.inc
                                        #   in Loop: Header=BB76_45 Depth=1
	movq	-232(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -232(%rbp)
	jmp	.LBB76_45
.LBB76_56:                              # %for.end
	movq	-256(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
# BB#57:                                # %do.body.130
	testb	$1, -305(%rbp)
	je	.LBB76_59
# BB#58:                                # %if.then.132
	xorl	%edi, %edi
	movb	$0, -305(%rbp)
	movq	-304(%rbp), %rax
	movq	%rax, -464(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-464(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	unbind_to
	movq	%rax, -472(%rbp)        # 8-byte Spill
.LBB76_59:                              # %if.end.135
	jmp	.LBB76_60
.LBB76_60:                              # %do.end.136
	leaq	-208(%rbp), %rsi
	movq	-56(%rbp), %rdi
	callq	lookup_face
	movl	%eax, -4(%rbp)
.LBB76_61:                              # %return
	movl	-4(%rbp), %eax
	movq	%rbp, %rsp
	popq	%rbp
	retq
.Lfunc_end76:
	.size	face_at_buffer_position, .Lfunc_end76-face_at_buffer_position
	.cfi_endproc

	.globl	face_for_overlay_string
	.align	16, 0x90
	.type	face_for_overlay_string,@function
face_for_overlay_string:                # @face_for_overlay_string
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
	subq	$352, %rsp              # imm = 0x160
	movb	%r8b, %al
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	andb	$1, %al
	movb	%al, -41(%rbp)
	movq	%r9, -56(%rbp)
	movq	-16(%rbp), %rcx
	movq	8(%rcx), %rcx
	subq	$5, %rcx
	movq	%rcx, -64(%rbp)
	testb	$1, -41(%rbp)
	je	.LBB77_2
# BB#1:                                 # %cond.true
	movl	$687, %edi              # imm = 0x2AF
	callq	builtin_lisp_symbol
	movq	%rax, -288(%rbp)        # 8-byte Spill
	jmp	.LBB77_3
.LBB77_2:                               # %cond.false
	movl	$397, %edi              # imm = 0x18D
	callq	builtin_lisp_symbol
	movq	%rax, -288(%rbp)        # 8-byte Spill
.LBB77_3:                               # %cond.end
	movq	-288(%rbp), %rax        # 8-byte Reload
	movq	%rax, -256(%rbp)
	movq	-24(%rbp), %rdi
	callq	make_natnum
	movq	%rax, -240(%rbp)
	movq	current_buffer, %rax
	movq	768(%rax), %rax
	movq	%rax, -248(%rbp)
	movq	-240(%rbp), %rdi
	movq	-256(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	80(%rax), %rdx
	callq	Fget_text_property
	movq	%rax, -232(%rbp)
	movq	-40(%rbp), %rax
	cmpq	-248(%rbp), %rax
	jge	.LBB77_5
# BB#4:                                 # %cond.true.4
	movq	-40(%rbp), %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
	jmp	.LBB77_6
.LBB77_5:                               # %cond.false.5
	movq	-248(%rbp), %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
.LBB77_6:                               # %cond.end.6
	movq	-296(%rbp), %rax        # 8-byte Reload
	movq	%rax, %rdi
	callq	make_natnum
	movq	%rax, -264(%rbp)
	movq	-240(%rbp), %rdi
	movq	-256(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	80(%rax), %rdx
	movq	-264(%rbp), %rcx
	callq	Fnext_single_property_change
	movq	%rax, -272(%rbp)
	movq	-272(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %r8d
	andl	$-5, %r8d
	cmpl	$2, %r8d
	jne	.LBB77_8
# BB#7:                                 # %if.then
	movq	-272(%rbp), %rax
	sarq	$2, %rax
	movq	%rax, -248(%rbp)
.LBB77_8:                               # %if.end
	xorl	%edi, %edi
	movq	-248(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-232(%rbp), %rax
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-304(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB77_11
# BB#9:                                 # %land.lhs.true
	xorl	%edi, %edi
	movq	globals+728, %rax
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-312(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB77_11
# BB#10:                                # %if.then.20
	movl	$0, -4(%rbp)
	jmp	.LBB77_19
.LBB77_11:                              # %if.end.21
	movb	$1, %al
	testb	$1, %al
	jne	.LBB77_12
	jmp	.LBB77_13
.LBB77_12:                              # %cond.true.22
	xorl	%esi, %esi
	movq	-64(%rbp), %rdi
	callq	lookup_basic_face
	addl	$0, %eax
	movq	-64(%rbp), %rdi
	movq	160(%rdi), %rdi
	movl	32(%rdi), %esi
	addl	$0, %esi
	cmpl	%esi, %eax
	jb	.LBB77_14
	jmp	.LBB77_15
.LBB77_13:                              # %cond.false.27
	xorl	%esi, %esi
	movq	-64(%rbp), %rdi
	callq	lookup_basic_face
	movslq	%eax, %rdi
	addq	$0, %rdi
	movq	-64(%rbp), %rcx
	movq	160(%rcx), %rcx
	movslq	32(%rcx), %rcx
	addq	$0, %rcx
	cmpq	%rcx, %rdi
	jae	.LBB77_15
.LBB77_14:                              # %cond.true.37
	xorl	%esi, %esi
	movq	-64(%rbp), %rdi
	callq	lookup_basic_face
	movslq	%eax, %rdi
	movq	-64(%rbp), %rcx
	movq	160(%rcx), %rcx
	movq	16(%rcx), %rcx
	movq	(%rcx,%rdi,8), %rcx
	movq	%rcx, -320(%rbp)        # 8-byte Spill
	jmp	.LBB77_16
.LBB77_15:                              # %cond.false.40
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -320(%rbp)        # 8-byte Spill
	jmp	.LBB77_16
.LBB77_16:                              # %cond.end.41
	movq	-320(%rbp), %rax        # 8-byte Reload
	xorl	%edi, %edi
	movl	$152, %ecx
	movl	%ecx, %edx
	leaq	-224(%rbp), %rsi
	movq	%rax, -280(%rbp)
	movq	-280(%rbp), %rax
	movl	%edi, -324(%rbp)        # 4-byte Spill
	movq	%rsi, %rdi
	movq	%rax, %rsi
	callq	memcpy
	movq	-232(%rbp), %rax
	movl	-324(%rbp), %edi        # 4-byte Reload
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-336(%rbp), %rdx        # 8-byte Reload
	cmpq	%rax, %rdx
	je	.LBB77_18
# BB#17:                                # %if.then.46
	movl	$1, %ecx
	xorl	%eax, %eax
	movl	%eax, %r8d
	leaq	-224(%rbp), %rdx
	movq	-64(%rbp), %rdi
	movq	-232(%rbp), %rsi
	callq	merge_face_ref
	movb	%al, -337(%rbp)         # 1-byte Spill
.LBB77_18:                              # %if.end.48
	leaq	-224(%rbp), %rsi
	movq	-248(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-64(%rbp), %rdi
	callq	lookup_face
	movl	%eax, -4(%rbp)
.LBB77_19:                              # %return
	movl	-4(%rbp), %eax
	addq	$352, %rsp              # imm = 0x160
	popq	%rbp
	retq
.Lfunc_end77:
	.size	face_for_overlay_string, .Lfunc_end77-face_for_overlay_string
	.cfi_endproc

	.globl	face_at_string_position
	.align	16, 0x90
	.type	face_at_string_position,@function
face_at_string_position:                # @face_at_string_position
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
	subq	$336, %rsp              # imm = 0x150
	movb	16(%rbp), %al
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	%r8, -48(%rbp)
	movl	%r9d, -52(%rbp)
	andb	$1, %al
	movb	%al, -53(%rbp)
	movq	-16(%rbp), %rcx
	movq	8(%rcx), %rcx
	subq	$5, %rcx
	movq	%rcx, -96(%rbp)
	movq	-24(%rbp), %rdi
	callq	STRING_MULTIBYTE
	andb	$1, %al
	movb	%al, -265(%rbp)
	testb	$1, -53(%rbp)
	je	.LBB78_2
# BB#1:                                 # %cond.true
	movl	$687, %edi              # imm = 0x2AF
	callq	builtin_lisp_symbol
	movq	%rax, -288(%rbp)        # 8-byte Spill
	jmp	.LBB78_3
.LBB78_2:                               # %cond.false
	movl	$397, %edi              # imm = 0x18D
	callq	builtin_lisp_symbol
	movq	%rax, -288(%rbp)        # 8-byte Spill
.LBB78_3:                               # %cond.end
	movq	-288(%rbp), %rax        # 8-byte Reload
	movq	%rax, -280(%rbp)
	movq	-32(%rbp), %rdi
	callq	make_natnum
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rdi
	movq	-280(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	Fget_text_property
	movq	%rax, -64(%rbp)
	movq	-24(%rbp), %rdi
	callq	SCHARS
	movq	%rax, %rdi
	callq	make_natnum
	movq	%rax, -88(%rbp)
	movq	-72(%rbp), %rdi
	movq	-280(%rbp), %rsi
	movq	-24(%rbp), %rdx
	movq	-88(%rbp), %rcx
	callq	Fnext_single_property_change
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %r8d
	andl	$-5, %r8d
	cmpl	$2, %r8d
	jne	.LBB78_5
# BB#4:                                 # %if.then
	movq	-80(%rbp), %rax
	sarq	$2, %rax
	movq	-48(%rbp), %rcx
	movq	%rax, (%rcx)
	jmp	.LBB78_6
.LBB78_5:                               # %if.else
	movq	-48(%rbp), %rax
	movq	$-1, (%rax)
.LBB78_6:                               # %if.end
	movb	$1, %al
	testb	$1, %al
	jne	.LBB78_7
	jmp	.LBB78_8
.LBB78_7:                               # %cond.true.11
	movl	-52(%rbp), %eax
	addl	$0, %eax
	movq	-96(%rbp), %rcx
	movq	160(%rcx), %rcx
	movl	32(%rcx), %edx
	addl	$0, %edx
	cmpl	%edx, %eax
	jb	.LBB78_9
	jmp	.LBB78_10
.LBB78_8:                               # %cond.false.15
	movl	-52(%rbp), %eax
	movl	%eax, %ecx
	addq	$0, %rcx
	movq	-96(%rbp), %rdx
	movq	160(%rdx), %rdx
	movslq	32(%rdx), %rdx
	addq	$0, %rdx
	cmpq	%rdx, %rcx
	jae	.LBB78_10
.LBB78_9:                               # %cond.true.24
	movl	-52(%rbp), %eax
	movl	%eax, %ecx
	movq	-96(%rbp), %rdx
	movq	160(%rdx), %rdx
	movq	16(%rdx), %rdx
	movq	(%rdx,%rcx,8), %rcx
	movq	%rcx, -296(%rbp)        # 8-byte Spill
	jmp	.LBB78_11
.LBB78_10:                              # %cond.false.26
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -296(%rbp)        # 8-byte Spill
	jmp	.LBB78_11
.LBB78_11:                              # %cond.end.27
	movq	-296(%rbp), %rax        # 8-byte Reload
	xorl	%edi, %edi
	movq	%rax, -264(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-304(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB78_16
# BB#12:                                # %land.lhs.true
	testb	$1, -265(%rbp)
	jne	.LBB78_15
# BB#13:                                # %lor.lhs.false
	movq	-96(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$2, %ecx
	jne	.LBB78_15
# BB#14:                                # %lor.lhs.false.36
	movq	-264(%rbp), %rax
	movq	-264(%rbp), %rcx
	cmpq	264(%rcx), %rax
	jne	.LBB78_16
.LBB78_15:                              # %if.then.39
	movq	-264(%rbp), %rax
	movl	152(%rax), %ecx
	movl	%ecx, -4(%rbp)
	jmp	.LBB78_19
.LBB78_16:                              # %if.end.40
	xorl	%edi, %edi
	movl	$152, %eax
	movl	%eax, %edx
	leaq	-256(%rbp), %rcx
	movq	-264(%rbp), %rsi
	movl	%edi, -308(%rbp)        # 4-byte Spill
	movq	%rcx, %rdi
	callq	memcpy
	movq	-64(%rbp), %rcx
	movl	-308(%rbp), %edi        # 4-byte Reload
	movq	%rcx, -320(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-320(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB78_18
# BB#17:                                # %if.then.44
	movl	$1, %ecx
	xorl	%eax, %eax
	movl	%eax, %r8d
	leaq	-256(%rbp), %rdx
	movq	-96(%rbp), %rdi
	movq	-64(%rbp), %rsi
	callq	merge_face_ref
	movb	%al, -321(%rbp)         # 1-byte Spill
.LBB78_18:                              # %if.end.46
	leaq	-256(%rbp), %rsi
	movq	-96(%rbp), %rdi
	callq	lookup_face
	movl	%eax, -4(%rbp)
.LBB78_19:                              # %return
	movl	-4(%rbp), %eax
	addq	$336, %rsp              # imm = 0x150
	popq	%rbp
	retq
.Lfunc_end78:
	.size	face_at_string_position, .Lfunc_end78-face_at_string_position
	.cfi_endproc

	.globl	merge_faces
	.align	16, 0x90
	.type	merge_faces,@function
merge_faces:                            # @merge_faces
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
	subq	$256, %rsp              # imm = 0x100
	movb	$1, %al
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movl	%ecx, -32(%rbp)
	testb	$1, %al
	jne	.LBB79_1
	jmp	.LBB79_2
.LBB79_1:                               # %cond.true
	movl	-32(%rbp), %eax
	addl	$0, %eax
	movq	-16(%rbp), %rcx
	movq	160(%rcx), %rcx
	movl	32(%rcx), %edx
	addl	$0, %edx
	cmpl	%edx, %eax
	jb	.LBB79_3
	jmp	.LBB79_4
.LBB79_2:                               # %cond.false
	movslq	-32(%rbp), %rax
	addq	$0, %rax
	movq	-16(%rbp), %rcx
	movq	160(%rcx), %rcx
	movslq	32(%rcx), %rcx
	addq	$0, %rcx
	cmpq	%rcx, %rax
	jae	.LBB79_4
.LBB79_3:                               # %cond.true.9
	movslq	-32(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	160(%rcx), %rcx
	movq	16(%rcx), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	jmp	.LBB79_5
.LBB79_4:                               # %cond.false.11
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -216(%rbp)        # 8-byte Spill
	jmp	.LBB79_5
.LBB79_5:                               # %cond.end
	movq	-216(%rbp), %rax        # 8-byte Reload
	movq	%rax, -200(%rbp)
	cmpq	$0, -200(%rbp)
	jne	.LBB79_7
# BB#6:                                 # %if.then
	movl	-32(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB79_30
.LBB79_7:                               # %if.end
	movl	$901, %edi              # imm = 0x385
	movq	-24(%rbp), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-224(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB79_15
# BB#8:                                 # %if.then.14
	cmpl	$0, -28(%rbp)
	jl	.LBB79_10
# BB#9:                                 # %lor.lhs.false
	movslq	-28(%rbp), %rax
	cmpq	lface_id_to_name_size, %rax
	jl	.LBB79_11
.LBB79_10:                              # %if.then.20
	movl	-32(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB79_30
.LBB79_11:                              # %if.end.21
	xorl	%ecx, %ecx
	movslq	-28(%rbp), %rax
	movq	lface_id_to_name, %rdx
	movq	(%rdx,%rax,8), %rax
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movl	-32(%rbp), %edx
	callq	lookup_derived_face
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	jl	.LBB79_13
# BB#12:                                # %cond.true.27
	movl	-28(%rbp), %eax
	movl	%eax, -228(%rbp)        # 4-byte Spill
	jmp	.LBB79_14
.LBB79_13:                              # %cond.false.28
	movl	-32(%rbp), %eax
	movl	%eax, -228(%rbp)        # 4-byte Spill
.LBB79_14:                              # %cond.end.29
	movl	-228(%rbp), %eax        # 4-byte Reload
	movl	%eax, -4(%rbp)
	jmp	.LBB79_30
.LBB79_15:                              # %if.end.31
	xorl	%edi, %edi
	movl	$152, %eax
	movl	%eax, %edx
	leaq	-192(%rbp), %rcx
	movq	-200(%rbp), %rsi
	movl	%edi, -232(%rbp)        # 4-byte Spill
	movq	%rcx, %rdi
	callq	memcpy
	movq	-24(%rbp), %rcx
	movl	-232(%rbp), %edi        # 4-byte Reload
	movq	%rcx, -240(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-240(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB79_19
# BB#16:                                # %if.then.35
	xorl	%eax, %eax
	movl	%eax, %ecx
	leaq	-192(%rbp), %rdx
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	merge_named_face
	testb	$1, %al
	jne	.LBB79_18
# BB#17:                                # %if.then.37
	movl	-32(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB79_30
.LBB79_18:                              # %if.end.38
	jmp	.LBB79_29
.LBB79_19:                              # %if.else
	cmpl	$0, -28(%rbp)
	jge	.LBB79_21
# BB#20:                                # %if.then.41
	movl	-32(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB79_30
.LBB79_21:                              # %if.end.42
	movb	$1, %al
	testb	$1, %al
	jne	.LBB79_22
	jmp	.LBB79_23
.LBB79_22:                              # %cond.true.43
	movl	-28(%rbp), %eax
	addl	$0, %eax
	movq	-16(%rbp), %rcx
	movq	160(%rcx), %rcx
	movl	32(%rcx), %edx
	addl	$0, %edx
	cmpl	%edx, %eax
	jb	.LBB79_24
	jmp	.LBB79_25
.LBB79_23:                              # %cond.false.50
	movslq	-28(%rbp), %rax
	addq	$0, %rax
	movq	-16(%rbp), %rcx
	movq	160(%rcx), %rcx
	movslq	32(%rcx), %rcx
	addq	$0, %rcx
	cmpq	%rcx, %rax
	jae	.LBB79_25
.LBB79_24:                              # %cond.true.59
	movslq	-28(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	160(%rcx), %rcx
	movq	16(%rcx), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	jmp	.LBB79_26
.LBB79_25:                              # %cond.false.64
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -248(%rbp)        # 8-byte Spill
	jmp	.LBB79_26
.LBB79_26:                              # %cond.end.65
	movq	-248(%rbp), %rax        # 8-byte Reload
	movq	%rax, -208(%rbp)
	cmpq	$0, -208(%rbp)
	jne	.LBB79_28
# BB#27:                                # %if.then.68
	movl	-32(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	.LBB79_30
.LBB79_28:                              # %if.end.69
	xorl	%eax, %eax
	movl	%eax, %ecx
	leaq	-192(%rbp), %rdx
	movq	-16(%rbp), %rdi
	movq	-208(%rbp), %rsi
	callq	merge_face_vectors
.LBB79_29:                              # %if.end.73
	leaq	-192(%rbp), %rsi
	movq	-16(%rbp), %rdi
	callq	lookup_face
	movl	%eax, -4(%rbp)
.LBB79_30:                              # %return
	movl	-4(%rbp), %eax
	addq	$256, %rsp              # imm = 0x100
	popq	%rbp
	retq
.Lfunc_end79:
	.size	merge_faces, .Lfunc_end79-merge_faces
	.cfi_endproc

	.align	16, 0x90
	.type	merge_named_face,@function
merge_named_face:                       # @merge_named_face
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
	subq	$240, %rsp
	leaq	-64(%rbp), %rax
	xorl	%r8d, %r8d
	leaq	-40(%rbp), %r9
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	movl	%r8d, %edx
	movq	%r9, %rcx
	callq	push_named_merge_point
	testb	$1, %al
	jne	.LBB80_1
	jmp	.LBB80_4
.LBB80_1:                               # %if.then
	xorl	%ecx, %ecx
	leaq	-224(%rbp), %rdx
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-40(%rbp), %r8
	callq	get_lface_attributes
	andb	$1, %al
	movb	%al, -225(%rbp)
	testb	$1, -225(%rbp)
	je	.LBB80_3
# BB#2:                                 # %if.then.2
	leaq	-224(%rbp), %rsi
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rdx
	movq	-40(%rbp), %rcx
	callq	merge_face_vectors
.LBB80_3:                               # %if.end
	movb	-225(%rbp), %al
	andb	$1, %al
	movb	%al, -1(%rbp)
	jmp	.LBB80_5
.LBB80_4:                               # %if.else
	movb	$0, -1(%rbp)
.LBB80_5:                               # %return
	movb	-1(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$240, %rsp
	popq	%rbp
	retq
.Lfunc_end80:
	.size	merge_named_face, .Lfunc_end80-merge_named_face
	.cfi_endproc

	.globl	syms_of_xfaces
	.align	16, 0x90
	.type	syms_of_xfaces,@function
syms_of_xfaces:                         # @syms_of_xfaces
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
	subq	$16, %rsp
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	xorl	%edi, %edi
	movq	%rax, -8(%rbp)          # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-8(%rbp), %rdi          # 8-byte Reload
	movq	%rax, %rsi
	callq	Fcons
	movq	%rax, %rdi
	callq	list1
	movabsq	$Vparam_value_alist, %rdi
	movq	%rax, Vparam_value_alist
	callq	staticpro
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movabsq	$Vface_alternative_font_family_alist, %rdi
	movq	%rax, Vface_alternative_font_family_alist
	callq	staticpro
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movabsq	$Vface_alternative_font_registry_alist, %rdi
	movq	%rax, Vface_alternative_font_registry_alist
	callq	staticpro
	movabsq	$Sinternal_make_lisp_face, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sinternal_lisp_face_p, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sinternal_set_lisp_face_attribute, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sinternal_set_lisp_face_attribute_from_resource, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Scolor_gray_p, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Scolor_supported_p, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sface_attribute_relative_p, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Smerge_face_attribute, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sinternal_get_lisp_face_attribute, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sinternal_lisp_face_attribute_values, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sinternal_lisp_face_equal_p, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sinternal_lisp_face_empty_p, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sinternal_copy_lisp_face, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sinternal_merge_in_global_face, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sface_font, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sframe_face_alist, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sdisplay_supports_face_attributes_p, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Scolor_distance, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sinternal_set_font_selection_order, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sinternal_set_alternative_font_family_alist, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sinternal_set_alternative_font_registry_alist, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sface_attributes_as_vector, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sclear_face_cache, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Stty_suppress_bold_inverse_default_colors, %rax
	movq	%rax, %rdi
	callq	defsubr
# BB#1:                                 # %do.body
	movabsq	$syms_of_xfaces.o_fwd, %rdi
	movabsq	$.L.str.27, %rsi
	movabsq	$globals, %rax
	addq	$720, %rax              # imm = 0x2D0
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#2:                                 # %do.end
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, globals+720
# BB#3:                                 # %do.body.7
	movabsq	$syms_of_xfaces.o_fwd.28, %rdi
	movabsq	$.L.str.29, %rsi
	movabsq	$globals, %rax
	addq	$696, %rax              # imm = 0x2B8
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#4:                                 # %do.end.8
	movabsq	$.L.str.30, %rdi
	callq	build_pure_c_string
	movq	%rax, globals+696
# BB#5:                                 # %do.body.10
	movabsq	$syms_of_xfaces.o_fwd.31, %rdi
	movabsq	$.L.str.32, %rsi
	movabsq	$globals, %rax
	addq	$2480, %rax             # imm = 0x9B0
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#6:                                 # %do.end.11
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, globals+2480
# BB#7:                                 # %do.body.13
	movabsq	$syms_of_xfaces.o_fwd.33, %rdi
	movabsq	$.L.str.34, %rsi
	movabsq	$globals, %rax
	addq	$2072, %rax             # imm = 0x818
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#8:                                 # %do.end.14
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, globals+2072
# BB#9:                                 # %do.body.16
	movabsq	$syms_of_xfaces.o_fwd.35, %rdi
	movabsq	$.L.str.36, %rsi
	movabsq	$globals, %rax
	addq	$712, %rax              # imm = 0x2C8
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#10:                                # %do.end.17
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, globals+712
# BB#11:                                # %do.body.19
	movabsq	$syms_of_xfaces.o_fwd.37, %rdi
	movabsq	$.L.str.38, %rsi
	movabsq	$globals, %rax
	addq	$728, %rax              # imm = 0x2D8
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#12:                                # %do.end.20
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movq	%rax, globals+728
# BB#13:                                # %do.body.22
	movabsq	$syms_of_xfaces.o_fwd.39, %rdi
	movabsq	$.L.str.40, %rsi
	movabsq	$globals, %rax
	addq	$704, %rax              # imm = 0x2C0
	movq	%rax, %rdx
	callq	defvar_lisp
# BB#14:                                # %do.end.23
	xorl	%edi, %edi
	callq	builtin_lisp_symbol
	movabsq	$Sbitmap_spec_p, %rcx
	movq	%rax, globals+704
	movq	%rcx, %rdi
	callq	defsubr
	movabsq	$Sx_list_fonts, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sinternal_face_x_get_resource, %rax
	movq	%rax, %rdi
	callq	defsubr
	movabsq	$Sx_family_fonts, %rax
	movq	%rax, %rdi
	callq	defsubr
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end81:
	.size	syms_of_xfaces, .Lfunc_end81-syms_of_xfaces
	.cfi_endproc

	.align	16, 0x90
	.type	tty_defined_color,@function
tty_defined_color:                      # @tty_defined_color
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
	movb	%cl, %al
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	andb	$1, %al
	movb	%al, -25(%rbp)
	movb	$1, -26(%rbp)
	movq	-24(%rbp), %rdx
	movq	$-1, (%rdx)
	movq	-24(%rbp), %rdx
	movw	$0, 8(%rdx)
	movq	-24(%rbp), %rdx
	movw	$0, 12(%rdx)
	movq	-24(%rbp), %rdx
	movw	$0, 10(%rdx)
	movq	-16(%rbp), %rdx
	cmpb	$0, (%rdx)
	je	.LBB82_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	build_string
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	movq	-24(%rbp), %rdx
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	tty_lookup_color
	andb	$1, %al
	movb	%al, -26(%rbp)
.LBB82_2:                               # %if.end
	movq	-24(%rbp), %rax
	cmpq	$-1, (%rax)
	jne	.LBB82_10
# BB#3:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movsbl	(%rax), %ecx
	cmpl	$0, %ecx
	je	.LBB82_10
# BB#4:                                 # %if.then.5
	movq	-16(%rbp), %rdi
	movl	$.L.str.43, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB82_6
# BB#5:                                 # %if.then.9
	movq	-24(%rbp), %rax
	movq	$-2, (%rax)
	jmp	.LBB82_9
.LBB82_6:                               # %if.else
	movq	-16(%rbp), %rdi
	movl	$.L.str.44, %eax
	movl	%eax, %esi
	callq	strcmp
	cmpl	$0, %eax
	jne	.LBB82_8
# BB#7:                                 # %if.then.14
	movq	-24(%rbp), %rax
	movq	$-3, (%rax)
.LBB82_8:                               # %if.end.16
	jmp	.LBB82_9
.LBB82_9:                               # %if.end.17
	jmp	.LBB82_10
.LBB82_10:                              # %if.end.18
	movq	-24(%rbp), %rax
	cmpq	$-1, (%rax)
	je	.LBB82_12
# BB#11:                                # %if.then.22
	movb	$1, -26(%rbp)
.LBB82_12:                              # %if.end.23
	movb	-26(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end82:
	.size	tty_defined_color, .Lfunc_end82-tty_defined_color
	.cfi_endproc

	.align	16, 0x90
	.type	tty_lookup_color,@function
tty_lookup_color:                       # @tty_lookup_color
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
	subq	$96, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%rdx, -32(%rbp)
	movq	%rcx, -40(%rbp)
	movq	-24(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB83_1
	jmp	.LBB83_2
.LBB83_1:                               # %lor.lhs.false
	movl	$941, %edi              # imm = 0x3AD
	callq	builtin_lisp_symbol
	movq	%rax, %rdi
	callq	Ffboundp
	xorl	%edi, %edi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-72(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB83_3
.LBB83_2:                               # %if.then
	movb	$0, -1(%rbp)
	jmp	.LBB83_21
.LBB83_3:                               # %if.end
	movl	$5, %esi
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	make_lisp_ptr
	movl	$941, %edi              # imm = 0x3AD
	movq	%rax, -48(%rbp)
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rsi
	movq	-48(%rbp), %rdx
	movq	%rax, %rdi
	callq	call2
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB83_18
# BB#4:                                 # %land.lhs.true
	movq	-56(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB83_18
# BB#5:                                 # %if.then.13
	movq	-56(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	je	.LBB83_7
# BB#6:                                 # %if.then.23
	movb	$0, -1(%rbp)
	jmp	.LBB83_21
.LBB83_7:                               # %if.end.24
	movq	-56(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	sarq	$2, %rax
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-56(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rdi
	movq	-32(%rbp), %rsi
	callq	parse_rgb_list
	testb	$1, %al
	jne	.LBB83_9
# BB#8:                                 # %if.then.37
	movb	$0, -1(%rbp)
	jmp	.LBB83_21
.LBB83_9:                               # %if.end.38
	cmpq	$0, -40(%rbp)
	je	.LBB83_17
# BB#10:                                # %if.then.39
	movq	-40(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	(%rcx), %rdx
	movq	%rdx, (%rax)
	movq	8(%rcx), %rcx
	movq	%rcx, 8(%rax)
	movq	-56(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB83_11
	jmp	.LBB83_12
.LBB83_11:                              # %lor.lhs.false.43
	movq	-24(%rbp), %rdi
	movq	-56(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rsi
	callq	Fstring_equal
	xorl	%edi, %edi
	movq	%rax, -80(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-80(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB83_16
.LBB83_12:                              # %land.lhs.true.50
	movl	$943, %edi              # imm = 0x3AF
	callq	builtin_lisp_symbol
	movq	%rax, %rdi
	callq	Ffboundp
	xorl	%edi, %edi
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-88(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB83_16
# BB#13:                                # %if.then.56
	movl	$943, %edi              # imm = 0x3AF
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	call1
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	parse_rgb_list
	testb	$1, %al
	jne	.LBB83_15
# BB#14:                                # %if.then.60
	movb	$0, -1(%rbp)
	jmp	.LBB83_21
.LBB83_15:                              # %if.end.61
	jmp	.LBB83_16
.LBB83_16:                              # %if.end.62
	jmp	.LBB83_17
.LBB83_17:                              # %if.end.63
	movb	$1, -1(%rbp)
	jmp	.LBB83_21
.LBB83_18:                              # %if.else
	movabsq	$.L.str.32, %rdi
	callq	intern
	movq	%rax, %rdi
	callq	Fsymbol_value
	xorl	%edi, %edi
	movq	%rax, -96(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-96(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB83_20
# BB#19:                                # %if.then.69
	movb	$1, -1(%rbp)
	jmp	.LBB83_21
.LBB83_20:                              # %if.else.70
	movb	$0, -1(%rbp)
.LBB83_21:                              # %return
	movb	-1(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end83:
	.size	tty_lookup_color, .Lfunc_end83-tty_lookup_color
	.cfi_endproc

	.align	16, 0x90
	.type	lface_from_face_name_no_resolve,@function
lface_from_face_name_no_resolve:        # @lface_from_face_name_no_resolve
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
	subq	$32, %rsp
	movb	%dl, %al
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	andb	$1, %al
	movb	%al, -17(%rbp)
	cmpq	$0, -8(%rbp)
	je	.LBB84_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	96(%rax), %rsi
	callq	assq_no_quit
	movq	%rax, -32(%rbp)
	jmp	.LBB84_3
.LBB84_2:                               # %if.else
	movq	-16(%rbp), %rdi
	movq	globals+720, %rsi
	callq	assq_no_quit
	movq	%rax, -32(%rbp)
.LBB84_3:                               # %if.end
	movq	-32(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB84_5
# BB#4:                                 # %if.then.3
	movq	-32(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB84_8
.LBB84_5:                               # %if.else.4
	testb	$1, -17(%rbp)
	je	.LBB84_7
# BB#6:                                 # %if.then.6
	movabsq	$.L.str.46, %rdi
	movq	-16(%rbp), %rsi
	callq	signal_error
.LBB84_7:                               # %if.end.7
	jmp	.LBB84_8
.LBB84_8:                               # %if.end.8
	movq	-32(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end84:
	.size	lface_from_face_name_no_resolve, .Lfunc_end84-lface_from_face_name_no_resolve
	.cfi_endproc

	.align	16, 0x90
	.type	face_attr_equal_p,@function
face_attr_equal_p:                      # @face_attr_equal_p
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
	subq	$80, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rsi
	andq	$7, %rsi
	movl	%esi, %eax
	movq	-24(%rbp), %rsi
	andq	$7, %rsi
	movl	%esi, %ecx
	cmpl	%ecx, %eax
	je	.LBB85_2
# BB#1:                                 # %if.then
	movb	$0, -1(%rbp)
	jmp	.LBB85_10
.LBB85_2:                               # %if.end
	movq	-16(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jne	.LBB85_4
# BB#3:                                 # %if.then.6
	movb	$1, -1(%rbp)
	jmp	.LBB85_10
.LBB85_4:                               # %if.end.7
	movq	-16(%rbp), %rax
	movl	%eax, %ecx
	andl	$7, %ecx
	movl	%ecx, %eax
	movl	%eax, %ecx
	subl	$6, %ecx
	movq	%rax, -32(%rbp)         # 8-byte Spill
	movl	%ecx, -36(%rbp)         # 4-byte Spill
	ja	.LBB85_9
# BB#11:                                # %if.end.7
	movq	-32(%rbp), %rax         # 8-byte Reload
	movq	.LJTI85_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB85_5:                               # %sw.bb
	movq	-16(%rbp), %rdi
	callq	SBYTES
	movq	-24(%rbp), %rdi
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	SBYTES
	movq	-48(%rbp), %rdi         # 8-byte Reload
	cmpq	%rax, %rdi
	je	.LBB85_7
# BB#6:                                 # %if.then.13
	movb	$0, -1(%rbp)
	jmp	.LBB85_10
.LBB85_7:                               # %if.end.14
	movq	-16(%rbp), %rdi
	callq	SDATA
	movq	-24(%rbp), %rdi
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	SDATA
	movq	-16(%rbp), %rdi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	SBYTES
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	-64(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %rdx
	callq	memcmp
	cmpl	$0, %eax
	sete	%cl
	andb	$1, %cl
	movb	%cl, -1(%rbp)
	jmp	.LBB85_10
.LBB85_8:                               # %sw.bb.21
	movb	$0, -1(%rbp)
	jmp	.LBB85_10
.LBB85_9:                               # %sw.default
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	Fequal
	xorl	%edi, %edi
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-72(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	sete	%cl
	xorb	$-1, %cl
	andb	$1, %cl
	movb	%cl, -1(%rbp)
.LBB85_10:                              # %return
	movb	-1(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end85:
	.size	face_attr_equal_p, .Lfunc_end85-face_attr_equal_p
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI85_0:
	.quad	.LBB85_8
	.quad	.LBB85_9
	.quad	.LBB85_8
	.quad	.LBB85_9
	.quad	.LBB85_5
	.quad	.LBB85_9
	.quad	.LBB85_8

	.text
	.align	16, 0x90
	.type	x_free_gc,@function
x_free_gc:                              # @x_free_gc
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	384(%rsi), %rsi
	movq	424(%rsi), %rsi
	movq	16(%rsi), %rdi
	movq	-16(%rbp), %rsi
	callq	XFreeGC
	movl	%eax, -20(%rbp)         # 4-byte Spill
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end86:
	.size	x_free_gc, .Lfunc_end86-x_free_gc
	.cfi_endproc

	.align	16, 0x90
	.type	free_realized_face,@function
free_realized_face:                     # @free_realized_face
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.LBB87_11
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$2, %ecx
	jne	.LBB87_10
# BB#2:                                 # %if.then.1
	movq	-16(%rbp), %rax
	cmpl	$0, 232(%rax)
	jl	.LBB87_5
# BB#3:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movq	-16(%rbp), %rcx
	cmpq	264(%rcx), %rax
	jne	.LBB87_5
# BB#4:                                 # %if.then.4
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	free_face_fontset
.LBB87_5:                               # %if.end
	movq	-16(%rbp), %rax
	cmpq	$0, 160(%rax)
	je	.LBB87_9
# BB#6:                                 # %if.then.6
	callq	block_input
	movq	-16(%rbp), %rax
	cmpq	$0, 224(%rax)
	je	.LBB87_8
# BB#7:                                 # %if.then.8
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	font_done_for_face
.LBB87_8:                               # %if.end.9
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	160(%rax), %rsi
	callq	x_free_gc
	movq	-16(%rbp), %rax
	movq	$0, 160(%rax)
	callq	unblock_input
.LBB87_9:                               # %if.end.12
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	free_face_colors
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	168(%rsi), %rsi
	callq	x_destroy_bitmap
.LBB87_10:                              # %if.end.13
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	xfree
.LBB87_11:                              # %if.end.14
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end87:
	.size	free_realized_face, .Lfunc_end87-free_realized_face
	.cfi_endproc

	.align	16, 0x90
	.type	free_face_colors,@function
free_face_colors:                       # @free_face_colors
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
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movl	240(%rsi), %eax
	shrl	$17, %eax
	andl	$1, %eax
	testl	$1, %eax
	je	.LBB88_2
# BB#1:                                 # %if.then
	jmp	.LBB88_19
.LBB88_2:                               # %if.end
	callq	block_input
	movq	-16(%rbp), %rax
	movl	240(%rax), %ecx
	shrl	$7, %ecx
	andl	$1, %ecx
	testl	$1, %ecx
	jne	.LBB88_4
# BB#3:                                 # %if.then.5
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	addq	$176, %rax
	movq	%rax, %rsi
	callq	x_free_colors
.LBB88_4:                               # %if.end.6
	movq	-16(%rbp), %rax
	movl	240(%rax), %ecx
	shrl	$8, %ecx
	andl	$1, %ecx
	testl	$1, %ecx
	jne	.LBB88_6
# BB#5:                                 # %if.then.11
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	addq	$184, %rax
	movq	%rax, %rsi
	callq	x_free_colors
.LBB88_6:                               # %if.end.12
	movq	-16(%rbp), %rax
	movl	240(%rax), %ecx
	shrl	$4, %ecx
	andl	$1, %ecx
	testl	$1, %ecx
	je	.LBB88_9
# BB#7:                                 # %land.lhs.true
	movq	-16(%rbp), %rax
	movl	240(%rax), %ecx
	shrl	$9, %ecx
	andl	$1, %ecx
	testl	$1, %ecx
	jne	.LBB88_9
# BB#8:                                 # %if.then.21
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	addq	$192, %rax
	movq	%rax, %rsi
	callq	x_free_colors
.LBB88_9:                               # %if.end.22
	movq	-16(%rbp), %rax
	movl	240(%rax), %ecx
	shrl	$5, %ecx
	andl	$1, %ecx
	testl	$1, %ecx
	je	.LBB88_12
# BB#10:                                # %land.lhs.true.27
	movq	-16(%rbp), %rax
	movl	240(%rax), %ecx
	shrl	$10, %ecx
	andl	$1, %ecx
	testl	$1, %ecx
	jne	.LBB88_12
# BB#11:                                # %if.then.32
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	addq	$200, %rax
	movq	%rax, %rsi
	callq	x_free_colors
.LBB88_12:                              # %if.end.33
	movq	-16(%rbp), %rax
	movl	240(%rax), %ecx
	shrl	$6, %ecx
	andl	$1, %ecx
	testl	$1, %ecx
	je	.LBB88_15
# BB#13:                                # %land.lhs.true.38
	movq	-16(%rbp), %rax
	movl	240(%rax), %ecx
	shrl	$11, %ecx
	andl	$1, %ecx
	testl	$1, %ecx
	jne	.LBB88_15
# BB#14:                                # %if.then.43
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	addq	$208, %rax
	movq	%rax, %rsi
	callq	x_free_colors
.LBB88_15:                              # %if.end.44
	movq	-16(%rbp), %rax
	movl	240(%rax), %ecx
	andl	$3, %ecx
	cmpl	$0, %ecx
	je	.LBB88_18
# BB#16:                                # %land.lhs.true.47
	movq	-16(%rbp), %rax
	movl	240(%rax), %ecx
	shrl	$12, %ecx
	andl	$1, %ecx
	testl	$1, %ecx
	jne	.LBB88_18
# BB#17:                                # %if.then.52
	movl	$1, %edx
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	addq	$216, %rax
	movq	%rax, %rsi
	callq	x_free_colors
.LBB88_18:                              # %if.end.53
	callq	unblock_input
.LBB88_19:                              # %return
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end88:
	.size	free_face_colors, .Lfunc_end88-free_face_colors
	.cfi_endproc

	.align	16, 0x90
	.type	hash_string_case_insensitive,@function
hash_string_case_insensitive:           # @hash_string_case_insensitive
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	$0, -20(%rbp)
	movq	-8(%rbp), %rdi
	callq	SDATA
	movq	%rax, -16(%rbp)
.LBB89_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rax
	cmpb	$0, (%rax)
	je	.LBB89_4
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB89_1 Depth=1
	movl	-20(%rbp), %eax
	shll	$1, %eax
	movq	-16(%rbp), %rcx
	movzbl	(%rcx), %edi
	movl	%eax, -24(%rbp)         # 4-byte Spill
	callq	c_tolower
	movl	-24(%rbp), %edi         # 4-byte Reload
	xorl	%eax, %edi
	movl	%edi, -20(%rbp)
# BB#3:                                 # %for.inc
                                        #   in Loop: Header=BB89_1 Depth=1
	movq	-16(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -16(%rbp)
	jmp	.LBB89_1
.LBB89_4:                               # %for.end
	movl	-20(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end89:
	.size	hash_string_case_insensitive, .Lfunc_end89-hash_string_case_insensitive
	.cfi_endproc

	.align	16, 0x90
	.type	push_named_merge_point,@function
push_named_merge_point:                 # @push_named_merge_point
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
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movl	%edx, -28(%rbp)
	movq	%rcx, -40(%rbp)
	movq	-40(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, -48(%rbp)
.LBB90_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -48(%rbp)
	je	.LBB90_11
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB90_1 Depth=1
	movq	-24(%rbp), %rax
	movq	-48(%rbp), %rcx
	cmpq	(%rcx), %rax
	jne	.LBB90_9
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB90_1 Depth=1
	movq	-48(%rbp), %rax
	movl	8(%rax), %ecx
	cmpl	-28(%rbp), %ecx
	jne	.LBB90_5
# BB#4:                                 # %if.then.4
	movb	$0, -1(%rbp)
	jmp	.LBB90_12
.LBB90_5:                               # %if.else
                                        #   in Loop: Header=BB90_1 Depth=1
	movq	-48(%rbp), %rax
	cmpl	$1, 8(%rax)
	jne	.LBB90_7
# BB#6:                                 # %if.then.7
	jmp	.LBB90_11
.LBB90_7:                               # %if.end
                                        #   in Loop: Header=BB90_1 Depth=1
	jmp	.LBB90_8
.LBB90_8:                               # %if.end.8
                                        #   in Loop: Header=BB90_1 Depth=1
	jmp	.LBB90_9
.LBB90_9:                               # %if.end.9
                                        #   in Loop: Header=BB90_1 Depth=1
	jmp	.LBB90_10
.LBB90_10:                              # %for.inc
                                        #   in Loop: Header=BB90_1 Depth=1
	movq	-48(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, -48(%rbp)
	jmp	.LBB90_1
.LBB90_11:                              # %for.end
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, (%rcx)
	movl	-28(%rbp), %edx
	movq	-16(%rbp), %rax
	movl	%edx, 8(%rax)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 16(%rcx)
	movq	-16(%rbp), %rax
	movq	-40(%rbp), %rcx
	movq	%rax, (%rcx)
	movb	$1, -1(%rbp)
.LBB90_12:                              # %return
	movb	-1(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	popq	%rbp
	retq
.Lfunc_end90:
	.size	push_named_merge_point, .Lfunc_end90-push_named_merge_point
	.cfi_endproc

	.align	16, 0x90
	.type	get_lface_attributes_no_remap,@function
get_lface_attributes_no_remap:          # @get_lface_attributes_no_remap
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
	subq	$64, %rsp
	movb	%cl, %al
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	andb	$1, %al
	movb	%al, -25(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movb	-25(%rbp), %al
	andb	$1, %al
	movzbl	%al, %edx
	callq	lface_from_face_name_no_resolve
	xorl	%edi, %edi
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-48(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB91_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movq	-40(%rbp), %rdi
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	XVECTOR
	movl	$152, %ecx
	movl	%ecx, %edx
	addq	$8, %rax
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	memcpy
.LBB91_2:                               # %if.end
	xorl	%edi, %edi
	movq	-40(%rbp), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-64(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	sete	%dl
	xorb	$-1, %dl
	andb	$1, %dl
	movzbl	%dl, %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end91:
	.size	get_lface_attributes_no_remap, .Lfunc_end91-get_lface_attributes_no_remap
	.cfi_endproc

	.align	16, 0x90
	.type	realize_default_face,@function
realize_default_face:                   # @realize_default_face
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
	subq	$512, %rsp              # imm = 0x200
	movl	$324, %eax              # imm = 0x144
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	160(%rdi), %rdi
	movq	%rdi, -24(%rbp)
	movq	-16(%rbp), %rdi
	movq	%rdi, -240(%rbp)        # 8-byte Spill
	movl	%eax, %edi
	callq	builtin_lisp_symbol
	xorl	%edx, %edx
	movq	-240(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	lface_from_face_name
	xorl	%edi, %edi
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-248(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB92_2
# BB#1:                                 # %if.then
	movl	$5, %esi
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	callq	make_lisp_ptr
	movl	$324, %edi              # imm = 0x144
	movq	%rax, -208(%rbp)
	callq	builtin_lisp_symbol
	movq	-208(%rbp), %rsi
	movq	%rax, %rdi
	callq	Finternal_make_lisp_face
	movq	%rax, -32(%rbp)
.LBB92_2:                               # %if.end
	movq	-16(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$2, %ecx
	jne	.LBB92_4
# BB#3:                                 # %if.then.7
	movl	$5, %esi
	movq	-16(%rbp), %rax
	movq	384(%rax), %rax
	movq	232(%rax), %rax
	movq	%rax, %rdi
	callq	make_lisp_ptr
	movq	%rax, -216(%rbp)
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rsi
	movq	-216(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$2, %rax
	andq	$1, %rax
	andq	$1, %rax
	movq	%rax, %rcx
	callq	set_lface_from_font
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	384(%rax), %rax
	movl	244(%rax), %r8d
	movq	%rdi, -256(%rbp)        # 8-byte Spill
	movl	%r8d, %edi
	callq	fontset_name
	movl	$17, %edi
	movl	%edi, %esi
	movq	-256(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	ASET
	movq	-16(%rbp), %rax
	movq	208(%rax), %rcx
	andq	$-5, %rcx
	orq	$4, %rcx
	movq	%rcx, 208(%rax)
.LBB92_4:                               # %if.end.19
	movq	-16(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$2, %ecx
	je	.LBB92_12
# BB#5:                                 # %if.then.26
	movabsq	$.L.str.56, %rdi
	movq	-32(%rbp), %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	build_string
	movl	$1, %ecx
	movl	%ecx, %esi
	movq	-264(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	ASET
	movl	$1, %ecx
	movl	%ecx, %esi
	movq	-32(%rbp), %rdi
	movq	-32(%rbp), %rax
	movq	%rdi, -272(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	AREF
	movl	$2, %ecx
	movl	%ecx, %esi
	movq	-272(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	ASET
	movl	$707, %edi              # imm = 0x2C3
	movq	-32(%rbp), %rax
	movq	%rax, -280(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$3, %ecx
	movl	%ecx, %esi
	movq	-280(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	ASET
	movl	$4, %ecx
	movl	%ecx, %esi
	movl	$6, %ecx
	movl	%ecx, %edx
	movq	-32(%rbp), %rdi
	callq	ASET
	movl	$5, %ecx
	movl	%ecx, %esi
	movq	-32(%rbp), %rdi
	callq	AREF
	movl	$975, %edi              # imm = 0x3CF
	movq	%rax, -288(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-288(%rbp), %rdx        # 8-byte Reload
	cmpq	%rax, %rdx
	jne	.LBB92_7
# BB#6:                                 # %if.then.33
	movl	$707, %edi              # imm = 0x2C3
	movq	-32(%rbp), %rax
	movq	%rax, -296(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$5, %edi
	movl	%edi, %esi
	movq	-296(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	ASET
.LBB92_7:                               # %if.end.35
	movl	$6, %eax
	movl	%eax, %esi
	movq	-32(%rbp), %rdi
	callq	AREF
	movl	$975, %edi              # imm = 0x3CF
	movq	%rax, -304(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-304(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB92_9
# BB#8:                                 # %if.then.39
	movl	$707, %edi              # imm = 0x2C3
	movq	-32(%rbp), %rax
	movq	%rax, -312(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$6, %edi
	movl	%edi, %esi
	movq	-312(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	ASET
.LBB92_9:                               # %if.end.41
	movl	$17, %eax
	movl	%eax, %esi
	movq	-32(%rbp), %rdi
	callq	AREF
	movl	$975, %edi              # imm = 0x3CF
	movq	%rax, -320(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-320(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB92_11
# BB#10:                                # %if.then.45
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	movq	%rax, -328(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$17, %edi
	movl	%edi, %esi
	movq	-328(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	ASET
.LBB92_11:                              # %if.end.47
	jmp	.LBB92_12
.LBB92_12:                              # %if.end.48
	movl	$7, %eax
	movl	%eax, %esi
	movq	-32(%rbp), %rdi
	callq	AREF
	movl	$975, %edi              # imm = 0x3CF
	movq	%rax, -336(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-336(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB92_14
# BB#13:                                # %if.then.52
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	movq	%rax, -344(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$7, %edi
	movl	%edi, %esi
	movq	-344(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	ASET
.LBB92_14:                              # %if.end.54
	movl	$12, %eax
	movl	%eax, %esi
	movq	-32(%rbp), %rdi
	callq	AREF
	movl	$975, %edi              # imm = 0x3CF
	movq	%rax, -352(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-352(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB92_16
# BB#15:                                # %if.then.58
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	movq	%rax, -360(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$12, %edi
	movl	%edi, %esi
	movq	-360(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	ASET
.LBB92_16:                              # %if.end.60
	movl	$13, %eax
	movl	%eax, %esi
	movq	-32(%rbp), %rdi
	callq	AREF
	movl	$975, %edi              # imm = 0x3CF
	movq	%rax, -368(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-368(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB92_18
# BB#17:                                # %if.then.64
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	movq	%rax, -376(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$13, %edi
	movl	%edi, %esi
	movq	-376(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	ASET
.LBB92_18:                              # %if.end.66
	movl	$14, %eax
	movl	%eax, %esi
	movq	-32(%rbp), %rdi
	callq	AREF
	movl	$975, %edi              # imm = 0x3CF
	movq	%rax, -384(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-384(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB92_20
# BB#19:                                # %if.then.70
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	movq	%rax, -392(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$14, %edi
	movl	%edi, %esi
	movq	-392(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	ASET
.LBB92_20:                              # %if.end.72
	movl	$8, %eax
	movl	%eax, %esi
	movq	-32(%rbp), %rdi
	callq	AREF
	movl	$975, %edi              # imm = 0x3CF
	movq	%rax, -400(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-400(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB92_22
# BB#21:                                # %if.then.76
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	movq	%rax, -408(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$8, %edi
	movl	%edi, %esi
	movq	-408(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	ASET
.LBB92_22:                              # %if.end.78
	movl	$9, %eax
	movl	%eax, %esi
	movq	-32(%rbp), %rdi
	callq	AREF
	movl	$975, %edi              # imm = 0x3CF
	movq	%rax, -416(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-416(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB92_35
# BB#23:                                # %if.then.82
	movl	$451, %edi              # imm = 0x1C3
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rcx
	movq	64(%rcx), %rsi
	movq	%rax, %rdi
	callq	Fassq
	movq	%rax, -224(%rbp)
	movq	-224(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %edx
	cmpl	$3, %edx
	jne	.LBB92_26
# BB#24:                                # %land.lhs.true
	movq	-224(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB92_25
	jmp	.LBB92_26
.LBB92_25:                              # %if.then.89
	movl	$9, %eax
	movl	%eax, %esi
	movq	-32(%rbp), %rdi
	movq	-224(%rbp), %rcx
	subq	$3, %rcx
	movq	8(%rcx), %rdx
	callq	ASET
	jmp	.LBB92_34
.LBB92_26:                              # %if.else
	movq	-16(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$2, %ecx
	jne	.LBB92_28
# BB#27:                                # %if.then.100
	movb	$0, -1(%rbp)
	jmp	.LBB92_56
.LBB92_28:                              # %if.else.101
	movq	-16(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	je	.LBB92_30
# BB#29:                                # %lor.lhs.false
	movq	-16(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$1, %ecx
	jne	.LBB92_31
.LBB92_30:                              # %if.then.116
	movabsq	$unspecified_fg, %rdi
	movq	-32(%rbp), %rax
	movq	%rax, -424(%rbp)        # 8-byte Spill
	callq	build_string
	movl	$9, %ecx
	movl	%ecx, %esi
	movq	-424(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	ASET
	jmp	.LBB92_32
.LBB92_31:                              # %if.else.118
	callq	emacs_abort
.LBB92_32:                              # %if.end.119
	jmp	.LBB92_33
.LBB92_33:                              # %if.end.120
	jmp	.LBB92_34
.LBB92_34:                              # %if.end.121
	jmp	.LBB92_35
.LBB92_35:                              # %if.end.122
	movl	$10, %eax
	movl	%eax, %esi
	movq	-32(%rbp), %rdi
	callq	AREF
	movl	$975, %edi              # imm = 0x3CF
	movq	%rax, -432(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-432(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB92_48
# BB#36:                                # %if.then.127
	movl	$193, %edi
	callq	builtin_lisp_symbol
	movq	-16(%rbp), %rcx
	movq	64(%rcx), %rsi
	movq	%rax, %rdi
	callq	Fassq
	movq	%rax, -232(%rbp)
	movq	-232(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %edx
	cmpl	$3, %edx
	jne	.LBB92_39
# BB#37:                                # %land.lhs.true.136
	movq	-232(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB92_38
	jmp	.LBB92_39
.LBB92_38:                              # %if.then.142
	movl	$10, %eax
	movl	%eax, %esi
	movq	-32(%rbp), %rdi
	movq	-232(%rbp), %rcx
	subq	$3, %rcx
	movq	8(%rcx), %rdx
	callq	ASET
	jmp	.LBB92_47
.LBB92_39:                              # %if.else.146
	movq	-16(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$2, %ecx
	jne	.LBB92_41
# BB#40:                                # %if.then.154
	movb	$0, -1(%rbp)
	jmp	.LBB92_56
.LBB92_41:                              # %if.else.155
	movq	-16(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$0, %ecx
	je	.LBB92_43
# BB#42:                                # %lor.lhs.false.163
	movq	-16(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$1, %ecx
	jne	.LBB92_44
.LBB92_43:                              # %if.then.171
	movabsq	$unspecified_bg, %rdi
	movq	-32(%rbp), %rax
	movq	%rax, -440(%rbp)        # 8-byte Spill
	callq	build_string
	movl	$10, %ecx
	movl	%ecx, %esi
	movq	-440(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	ASET
	jmp	.LBB92_45
.LBB92_44:                              # %if.else.173
	callq	emacs_abort
.LBB92_45:                              # %if.end.174
	jmp	.LBB92_46
.LBB92_46:                              # %if.end.175
	jmp	.LBB92_47
.LBB92_47:                              # %if.end.176
	jmp	.LBB92_48
.LBB92_48:                              # %if.end.177
	movl	$11, %eax
	movl	%eax, %esi
	movq	-32(%rbp), %rdi
	callq	AREF
	movl	$975, %edi              # imm = 0x3CF
	movq	%rax, -448(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-448(%rbp), %rsi        # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB92_50
# BB#49:                                # %if.then.182
	xorl	%edi, %edi
	movq	-32(%rbp), %rax
	movq	%rax, -456(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$11, %edi
	movl	%edi, %esi
	movq	-456(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rdx
	callq	ASET
.LBB92_50:                              # %if.end.184
	leaq	-192(%rbp), %rax
	movq	-32(%rbp), %rdi
	movq	%rax, -464(%rbp)        # 8-byte Spill
	callq	XVECTOR
	xorl	%edx, %edx
	leaq	-192(%rbp), %rsi
	movl	$152, %ecx
	movl	%ecx, %edi
	addq	$8, %rax
	movq	-464(%rbp), %r8         # 8-byte Reload
	movq	%rdi, -472(%rbp)        # 8-byte Spill
	movq	%r8, %rdi
	movq	%rsi, -480(%rbp)        # 8-byte Spill
	movq	%rax, %rsi
	movq	-472(%rbp), %rax        # 8-byte Reload
	movl	%edx, -484(%rbp)        # 4-byte Spill
	movq	%rax, %rdx
	callq	memcpy
	movq	-24(%rbp), %rdi
	movq	-480(%rbp), %rsi        # 8-byte Reload
	movl	-484(%rbp), %edx        # 4-byte Reload
	callq	realize_face
	movq	%rax, -200(%rbp)
	movq	-16(%rbp), %rax
	movq	208(%rax), %rax
	shrq	$23, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$2, %ecx
	jne	.LBB92_55
# BB#51:                                # %land.lhs.true.194
	movq	-200(%rbp), %rax
	movq	224(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	384(%rcx), %rcx
	cmpq	232(%rcx), %rax
	je	.LBB92_55
# BB#52:                                # %if.then.201
	movq	-200(%rbp), %rax
	cmpq	$0, 224(%rax)
	jne	.LBB92_54
# BB#53:                                # %if.then.203
	movb	$0, -1(%rbp)
	jmp	.LBB92_56
.LBB92_54:                              # %if.end.204
	movl	$15, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rdi
	movq	-32(%rbp), %rcx
	movq	%rdi, -496(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	callq	AREF
	xorl	%edi, %edi
	movq	%rax, -504(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-496(%rbp), %rdi        # 8-byte Reload
	movq	-504(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	x_set_font
.LBB92_55:                              # %if.end.207
	movb	$1, -1(%rbp)
.LBB92_56:                              # %return
	movb	-1(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$512, %rsp              # imm = 0x200
	popq	%rbp
	retq
.Lfunc_end92:
	.size	realize_default_face, .Lfunc_end92-realize_default_face
	.cfi_endproc

	.align	16, 0x90
	.type	realize_named_face,@function
realize_named_face:                     # @realize_named_face
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp279:
	.cfi_def_cfa_offset 16
.Ltmp280:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp281:
	.cfi_def_cfa_register %rbp
	subq	$400, %rsp              # imm = 0x190
	xorl	%eax, %eax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	-8(%rbp), %rsi
	movq	160(%rsi), %rsi
	movq	%rsi, -32(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movl	%eax, %edx
	callq	lface_from_face_name
	movl	$324, %edi              # imm = 0x144
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -368(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movl	$1, %ecx
	leaq	-192(%rbp), %rdx
	movq	-368(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	get_lface_attributes_no_remap
	xorl	%edi, %edi
	movq	-40(%rbp), %rdx
	movb	%al, -369(%rbp)         # 1-byte Spill
	movq	%rdx, -384(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-384(%rbp), %rdx        # 8-byte Reload
	cmpq	%rax, %rdx
	jne	.LBB93_2
# BB#1:                                 # %if.then
	movl	$5, %esi
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	callq	make_lisp_ptr
	movq	%rax, -360(%rbp)
	movq	-16(%rbp), %rdi
	movq	-360(%rbp), %rsi
	callq	Finternal_make_lisp_face
	movq	%rax, -40(%rbp)
.LBB93_2:                               # %if.end
	movl	$1, %ecx
	leaq	-352(%rbp), %rdx
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	get_lface_attributes_no_remap
	xorl	%ecx, %ecx
                                        # kill: RCX<def> ECX<kill>
	leaq	-192(%rbp), %rdx
	leaq	-352(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movb	%al, -385(%rbp)         # 1-byte Spill
	callq	merge_face_vectors
	leaq	-192(%rbp), %rsi
	movq	-32(%rbp), %rdi
	movl	-20(%rbp), %edx
	callq	realize_face
	movq	%rax, -400(%rbp)        # 8-byte Spill
	addq	$400, %rsp              # imm = 0x190
	popq	%rbp
	retq
.Lfunc_end93:
	.size	realize_named_face, .Lfunc_end93-realize_named_face
	.cfi_endproc

	.align	16, 0x90
	.type	uncache_face,@function
uncache_face:                           # @uncache_face
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp282:
	.cfi_def_cfa_offset 16
.Ltmp283:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp284:
	.cfi_def_cfa_register %rbp
	movl	$1001, %eax             # imm = 0x3E9
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rsi
	movl	244(%rsi), %ecx
	movl	%eax, -24(%rbp)         # 4-byte Spill
	movl	%ecx, %eax
	xorl	%edx, %edx
	movl	-24(%rbp), %ecx         # 4-byte Reload
	divl	%ecx
	movl	%edx, -20(%rbp)
	movq	-16(%rbp), %rsi
	cmpq	$0, 256(%rsi)
	je	.LBB94_2
# BB#1:                                 # %if.then
	movq	-16(%rbp), %rax
	movq	248(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	256(%rcx), %rcx
	movq	%rax, 248(%rcx)
	jmp	.LBB94_3
.LBB94_2:                               # %if.else
	movq	-16(%rbp), %rax
	movq	248(%rax), %rax
	movslq	-20(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rax, (%rdx,%rcx,8)
.LBB94_3:                               # %if.end
	movq	-16(%rbp), %rax
	cmpq	$0, 248(%rax)
	je	.LBB94_5
# BB#4:                                 # %if.then.6
	movq	-16(%rbp), %rax
	movq	256(%rax), %rax
	movq	-16(%rbp), %rcx
	movq	248(%rcx), %rcx
	movq	%rax, 256(%rcx)
.LBB94_5:                               # %if.end.10
	movq	-16(%rbp), %rax
	movslq	152(%rax), %rax
	movq	-8(%rbp), %rcx
	movq	16(%rcx), %rcx
	movq	$0, (%rcx,%rax,8)
	movq	-16(%rbp), %rax
	movl	152(%rax), %edx
	movq	-8(%rbp), %rax
	cmpl	32(%rax), %edx
	jne	.LBB94_7
# BB#6:                                 # %if.then.14
	movq	-8(%rbp), %rax
	movl	32(%rax), %ecx
	addl	$-1, %ecx
	movl	%ecx, 32(%rax)
.LBB94_7:                               # %if.end.16
	popq	%rbp
	retq
.Lfunc_end94:
	.size	uncache_face, .Lfunc_end94-uncache_face
	.cfi_endproc

	.align	16, 0x90
	.type	realize_x_face,@function
realize_x_face:                         # @realize_x_face
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp285:
	.cfi_def_cfa_offset 16
.Ltmp286:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp287:
	.cfi_def_cfa_register %rbp
	subq	$272, %rsp              # imm = 0x110
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	$0, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	make_realized_face
	movb	$1, %cl
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	-24(%rbp), %rsi
	movq	%rax, 264(%rsi)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -40(%rbp)
	testb	$1, %cl
	jne	.LBB95_1
	jmp	.LBB95_2
.LBB95_1:                               # %cond.true
	xorl	%eax, %eax
	movq	-40(%rbp), %rcx
	movq	160(%rcx), %rcx
	movl	32(%rcx), %edx
	addl	$0, %edx
	cmpl	%edx, %eax
	jb	.LBB95_3
	jmp	.LBB95_4
.LBB95_2:                               # %cond.false
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-40(%rbp), %rdx
	movq	160(%rdx), %rdx
	movslq	32(%rdx), %rdx
	addq	$0, %rdx
	cmpq	%rdx, %rcx
	jae	.LBB95_4
.LBB95_3:                               # %cond.true.7
	movq	-40(%rbp), %rax
	movq	160(%rax), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	jmp	.LBB95_5
.LBB95_4:                               # %cond.false.9
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	%rcx, -128(%rbp)        # 8-byte Spill
	jmp	.LBB95_5
.LBB95_5:                               # %cond.end
	movq	-128(%rbp), %rax        # 8-byte Reload
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB95_8
# BB#6:                                 # %land.lhs.true
	movq	-32(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	lface_same_font_attributes_p
	testb	$1, %al
	jne	.LBB95_7
	jmp	.LBB95_8
.LBB95_7:                               # %if.then
	movq	-32(%rbp), %rax
	movq	224(%rax), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, 224(%rcx)
	movq	-40(%rbp), %rdi
	movq	-32(%rbp), %rax
	movl	232(%rax), %esi
	movq	-24(%rbp), %rdx
	callq	make_fontset_for_ascii_face
	movq	-24(%rbp), %rcx
	movl	%eax, 232(%rcx)
	jmp	.LBB95_20
.LBB95_8:                               # %if.else
	movq	-16(%rbp), %rdi
	callq	face_fontset
	movl	%eax, -84(%rbp)
	cmpl	$-1, -84(%rbp)
	jne	.LBB95_14
# BB#9:                                 # %if.then.19
	cmpq	$0, -32(%rbp)
	je	.LBB95_11
# BB#10:                                # %if.then.21
	movq	-32(%rbp), %rax
	movl	232(%rax), %ecx
	movl	%ecx, -84(%rbp)
.LBB95_11:                              # %if.end
	cmpl	$-1, -84(%rbp)
	jne	.LBB95_13
# BB#12:                                # %if.then.25
	callq	emacs_abort
.LBB95_13:                              # %if.end.26
	jmp	.LBB95_14
.LBB95_14:                              # %if.end.27
	movq	-16(%rbp), %rax
	movq	120(%rax), %rdi
	callq	FONT_OBJECT_P
	testb	$1, %al
	jne	.LBB95_16
# BB#15:                                # %if.then.30
	xorl	%eax, %eax
	movl	%eax, %ecx
	movq	-40(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	%rdi, -136(%rbp)        # 8-byte Spill
	movq	%rcx, %rdi
	movq	%rsi, -144(%rbp)        # 8-byte Spill
	movq	%rcx, %rsi
	callq	Ffont_spec
	movq	-136(%rbp), %rdi        # 8-byte Reload
	movq	-144(%rbp), %rsi        # 8-byte Reload
	movq	%rax, %rdx
	callq	font_load_for_lface
	movq	-16(%rbp), %rcx
	movq	%rax, 120(%rcx)
.LBB95_16:                              # %if.end.34
	movq	-16(%rbp), %rax
	movq	120(%rax), %rdi
	callq	FONT_OBJECT_P
	testb	$1, %al
	jne	.LBB95_17
	jmp	.LBB95_18
.LBB95_17:                              # %if.then.37
	movq	-16(%rbp), %rax
	movq	120(%rax), %rdi
	callq	XFONT_OBJECT
	movq	-24(%rbp), %rdi
	movq	%rax, 224(%rdi)
	movq	-40(%rbp), %rdi
	movl	-84(%rbp), %esi
	movq	-24(%rbp), %rdx
	callq	make_fontset_for_ascii_face
	movq	-24(%rbp), %rdx
	movl	%eax, 232(%rdx)
	jmp	.LBB95_19
.LBB95_18:                              # %if.else.43
	movq	-24(%rbp), %rax
	movq	$0, 224(%rax)
	movq	-24(%rbp), %rax
	movl	$-1, 232(%rax)
.LBB95_19:                              # %if.end.46
	jmp	.LBB95_20
.LBB95_20:                              # %if.end.47
	movq	-24(%rbp), %rax
	cmpq	$0, 224(%rax)
	je	.LBB95_27
# BB#21:                                # %land.lhs.true.50
	movl	$5, %edi
	xorl	%edx, %edx
	movq	-16(%rbp), %rax
	movq	40(%rax), %rsi
	callq	font_style_to_value
	sarl	$8, %eax
	cmpl	$100, %eax
	jle	.LBB95_27
# BB#22:                                # %land.lhs.true.55
	movl	$5, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rcx
	movq	120(%rcx), %rdi
	callq	AREF
	andq	$7, %rax
	movl	%eax, %edx
	andl	$-5, %edx
	cmpl	$2, %edx
	jne	.LBB95_24
# BB#23:                                # %cond.true.62
	movl	$5, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rcx
	movq	120(%rcx), %rdi
	callq	AREF
	sarq	$2, %rax
	sarq	$8, %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	jmp	.LBB95_25
.LBB95_24:                              # %cond.false.67
	movq	$-1, %rax
	movq	%rax, -152(%rbp)        # 8-byte Spill
	jmp	.LBB95_25
.LBB95_25:                              # %cond.end.68
	movq	-152(%rbp), %rax        # 8-byte Reload
	cmpq	$100, %rax
	jg	.LBB95_27
# BB#26:                                # %if.then.72
	movq	-24(%rbp), %rax
	movl	240(%rax), %ecx
	andl	$-262145, %ecx          # imm = 0xFFFFFFFFFFFBFFFF
	orl	$262144, %ecx           # imm = 0x40000
	movl	%ecx, 240(%rax)
.LBB95_27:                              # %if.end.73
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rdx
	callq	load_face_colors
	movq	-16(%rbp), %rdx
	movq	112(%rdx), %rdx
	movq	%rdx, -80(%rbp)
	movq	-80(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB95_28
	jmp	.LBB95_29
.LBB95_28:                              # %if.then.76
	movl	$14, %ecx
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	112(%rax), %rdx
	callq	load_color
	movq	-24(%rbp), %rdx
	movq	%rax, 216(%rdx)
	movq	-24(%rbp), %rax
	movl	240(%rax), %ecx
	andl	$-4, %ecx
	orl	$1, %ecx
	movl	%ecx, 240(%rax)
	movq	-24(%rbp), %rax
	movl	$1, 236(%rax)
	jmp	.LBB95_58
.LBB95_29:                              # %if.else.83
	movq	-80(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB95_31
# BB#30:                                # %if.then.89
	movq	-24(%rbp), %rax
	movl	240(%rax), %ecx
	andl	$-4, %ecx
	orl	$1, %ecx
	movl	%ecx, 240(%rax)
	movq	-80(%rbp), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, 236(%rax)
	movq	-24(%rbp), %rax
	movq	176(%rax), %rax
	movq	-24(%rbp), %rdx
	movq	%rax, 216(%rdx)
	movq	-24(%rbp), %rax
	movl	240(%rax), %ecx
	andl	$-4097, %ecx            # imm = 0xFFFFFFFFFFFFEFFF
	orl	$4096, %ecx             # imm = 0x1000
	movl	%ecx, 240(%rax)
	jmp	.LBB95_57
.LBB95_31:                              # %if.else.101
	movq	-80(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB95_56
# BB#32:                                # %if.then.106
	movq	-24(%rbp), %rax
	movl	240(%rax), %ecx
	andl	$-4, %ecx
	orl	$1, %ecx
	movl	%ecx, 240(%rax)
	movq	-24(%rbp), %rax
	movq	176(%rax), %rax
	movq	-24(%rbp), %rdx
	movq	%rax, 216(%rdx)
	movq	-24(%rbp), %rax
	movl	240(%rax), %ecx
	andl	$-4097, %ecx            # imm = 0xFFFFFFFFFFFFEFFF
	orl	$4096, %ecx             # imm = 0x1000
	movl	%ecx, 240(%rax)
	movq	-24(%rbp), %rax
	movl	$1, 236(%rax)
.LBB95_33:                              # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-80(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB95_55
# BB#34:                                # %while.body
                                        #   in Loop: Header=BB95_33 Depth=1
	movq	-80(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -96(%rbp)
	movq	-80(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	je	.LBB95_36
# BB#35:                                # %if.then.127
	jmp	.LBB95_55
.LBB95_36:                              # %if.end.128
                                        #   in Loop: Header=BB95_33 Depth=1
	movl	$75, %edi
	movq	-80(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -104(%rbp)
	movq	-80(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -80(%rbp)
	movq	-96(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-160(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB95_41
# BB#37:                                # %if.then.137
                                        #   in Loop: Header=BB95_33 Depth=1
	movq	-104(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	andl	$-5, %ecx
	cmpl	$2, %ecx
	jne	.LBB95_40
# BB#38:                                # %land.lhs.true.143
                                        #   in Loop: Header=BB95_33 Depth=1
	movq	-104(%rbp), %rax
	sarq	$2, %rax
	cmpq	$0, %rax
	je	.LBB95_40
# BB#39:                                # %if.then.147
                                        #   in Loop: Header=BB95_33 Depth=1
	movq	-104(%rbp), %rax
	sarq	$2, %rax
	movl	%eax, %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, 236(%rax)
.LBB95_40:                              # %if.end.151
                                        #   in Loop: Header=BB95_33 Depth=1
	jmp	.LBB95_54
.LBB95_41:                              # %if.else.152
                                        #   in Loop: Header=BB95_33 Depth=1
	movl	$21, %edi
	movq	-96(%rbp), %rax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-168(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB95_45
# BB#42:                                # %if.then.156
                                        #   in Loop: Header=BB95_33 Depth=1
	movq	-104(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB95_43
	jmp	.LBB95_44
.LBB95_43:                              # %if.then.158
                                        #   in Loop: Header=BB95_33 Depth=1
	movl	$14, %ecx
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-104(%rbp), %rdx
	callq	load_color
	movq	-24(%rbp), %rdx
	movq	%rax, 216(%rdx)
	movq	-24(%rbp), %rax
	movl	240(%rax), %ecx
	andl	$-9, %ecx
	orl	$8, %ecx
	movl	%ecx, 240(%rax)
.LBB95_44:                              # %if.end.164
                                        #   in Loop: Header=BB95_33 Depth=1
	jmp	.LBB95_53
.LBB95_45:                              # %if.else.165
                                        #   in Loop: Header=BB95_33 Depth=1
	movl	$127, %edi
	movq	-96(%rbp), %rax
	movq	%rax, -176(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-176(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB95_52
# BB#46:                                # %if.then.169
                                        #   in Loop: Header=BB95_33 Depth=1
	movl	$804, %edi              # imm = 0x324
	movq	-104(%rbp), %rax
	movq	%rax, -184(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-184(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB95_48
# BB#47:                                # %if.then.173
                                        #   in Loop: Header=BB95_33 Depth=1
	movq	-24(%rbp), %rax
	movl	240(%rax), %ecx
	andl	$-4, %ecx
	orl	$2, %ecx
	movl	%ecx, 240(%rax)
	jmp	.LBB95_51
.LBB95_48:                              # %if.else.178
                                        #   in Loop: Header=BB95_33 Depth=1
	movl	$768, %edi              # imm = 0x300
	movq	-104(%rbp), %rax
	movq	%rax, -192(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-192(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB95_50
# BB#49:                                # %if.then.182
                                        #   in Loop: Header=BB95_33 Depth=1
	movq	-24(%rbp), %rax
	movl	240(%rax), %ecx
	andl	$-4, %ecx
	orl	$3, %ecx
	movl	%ecx, 240(%rax)
.LBB95_50:                              # %if.end.187
                                        #   in Loop: Header=BB95_33 Depth=1
	jmp	.LBB95_51
.LBB95_51:                              # %if.end.188
                                        #   in Loop: Header=BB95_33 Depth=1
	jmp	.LBB95_52
.LBB95_52:                              # %if.end.189
                                        #   in Loop: Header=BB95_33 Depth=1
	jmp	.LBB95_53
.LBB95_53:                              # %if.end.190
                                        #   in Loop: Header=BB95_33 Depth=1
	jmp	.LBB95_54
.LBB95_54:                              # %if.end.191
                                        #   in Loop: Header=BB95_33 Depth=1
	jmp	.LBB95_33
.LBB95_55:                              # %while.end
	jmp	.LBB95_56
.LBB95_56:                              # %if.end.192
	jmp	.LBB95_57
.LBB95_57:                              # %if.end.193
	jmp	.LBB95_58
.LBB95_58:                              # %if.end.194
	movl	$901, %edi              # imm = 0x385
	movq	-16(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -200(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-200(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB95_60
# BB#59:                                # %if.then.199
	movq	-24(%rbp), %rax
	movl	240(%rax), %ecx
	andl	$-17, %ecx
	orl	$16, %ecx
	movl	%ecx, 240(%rax)
	movq	-24(%rbp), %rax
	movl	240(%rax), %ecx
	andl	$-5, %ecx
	movl	%ecx, 240(%rax)
	movq	-24(%rbp), %rax
	movl	240(%rax), %ecx
	andl	$-513, %ecx             # imm = 0xFFFFFFFFFFFFFDFF
	orl	$512, %ecx              # imm = 0x200
	movl	%ecx, 240(%rax)
	movq	-24(%rbp), %rax
	movq	$0, 192(%rax)
	jmp	.LBB95_89
.LBB95_60:                              # %if.else.208
	movq	-56(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB95_61
	jmp	.LBB95_62
.LBB95_61:                              # %if.then.210
	movl	$7, %ecx
	movq	-24(%rbp), %rax
	movl	240(%rax), %edx
	andl	$-17, %edx
	orl	$16, %edx
	movl	%edx, 240(%rax)
	movq	-24(%rbp), %rax
	movl	240(%rax), %edx
	andl	$-5, %edx
	movl	%edx, 240(%rax)
	movq	-24(%rbp), %rax
	movl	240(%rax), %edx
	andl	$-513, %edx             # imm = 0xFFFFFFFFFFFFFDFF
	movl	%edx, 240(%rax)
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-56(%rbp), %rdx
	callq	load_color
	movq	-24(%rbp), %rdx
	movq	%rax, 192(%rdx)
	jmp	.LBB95_88
.LBB95_62:                              # %if.else.223
	xorl	%edi, %edi
	movq	-56(%rbp), %rax
	movq	%rax, -208(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-208(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB95_64
# BB#63:                                # %if.then.227
	movq	-24(%rbp), %rax
	movl	240(%rax), %ecx
	andl	$-17, %ecx
	movl	%ecx, 240(%rax)
	movq	-24(%rbp), %rax
	movl	240(%rax), %ecx
	andl	$-513, %ecx             # imm = 0xFFFFFFFFFFFFFDFF
	movl	%ecx, 240(%rax)
	movq	-24(%rbp), %rax
	movq	$0, 192(%rax)
	jmp	.LBB95_87
.LBB95_64:                              # %if.else.235
	movq	-56(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB95_86
# BB#65:                                # %if.then.240
	movq	-24(%rbp), %rax
	movl	240(%rax), %ecx
	andl	$-17, %ecx
	orl	$16, %ecx
	movl	%ecx, 240(%rax)
	movq	-24(%rbp), %rax
	movq	$0, 192(%rax)
	movq	-24(%rbp), %rax
	movl	240(%rax), %ecx
	andl	$-513, %ecx             # imm = 0xFFFFFFFFFFFFFDFF
	orl	$512, %ecx              # imm = 0x200
	movl	%ecx, 240(%rax)
	movq	-24(%rbp), %rax
	movl	240(%rax), %ecx
	andl	$-5, %ecx
	movl	%ecx, 240(%rax)
.LBB95_66:                              # %while.cond.253
                                        # =>This Inner Loop Header: Depth=1
	movq	-56(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB95_85
# BB#67:                                # %while.body.258
                                        #   in Loop: Header=BB95_66 Depth=1
	movq	-56(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -112(%rbp)
	movq	-56(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	je	.LBB95_69
# BB#68:                                # %if.then.270
	jmp	.LBB95_85
.LBB95_69:                              # %if.end.271
                                        #   in Loop: Header=BB95_66 Depth=1
	movl	$21, %edi
	movq	-56(%rbp), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	movq	%rax, -120(%rbp)
	movq	-56(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-112(%rbp), %rax
	movq	%rax, -216(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-216(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB95_76
# BB#70:                                # %if.then.280
                                        #   in Loop: Header=BB95_66 Depth=1
	movl	$451, %edi              # imm = 0x1C3
	movq	-120(%rbp), %rax
	movq	%rax, -224(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-224(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB95_72
# BB#71:                                # %if.then.284
                                        #   in Loop: Header=BB95_66 Depth=1
	movq	-24(%rbp), %rax
	movl	240(%rax), %ecx
	andl	$-513, %ecx             # imm = 0xFFFFFFFFFFFFFDFF
	orl	$512, %ecx              # imm = 0x200
	movl	%ecx, 240(%rax)
	movq	-24(%rbp), %rax
	movq	$0, 192(%rax)
	jmp	.LBB95_75
.LBB95_72:                              # %if.else.290
                                        #   in Loop: Header=BB95_66 Depth=1
	movq	-120(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB95_73
	jmp	.LBB95_74
.LBB95_73:                              # %if.then.292
                                        #   in Loop: Header=BB95_66 Depth=1
	movl	$7, %ecx
	movq	-24(%rbp), %rax
	movl	240(%rax), %edx
	andl	$-513, %edx             # imm = 0xFFFFFFFFFFFFFDFF
	movl	%edx, 240(%rax)
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-120(%rbp), %rdx
	callq	load_color
	movq	-24(%rbp), %rdx
	movq	%rax, 192(%rdx)
.LBB95_74:                              # %if.end.298
                                        #   in Loop: Header=BB95_66 Depth=1
	jmp	.LBB95_75
.LBB95_75:                              # %if.end.299
                                        #   in Loop: Header=BB95_66 Depth=1
	jmp	.LBB95_84
.LBB95_76:                              # %if.else.300
                                        #   in Loop: Header=BB95_66 Depth=1
	movl	$127, %edi
	movq	-112(%rbp), %rax
	movq	%rax, -232(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-232(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB95_83
# BB#77:                                # %if.then.304
                                        #   in Loop: Header=BB95_66 Depth=1
	movl	$620, %edi              # imm = 0x26C
	movq	-120(%rbp), %rax
	movq	%rax, -240(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-240(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB95_79
# BB#78:                                # %if.then.308
                                        #   in Loop: Header=BB95_66 Depth=1
	movq	-24(%rbp), %rax
	movl	240(%rax), %ecx
	andl	$-5, %ecx
	movl	%ecx, 240(%rax)
	jmp	.LBB95_82
.LBB95_79:                              # %if.else.312
                                        #   in Loop: Header=BB95_66 Depth=1
	movl	$1012, %edi             # imm = 0x3F4
	movq	-120(%rbp), %rax
	movq	%rax, -248(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-248(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB95_81
# BB#80:                                # %if.then.316
                                        #   in Loop: Header=BB95_66 Depth=1
	movq	-24(%rbp), %rax
	movl	240(%rax), %ecx
	andl	$-5, %ecx
	orl	$4, %ecx
	movl	%ecx, 240(%rax)
.LBB95_81:                              # %if.end.321
                                        #   in Loop: Header=BB95_66 Depth=1
	jmp	.LBB95_82
.LBB95_82:                              # %if.end.322
                                        #   in Loop: Header=BB95_66 Depth=1
	jmp	.LBB95_83
.LBB95_83:                              # %if.end.323
                                        #   in Loop: Header=BB95_66 Depth=1
	jmp	.LBB95_84
.LBB95_84:                              # %if.end.324
                                        #   in Loop: Header=BB95_66 Depth=1
	jmp	.LBB95_66
.LBB95_85:                              # %while.end.325
	jmp	.LBB95_86
.LBB95_86:                              # %if.end.326
	jmp	.LBB95_87
.LBB95_87:                              # %if.end.327
	jmp	.LBB95_88
.LBB95_88:                              # %if.end.328
	jmp	.LBB95_89
.LBB95_89:                              # %if.end.329
	movq	-16(%rbp), %rax
	movq	96(%rax), %rax
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB95_90
	jmp	.LBB95_91
.LBB95_90:                              # %if.then.332
	movl	$12, %ecx
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	96(%rax), %rdx
	callq	load_color
	movq	-24(%rbp), %rdx
	movq	%rax, 200(%rdx)
	movq	-24(%rbp), %rax
	movl	240(%rax), %ecx
	andl	$-33, %ecx
	orl	$32, %ecx
	movl	%ecx, 240(%rax)
	jmp	.LBB95_94
.LBB95_91:                              # %if.else.338
	movl	$901, %edi              # imm = 0x385
	movq	-64(%rbp), %rax
	movq	%rax, -256(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-256(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB95_93
# BB#92:                                # %if.then.342
	movq	-24(%rbp), %rax
	movq	176(%rax), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, 200(%rcx)
	movq	-24(%rbp), %rax
	movl	240(%rax), %edx
	andl	$-1025, %edx            # imm = 0xFFFFFFFFFFFFFBFF
	orl	$1024, %edx             # imm = 0x400
	movl	%edx, 240(%rax)
	movq	-24(%rbp), %rax
	movl	240(%rax), %edx
	andl	$-33, %edx
	orl	$32, %edx
	movl	%edx, 240(%rax)
.LBB95_93:                              # %if.end.352
	jmp	.LBB95_94
.LBB95_94:                              # %if.end.353
	movq	-16(%rbp), %rax
	movq	104(%rax), %rax
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB95_95
	jmp	.LBB95_96
.LBB95_95:                              # %if.then.356
	movl	$13, %ecx
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movq	-16(%rbp), %rax
	movq	104(%rax), %rdx
	callq	load_color
	movq	-24(%rbp), %rdx
	movq	%rax, 208(%rdx)
	movq	-24(%rbp), %rax
	movl	240(%rax), %ecx
	andl	$-65, %ecx
	orl	$64, %ecx
	movl	%ecx, 240(%rax)
	jmp	.LBB95_99
.LBB95_96:                              # %if.else.362
	movl	$901, %edi              # imm = 0x385
	movq	-72(%rbp), %rax
	movq	%rax, -264(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-264(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB95_98
# BB#97:                                # %if.then.366
	movq	-24(%rbp), %rax
	movq	176(%rax), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, 208(%rcx)
	movq	-24(%rbp), %rax
	movl	240(%rax), %edx
	andl	$-2049, %edx            # imm = 0xFFFFFFFFFFFFF7FF
	orl	$2048, %edx             # imm = 0x800
	movl	%edx, 240(%rax)
	movq	-24(%rbp), %rax
	movl	240(%rax), %edx
	andl	$-65, %edx
	orl	$64, %edx
	movl	%edx, 240(%rax)
.LBB95_98:                              # %if.end.376
	jmp	.LBB95_99
.LBB95_99:                              # %if.end.377
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	88(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -272(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-272(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB95_101
# BB#100:                               # %if.then.382
	movq	-40(%rbp), %rdi
	movq	-48(%rbp), %rsi
	callq	load_pixmap
	movq	-24(%rbp), %rsi
	movq	%rax, 168(%rsi)
.LBB95_101:                             # %if.end.385
	movq	-24(%rbp), %rax
	addq	$272, %rsp              # imm = 0x110
	popq	%rbp
	retq
.Lfunc_end95:
	.size	realize_x_face, .Lfunc_end95-realize_x_face
	.cfi_endproc

	.align	16, 0x90
	.type	realize_tty_face,@function
realize_tty_face:                       # @realize_tty_face
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp288:
	.cfi_def_cfa_offset 16
.Ltmp289:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp290:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movb	$0, -33(%rbp)
	movq	-8(%rbp), %rsi
	movq	8(%rsi), %rsi
	movq	%rsi, -48(%rbp)
	movq	-16(%rbp), %rdi
	callq	make_realized_face
	movl	$5, %edi
	xorl	%edx, %edx
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	40(%rax), %rsi
	callq	font_style_to_value
	movl	$6, %edi
	xorl	%edx, %edx
	sarl	$8, %eax
	movl	%eax, -28(%rbp)
	movq	-16(%rbp), %rsi
	movq	48(%rsi), %rsi
	callq	font_style_to_value
	sarl	$8, %eax
	movl	%eax, -32(%rbp)
	cmpl	$100, -28(%rbp)
	jle	.LBB96_2
# BB#1:                                 # %if.then
	movq	-24(%rbp), %rax
	movl	240(%rax), %ecx
	andl	$-8193, %ecx            # imm = 0xFFFFFFFFFFFFDFFF
	orl	$8192, %ecx             # imm = 0x2000
	movl	%ecx, 240(%rax)
.LBB96_2:                               # %if.end
	cmpl	$100, -32(%rbp)
	je	.LBB96_4
# BB#3:                                 # %if.then.7
	movq	-24(%rbp), %rax
	movl	240(%rax), %ecx
	andl	$-16385, %ecx           # imm = 0xFFFFFFFFFFFFBFFF
	orl	$16384, %ecx            # imm = 0x4000
	movl	%ecx, 240(%rax)
.LBB96_4:                               # %if.end.11
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	56(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-64(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB96_6
# BB#5:                                 # %if.then.15
	movq	-24(%rbp), %rax
	movl	240(%rax), %ecx
	andl	$-32769, %ecx           # imm = 0xFFFFFFFFFFFF7FFF
	orl	$32768, %ecx            # imm = 0x8000
	movl	%ecx, 240(%rax)
.LBB96_6:                               # %if.end.19
	xorl	%edi, %edi
	movq	-16(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-72(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB96_8
# BB#7:                                 # %if.then.23
	movq	-24(%rbp), %rax
	movl	240(%rax), %ecx
	andl	$-65537, %ecx           # imm = 0xFFFFFFFFFFFEFFFF
	orl	$65536, %ecx            # imm = 0x10000
	movl	%ecx, 240(%rax)
.LBB96_8:                               # %if.end.27
	movl	$9, %edx
	leaq	-33(%rbp), %rcx
	movq	-48(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	map_tty_color
	movl	$10, %edx
	leaq	-33(%rbp), %rcx
	movq	-48(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	map_tty_color
	movq	-24(%rbp), %rcx
	movl	240(%rcx), %edx
	shrl	$16, %edx
	andl	$1, %edx
	testl	$1, %edx
	je	.LBB96_11
# BB#9:                                 # %land.lhs.true
	testb	$1, -33(%rbp)
	jne	.LBB96_11
# BB#10:                                # %if.then.31
	movq	-24(%rbp), %rax
	movq	176(%rax), %rax
	movq	%rax, -56(%rbp)
	movq	-24(%rbp), %rax
	movq	184(%rax), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, 176(%rcx)
	movq	-56(%rbp), %rax
	movq	-24(%rbp), %rcx
	movq	%rax, 184(%rcx)
.LBB96_11:                              # %if.end.34
	testb	$1, tty_suppress_bold_inverse_default_colors_p
	je	.LBB96_16
# BB#12:                                # %land.lhs.true.36
	movq	-24(%rbp), %rax
	movl	240(%rax), %ecx
	shrl	$13, %ecx
	andl	$1, %ecx
	testl	$1, %ecx
	je	.LBB96_16
# BB#13:                                # %land.lhs.true.42
	movq	-24(%rbp), %rax
	cmpq	$-2, 184(%rax)
	jne	.LBB96_16
# BB#14:                                # %land.lhs.true.45
	movq	-24(%rbp), %rax
	cmpq	$-3, 176(%rax)
	jne	.LBB96_16
# BB#15:                                # %if.then.48
	movq	-24(%rbp), %rax
	movl	240(%rax), %ecx
	andl	$-8193, %ecx            # imm = 0xFFFFFFFFFFFFDFFF
	movl	%ecx, 240(%rax)
.LBB96_16:                              # %if.end.52
	movq	-24(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end96:
	.size	realize_tty_face, .Lfunc_end96-realize_tty_face
	.cfi_endproc

	.align	16, 0x90
	.type	make_realized_face,@function
make_realized_face:                     # @make_realized_face
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp291:
	.cfi_def_cfa_offset 16
.Ltmp292:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp293:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movl	$280, %eax              # imm = 0x118
	movl	%eax, %ecx
	movq	%rdi, -8(%rbp)
	movq	%rcx, %rdi
	callq	xmalloc
	xorl	%esi, %esi
	movl	$128, %edx
                                        # kill: RDX<def> EDX<kill>
	movl	$152, %r8d
	movl	%r8d, %ecx
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdi
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	movq	-24(%rbp), %rax         # 8-byte Reload
	movl	%esi, -28(%rbp)         # 4-byte Spill
	movq	%rax, %rsi
	movq	%rdx, -40(%rbp)         # 8-byte Spill
	movq	%rcx, %rdx
	callq	memcpy
	movq	-16(%rbp), %rax
	addq	$152, %rax
	movq	%rax, %rdi
	movl	-28(%rbp), %esi         # 4-byte Reload
	movq	-40(%rbp), %rdx         # 8-byte Reload
	callq	memset
	movq	-16(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 264(%rcx)
	movq	-16(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end97:
	.size	make_realized_face, .Lfunc_end97-make_realized_face
	.cfi_endproc

	.align	16, 0x90
	.type	cache_face,@function
cache_face:                             # @cache_face
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp294:
	.cfi_def_cfa_offset 16
.Ltmp295:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp296:
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movl	$1001, %eax             # imm = 0x3E9
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	-20(%rbp), %edx
	movl	%eax, -36(%rbp)         # 4-byte Spill
	movl	%edx, %eax
	xorl	%edx, %edx
	movl	-36(%rbp), %ecx         # 4-byte Reload
	divl	%ecx
	movl	%edx, -24(%rbp)
	movl	-20(%rbp), %edx
	movq	-16(%rbp), %rsi
	movl	%edx, 244(%rsi)
	movq	-16(%rbp), %rsi
	movq	264(%rsi), %rsi
	cmpq	-16(%rbp), %rsi
	je	.LBB98_8
# BB#1:                                 # %if.then
	movslq	-24(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.LBB98_6
# BB#2:                                 # %if.then.2
	jmp	.LBB98_3
.LBB98_3:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rax
	cmpq	$0, 248(%rax)
	je	.LBB98_5
# BB#4:                                 # %while.body
                                        #   in Loop: Header=BB98_3 Depth=1
	movq	-32(%rbp), %rax
	movq	248(%rax), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB98_3
.LBB98_5:                               # %while.end
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, 248(%rcx)
	movq	-32(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 256(%rcx)
	movq	-16(%rbp), %rax
	movq	$0, 248(%rax)
	jmp	.LBB98_7
.LBB98_6:                               # %if.else
	movq	-16(%rbp), %rax
	movslq	-24(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rax, (%rdx,%rcx,8)
	movq	-16(%rbp), %rax
	movq	$0, 248(%rax)
	movq	-16(%rbp), %rax
	movq	$0, 256(%rax)
.LBB98_7:                               # %if.end
	jmp	.LBB98_11
.LBB98_8:                               # %if.else.12
	movq	-16(%rbp), %rax
	movq	$0, 256(%rax)
	movslq	-24(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 248(%rcx)
	movq	-16(%rbp), %rax
	cmpq	$0, 248(%rax)
	je	.LBB98_10
# BB#9:                                 # %if.then.20
	movq	-16(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	248(%rcx), %rcx
	movq	%rax, 256(%rcx)
.LBB98_10:                              # %if.end.23
	movq	-16(%rbp), %rax
	movslq	-24(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	(%rdx), %rdx
	movq	%rax, (%rdx,%rcx,8)
.LBB98_11:                              # %if.end.27
	movl	$0, -24(%rbp)
.LBB98_12:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-24(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	32(%rcx), %eax
	jge	.LBB98_17
# BB#13:                                # %for.body
                                        #   in Loop: Header=BB98_12 Depth=1
	movslq	-24(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	16(%rcx), %rcx
	cmpq	$0, (%rcx,%rax,8)
	jne	.LBB98_15
# BB#14:                                # %if.then.32
	jmp	.LBB98_17
.LBB98_15:                              # %if.end.33
                                        #   in Loop: Header=BB98_12 Depth=1
	jmp	.LBB98_16
.LBB98_16:                              # %for.inc
                                        #   in Loop: Header=BB98_12 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.LBB98_12
.LBB98_17:                              # %for.end
	movl	-24(%rbp), %eax
	movq	-16(%rbp), %rcx
	movl	%eax, 152(%rcx)
	movl	-24(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	32(%rcx), %eax
	jne	.LBB98_21
# BB#18:                                # %if.then.36
	movq	-8(%rbp), %rax
	movslq	32(%rax), %rax
	movq	-8(%rbp), %rcx
	cmpq	24(%rcx), %rax
	jne	.LBB98_20
# BB#19:                                # %if.then.40
	movl	$1, %eax
	movl	%eax, %edx
	movl	$1048575, %eax          # imm = 0xFFFFF
	movl	%eax, %ecx
	movl	$8, %eax
	movl	%eax, %r8d
	movq	-8(%rbp), %rsi
	movq	16(%rsi), %rsi
	movq	-8(%rbp), %rdi
	addq	$24, %rdi
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	%rsi, %rdi
	movq	-48(%rbp), %rsi         # 8-byte Reload
	callq	xpalloc
	movq	-8(%rbp), %rcx
	movq	%rax, 16(%rcx)
.LBB98_20:                              # %if.end.44
	movq	-8(%rbp), %rax
	movl	32(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, 32(%rax)
.LBB98_21:                              # %if.end.47
	movq	-16(%rbp), %rax
	movslq	-24(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movq	16(%rdx), %rdx
	movq	%rax, (%rdx,%rcx,8)
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end98:
	.size	cache_face, .Lfunc_end98-cache_face
	.cfi_endproc

	.align	16, 0x90
	.type	lface_same_font_attributes_p,@function
lface_same_font_attributes_p:           # @lface_same_font_attributes_p
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp297:
	.cfi_def_cfa_offset 16
.Ltmp298:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp299:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rsi
	movq	8(%rsi), %rdi
	callq	SSDATA
	movq	-16(%rbp), %rsi
	movq	8(%rsi), %rdi
	movq	%rax, -24(%rbp)         # 8-byte Spill
	callq	SSDATA
	movq	-24(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	xstrcasecmp
	xorl	%ecx, %ecx
	movb	%cl, %dl
	cmpl	$0, %eax
	movb	%dl, -25(%rbp)          # 1-byte Spill
	jne	.LBB99_13
# BB#1:                                 # %land.lhs.true
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdi
	callq	SSDATA
	movq	-16(%rbp), %rdi
	movq	16(%rdi), %rdi
	movq	%rax, -40(%rbp)         # 8-byte Spill
	callq	SSDATA
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	xstrcasecmp
	xorl	%ecx, %ecx
	movb	%cl, %dl
	cmpl	$0, %eax
	movb	%dl, -25(%rbp)          # 1-byte Spill
	jne	.LBB99_13
# BB#2:                                 # %land.lhs.true.10
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-8(%rbp), %rdx
	movq	32(%rdx), %rdx
	movq	-16(%rbp), %rsi
	cmpq	32(%rsi), %rdx
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB99_13
# BB#3:                                 # %land.lhs.true.14
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-8(%rbp), %rdx
	movq	24(%rdx), %rdx
	movq	-16(%rbp), %rsi
	cmpq	24(%rsi), %rdx
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB99_13
# BB#4:                                 # %land.lhs.true.18
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-8(%rbp), %rdx
	movq	40(%rdx), %rdx
	movq	-16(%rbp), %rsi
	cmpq	40(%rsi), %rdx
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB99_13
# BB#5:                                 # %land.lhs.true.22
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-8(%rbp), %rdx
	movq	48(%rdx), %rdx
	movq	-16(%rbp), %rsi
	cmpq	48(%rsi), %rdx
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB99_13
# BB#6:                                 # %land.lhs.true.26
	xorl	%eax, %eax
	movb	%al, %cl
	movq	-8(%rbp), %rdx
	movq	120(%rdx), %rdx
	movq	-16(%rbp), %rsi
	cmpq	120(%rsi), %rdx
	movb	%cl, -25(%rbp)          # 1-byte Spill
	jne	.LBB99_13
# BB#7:                                 # %land.rhs
	movb	$1, %al
	movq	-8(%rbp), %rcx
	movq	136(%rcx), %rcx
	movq	-16(%rbp), %rdx
	cmpq	136(%rdx), %rcx
	movb	%al, -41(%rbp)          # 1-byte Spill
	je	.LBB99_12
# BB#8:                                 # %lor.rhs
	movq	-8(%rbp), %rax
	movq	136(%rax), %rdi
	callq	STRINGP
	xorl	%ecx, %ecx
	movb	%cl, %dl
	testb	$1, %al
	movb	%dl, -42(%rbp)          # 1-byte Spill
	jne	.LBB99_9
	jmp	.LBB99_11
.LBB99_9:                               # %land.lhs.true.35
	movq	-16(%rbp), %rax
	movq	136(%rax), %rdi
	callq	STRINGP
	xorl	%ecx, %ecx
	movb	%cl, %dl
	testb	$1, %al
	movb	%dl, -42(%rbp)          # 1-byte Spill
	jne	.LBB99_10
	jmp	.LBB99_11
.LBB99_10:                              # %land.rhs.38
	movq	-8(%rbp), %rax
	movq	136(%rax), %rdi
	callq	SSDATA
	movq	-16(%rbp), %rdi
	movq	136(%rdi), %rdi
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	SSDATA
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	xstrcasecmp
	cmpl	$0, %eax
	setne	%cl
	xorb	$-1, %cl
	movb	%cl, -42(%rbp)          # 1-byte Spill
.LBB99_11:                              # %land.end
	movb	-42(%rbp), %al          # 1-byte Reload
	movb	%al, -41(%rbp)          # 1-byte Spill
.LBB99_12:                              # %lor.end
	movb	-41(%rbp), %al          # 1-byte Reload
	movb	%al, -25(%rbp)          # 1-byte Spill
.LBB99_13:                              # %land.end.44
	movb	-25(%rbp), %al          # 1-byte Reload
	andb	$1, %al
	movzbl	%al, %eax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end99:
	.size	lface_same_font_attributes_p, .Lfunc_end99-lface_same_font_attributes_p
	.cfi_endproc

	.align	16, 0x90
	.type	face_fontset,@function
face_fontset:                           # @face_fontset
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp300:
	.cfi_def_cfa_offset 16
.Ltmp301:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp302:
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	movq	136(%rdi), %rdi
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB100_2
# BB#1:                                 # %if.then
	movl	$-1, -4(%rbp)
	jmp	.LBB100_3
.LBB100_2:                              # %if.end
	xorl	%esi, %esi
	movq	-24(%rbp), %rdi
	callq	fs_query_fontset
	movl	%eax, -4(%rbp)
.LBB100_3:                              # %return
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end100:
	.size	face_fontset, .Lfunc_end100-face_fontset
	.cfi_endproc

	.align	16, 0x90
	.type	load_face_colors,@function
load_face_colors:                       # @load_face_colors
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp303:
	.cfi_def_cfa_offset 16
.Ltmp304:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp305:
	.cfi_def_cfa_register %rbp
	subq	$144, %rsp
	movl	$901, %eax              # imm = 0x385
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	80(%rdx), %rdx
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rdx
	movq	72(%rdx), %rdx
	movq	%rdx, -32(%rbp)
	movq	-24(%rbp), %rdx
	movq	64(%rdx), %rdx
	movl	%eax, %edi
	movq	%rdx, -96(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-96(%rbp), %rdx         # 8-byte Reload
	cmpq	%rax, %rdx
	jne	.LBB101_2
# BB#1:                                 # %if.then
	movq	-32(%rbp), %rax
	movq	%rax, -88(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, -40(%rbp)
.LBB101_2:                              # %if.end
	movq	-8(%rbp), %rdi
	movq	-40(%rbp), %rax
	movq	%rdi, -104(%rbp)        # 8-byte Spill
	movq	%rax, %rdi
	callq	SSDATA
	xorl	%edx, %edx
	movq	-104(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	face_color_supported_p
	testb	$1, %al
	jne	.LBB101_5
# BB#3:                                 # %land.lhs.true
	movq	globals+696, %rdi
	callq	Fbitmap_spec_p
	xorl	%edi, %edi
	movq	%rax, -112(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-112(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB101_5
# BB#4:                                 # %if.then.8
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rax
	movq	168(%rax), %rsi
	callq	x_destroy_bitmap
	movq	-8(%rbp), %rdi
	movq	globals+696, %rsi
	callq	load_pixmap
	movq	-16(%rbp), %rsi
	movq	%rax, 168(%rsi)
.LBB101_5:                              # %if.end.11
	movl	$10, %ecx
	leaq	-80(%rbp), %r8
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-40(%rbp), %rdx
	callq	load_color2
	movl	$9, %ecx
	leaq	-64(%rbp), %r8
	movq	-16(%rbp), %rdx
	movq	%rax, 184(%rdx)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-32(%rbp), %rdx
	callq	load_color2
	xorl	%edi, %edi
	movq	-16(%rbp), %rdx
	movq	%rax, 176(%rdx)
	movq	-24(%rbp), %rax
	movq	144(%rax), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-120(%rbp), %rdx        # 8-byte Reload
	cmpq	%rax, %rdx
	je	.LBB101_12
# BB#6:                                 # %land.lhs.true.17
	movl	$975, %edi              # imm = 0x3CF
	movq	-48(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-128(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB101_12
# BB#7:                                 # %land.lhs.true.20
	leaq	-80(%rbp), %rdi
	leaq	-64(%rbp), %rsi
	callq	color_distance
	cmpl	$30000, %eax            # imm = 0x7530
	jge	.LBB101_12
# BB#8:                                 # %if.then.23
	movl	$901, %edi              # imm = 0x385
	movq	-24(%rbp), %rax
	movq	64(%rax), %rax
	movq	%rax, -136(%rbp)        # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-136(%rbp), %rcx        # 8-byte Reload
	cmpq	%rax, %rcx
	jne	.LBB101_10
# BB#9:                                 # %if.then.27
	movl	$10, %ecx
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-48(%rbp), %rdx
	callq	load_color
	movq	-16(%rbp), %rdx
	movq	%rax, 184(%rdx)
	jmp	.LBB101_11
.LBB101_10:                             # %if.else
	movl	$9, %ecx
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-48(%rbp), %rdx
	callq	load_color
	movq	-16(%rbp), %rdx
	movq	%rax, 176(%rdx)
.LBB101_11:                             # %if.end.32
	jmp	.LBB101_12
.LBB101_12:                             # %if.end.33
	addq	$144, %rsp
	popq	%rbp
	retq
.Lfunc_end101:
	.size	load_face_colors, .Lfunc_end101-load_face_colors
	.cfi_endproc

	.align	16, 0x90
	.type	load_pixmap,@function
load_pixmap:                            # @load_pixmap
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp306:
	.cfi_def_cfa_offset 16
.Ltmp307:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp308:
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	xorl	%eax, %eax
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rsi
	movl	%eax, %edi
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-56(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	jne	.LBB102_2
# BB#1:                                 # %if.then
	movq	$0, -8(%rbp)
	jmp	.LBB102_12
.LBB102_2:                              # %if.end
	movq	-24(%rbp), %rdi
	callq	Fbitmap_spec_p
	xorl	%edi, %edi
	movq	%rax, -64(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-64(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rcx
	je	.LBB102_4
# BB#3:                                 # %cond.true
	jmp	.LBB102_5
.LBB102_4:                              # %cond.false
	movl	$204, %edi
	callq	builtin_lisp_symbol
	movq	-24(%rbp), %rsi
	movq	%rax, %rdi
	callq	wrong_type_argument
	movq	%rax, -72(%rbp)         # 8-byte Spill
.LBB102_5:                              # %cond.end
	callq	block_input
	movq	-24(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB102_7
# BB#6:                                 # %if.then.7
	movq	-24(%rbp), %rdi
	callq	Fcar
	sarq	$2, %rax
	movl	%eax, %ecx
	movl	%ecx, -40(%rbp)
	movq	-24(%rbp), %rdi
	callq	Fcdr
	movq	%rax, %rdi
	callq	Fcar
	sarq	$2, %rax
	movl	%eax, %ecx
	movl	%ecx, -36(%rbp)
	movq	-24(%rbp), %rdi
	callq	Fcdr
	movq	%rax, %rdi
	callq	Fcdr
	movq	%rax, %rdi
	callq	Fcar
	movq	%rax, -48(%rbp)
	movq	-16(%rbp), %rdi
	movq	-48(%rbp), %rax
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	SSDATA
	movl	-40(%rbp), %edx
	movl	-36(%rbp), %ecx
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	x_create_bitmap_from_data
	movq	%rax, -32(%rbp)
	jmp	.LBB102_8
.LBB102_7:                              # %if.else
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rsi
	callq	x_create_bitmap_from_file
	movq	%rax, -32(%rbp)
.LBB102_8:                              # %if.end.20
	callq	unblock_input
	cmpq	$0, -32(%rbp)
	jge	.LBB102_10
# BB#9:                                 # %if.then.23
	movabsq	$.L.str.57, %rdi
	movq	-24(%rbp), %rsi
	movb	$0, %al
	callq	add_to_log
	movq	$0, -32(%rbp)
	jmp	.LBB102_11
.LBB102_10:                             # %if.else.24
	jmp	.LBB102_11
.LBB102_11:                             # %if.end.25
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB102_12:                             # %return
	movq	-8(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end102:
	.size	load_pixmap, .Lfunc_end102-load_pixmap
	.cfi_endproc

	.align	16, 0x90
	.type	map_tty_color,@function
map_tty_color:                          # @map_tty_color
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp309:
	.cfi_def_cfa_offset 16
.Ltmp310:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp311:
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movl	$5, %eax
	movq	$-3, %r8
	movq	$-2, %r9
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	%rcx, -32(%rbp)
	cmpl	$9, -20(%rbp)
	sete	%r10b
	andb	$1, %r10b
	movb	%r10b, -57(%rbp)
	movb	-57(%rbp), %r10b
	testb	$1, %r10b
	cmovneq	%r9, %r8
	movq	%r8, -72(%rbp)
	movq	-72(%rbp), %rcx
	movq	%rcx, -80(%rbp)
	movq	-8(%rbp), %rcx
	movq	%rcx, %rdi
	movl	%eax, %esi
	callq	make_lisp_ptr
	movq	%rax, -40(%rbp)
	movl	-20(%rbp), %edx
	movl	%edx, %eax
	movq	-16(%rbp), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB103_1
	jmp	.LBB103_5
.LBB103_1:                              # %land.lhs.true
	movq	-48(%rbp), %rdi
	callq	SCHARS
	cmpq	$0, %rax
	je	.LBB103_5
# BB#2:                                 # %land.lhs.true.4
	movq	globals+2480, %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB103_5
# BB#3:                                 # %land.lhs.true.7
	movl	$939, %edi              # imm = 0x3AB
	movq	-48(%rbp), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	callq	builtin_lisp_symbol
	movq	-40(%rbp), %rsi
	movq	%rax, %rdi
	callq	call1
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	assoc_no_quit
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	andq	$7, %rax
	movl	%eax, %ecx
	cmpl	$3, %ecx
	jne	.LBB103_5
# BB#4:                                 # %if.then
	movq	-56(%rbp), %rax
	subq	$3, %rax
	movq	8(%rax), %rax
	subq	$3, %rax
	movq	(%rax), %rax
	sarq	$2, %rax
	movq	%rax, -80(%rbp)
.LBB103_5:                              # %if.end
	movq	-80(%rbp), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB103_8
# BB#6:                                 # %land.lhs.true.18
	movq	-48(%rbp), %rdi
	callq	STRINGP
	testb	$1, %al
	jne	.LBB103_7
	jmp	.LBB103_8
.LBB103_7:                              # %if.then.21
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-48(%rbp), %rdx
	movl	-20(%rbp), %ecx
	callq	load_color
	movq	%rax, -80(%rbp)
.LBB103_8:                              # %if.end.23
	testb	$1, -57(%rbp)
	je	.LBB103_10
# BB#9:                                 # %if.then.25
	movq	-80(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 176(%rcx)
	jmp	.LBB103_11
.LBB103_10:                             # %if.else
	movq	-80(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	%rax, 184(%rcx)
.LBB103_11:                             # %if.end.26
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end103:
	.size	map_tty_color, .Lfunc_end103-map_tty_color
	.cfi_endproc

	.type	unspecified_fg,@object  # @unspecified_fg
	.data
	.globl	unspecified_fg
unspecified_fg:
	.asciz	"unspecified-fg"
	.size	unspecified_fg, 15

	.type	unspecified_bg,@object  # @unspecified_bg
	.globl	unspecified_bg
unspecified_bg:
	.asciz	"unspecified-bg"
	.size	unspecified_bg, 15

	.type	clear_font_table_count,@object # @clear_font_table_count
	.local	clear_font_table_count
	.comm	clear_font_table_count,4,4
	.type	face_change,@object     # @face_change
	.comm	face_change,1,1
	.type	font_sort_order,@object # @font_sort_order
	.local	font_sort_order
	.comm	font_sort_order,16,16
	.type	font_props_for_sorting,@object # @font_props_for_sorting
	.local	font_props_for_sorting
	.comm	font_props_for_sorting,32,16
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Invalid font name"
	.size	.L.str, 18

	.type	next_lface_id,@object   # @next_lface_id
	.local	next_lface_id
	.comm	next_lface_id,4,4
	.type	lface_id_to_name_size,@object # @lface_id_to_name_size
	.local	lface_id_to_name_size
	.comm	lface_id_to_name_size,8,8
	.type	lface_id_to_name,@object # @lface_id_to_name
	.local	lface_id_to_name
	.comm	lface_id_to_name,8,8
	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Invalid face family"
	.size	.L.str.1, 20

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"Invalid face foundry"
	.size	.L.str.2, 21

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Default face height not absolute and positive"
	.size	.L.str.3, 46

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"Face height does not produce a positive integer"
	.size	.L.str.4, 48

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"Invalid face weight"
	.size	.L.str.5, 20

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"Invalid face slant"
	.size	.L.str.6, 19

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Invalid face underline"
	.size	.L.str.7, 23

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"Invalid face overline"
	.size	.L.str.8, 22

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Invalid face strike-through"
	.size	.L.str.9, 28

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"Invalid face box"
	.size	.L.str.10, 17

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"Invalid inverse-video face attribute value"
	.size	.L.str.11, 43

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"Empty foreground color value"
	.size	.L.str.12, 29

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"Empty distant-foreground color value"
	.size	.L.str.13, 37

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"Empty background color value"
	.size	.L.str.14, 29

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"Invalid stipple attribute"
	.size	.L.str.15, 26

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"Invalid face width"
	.size	.L.str.16, 19

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"Invalid font or font-spec"
	.size	.L.str.17, 26

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"Font not available"
	.size	.L.str.18, 19

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"Invalid fontset name"
	.size	.L.str.19, 21

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"Invalid face inheritance"
	.size	.L.str.20, 25

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"Invalid face attribute name"
	.size	.L.str.21, 28

	.type	menu_face_changed_default,@object # @menu_face_changed_default
	.local	menu_face_changed_default
	.comm	menu_face_changed_default,1,1
	.type	Vparam_value_alist,@object # @Vparam_value_alist
	.local	Vparam_value_alist
	.comm	Vparam_value_alist,8,8
	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"unspecified"
	.size	.L.str.22, 12

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"Invalid face height from X resource"
	.size	.L.str.23, 36

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"Invalid color"
	.size	.L.str.24, 14

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"Cannot realize default face"
	.size	.L.str.25, 28

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"Invalid font sort order"
	.size	.L.str.26, 24

	.type	Vface_alternative_font_family_alist,@object # @Vface_alternative_font_family_alist
	.comm	Vface_alternative_font_family_alist,8,8
	.type	Vface_alternative_font_registry_alist,@object # @Vface_alternative_font_registry_alist
	.comm	Vface_alternative_font_registry_alist,8,8
	.type	tty_suppress_bold_inverse_default_colors_p,@object # @tty_suppress_bold_inverse_default_colors_p
	.local	tty_suppress_bold_inverse_default_colors_p
	.comm	tty_suppress_bold_inverse_default_colors_p,1,1
	.type	syms_of_xfaces.o_fwd,@object # @syms_of_xfaces.o_fwd
	.local	syms_of_xfaces.o_fwd
	.comm	syms_of_xfaces.o_fwd,16,8
	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"face-new-frame-defaults"
	.size	.L.str.27, 24

	.type	syms_of_xfaces.o_fwd.28,@object # @syms_of_xfaces.o_fwd.28
	.local	syms_of_xfaces.o_fwd.28
	.comm	syms_of_xfaces.o_fwd.28,16,8
	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"face-default-stipple"
	.size	.L.str.29, 21

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"gray3"
	.size	.L.str.30, 6

	.type	syms_of_xfaces.o_fwd.31,@object # @syms_of_xfaces.o_fwd.31
	.local	syms_of_xfaces.o_fwd.31
	.comm	syms_of_xfaces.o_fwd.31,16,8
	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"tty-defined-color-alist"
	.size	.L.str.32, 24

	.type	syms_of_xfaces.o_fwd.33,@object # @syms_of_xfaces.o_fwd.33
	.local	syms_of_xfaces.o_fwd.33
	.comm	syms_of_xfaces.o_fwd.33,16,8
	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"scalable-fonts-allowed"
	.size	.L.str.34, 23

	.type	syms_of_xfaces.o_fwd.35,@object # @syms_of_xfaces.o_fwd.35
	.local	syms_of_xfaces.o_fwd.35
	.comm	syms_of_xfaces.o_fwd.35,16,8
	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"face-ignored-fonts"
	.size	.L.str.36, 19

	.type	syms_of_xfaces.o_fwd.37,@object # @syms_of_xfaces.o_fwd.37
	.local	syms_of_xfaces.o_fwd.37
	.comm	syms_of_xfaces.o_fwd.37,16,8
	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"face-remapping-alist"
	.size	.L.str.38, 21

	.type	syms_of_xfaces.o_fwd.39,@object # @syms_of_xfaces.o_fwd.39
	.local	syms_of_xfaces.o_fwd.39
	.comm	syms_of_xfaces.o_fwd.39,16,8
	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"face-font-rescale-alist"
	.size	.L.str.40, 24

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"black"
	.size	.L.str.41, 6

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"white"
	.size	.L.str.42, 6

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"unspecified-fg"
	.size	.L.str.43, 15

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"unspecified-bg"
	.size	.L.str.44, 15

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"Unable to load color \"%s\""
	.size	.L.str.45, 26

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"Invalid face"
	.size	.L.str.46, 13

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"on"
	.size	.L.str.47, 3

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"true"
	.size	.L.str.48, 5

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"off"
	.size	.L.str.49, 4

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"false"
	.size	.L.str.50, 6

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"Invalid face attribute value from X resource"
	.size	.L.str.51, 45

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"Invalid face color %S"
	.size	.L.str.52, 22

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"Invalid face attribute %S %S"
	.size	.L.str.53, 29

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"Invalid face reference: %s"
	.size	.L.str.54, 27

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"Cannot make face"
	.size	.L.str.55, 17

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"default"
	.size	.L.str.56, 8

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"Invalid or undefined bitmap `%s'"
	.size	.L.str.57, 33

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"internal-make-lisp-face"
	.size	.L.str.58, 24

	.type	Sinternal_make_lisp_face,@object # @Sinternal_make_lisp_face
	.data
	.align	8
Sinternal_make_lisp_face:
	.quad	167772160               # 0xa000000
	.quad	Finternal_make_lisp_face
	.short	1                       # 0x1
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.58
	.quad	0
	.quad	0
	.size	Sinternal_make_lisp_face, 48

	.type	.L.str.59,@object       # @.str.59
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.59:
	.asciz	"internal-lisp-face-p"
	.size	.L.str.59, 21

	.type	Sinternal_lisp_face_p,@object # @Sinternal_lisp_face_p
	.data
	.align	8
Sinternal_lisp_face_p:
	.quad	167772160               # 0xa000000
	.quad	Finternal_lisp_face_p
	.short	1                       # 0x1
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.59
	.quad	0
	.quad	0
	.size	Sinternal_lisp_face_p, 48

	.type	.L.str.60,@object       # @.str.60
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.60:
	.asciz	"internal-set-lisp-face-attribute"
	.size	.L.str.60, 33

	.type	Sinternal_set_lisp_face_attribute,@object # @Sinternal_set_lisp_face_attribute
	.data
	.align	8
Sinternal_set_lisp_face_attribute:
	.quad	167772160               # 0xa000000
	.quad	Finternal_set_lisp_face_attribute
	.short	3                       # 0x3
	.short	4                       # 0x4
	.zero	4
	.quad	.L.str.60
	.quad	0
	.quad	0
	.size	Sinternal_set_lisp_face_attribute, 48

	.type	.L.str.61,@object       # @.str.61
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.61:
	.asciz	"internal-set-lisp-face-attribute-from-resource"
	.size	.L.str.61, 47

	.type	Sinternal_set_lisp_face_attribute_from_resource,@object # @Sinternal_set_lisp_face_attribute_from_resource
	.data
	.align	8
Sinternal_set_lisp_face_attribute_from_resource:
	.quad	167772160               # 0xa000000
	.quad	Finternal_set_lisp_face_attribute_from_resource
	.short	3                       # 0x3
	.short	4                       # 0x4
	.zero	4
	.quad	.L.str.61
	.quad	0
	.quad	0
	.size	Sinternal_set_lisp_face_attribute_from_resource, 48

	.type	.L.str.62,@object       # @.str.62
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.62:
	.asciz	"color-gray-p"
	.size	.L.str.62, 13

	.type	Scolor_gray_p,@object   # @Scolor_gray_p
	.data
	.align	8
Scolor_gray_p:
	.quad	167772160               # 0xa000000
	.quad	Fcolor_gray_p
	.short	1                       # 0x1
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.62
	.quad	0
	.quad	0
	.size	Scolor_gray_p, 48

	.type	.L.str.63,@object       # @.str.63
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.63:
	.asciz	"color-supported-p"
	.size	.L.str.63, 18

	.type	Scolor_supported_p,@object # @Scolor_supported_p
	.data
	.align	8
Scolor_supported_p:
	.quad	167772160               # 0xa000000
	.quad	Fcolor_supported_p
	.short	1                       # 0x1
	.short	3                       # 0x3
	.zero	4
	.quad	.L.str.63
	.quad	0
	.quad	0
	.size	Scolor_supported_p, 48

	.type	.L.str.64,@object       # @.str.64
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.64:
	.asciz	"face-attribute-relative-p"
	.size	.L.str.64, 26

	.type	Sface_attribute_relative_p,@object # @Sface_attribute_relative_p
	.data
	.align	8
Sface_attribute_relative_p:
	.quad	167772160               # 0xa000000
	.quad	Fface_attribute_relative_p
	.short	2                       # 0x2
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.64
	.quad	0
	.quad	0
	.size	Sface_attribute_relative_p, 48

	.type	.L.str.65,@object       # @.str.65
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.65:
	.asciz	"merge-face-attribute"
	.size	.L.str.65, 21

	.type	Smerge_face_attribute,@object # @Smerge_face_attribute
	.data
	.align	8
Smerge_face_attribute:
	.quad	167772160               # 0xa000000
	.quad	Fmerge_face_attribute
	.short	3                       # 0x3
	.short	3                       # 0x3
	.zero	4
	.quad	.L.str.65
	.quad	0
	.quad	0
	.size	Smerge_face_attribute, 48

	.type	.L.str.66,@object       # @.str.66
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.66:
	.asciz	"internal-get-lisp-face-attribute"
	.size	.L.str.66, 33

	.type	Sinternal_get_lisp_face_attribute,@object # @Sinternal_get_lisp_face_attribute
	.data
	.align	8
Sinternal_get_lisp_face_attribute:
	.quad	167772160               # 0xa000000
	.quad	Finternal_get_lisp_face_attribute
	.short	2                       # 0x2
	.short	3                       # 0x3
	.zero	4
	.quad	.L.str.66
	.quad	0
	.quad	0
	.size	Sinternal_get_lisp_face_attribute, 48

	.type	.L.str.67,@object       # @.str.67
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.67:
	.asciz	"internal-lisp-face-attribute-values"
	.size	.L.str.67, 36

	.type	Sinternal_lisp_face_attribute_values,@object # @Sinternal_lisp_face_attribute_values
	.data
	.align	8
Sinternal_lisp_face_attribute_values:
	.quad	167772160               # 0xa000000
	.quad	Finternal_lisp_face_attribute_values
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.67
	.quad	0
	.quad	0
	.size	Sinternal_lisp_face_attribute_values, 48

	.type	.L.str.68,@object       # @.str.68
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.68:
	.asciz	"internal-lisp-face-equal-p"
	.size	.L.str.68, 27

	.type	Sinternal_lisp_face_equal_p,@object # @Sinternal_lisp_face_equal_p
	.data
	.align	8
Sinternal_lisp_face_equal_p:
	.quad	167772160               # 0xa000000
	.quad	Finternal_lisp_face_equal_p
	.short	2                       # 0x2
	.short	3                       # 0x3
	.zero	4
	.quad	.L.str.68
	.quad	0
	.quad	0
	.size	Sinternal_lisp_face_equal_p, 48

	.type	.L.str.69,@object       # @.str.69
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.69:
	.asciz	"internal-lisp-face-empty-p"
	.size	.L.str.69, 27

	.type	Sinternal_lisp_face_empty_p,@object # @Sinternal_lisp_face_empty_p
	.data
	.align	8
Sinternal_lisp_face_empty_p:
	.quad	167772160               # 0xa000000
	.quad	Finternal_lisp_face_empty_p
	.short	1                       # 0x1
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.69
	.quad	0
	.quad	0
	.size	Sinternal_lisp_face_empty_p, 48

	.type	.L.str.70,@object       # @.str.70
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.70:
	.asciz	"internal-copy-lisp-face"
	.size	.L.str.70, 24

	.type	Sinternal_copy_lisp_face,@object # @Sinternal_copy_lisp_face
	.data
	.align	8
Sinternal_copy_lisp_face:
	.quad	167772160               # 0xa000000
	.quad	Finternal_copy_lisp_face
	.short	4                       # 0x4
	.short	4                       # 0x4
	.zero	4
	.quad	.L.str.70
	.quad	0
	.quad	0
	.size	Sinternal_copy_lisp_face, 48

	.type	.L.str.71,@object       # @.str.71
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.71:
	.asciz	"internal-merge-in-global-face"
	.size	.L.str.71, 30

	.type	Sinternal_merge_in_global_face,@object # @Sinternal_merge_in_global_face
	.data
	.align	8
Sinternal_merge_in_global_face:
	.quad	167772160               # 0xa000000
	.quad	Finternal_merge_in_global_face
	.short	2                       # 0x2
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.71
	.quad	0
	.quad	0
	.size	Sinternal_merge_in_global_face, 48

	.type	.L.str.72,@object       # @.str.72
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.72:
	.asciz	"face-font"
	.size	.L.str.72, 10

	.type	Sface_font,@object      # @Sface_font
	.data
	.align	8
Sface_font:
	.quad	167772160               # 0xa000000
	.quad	Fface_font
	.short	1                       # 0x1
	.short	3                       # 0x3
	.zero	4
	.quad	.L.str.72
	.quad	0
	.quad	0
	.size	Sface_font, 48

	.type	.L.str.73,@object       # @.str.73
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.73:
	.asciz	"frame-face-alist"
	.size	.L.str.73, 17

	.type	Sframe_face_alist,@object # @Sframe_face_alist
	.data
	.align	8
Sframe_face_alist:
	.quad	167772160               # 0xa000000
	.quad	Fframe_face_alist
	.short	0                       # 0x0
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.73
	.quad	0
	.quad	0
	.size	Sframe_face_alist, 48

	.type	.L.str.74,@object       # @.str.74
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.74:
	.asciz	"display-supports-face-attributes-p"
	.size	.L.str.74, 35

	.type	Sdisplay_supports_face_attributes_p,@object # @Sdisplay_supports_face_attributes_p
	.data
	.align	8
Sdisplay_supports_face_attributes_p:
	.quad	167772160               # 0xa000000
	.quad	Fdisplay_supports_face_attributes_p
	.short	1                       # 0x1
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.74
	.quad	0
	.quad	0
	.size	Sdisplay_supports_face_attributes_p, 48

	.type	.L.str.75,@object       # @.str.75
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.75:
	.asciz	"color-distance"
	.size	.L.str.75, 15

	.type	Scolor_distance,@object # @Scolor_distance
	.data
	.align	8
Scolor_distance:
	.quad	167772160               # 0xa000000
	.quad	Fcolor_distance
	.short	2                       # 0x2
	.short	3                       # 0x3
	.zero	4
	.quad	.L.str.75
	.quad	0
	.quad	0
	.size	Scolor_distance, 48

	.type	.L.str.76,@object       # @.str.76
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.76:
	.asciz	"internal-set-font-selection-order"
	.size	.L.str.76, 34

	.type	Sinternal_set_font_selection_order,@object # @Sinternal_set_font_selection_order
	.data
	.align	8
Sinternal_set_font_selection_order:
	.quad	167772160               # 0xa000000
	.quad	Finternal_set_font_selection_order
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.76
	.quad	0
	.quad	0
	.size	Sinternal_set_font_selection_order, 48

	.type	.L.str.77,@object       # @.str.77
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.77:
	.asciz	"internal-set-alternative-font-family-alist"
	.size	.L.str.77, 43

	.type	Sinternal_set_alternative_font_family_alist,@object # @Sinternal_set_alternative_font_family_alist
	.data
	.align	8
Sinternal_set_alternative_font_family_alist:
	.quad	167772160               # 0xa000000
	.quad	Finternal_set_alternative_font_family_alist
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.77
	.quad	0
	.quad	0
	.size	Sinternal_set_alternative_font_family_alist, 48

	.type	.L.str.78,@object       # @.str.78
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.78:
	.asciz	"internal-set-alternative-font-registry-alist"
	.size	.L.str.78, 45

	.type	Sinternal_set_alternative_font_registry_alist,@object # @Sinternal_set_alternative_font_registry_alist
	.data
	.align	8
Sinternal_set_alternative_font_registry_alist:
	.quad	167772160               # 0xa000000
	.quad	Finternal_set_alternative_font_registry_alist
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.78
	.quad	0
	.quad	0
	.size	Sinternal_set_alternative_font_registry_alist, 48

	.type	.L.str.79,@object       # @.str.79
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.79:
	.asciz	"face-attributes-as-vector"
	.size	.L.str.79, 26

	.type	Sface_attributes_as_vector,@object # @Sface_attributes_as_vector
	.data
	.align	8
Sface_attributes_as_vector:
	.quad	167772160               # 0xa000000
	.quad	Fface_attributes_as_vector
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.79
	.quad	0
	.quad	0
	.size	Sface_attributes_as_vector, 48

	.type	.L.str.80,@object       # @.str.80
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.80:
	.asciz	"clear-face-cache"
	.size	.L.str.80, 17

	.type	Sclear_face_cache,@object # @Sclear_face_cache
	.data
	.align	8
Sclear_face_cache:
	.quad	167772160               # 0xa000000
	.quad	Fclear_face_cache
	.short	0                       # 0x0
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.80
	.quad	0
	.quad	0
	.size	Sclear_face_cache, 48

	.type	.L.str.81,@object       # @.str.81
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.81:
	.asciz	"tty-suppress-bold-inverse-default-colors"
	.size	.L.str.81, 41

	.type	Stty_suppress_bold_inverse_default_colors,@object # @Stty_suppress_bold_inverse_default_colors
	.data
	.align	8
Stty_suppress_bold_inverse_default_colors:
	.quad	167772160               # 0xa000000
	.quad	Ftty_suppress_bold_inverse_default_colors
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.81
	.quad	0
	.quad	0
	.size	Stty_suppress_bold_inverse_default_colors, 48

	.type	.L.str.82,@object       # @.str.82
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.82:
	.asciz	"bitmap-spec-p"
	.size	.L.str.82, 14

	.type	Sbitmap_spec_p,@object  # @Sbitmap_spec_p
	.data
	.align	8
Sbitmap_spec_p:
	.quad	167772160               # 0xa000000
	.quad	Fbitmap_spec_p
	.short	1                       # 0x1
	.short	1                       # 0x1
	.zero	4
	.quad	.L.str.82
	.quad	0
	.quad	0
	.size	Sbitmap_spec_p, 48

	.type	.L.str.83,@object       # @.str.83
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.83:
	.asciz	"x-list-fonts"
	.size	.L.str.83, 13

	.type	Sx_list_fonts,@object   # @Sx_list_fonts
	.data
	.align	8
Sx_list_fonts:
	.quad	167772160               # 0xa000000
	.quad	Fx_list_fonts
	.short	1                       # 0x1
	.short	5                       # 0x5
	.zero	4
	.quad	.L.str.83
	.quad	0
	.quad	0
	.size	Sx_list_fonts, 48

	.type	.L.str.84,@object       # @.str.84
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.84:
	.asciz	"internal-face-x-get-resource"
	.size	.L.str.84, 29

	.type	Sinternal_face_x_get_resource,@object # @Sinternal_face_x_get_resource
	.data
	.align	8
Sinternal_face_x_get_resource:
	.quad	167772160               # 0xa000000
	.quad	Finternal_face_x_get_resource
	.short	2                       # 0x2
	.short	3                       # 0x3
	.zero	4
	.quad	.L.str.84
	.quad	0
	.quad	0
	.size	Sinternal_face_x_get_resource, 48

	.type	.L.str.85,@object       # @.str.85
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.85:
	.asciz	"x-family-fonts"
	.size	.L.str.85, 15

	.type	Sx_family_fonts,@object # @Sx_family_fonts
	.data
	.align	8
Sx_family_fonts:
	.quad	167772160               # 0xa000000
	.quad	Fx_family_fonts
	.short	0                       # 0x0
	.short	2                       # 0x2
	.zero	4
	.quad	.L.str.85
	.quad	0
	.quad	0
	.size	Sx_family_fonts, 48


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
