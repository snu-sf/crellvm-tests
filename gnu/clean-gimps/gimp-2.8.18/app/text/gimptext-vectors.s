	.text
	.file	"gimptext-vectors.bc"
	.globl	gimp_text_vectors_new
	.align	16, 0x90
	.type	gimp_text_vectors_new,@function
gimp_text_vectors_new:                  # @gimp_text_vectors_new
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
	xorl	%eax, %eax
	movl	$24, %ecx
	movl	%ecx, %edx
	leaq	-56(%rbp), %r8
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	%r8, %rdi
	movl	%eax, %esi
	callq	memset
# BB#1:                                 # %do.body
	movq	-16(%rbp), %rax
	movq	%rax, -64(%rbp)
	callq	gimp_image_get_type
	movq	%rax, -72(%rbp)
	cmpq	$0, -64(%rbp)
	jne	.LBB0_3
# BB#2:                                 # %if.then
	movl	$0, -76(%rbp)
	jmp	.LBB0_8
.LBB0_3:                                # %if.else
	movq	-64(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_6
# BB#4:                                 # %land.lhs.true
	movq	-64(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-72(%rbp), %rax
	jne	.LBB0_6
# BB#5:                                 # %if.then.3
	movl	$1, -76(%rbp)
	jmp	.LBB0_7
.LBB0_6:                                # %if.else.4
	movq	-64(%rbp), %rdi
	movq	-72(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -76(%rbp)
.LBB0_7:                                # %if.end
	jmp	.LBB0_8
.LBB0_8:                                # %if.end.6
	movl	-76(%rbp), %eax
	movl	%eax, -80(%rbp)
	cmpl	$0, -80(%rbp)
	je	.LBB0_10
# BB#9:                                 # %if.then.8
	jmp	.LBB0_11
.LBB0_10:                               # %if.else.9
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_text_vectors_new, %rsi
	movabsq	$.L.str.1, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB0_34
.LBB0_11:                               # %if.end.10
	jmp	.LBB0_12
.LBB0_12:                               # %do.end
	jmp	.LBB0_13
.LBB0_13:                               # %do.body.11
	movq	-24(%rbp), %rax
	movq	%rax, -88(%rbp)
	callq	gimp_text_get_type
	movq	%rax, -96(%rbp)
	cmpq	$0, -88(%rbp)
	jne	.LBB0_15
# BB#14:                                # %if.then.20
	movl	$0, -100(%rbp)
	jmp	.LBB0_20
.LBB0_15:                               # %if.else.21
	movq	-88(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB0_18
# BB#16:                                # %land.lhs.true.24
	movq	-88(%rbp), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	cmpq	-96(%rbp), %rax
	jne	.LBB0_18
# BB#17:                                # %if.then.28
	movl	$1, -100(%rbp)
	jmp	.LBB0_19
.LBB0_18:                               # %if.else.29
	movq	-88(%rbp), %rdi
	movq	-96(%rbp), %rsi
	callq	g_type_check_instance_is_a
	movl	%eax, -100(%rbp)
.LBB0_19:                               # %if.end.31
	jmp	.LBB0_20
.LBB0_20:                               # %if.end.32
	movl	-100(%rbp), %eax
	movl	%eax, -104(%rbp)
	cmpl	$0, -104(%rbp)
	je	.LBB0_22
# BB#21:                                # %if.then.35
	jmp	.LBB0_23
.LBB0_22:                               # %if.else.36
	movabsq	$.L.str, %rdi
	movabsq	$.L__func__.gimp_text_vectors_new, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB0_34
.LBB0_23:                               # %if.end.37
	jmp	.LBB0_24
.LBB0_24:                               # %do.end.38
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-16(%rbp), %rdi
	callq	gimp_vectors_new
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	cmpq	$0, 32(%rax)
	jne	.LBB0_26
# BB#25:                                # %lor.lhs.false
	movq	-24(%rbp), %rax
	cmpq	$0, 40(%rax)
	je	.LBB0_33
.LBB0_26:                               # %if.then.43
	movq	$0, -152(%rbp)
	movq	-24(%rbp), %rax
	cmpq	$0, 32(%rax)
	je	.LBB0_28
# BB#27:                                # %if.then.52
	movq	-32(%rbp), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	callq	gimp_object_get_type
	movq	-160(%rbp), %rdi        # 8-byte Reload
	movq	%rax, %rsi
	callq	g_type_check_instance_cast
	movq	-24(%rbp), %rsi
	movq	32(%rsi), %rsi
	movq	%rax, %rdi
	callq	gimp_object_set_name_safe
.LBB0_28:                               # %if.end.56
	movl	$8192, %edi             # imm = 0x2000
	xorl	%eax, %eax
	movl	%eax, %esi
	movq	-32(%rbp), %rcx
	movq	%rcx, -56(%rbp)
	callq	cairo_recording_surface_create
	movq	%rax, -120(%rbp)
	movq	-120(%rbp), %rdi
	callq	cairo_create
	leaq	-136(%rbp), %rsi
	leaq	-144(%rbp), %rdx
	movq	%rax, -128(%rbp)
	movq	-16(%rbp), %rdi
	callq	gimp_image_get_resolution
	leaq	-152(%rbp), %rsi
	movq	-24(%rbp), %rdi
	movsd	-136(%rbp), %xmm0       # xmm0 = mem[0],zero
	movsd	-144(%rbp), %xmm1       # xmm1 = mem[0],zero
	callq	gimp_text_layout_new
	movq	%rax, -112(%rbp)
	cmpq	$0, -152(%rbp)
	je	.LBB0_30
# BB#29:                                # %if.then.62
	xorl	%eax, %eax
	movl	%eax, %esi
	movl	$2, %edx
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rdi
	movq	-152(%rbp), %rcx
	movq	8(%rcx), %rcx
	callq	gimp_message_literal
	movq	-152(%rbp), %rdi
	callq	g_error_free
.LBB0_30:                               # %if.end.63
	movl	$1, %ecx
	movq	-112(%rbp), %rdi
	movq	-128(%rbp), %rsi
	movq	-24(%rbp), %rax
	movl	96(%rax), %edx
	callq	gimp_text_layout_render
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	leaq	-56(%rbp), %rsi
	movq	-128(%rbp), %rdi
	callq	gimp_text_render_vectors
	movq	-128(%rbp), %rdi
	callq	cairo_destroy
	movq	-120(%rbp), %rdi
	callq	cairo_surface_destroy
	cmpq	$0, -48(%rbp)
	je	.LBB0_32
# BB#31:                                # %if.then.65
	movq	-48(%rbp), %rdi
	callq	gimp_stroke_close
.LBB0_32:                               # %if.end.67
	jmp	.LBB0_33
.LBB0_33:                               # %if.end.68
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB0_34:                               # %return
	movq	-8(%rbp), %rax
	addq	$160, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_text_vectors_new, .Lfunc_end0-gimp_text_vectors_new
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_text_render_vectors,@function
gimp_text_render_vectors:               # @gimp_text_render_vectors
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
	movq	-8(%rbp), %rdi
	callq	cairo_copy_path
	movq	%rax, -24(%rbp)
	movl	$0, -28(%rbp)
.LBB1_1:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-28(%rbp), %eax
	movq	-24(%rbp), %rcx
	cmpl	16(%rcx), %eax
	jge	.LBB1_11
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB1_1 Depth=1
	movslq	-28(%rbp), %rax
	movq	-24(%rbp), %rcx
	shlq	$4, %rax
	addq	8(%rcx), %rax
	movq	%rax, -40(%rbp)
	movl	-28(%rbp), %edx
	movq	-40(%rbp), %rax
	addl	4(%rax), %edx
	movq	-24(%rbp), %rax
	cmpl	16(%rax), %edx
	jl	.LBB1_4
# BB#3:                                 # %if.then
	jmp	.LBB1_11
.LBB1_4:                                # %if.end
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	-40(%rbp), %rax
	movl	(%rax), %ecx
	movl	%ecx, %eax
	movq	%rax, %rdx
	subq	$3, %rdx
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	%rdx, -56(%rbp)         # 8-byte Spill
	ja	.LBB1_9
# BB#12:                                # %if.end
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	.LJTI1_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB1_5:                                # %sw.bb
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	-16(%rbp), %rdi
	movq	-40(%rbp), %rax
	movsd	16(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-40(%rbp), %rax
	movsd	24(%rax), %xmm1         # xmm1 = mem[0],zero
	callq	moveto
	movl	%eax, -60(%rbp)         # 4-byte Spill
	jmp	.LBB1_9
.LBB1_6:                                # %sw.bb.9
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	-16(%rbp), %rdi
	movq	-40(%rbp), %rax
	movsd	16(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-40(%rbp), %rax
	movsd	24(%rax), %xmm1         # xmm1 = mem[0],zero
	callq	lineto
	movl	%eax, -64(%rbp)         # 4-byte Spill
	jmp	.LBB1_9
.LBB1_7:                                # %sw.bb.17
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	-16(%rbp), %rdi
	movq	-40(%rbp), %rax
	movsd	16(%rax), %xmm0         # xmm0 = mem[0],zero
	movq	-40(%rbp), %rax
	movsd	24(%rax), %xmm1         # xmm1 = mem[0],zero
	movq	-40(%rbp), %rax
	movsd	32(%rax), %xmm2         # xmm2 = mem[0],zero
	movq	-40(%rbp), %rax
	movsd	40(%rax), %xmm3         # xmm3 = mem[0],zero
	movq	-40(%rbp), %rax
	movsd	48(%rax), %xmm4         # xmm4 = mem[0],zero
	movq	-40(%rbp), %rax
	movsd	56(%rax), %xmm5         # xmm5 = mem[0],zero
	callq	cubicto
	movl	%eax, -68(%rbp)         # 4-byte Spill
	jmp	.LBB1_9
.LBB1_8:                                # %sw.bb.37
                                        #   in Loop: Header=BB1_1 Depth=1
	movq	-16(%rbp), %rdi
	callq	closepath
	movl	%eax, -72(%rbp)         # 4-byte Spill
.LBB1_9:                                # %sw.epilog
                                        #   in Loop: Header=BB1_1 Depth=1
	jmp	.LBB1_10
.LBB1_10:                               # %for.inc
                                        #   in Loop: Header=BB1_1 Depth=1
	movslq	-28(%rbp), %rax
	movq	-24(%rbp), %rcx
	shlq	$4, %rax
	addq	8(%rcx), %rax
	movl	4(%rax), %edx
	addl	-28(%rbp), %edx
	movl	%edx, -28(%rbp)
	jmp	.LBB1_1
.LBB1_11:                               # %for.end
	movq	-24(%rbp), %rdi
	callq	cairo_path_destroy
	addq	$80, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	gimp_text_render_vectors, .Lfunc_end1-gimp_text_render_vectors
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI1_0:
	.quad	.LBB1_5
	.quad	.LBB1_6
	.quad	.LBB1_7
	.quad	.LBB1_8

	.text
	.align	16, 0x90
	.type	moveto,@function
moveto:                                 # @moveto
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
	subq	$96, %rsp
	leaq	-88(%rbp), %rax
	movq	%rdi, -8(%rbp)
	movsd	%xmm0, -16(%rbp)
	movsd	%xmm1, -24(%rbp)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-24(%rbp), %xmm1        # xmm1 = mem[0],zero
	movq	%rax, %rdi
	callq	gimp_text_vector_coords
	movq	-8(%rbp), %rax
	cmpq	$0, 8(%rax)
	je	.LBB2_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdi
	callq	gimp_stroke_close
.LBB2_2:                                # %if.end
	leaq	-88(%rbp), %rdi
	callq	gimp_bezier_stroke_new_moveto
	movq	-8(%rbp), %rdi
	movq	%rax, 8(%rdi)
	movq	-8(%rbp), %rax
	movq	(%rax), %rdi
	movq	-8(%rbp), %rax
	movq	8(%rax), %rsi
	callq	gimp_vectors_stroke_add
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdi
	callq	g_object_unref
	xorl	%eax, %eax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	moveto, .Lfunc_end2-moveto
	.cfi_endproc

	.align	16, 0x90
	.type	lineto,@function
lineto:                                 # @lineto
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
	subq	$96, %rsp
	movq	%rdi, -16(%rbp)
	movsd	%xmm0, -24(%rbp)
	movsd	%xmm1, -32(%rbp)
	movq	-16(%rbp), %rdi
	cmpq	$0, 8(%rdi)
	jne	.LBB3_2
# BB#1:                                 # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB3_3
.LBB3_2:                                # %if.end
	leaq	-96(%rbp), %rdi
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	gimp_text_vector_coords
	leaq	-96(%rbp), %rsi
	movq	-16(%rbp), %rdi
	movq	8(%rdi), %rdi
	callq	gimp_bezier_stroke_lineto
	movl	$0, -4(%rbp)
.LBB3_3:                                # %return
	movl	-4(%rbp), %eax
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	lineto, .Lfunc_end3-lineto
	.cfi_endproc

	.align	16, 0x90
	.type	cubicto,@function
cubicto:                                # @cubicto
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
	subq	$256, %rsp              # imm = 0x100
	movq	%rdi, -16(%rbp)
	movsd	%xmm0, -24(%rbp)
	movsd	%xmm1, -32(%rbp)
	movsd	%xmm2, -40(%rbp)
	movsd	%xmm3, -48(%rbp)
	movsd	%xmm4, -56(%rbp)
	movsd	%xmm5, -64(%rbp)
	movq	-16(%rbp), %rdi
	cmpq	$0, 8(%rdi)
	jne	.LBB4_2
# BB#1:                                 # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB4_3
.LBB4_2:                                # %if.end
	leaq	-128(%rbp), %rdi
	movsd	-24(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-32(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	gimp_text_vector_coords
	leaq	-192(%rbp), %rdi
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-48(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	gimp_text_vector_coords
	leaq	-256(%rbp), %rdi
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	movsd	-64(%rbp), %xmm1        # xmm1 = mem[0],zero
	callq	gimp_text_vector_coords
	leaq	-128(%rbp), %rsi
	leaq	-192(%rbp), %rdx
	leaq	-256(%rbp), %rcx
	movq	-16(%rbp), %rdi
	movq	8(%rdi), %rdi
	callq	gimp_bezier_stroke_cubicto
	movl	$0, -4(%rbp)
.LBB4_3:                                # %return
	movl	-4(%rbp), %eax
	addq	$256, %rsp              # imm = 0x100
	popq	%rbp
	retq
.Lfunc_end4:
	.size	cubicto, .Lfunc_end4-cubicto
	.cfi_endproc

	.align	16, 0x90
	.type	closepath,@function
closepath:                              # @closepath
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
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	cmpq	$0, 8(%rdi)
	jne	.LBB5_2
# BB#1:                                 # %if.then
	movl	$0, -4(%rbp)
	jmp	.LBB5_3
.LBB5_2:                                # %if.end
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdi
	callq	gimp_stroke_close
	movq	-16(%rbp), %rax
	movq	$0, 8(%rax)
	movl	$0, -4(%rbp)
.LBB5_3:                                # %return
	movl	-4(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	closepath, .Lfunc_end5-closepath
	.cfi_endproc

	.align	16, 0x90
	.type	gimp_text_vector_coords,@function
gimp_text_vector_coords:                # @gimp_text_vector_coords
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
	movabsq	$gimp_text_vector_coords.default_values, %rax
	movl	$64, %ecx
	movl	%ecx, %edx
	movsd	%xmm0, -8(%rbp)
	movsd	%xmm1, -16(%rbp)
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rdi
	movq	%rax, %rsi
	callq	memcpy
	movsd	-8(%rbp), %xmm0         # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movsd	%xmm0, (%rax)
	movsd	-16(%rbp), %xmm0        # xmm0 = mem[0],zero
	movq	-24(%rbp), %rax
	movsd	%xmm0, 8(%rax)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	gimp_text_vector_coords, .Lfunc_end6-gimp_text_vector_coords
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Gimp-Text"
	.size	.L.str, 10

	.type	.L__func__.gimp_text_vectors_new,@object # @__func__.gimp_text_vectors_new
.L__func__.gimp_text_vectors_new:
	.asciz	"gimp_text_vectors_new"
	.size	.L__func__.gimp_text_vectors_new, 22

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"GIMP_IS_IMAGE (image)"
	.size	.L.str.1, 22

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"GIMP_IS_TEXT (text)"
	.size	.L.str.2, 20

	.type	gimp_text_vector_coords.default_values,@object # @gimp_text_vector_coords.default_values
	.section	.rodata,"a",@progbits
	.align	8
gimp_text_vector_coords.default_values:
	.quad	0                       # double 0
	.quad	0                       # double 0
	.quad	4607182418800017408     # double 1
	.quad	0                       # double 0
	.quad	0                       # double 0
	.quad	4602678819172646912     # double 0.5
	.quad	0                       # double 0
	.quad	0                       # double 0
	.size	gimp_text_vector_coords.default_values, 64


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
