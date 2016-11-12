	.text
	.file	"tile-manager.bc"
	.globl	gimp_tile_manager_get_type
	.align	16, 0x90
	.type	gimp_tile_manager_get_type,@function
gimp_tile_manager_get_type:             # @gimp_tile_manager_get_type
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
	cmpq	$0, gimp_tile_manager_get_type.type
	jne	.LBB0_2
# BB#1:                                 # %if.then
	movabsq	$.L.str, %rdi
	movabsq	$tile_manager_ref, %rax
	movabsq	$tile_manager_unref, %rcx
	movq	%rax, %rsi
	movq	%rcx, %rdx
	callq	g_boxed_type_register_static
	movq	%rax, gimp_tile_manager_get_type.type
.LBB0_2:                                # %if.end
	movq	gimp_tile_manager_get_type.type, %rax
	popq	%rbp
	retq
.Lfunc_end0:
	.size	gimp_tile_manager_get_type, .Lfunc_end0-gimp_tile_manager_get_type
	.cfi_endproc

	.globl	tile_manager_ref
	.align	16, 0x90
	.type	tile_manager_ref,@function
tile_manager_ref:                       # @tile_manager_ref
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
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -16(%rbp)
	je	.LBB1_3
# BB#2:                                 # %if.then
	jmp	.LBB1_4
.LBB1_3:                                # %if.else
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.tile_manager_ref, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB1_6
.LBB1_4:                                # %if.end
	jmp	.LBB1_5
.LBB1_5:                                # %do.end
	movq	-16(%rbp), %rax
	movl	(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, (%rax)
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB1_6:                                # %return
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	tile_manager_ref, .Lfunc_end1-tile_manager_ref
	.cfi_endproc

	.globl	tile_manager_unref
	.align	16, 0x90
	.type	tile_manager_unref,@function
tile_manager_unref:                     # @tile_manager_unref
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
	cmpq	$0, -8(%rbp)
	je	.LBB2_3
# BB#2:                                 # %if.then
	jmp	.LBB2_4
.LBB2_3:                                # %if.else
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.tile_manager_unref, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB2_17
.LBB2_4:                                # %if.end
	jmp	.LBB2_5
.LBB2_5:                                # %do.end
	movq	-8(%rbp), %rax
	movl	(%rax), %ecx
	addl	$-1, %ecx
	movl	%ecx, (%rax)
	movq	-8(%rbp), %rax
	cmpl	$1, (%rax)
	jge	.LBB2_17
# BB#6:                                 # %if.then.3
	movq	-8(%rbp), %rax
	cmpq	$0, 56(%rax)
	je	.LBB2_8
# BB#7:                                 # %if.then.4
	xorl	%esi, %esi
	movq	-8(%rbp), %rax
	movq	56(%rax), %rdi
	callq	tile_release
.LBB2_8:                                # %if.end.6
	movq	-8(%rbp), %rax
	cmpq	$0, 24(%rax)
	je	.LBB2_14
# BB#9:                                 # %if.then.8
	movq	-8(%rbp), %rax
	movl	16(%rax), %ecx
	movq	-8(%rbp), %rax
	imull	20(%rax), %ecx
	movl	%ecx, -12(%rbp)
	movl	$0, -16(%rbp)
.LBB2_10:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-16(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	.LBB2_13
# BB#11:                                # %for.body
                                        #   in Loop: Header=BB2_10 Depth=1
	movslq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	24(%rcx), %rcx
	movq	(%rcx,%rax,8), %rdi
	movq	-8(%rbp), %rax
	movl	-16(%rbp), %edx
	movq	%rax, %rsi
	callq	tile_detach
# BB#12:                                # %for.inc
                                        #   in Loop: Header=BB2_10 Depth=1
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB2_10
.LBB2_13:                               # %for.end
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, %rdi
	callq	g_free
.LBB2_14:                               # %if.end.12
	jmp	.LBB2_15
.LBB2_15:                               # %do.body.13
	movl	$64, %eax
	movl	%eax, %edi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rsi
	callq	g_slice_free1
# BB#16:                                # %do.end.14
	jmp	.LBB2_17
.LBB2_17:                               # %if.end.15
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	tile_manager_unref, .Lfunc_end2-tile_manager_unref
	.cfi_endproc

	.globl	tile_manager_new
	.align	16, 0x90
	.type	tile_manager_new,@function
tile_manager_new:                       # @tile_manager_new
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
	movl	%edi, -12(%rbp)
	movl	%esi, -16(%rbp)
	movl	%edx, -20(%rbp)
# BB#1:                                 # %do.body
	cmpl	$0, -12(%rbp)
	jle	.LBB3_4
# BB#2:                                 # %land.lhs.true
	cmpl	$0, -16(%rbp)
	jle	.LBB3_4
# BB#3:                                 # %if.then
	jmp	.LBB3_5
.LBB3_4:                                # %if.else
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.tile_manager_new, %rsi
	movabsq	$.L.str.2, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB3_13
.LBB3_5:                                # %if.end
	jmp	.LBB3_6
.LBB3_6:                                # %do.end
	jmp	.LBB3_7
.LBB3_7:                                # %do.body.2
	cmpl	$0, -20(%rbp)
	jle	.LBB3_10
# BB#8:                                 # %land.lhs.true.4
	cmpl	$4, -20(%rbp)
	jg	.LBB3_10
# BB#9:                                 # %if.then.6
	jmp	.LBB3_11
.LBB3_10:                               # %if.else.7
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.tile_manager_new, %rsi
	movabsq	$.L.str.3, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB3_13
.LBB3_11:                               # %if.end.8
	jmp	.LBB3_12
.LBB3_12:                               # %do.end.9
	movl	$64, %eax
	movl	%eax, %edi
	callq	g_slice_alloc0
	movl	$64, %ecx
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movl	$1, (%rax)
	movl	-12(%rbp), %edx
	movq	-32(%rbp), %rax
	movl	%edx, 4(%rax)
	movl	-16(%rbp), %edx
	movq	-32(%rbp), %rax
	movl	%edx, 8(%rax)
	movl	-20(%rbp), %edx
	movq	-32(%rbp), %rax
	movl	%edx, 12(%rax)
	movl	-16(%rbp), %edx
	addl	$64, %edx
	subl	$1, %edx
	movl	%edx, %eax
	cltd
	idivl	%ecx
	movq	-32(%rbp), %rdi
	movl	%eax, 16(%rdi)
	movl	-12(%rbp), %eax
	addl	$64, %eax
	subl	$1, %eax
	cltd
	idivl	%ecx
	movq	-32(%rbp), %rdi
	movl	%eax, 20(%rdi)
	movq	-32(%rbp), %rdi
	movl	$-1, 48(%rdi)
	movq	-32(%rbp), %rdi
	movq	%rdi, -8(%rbp)
.LBB3_13:                               # %return
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	tile_manager_new, .Lfunc_end3-tile_manager_new
	.cfi_endproc

	.globl	tile_manager_duplicate
	.align	16, 0x90
	.type	tile_manager_duplicate,@function
tile_manager_duplicate:                 # @tile_manager_duplicate
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
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -16(%rbp)
	je	.LBB4_3
# BB#2:                                 # %if.then
	jmp	.LBB4_4
.LBB4_3:                                # %if.else
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.tile_manager_duplicate, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB4_10
.LBB4_4:                                # %if.end
	jmp	.LBB4_5
.LBB4_5:                                # %do.end
	movq	-16(%rbp), %rax
	movl	4(%rax), %edi
	movq	-16(%rbp), %rax
	movl	8(%rax), %esi
	movq	-16(%rbp), %rax
	movl	12(%rax), %edx
	callq	tile_manager_new
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	callq	tile_manager_allocate_tiles
	movq	-16(%rbp), %rax
	movl	16(%rax), %edx
	movq	-16(%rbp), %rax
	imull	20(%rax), %edx
	movl	%edx, -28(%rbp)
	movl	$0, -32(%rbp)
.LBB4_6:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-32(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	.LBB4_9
# BB#7:                                 # %for.body
                                        #   in Loop: Header=BB4_6 Depth=1
	movl	$1, %edx
	xorl	%ecx, %ecx
	movq	-16(%rbp), %rdi
	movl	-32(%rbp), %esi
	callq	tile_manager_get
	movq	%rax, -40(%rbp)
	movq	-24(%rbp), %rdi
	movl	-32(%rbp), %esi
	movq	-40(%rbp), %rdx
	callq	tile_manager_map
	xorl	%esi, %esi
	movq	-40(%rbp), %rdi
	callq	tile_release
# BB#8:                                 # %for.inc
                                        #   in Loop: Header=BB4_6 Depth=1
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB4_6
.LBB4_9:                                # %for.end
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB4_10:                               # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	tile_manager_duplicate, .Lfunc_end4-tile_manager_duplicate
	.cfi_endproc

	.align	16, 0x90
	.type	tile_manager_allocate_tiles,@function
tile_manager_allocate_tiles:            # @tile_manager_allocate_tiles
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movl	16(%rdi), %eax
	movl	%eax, -20(%rbp)
	movq	-8(%rbp), %rdi
	movl	20(%rdi), %eax
	movl	%eax, -24(%rbp)
	movq	-8(%rbp), %rdi
	movl	4(%rdi), %eax
	movl	-24(%rbp), %ecx
	subl	$1, %ecx
	shll	$6, %ecx
	subl	%ecx, %eax
	movl	%eax, -28(%rbp)
	movq	-8(%rbp), %rdi
	movl	8(%rdi), %eax
	movl	-20(%rbp), %ecx
	subl	$1, %ecx
	shll	$6, %ecx
	subl	%ecx, %eax
	movl	%eax, -32(%rbp)
# BB#1:                                 # %do.body
	movq	-8(%rbp), %rax
	cmpq	$0, 24(%rax)
	jne	.LBB5_3
# BB#2:                                 # %if.then
	jmp	.LBB5_4
.LBB5_3:                                # %if.else
	movabsq	$.L.str.1, %rdi
	movabsq	$.L.str.20, %rsi
	movl	$368, %edx              # imm = 0x170
	movabsq	$.L__func__.tile_manager_allocate_tiles, %rcx
	movabsq	$.L.str.21, %r8
	callq	g_assertion_message_expr
.LBB5_4:                                # %if.end
	jmp	.LBB5_5
.LBB5_5:                                # %do.end
	movl	$8, %eax
	movl	%eax, %esi
	movl	-20(%rbp), %eax
	imull	-24(%rbp), %eax
	movslq	%eax, %rdi
	callq	g_malloc_n
	movq	%rax, -16(%rbp)
	movl	$0, -36(%rbp)
	movl	$0, -44(%rbp)
.LBB5_6:                                # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_8 Depth 2
	movl	-36(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	.LBB5_17
# BB#7:                                 # %for.body
                                        #   in Loop: Header=BB5_6 Depth=1
	movl	$0, -40(%rbp)
.LBB5_8:                                # %for.cond.9
                                        #   Parent Loop BB5_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-40(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jge	.LBB5_15
# BB#9:                                 # %for.body.12
                                        #   in Loop: Header=BB5_8 Depth=2
	movq	-8(%rbp), %rax
	movl	12(%rax), %edi
	callq	tile_new
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rdi
	movq	-8(%rbp), %rax
	movl	-44(%rbp), %edx
	movq	%rax, %rsi
	callq	tile_attach
	movl	-40(%rbp), %edx
	movl	-24(%rbp), %ecx
	subl	$1, %ecx
	cmpl	%ecx, %edx
	jne	.LBB5_11
# BB#10:                                # %if.then.17
                                        #   in Loop: Header=BB5_8 Depth=2
	movl	-28(%rbp), %eax
	movw	%ax, %cx
	movq	-56(%rbp), %rdx
	movw	%cx, 10(%rdx)
.LBB5_11:                               # %if.end.19
                                        #   in Loop: Header=BB5_8 Depth=2
	movl	-36(%rbp), %eax
	movl	-20(%rbp), %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	jne	.LBB5_13
# BB#12:                                # %if.then.23
                                        #   in Loop: Header=BB5_8 Depth=2
	movl	-32(%rbp), %eax
	movw	%ax, %cx
	movq	-56(%rbp), %rdx
	movw	%cx, 12(%rdx)
.LBB5_13:                               # %if.end.25
                                        #   in Loop: Header=BB5_8 Depth=2
	movq	-56(%rbp), %rax
	movzwl	10(%rax), %ecx
	movq	-56(%rbp), %rax
	movzwl	12(%rax), %edx
	imull	%edx, %ecx
	movq	-56(%rbp), %rax
	movzbl	9(%rax), %edx
	imull	%edx, %ecx
	movq	-56(%rbp), %rax
	movl	%ecx, 16(%rax)
	movq	-56(%rbp), %rax
	movslq	-44(%rbp), %rsi
	movq	-16(%rbp), %rdi
	movq	%rax, (%rdi,%rsi,8)
# BB#14:                                # %for.inc
                                        #   in Loop: Header=BB5_8 Depth=2
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB5_8
.LBB5_15:                               # %for.end
                                        #   in Loop: Header=BB5_6 Depth=1
	jmp	.LBB5_16
.LBB5_16:                               # %for.inc.35
                                        #   in Loop: Header=BB5_6 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	.LBB5_6
.LBB5_17:                               # %for.end.37
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 24(%rcx)
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	tile_manager_allocate_tiles, .Lfunc_end5-tile_manager_allocate_tiles
	.cfi_endproc

	.globl	tile_manager_get
	.align	16, 0x90
	.type	tile_manager_get,@function
tile_manager_get:                       # @tile_manager_get
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
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movl	%ecx, -28(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -16(%rbp)
	je	.LBB6_3
# BB#2:                                 # %if.then
	jmp	.LBB6_4
.LBB6_3:                                # %if.else
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.tile_manager_get, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB6_28
.LBB6_4:                                # %if.end
	jmp	.LBB6_5
.LBB6_5:                                # %do.end
	movq	-16(%rbp), %rax
	movl	16(%rax), %ecx
	movq	-16(%rbp), %rax
	imull	20(%rax), %ecx
	movl	%ecx, -44(%rbp)
	cmpl	$0, -20(%rbp)
	jl	.LBB6_7
# BB#6:                                 # %lor.lhs.false
	movl	-20(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jl	.LBB6_8
.LBB6_7:                                # %if.then.3
	movq	$0, -8(%rbp)
	jmp	.LBB6_28
.LBB6_8:                                # %if.end.4
	movq	-16(%rbp), %rax
	cmpq	$0, 24(%rax)
	jne	.LBB6_10
# BB#9:                                 # %if.then.5
	movq	-16(%rbp), %rdi
	callq	tile_manager_allocate_tiles
.LBB6_10:                               # %if.end.6
	movslq	-20(%rbp), %rax
	movq	-16(%rbp), %rcx
	movq	24(%rcx), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -40(%rbp)
	cmpl	$0, -28(%rbp)
	je	.LBB6_13
# BB#11:                                # %land.lhs.true
	cmpl	$0, -24(%rbp)
	jne	.LBB6_13
# BB#12:                                # %if.then.10
	movabsq	$.L.str.5, %rdi
	movb	$0, %al
	callq	g_warning
.LBB6_13:                               # %if.end.11
	cmpl	$0, -24(%rbp)
	je	.LBB6_27
# BB#14:                                # %if.then.13
	cmpl	$0, -28(%rbp)
	je	.LBB6_25
# BB#15:                                # %if.then.15
	movl	-20(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	48(%rcx), %eax
	jne	.LBB6_17
# BB#16:                                # %if.then.17
	xorl	%esi, %esi
	movq	-16(%rbp), %rax
	movq	56(%rax), %rdi
	callq	tile_release
	movq	-16(%rbp), %rax
	movq	$0, 56(%rax)
	movq	-16(%rbp), %rax
	movl	$-1, 48(%rax)
.LBB6_17:                               # %if.end.20
	movq	-40(%rbp), %rax
	cmpl	$1, 4(%rax)
	jbe	.LBB6_24
# BB#18:                                # %if.then.22
	movq	-40(%rbp), %rax
	movzbl	9(%rax), %edi
	callq	tile_new
	movl	$1, %edi
	movl	%edi, %esi
	movq	%rax, -56(%rbp)
	movq	-40(%rbp), %rax
	movw	10(%rax), %cx
	movq	-56(%rbp), %rax
	movw	%cx, 10(%rax)
	movq	-40(%rbp), %rax
	movw	12(%rax), %cx
	movq	-56(%rbp), %rax
	movw	%cx, 12(%rax)
	movq	-40(%rbp), %rax
	movb	8(%rax), %dl
	shrb	$1, %dl
	andb	$1, %dl
	movzbl	%dl, %edi
	movq	-56(%rbp), %rax
	movb	%dil, %dl
	movb	8(%rax), %r8b
	andb	$1, %dl
	shlb	$1, %dl
	andb	$-3, %r8b
	orb	%dl, %r8b
	movb	%r8b, 8(%rax)
	movq	-56(%rbp), %rax
	movzwl	10(%rax), %edi
	movq	-56(%rbp), %rax
	movzwl	12(%rax), %r9d
	imull	%r9d, %edi
	movq	-56(%rbp), %rax
	movzbl	9(%rax), %r9d
	imull	%r9d, %edi
	movq	-56(%rbp), %rax
	movl	%edi, 16(%rax)
	movq	-56(%rbp), %rax
	movslq	16(%rax), %rdi
	callq	g_malloc_n
	movq	-56(%rbp), %rsi
	movq	%rax, 32(%rsi)
	movq	-40(%rbp), %rax
	cmpq	$0, 24(%rax)
	je	.LBB6_20
# BB#19:                                # %if.then.40
	movq	-56(%rbp), %rdi
	callq	tile_allocate_rowhints
	movq	-56(%rbp), %rdi
	movq	24(%rdi), %rdi
	movq	-40(%rbp), %rax
	movq	24(%rax), %rsi
	movq	-56(%rbp), %rax
	movzwl	12(%rax), %ecx
	movl	%ecx, %eax
	shlq	$0, %rax
	movq	%rax, %rdx
	callq	memcpy
.LBB6_20:                               # %if.end.46
	movq	-40(%rbp), %rax
	cmpq	$0, 32(%rax)
	je	.LBB6_22
# BB#21:                                # %if.then.49
	movq	-56(%rbp), %rax
	movq	32(%rax), %rdi
	movq	-40(%rbp), %rax
	movq	32(%rax), %rsi
	movq	-56(%rbp), %rax
	movslq	16(%rax), %rdx
	callq	memcpy
	jmp	.LBB6_23
.LBB6_22:                               # %if.else.54
	movq	-40(%rbp), %rdi
	callq	tile_lock
	xorl	%esi, %esi
	movq	-56(%rbp), %rdi
	movq	32(%rdi), %rdi
	movq	-40(%rbp), %rax
	movq	32(%rax), %rax
	movq	-56(%rbp), %rcx
	movslq	16(%rcx), %rdx
	movl	%esi, -60(%rbp)         # 4-byte Spill
	movq	%rax, %rsi
	callq	memcpy
	movq	-40(%rbp), %rdi
	movl	-60(%rbp), %esi         # 4-byte Reload
	callq	tile_release
.LBB6_23:                               # %if.end.59
	movq	-40(%rbp), %rdi
	movq	-16(%rbp), %rax
	movl	-20(%rbp), %edx
	movq	%rax, %rsi
	callq	tile_detach
	movq	-56(%rbp), %rdi
	movq	-16(%rbp), %rax
	movl	-20(%rbp), %edx
	movq	%rax, %rsi
	callq	tile_attach
	movq	-56(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movslq	-20(%rbp), %rsi
	movq	-16(%rbp), %rdi
	movq	24(%rdi), %rdi
	movq	%rax, (%rdi,%rsi,8)
.LBB6_24:                               # %if.end.63
	movq	-40(%rbp), %rdi
	callq	tile_lock
	movq	-40(%rbp), %rdi
	movw	2(%rdi), %ax
	addw	$1, %ax
	movw	%ax, 2(%rdi)
	movq	-40(%rbp), %rdi
	movb	8(%rdi), %cl
	andb	$-2, %cl
	orb	$1, %cl
	movb	%cl, 8(%rdi)
	jmp	.LBB6_26
.LBB6_25:                               # %if.else.67
	movq	-40(%rbp), %rdi
	callq	tile_lock
.LBB6_26:                               # %if.end.68
	jmp	.LBB6_27
.LBB6_27:                               # %if.end.69
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB6_28:                               # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end6:
	.size	tile_manager_get, .Lfunc_end6-tile_manager_get
	.cfi_endproc

	.globl	tile_manager_map
	.align	16, 0x90
	.type	tile_manager_map,@function
tile_manager_map:                       # @tile_manager_map
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -8(%rbp)
	je	.LBB7_3
# BB#2:                                 # %if.then
	jmp	.LBB7_4
.LBB7_3:                                # %if.else
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.tile_manager_map, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB7_29
.LBB7_4:                                # %if.end
	jmp	.LBB7_5
.LBB7_5:                                # %do.end
	jmp	.LBB7_6
.LBB7_6:                                # %do.body.1
	cmpq	$0, -24(%rbp)
	je	.LBB7_8
# BB#7:                                 # %if.then.3
	jmp	.LBB7_9
.LBB7_8:                                # %if.else.4
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.tile_manager_map, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB7_29
.LBB7_9:                                # %if.end.5
	jmp	.LBB7_10
.LBB7_10:                               # %do.end.6
	jmp	.LBB7_11
.LBB7_11:                               # %do.body.7
	cmpl	$0, -12(%rbp)
	jl	.LBB7_13
# BB#12:                                # %if.then.9
	jmp	.LBB7_14
.LBB7_13:                               # %if.else.10
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.tile_manager_map, %rsi
	movabsq	$.L.str.8, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB7_29
.LBB7_14:                               # %if.end.11
	jmp	.LBB7_15
.LBB7_15:                               # %do.end.12
	jmp	.LBB7_16
.LBB7_16:                               # %do.body.13
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	16(%rcx), %edx
	movq	-8(%rbp), %rcx
	imull	20(%rcx), %edx
	cmpl	%edx, %eax
	jge	.LBB7_18
# BB#17:                                # %if.then.15
	jmp	.LBB7_19
.LBB7_18:                               # %if.else.16
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.tile_manager_map, %rsi
	movabsq	$.L.str.9, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB7_29
.LBB7_19:                               # %if.end.17
	jmp	.LBB7_20
.LBB7_20:                               # %do.end.18
	movq	-8(%rbp), %rax
	cmpq	$0, 24(%rax)
	jne	.LBB7_22
# BB#21:                                # %if.then.19
	movabsq	$.L.str.10, %rdi
	movabsq	$.L.str.11, %rsi
	movb	$0, %al
	callq	g_warning
	movq	-8(%rbp), %rdi
	callq	tile_manager_allocate_tiles
.LBB7_22:                               # %if.end.20
	movslq	-12(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	24(%rcx), %rcx
	movq	(%rcx,%rax,8), %rax
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movb	8(%rax), %dl
	shrb	$1, %dl
	andb	$1, %dl
	movzbl	%dl, %esi
	cmpl	$0, %esi
	jne	.LBB7_24
# BB#23:                                # %if.then.23
	movabsq	$.L.str.12, %rdi
	movabsq	$.L.str.13, %rsi
	movb	$0, %al
	callq	g_warning
.LBB7_24:                               # %if.end.24
	movq	-32(%rbp), %rax
	movzwl	10(%rax), %ecx
	movq	-24(%rbp), %rax
	movzwl	10(%rax), %edx
	cmpl	%edx, %ecx
	jne	.LBB7_27
# BB#25:                                # %lor.lhs.false
	movq	-32(%rbp), %rax
	movzwl	12(%rax), %ecx
	movq	-24(%rbp), %rax
	movzwl	12(%rax), %edx
	cmpl	%edx, %ecx
	jne	.LBB7_27
# BB#26:                                # %lor.lhs.false.34
	movq	-32(%rbp), %rax
	movzbl	9(%rax), %ecx
	movq	-24(%rbp), %rax
	movzbl	9(%rax), %edx
	cmpl	%edx, %ecx
	je	.LBB7_28
.LBB7_27:                               # %if.then.40
	movabsq	$.L.str.14, %rdi
	movabsq	$.L.str.15, %rsi
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movb	$0, %al
	callq	g_warning
.LBB7_28:                               # %if.end.41
	movq	-32(%rbp), %rdi
	movq	-8(%rbp), %rax
	movl	-12(%rbp), %edx
	movq	%rax, %rsi
	callq	tile_detach
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %rax
	movl	-12(%rbp), %edx
	movq	%rax, %rsi
	callq	tile_attach
	movq	-24(%rbp), %rax
	movslq	-12(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	24(%rdi), %rdi
	movq	%rax, (%rdi,%rsi,8)
.LBB7_29:                               # %return
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end7:
	.size	tile_manager_map, .Lfunc_end7-tile_manager_map
	.cfi_endproc

	.globl	tile_manager_set_validate_proc
	.align	16, 0x90
	.type	tile_manager_set_validate_proc,@function
tile_manager_set_validate_proc:         # @tile_manager_set_validate_proc
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
# BB#1:                                 # %do.body
	cmpq	$0, -8(%rbp)
	je	.LBB8_3
# BB#2:                                 # %if.then
	jmp	.LBB8_4
.LBB8_3:                                # %if.else
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.tile_manager_set_validate_proc, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB8_6
.LBB8_4:                                # %if.end
	jmp	.LBB8_5
.LBB8_5:                                # %do.end
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 32(%rcx)
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 40(%rcx)
.LBB8_6:                                # %return
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end8:
	.size	tile_manager_set_validate_proc, .Lfunc_end8-tile_manager_set_validate_proc
	.cfi_endproc

	.globl	tile_manager_get_tile
	.align	16, 0x90
	.type	tile_manager_get_tile,@function
tile_manager_get_tile:                  # @tile_manager_get_tile
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
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movl	%r8d, -32(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -16(%rbp)
	je	.LBB9_3
# BB#2:                                 # %if.then
	jmp	.LBB9_4
.LBB9_3:                                # %if.else
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.tile_manager_get_tile, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB9_6
.LBB9_4:                                # %if.end
	jmp	.LBB9_5
.LBB9_5:                                # %do.end
	movq	-16(%rbp), %rdi
	movq	-16(%rbp), %rax
	movl	-20(%rbp), %esi
	movl	-24(%rbp), %edx
	movq	%rdi, -40(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	tile_manager_get_tile_num
	movl	-28(%rbp), %edx
	movl	-32(%rbp), %ecx
	movq	-40(%rbp), %rdi         # 8-byte Reload
	movl	%eax, %esi
	callq	tile_manager_get
	movq	%rax, -8(%rbp)
.LBB9_6:                                # %return
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	tile_manager_get_tile, .Lfunc_end9-tile_manager_get_tile
	.cfi_endproc

	.align	16, 0x90
	.type	tile_manager_get_tile_num,@function
tile_manager_get_tile_num:              # @tile_manager_get_tile_num
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
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	cmpl	$0, -20(%rbp)
	jl	.LBB10_4
# BB#1:                                 # %lor.lhs.false
	movl	-20(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	4(%rcx), %eax
	jge	.LBB10_4
# BB#2:                                 # %lor.lhs.false.2
	cmpl	$0, -24(%rbp)
	jl	.LBB10_4
# BB#3:                                 # %lor.lhs.false.4
	movl	-24(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	8(%rcx), %eax
	jl	.LBB10_5
.LBB10_4:                               # %if.then
	movl	$-1, -4(%rbp)
	jmp	.LBB10_6
.LBB10_5:                               # %if.end
	movl	$64, %eax
	movl	-24(%rbp), %ecx
	movl	%eax, -28(%rbp)         # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-28(%rbp), %ecx         # 4-byte Reload
	idivl	%ecx
	movq	-16(%rbp), %rsi
	imull	20(%rsi), %eax
	movl	-20(%rbp), %edi
	movl	%eax, -32(%rbp)         # 4-byte Spill
	movl	%edi, %eax
	cltd
	idivl	%ecx
	movl	-32(%rbp), %edi         # 4-byte Reload
	addl	%eax, %edi
	movl	%edi, -4(%rbp)
.LBB10_6:                               # %return
	movl	-4(%rbp), %eax
	popq	%rbp
	retq
.Lfunc_end10:
	.size	tile_manager_get_tile_num, .Lfunc_end10-tile_manager_get_tile_num
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
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
	je	.LBB11_2
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
.LBB11_2:                               # %entry
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
	movl	$.L.str.1, %r9d
	movl	%r9d, %edi
	movl	$16, %esi
	leaq	-32(%rbp), %rcx
	callq	g_logv
	addq	$384, %rsp              # imm = 0x180
	popq	%rbp
	retq
.Lfunc_end11:
	.size	g_warning, .Lfunc_end11-g_warning
	.cfi_endproc

	.globl	tile_manager_get_at
	.align	16, 0x90
	.type	tile_manager_get_at,@function
tile_manager_get_at:                    # @tile_manager_get_at
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
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	%edx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movl	%r8d, -32(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -16(%rbp)
	je	.LBB12_3
# BB#2:                                 # %if.then
	jmp	.LBB12_4
.LBB12_3:                               # %if.else
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.tile_manager_get_at, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	movq	$0, -8(%rbp)
	jmp	.LBB12_11
.LBB12_4:                               # %if.end
	jmp	.LBB12_5
.LBB12_5:                               # %do.end
	cmpl	$0, -20(%rbp)
	jl	.LBB12_9
# BB#6:                                 # %lor.lhs.false
	movl	-20(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	20(%rcx), %eax
	jge	.LBB12_9
# BB#7:                                 # %lor.lhs.false.3
	cmpl	$0, -24(%rbp)
	jl	.LBB12_9
# BB#8:                                 # %lor.lhs.false.5
	movl	-24(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	16(%rcx), %eax
	jl	.LBB12_10
.LBB12_9:                               # %if.then.7
	movq	$0, -8(%rbp)
	jmp	.LBB12_11
.LBB12_10:                              # %if.end.8
	movq	-16(%rbp), %rdi
	movl	-24(%rbp), %eax
	movq	-16(%rbp), %rcx
	imull	20(%rcx), %eax
	addl	-20(%rbp), %eax
	movl	-28(%rbp), %edx
	movl	-32(%rbp), %ecx
	movl	%eax, %esi
	callq	tile_manager_get
	movq	%rax, -8(%rbp)
.LBB12_11:                              # %return
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	tile_manager_get_at, .Lfunc_end12-tile_manager_get_at
	.cfi_endproc

	.globl	tile_manager_validate_tile
	.align	16, 0x90
	.type	tile_manager_validate_tile,@function
tile_manager_validate_tile:             # @tile_manager_validate_tile
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
# BB#1:                                 # %do.body
	cmpq	$0, -8(%rbp)
	je	.LBB13_3
# BB#2:                                 # %if.then
	jmp	.LBB13_4
.LBB13_3:                               # %if.else
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.tile_manager_validate_tile, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB13_13
.LBB13_4:                               # %if.end
	jmp	.LBB13_5
.LBB13_5:                               # %do.end
	jmp	.LBB13_6
.LBB13_6:                               # %do.body.1
	cmpq	$0, -16(%rbp)
	je	.LBB13_8
# BB#7:                                 # %if.then.3
	jmp	.LBB13_9
.LBB13_8:                               # %if.else.4
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.tile_manager_validate_tile, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB13_13
.LBB13_9:                               # %if.end.5
	jmp	.LBB13_10
.LBB13_10:                              # %do.end.6
	movq	-16(%rbp), %rax
	movb	8(%rax), %cl
	andb	$-3, %cl
	orb	$2, %cl
	movb	%cl, 8(%rax)
	movq	-8(%rbp), %rax
	cmpq	$0, 32(%rax)
	je	.LBB13_12
# BB#11:                                # %if.then.7
	movq	-8(%rbp), %rax
	movq	32(%rax), %rax
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movq	-8(%rbp), %rcx
	movq	40(%rcx), %rdx
	callq	*%rax
	jmp	.LBB13_13
.LBB13_12:                              # %if.else.9
	movq	-16(%rbp), %rax
	movq	32(%rax), %rdi
	movq	-16(%rbp), %rax
	movq	%rdi, -24(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	tile_size
	xorl	%esi, %esi
	movslq	%eax, %rdx
	movq	-24(%rbp), %rdi         # 8-byte Reload
	callq	memset
.LBB13_13:                              # %if.end.10
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	tile_manager_validate_tile, .Lfunc_end13-tile_manager_validate_tile
	.cfi_endproc

	.globl	tile_manager_map_tile
	.align	16, 0x90
	.type	tile_manager_map_tile,@function
tile_manager_map_tile:                  # @tile_manager_map_tile
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
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	%rcx, -24(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -8(%rbp)
	je	.LBB14_3
# BB#2:                                 # %if.then
	jmp	.LBB14_4
.LBB14_3:                               # %if.else
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.tile_manager_map_tile, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB14_11
.LBB14_4:                               # %if.end
	jmp	.LBB14_5
.LBB14_5:                               # %do.end
	jmp	.LBB14_6
.LBB14_6:                               # %do.body.1
	cmpq	$0, -24(%rbp)
	je	.LBB14_8
# BB#7:                                 # %if.then.3
	jmp	.LBB14_9
.LBB14_8:                               # %if.else.4
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.tile_manager_map_tile, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB14_11
.LBB14_9:                               # %if.end.5
	jmp	.LBB14_10
.LBB14_10:                              # %do.end.6
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rax
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	movq	%rdi, -32(%rbp)         # 8-byte Spill
	movq	%rax, %rdi
	callq	tile_manager_get_tile_num
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rdi         # 8-byte Reload
	movl	%eax, %esi
	callq	tile_manager_map
.LBB14_11:                              # %return
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end14:
	.size	tile_manager_map_tile, .Lfunc_end14-tile_manager_map_tile
	.cfi_endproc

	.globl	tile_manager_invalidate_area
	.align	16, 0x90
	.type	tile_manager_invalidate_area,@function
tile_manager_invalidate_area:           # @tile_manager_invalidate_area
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
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movl	%r8d, -24(%rbp)
	movq	-8(%rbp), %rdi
	cmpq	$0, 24(%rdi)
	jne	.LBB15_2
# BB#1:                                 # %if.then
	jmp	.LBB15_10
.LBB15_2:                               # %if.end
	movl	-16(%rbp), %eax
	movl	%eax, -28(%rbp)
.LBB15_3:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB15_5 Depth 2
	movl	-28(%rbp), %eax
	movl	-16(%rbp), %ecx
	addl	-24(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB15_10
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB15_3 Depth=1
	movl	-12(%rbp), %eax
	movl	%eax, -32(%rbp)
.LBB15_5:                               # %for.cond.1
                                        #   Parent Loop BB15_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-32(%rbp), %eax
	movl	-12(%rbp), %ecx
	addl	-20(%rbp), %ecx
	cmpl	%ecx, %eax
	jge	.LBB15_8
# BB#6:                                 # %for.body.4
                                        #   in Loop: Header=BB15_5 Depth=2
	movq	-8(%rbp), %rdi
	movl	-32(%rbp), %esi
	movl	-28(%rbp), %edx
	callq	tile_manager_invalidate_pixel
# BB#7:                                 # %for.inc
                                        #   in Loop: Header=BB15_5 Depth=2
	movl	$64, %eax
	movl	-32(%rbp), %ecx
	movl	%eax, -36(%rbp)         # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-36(%rbp), %ecx         # 4-byte Reload
	idivl	%ecx
	subl	%edx, %ecx
	addl	-32(%rbp), %ecx
	movl	%ecx, -32(%rbp)
	jmp	.LBB15_5
.LBB15_8:                               # %for.end
                                        #   in Loop: Header=BB15_3 Depth=1
	jmp	.LBB15_9
.LBB15_9:                               # %for.inc.6
                                        #   in Loop: Header=BB15_3 Depth=1
	movl	$64, %eax
	movl	-28(%rbp), %ecx
	movl	%eax, -40(%rbp)         # 4-byte Spill
	movl	%ecx, %eax
	cltd
	movl	-40(%rbp), %ecx         # 4-byte Reload
	idivl	%ecx
	subl	%edx, %ecx
	addl	-28(%rbp), %ecx
	movl	%ecx, -28(%rbp)
	jmp	.LBB15_3
.LBB15_10:                              # %for.end.10
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end15:
	.size	tile_manager_invalidate_area, .Lfunc_end15-tile_manager_invalidate_area
	.cfi_endproc

	.align	16, 0x90
	.type	tile_manager_invalidate_pixel,@function
tile_manager_invalidate_pixel:          # @tile_manager_invalidate_pixel
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
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	callq	tile_manager_get_tile_num
	movl	%eax, -20(%rbp)
	cmpl	$0, -20(%rbp)
	jge	.LBB16_2
# BB#1:                                 # %if.then
	jmp	.LBB16_3
.LBB16_2:                               # %if.end
	movq	-8(%rbp), %rdi
	movl	-20(%rbp), %esi
	callq	tile_manager_invalidate_tile
.LBB16_3:                               # %return
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end16:
	.size	tile_manager_invalidate_pixel, .Lfunc_end16-tile_manager_invalidate_pixel
	.cfi_endproc

	.globl	tile_manager_width
	.align	16, 0x90
	.type	tile_manager_width,@function
tile_manager_width:                     # @tile_manager_width
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
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -16(%rbp)
	je	.LBB17_3
# BB#2:                                 # %if.then
	jmp	.LBB17_4
.LBB17_3:                               # %if.else
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.tile_manager_width, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB17_6
.LBB17_4:                               # %if.end
	jmp	.LBB17_5
.LBB17_5:                               # %do.end
	movq	-16(%rbp), %rax
	movl	4(%rax), %ecx
	movl	%ecx, -4(%rbp)
.LBB17_6:                               # %return
	movl	-4(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end17:
	.size	tile_manager_width, .Lfunc_end17-tile_manager_width
	.cfi_endproc

	.globl	tile_manager_height
	.align	16, 0x90
	.type	tile_manager_height,@function
tile_manager_height:                    # @tile_manager_height
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
	subq	$16, %rsp
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -16(%rbp)
	je	.LBB18_3
# BB#2:                                 # %if.then
	jmp	.LBB18_4
.LBB18_3:                               # %if.else
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.tile_manager_height, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB18_6
.LBB18_4:                               # %if.end
	jmp	.LBB18_5
.LBB18_5:                               # %do.end
	movq	-16(%rbp), %rax
	movl	8(%rax), %ecx
	movl	%ecx, -4(%rbp)
.LBB18_6:                               # %return
	movl	-4(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end18:
	.size	tile_manager_height, .Lfunc_end18-tile_manager_height
	.cfi_endproc

	.globl	tile_manager_bpp
	.align	16, 0x90
	.type	tile_manager_bpp,@function
tile_manager_bpp:                       # @tile_manager_bpp
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
	movq	%rdi, -16(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -16(%rbp)
	je	.LBB19_3
# BB#2:                                 # %if.then
	jmp	.LBB19_4
.LBB19_3:                               # %if.else
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.tile_manager_bpp, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	movl	$0, -4(%rbp)
	jmp	.LBB19_6
.LBB19_4:                               # %if.end
	jmp	.LBB19_5
.LBB19_5:                               # %do.end
	movq	-16(%rbp), %rax
	movl	12(%rax), %ecx
	movl	%ecx, -4(%rbp)
.LBB19_6:                               # %return
	movl	-4(%rbp), %eax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end19:
	.size	tile_manager_bpp, .Lfunc_end19-tile_manager_bpp
	.cfi_endproc

	.globl	tile_manager_get_memsize
	.align	16, 0x90
	.type	tile_manager_get_memsize,@function
tile_manager_get_memsize:               # @tile_manager_get_memsize
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
	subq	$64, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movq	$64, -32(%rbp)
	cmpq	$0, -16(%rbp)
	jne	.LBB20_2
# BB#1:                                 # %if.then
	movq	$0, -8(%rbp)
	jmp	.LBB20_18
.LBB20_2:                               # %if.end
	movq	-16(%rbp), %rax
	movslq	16(%rax), %rax
	movq	-16(%rbp), %rcx
	movslq	20(%rcx), %rcx
	imulq	%rcx, %rax
	imulq	$80, %rax, %rax
	addq	-32(%rbp), %rax
	movq	%rax, -32(%rbp)
	cmpl	$0, -20(%rbp)
	je	.LBB20_16
# BB#3:                                 # %if.then.4
	movq	-16(%rbp), %rax
	cmpq	$0, 24(%rax)
	je	.LBB20_15
# BB#4:                                 # %if.then.6
	movq	-16(%rbp), %rax
	movq	24(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-16(%rbp), %rax
	movl	12(%rax), %ecx
	shll	$12, %ecx
	movslq	%ecx, %rax
	movq	%rax, -48(%rbp)
	movl	$0, -52(%rbp)
.LBB20_5:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB20_7 Depth 2
	movl	-52(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	16(%rcx), %eax
	jge	.LBB20_14
# BB#6:                                 # %for.body
                                        #   in Loop: Header=BB20_5 Depth=1
	movl	$0, -56(%rbp)
.LBB20_7:                               # %for.cond.13
                                        #   Parent Loop BB20_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	-56(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	20(%rcx), %eax
	jge	.LBB20_12
# BB#8:                                 # %for.body.17
                                        #   in Loop: Header=BB20_7 Depth=2
	movq	-40(%rbp), %rax
	movq	(%rax), %rdi
	callq	tile_is_valid
	cmpl	$0, %eax
	je	.LBB20_10
# BB#9:                                 # %if.then.19
                                        #   in Loop: Header=BB20_7 Depth=2
	movq	-48(%rbp), %rax
	addq	-32(%rbp), %rax
	movq	%rax, -32(%rbp)
.LBB20_10:                              # %if.end.21
                                        #   in Loop: Header=BB20_7 Depth=2
	jmp	.LBB20_11
.LBB20_11:                              # %for.inc
                                        #   in Loop: Header=BB20_7 Depth=2
	movl	-56(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -56(%rbp)
	movq	-40(%rbp), %rcx
	addq	$8, %rcx
	movq	%rcx, -40(%rbp)
	jmp	.LBB20_7
.LBB20_12:                              # %for.end
                                        #   in Loop: Header=BB20_5 Depth=1
	jmp	.LBB20_13
.LBB20_13:                              # %for.inc.22
                                        #   in Loop: Header=BB20_5 Depth=1
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	.LBB20_5
.LBB20_14:                              # %for.end.24
	jmp	.LBB20_15
.LBB20_15:                              # %if.end.25
	jmp	.LBB20_17
.LBB20_16:                              # %if.else
	movq	-16(%rbp), %rax
	movslq	4(%rax), %rax
	movq	-16(%rbp), %rcx
	movslq	8(%rcx), %rcx
	imulq	%rcx, %rax
	movq	-16(%rbp), %rcx
	movslq	12(%rcx), %rcx
	imulq	%rcx, %rax
	addq	-32(%rbp), %rax
	movq	%rax, -32(%rbp)
.LBB20_17:                              # %if.end.33
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
.LBB20_18:                              # %return
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end20:
	.size	tile_manager_get_memsize, .Lfunc_end20-tile_manager_get_memsize
	.cfi_endproc

	.globl	tile_manager_get_tile_col_row
	.align	16, 0x90
	.type	tile_manager_get_tile_col_row,@function
tile_manager_get_tile_col_row:          # @tile_manager_get_tile_col_row
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -8(%rbp)
	je	.LBB21_3
# BB#2:                                 # %if.then
	jmp	.LBB21_4
.LBB21_3:                               # %if.else
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.tile_manager_get_tile_col_row, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB21_17
.LBB21_4:                               # %if.end
	jmp	.LBB21_5
.LBB21_5:                               # %do.end
	jmp	.LBB21_6
.LBB21_6:                               # %do.body.1
	cmpq	$0, -16(%rbp)
	je	.LBB21_8
# BB#7:                                 # %if.then.3
	jmp	.LBB21_9
.LBB21_8:                               # %if.else.4
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.tile_manager_get_tile_col_row, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB21_17
.LBB21_9:                               # %if.end.5
	jmp	.LBB21_10
.LBB21_10:                              # %do.end.6
	jmp	.LBB21_11
.LBB21_11:                              # %do.body.7
	cmpq	$0, -24(%rbp)
	je	.LBB21_14
# BB#12:                                # %land.lhs.true
	cmpq	$0, -32(%rbp)
	je	.LBB21_14
# BB#13:                                # %if.then.10
	jmp	.LBB21_15
.LBB21_14:                              # %if.else.11
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.tile_manager_get_tile_col_row, %rsi
	movabsq	$.L.str.16, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB21_17
.LBB21_15:                              # %if.end.12
	jmp	.LBB21_16
.LBB21_16:                              # %do.end.13
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	tile_manager_locate_tile
	movl	%eax, -36(%rbp)
	movl	-36(%rbp), %eax
	movq	-8(%rbp), %rsi
	cltd
	idivl	20(%rsi)
	movq	-24(%rbp), %rsi
	movl	%edx, (%rsi)
	movl	-36(%rbp), %edx
	movq	-8(%rbp), %rsi
	movl	%edx, %eax
	cltd
	idivl	20(%rsi)
	movq	-32(%rbp), %rsi
	movl	%eax, (%rsi)
.LBB21_17:                              # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end21:
	.size	tile_manager_get_tile_col_row, .Lfunc_end21-tile_manager_get_tile_col_row
	.cfi_endproc

	.align	16, 0x90
	.type	tile_manager_locate_tile,@function
tile_manager_locate_tile:               # @tile_manager_locate_tile
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
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-24(%rbp), %rsi
	movq	48(%rsi), %rsi
	movq	%rsi, -32(%rbp)
.LBB22_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB22_6
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB22_1 Depth=1
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	-16(%rbp), %rax
	jne	.LBB22_4
# BB#3:                                 # %if.then
	jmp	.LBB22_6
.LBB22_4:                               # %if.end
                                        #   in Loop: Header=BB22_1 Depth=1
	jmp	.LBB22_5
.LBB22_5:                               # %for.inc
                                        #   in Loop: Header=BB22_1 Depth=1
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB22_1
.LBB22_6:                               # %for.end
	cmpq	$0, -32(%rbp)
	jne	.LBB22_8
# BB#7:                                 # %if.then.3
	movabsq	$.L.str.18, %rdi
	movabsq	$.L.str.22, %rsi
	movb	$0, %al
	callq	g_warning
	movl	$0, -4(%rbp)
	jmp	.LBB22_9
.LBB22_8:                               # %if.end.4
	movq	-32(%rbp), %rax
	movl	8(%rax), %ecx
	movl	%ecx, -4(%rbp)
.LBB22_9:                               # %return
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end22:
	.size	tile_manager_locate_tile, .Lfunc_end22-tile_manager_locate_tile
	.cfi_endproc

	.globl	tile_manager_get_tile_coordinates
	.align	16, 0x90
	.type	tile_manager_get_tile_coordinates,@function
tile_manager_get_tile_coordinates:      # @tile_manager_get_tile_coordinates
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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -8(%rbp)
	je	.LBB23_3
# BB#2:                                 # %if.then
	jmp	.LBB23_4
.LBB23_3:                               # %if.else
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.tile_manager_get_tile_coordinates, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB23_17
.LBB23_4:                               # %if.end
	jmp	.LBB23_5
.LBB23_5:                               # %do.end
	jmp	.LBB23_6
.LBB23_6:                               # %do.body.1
	cmpq	$0, -16(%rbp)
	je	.LBB23_8
# BB#7:                                 # %if.then.3
	jmp	.LBB23_9
.LBB23_8:                               # %if.else.4
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.tile_manager_get_tile_coordinates, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB23_17
.LBB23_9:                               # %if.end.5
	jmp	.LBB23_10
.LBB23_10:                              # %do.end.6
	jmp	.LBB23_11
.LBB23_11:                              # %do.body.7
	cmpq	$0, -24(%rbp)
	je	.LBB23_14
# BB#12:                                # %land.lhs.true
	cmpq	$0, -32(%rbp)
	je	.LBB23_14
# BB#13:                                # %if.then.10
	jmp	.LBB23_15
.LBB23_14:                              # %if.else.11
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.tile_manager_get_tile_coordinates, %rsi
	movabsq	$.L.str.17, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB23_17
.LBB23_15:                              # %if.end.12
	jmp	.LBB23_16
.LBB23_16:                              # %do.end.13
	leaq	-36(%rbp), %rdx
	leaq	-40(%rbp), %rcx
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	tile_manager_get_tile_col_row
	movl	-36(%rbp), %eax
	shll	$6, %eax
	movq	-24(%rbp), %rcx
	movl	%eax, (%rcx)
	movl	-40(%rbp), %eax
	shll	$6, %eax
	movq	-32(%rbp), %rcx
	movl	%eax, (%rcx)
.LBB23_17:                              # %return
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end23:
	.size	tile_manager_get_tile_coordinates, .Lfunc_end23-tile_manager_get_tile_coordinates
	.cfi_endproc

	.globl	tile_manager_map_over_tile
	.align	16, 0x90
	.type	tile_manager_map_over_tile,@function
tile_manager_map_over_tile:             # @tile_manager_map_over_tile
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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
# BB#1:                                 # %do.body
	cmpq	$0, -8(%rbp)
	je	.LBB24_3
# BB#2:                                 # %if.then
	jmp	.LBB24_4
.LBB24_3:                               # %if.else
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.tile_manager_map_over_tile, %rsi
	movabsq	$.L.str.4, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB24_24
.LBB24_4:                               # %if.end
	jmp	.LBB24_5
.LBB24_5:                               # %do.end
	jmp	.LBB24_6
.LBB24_6:                               # %do.body.1
	cmpq	$0, -16(%rbp)
	je	.LBB24_8
# BB#7:                                 # %if.then.3
	jmp	.LBB24_9
.LBB24_8:                               # %if.else.4
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.tile_manager_map_over_tile, %rsi
	movabsq	$.L.str.6, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB24_24
.LBB24_9:                               # %if.end.5
	jmp	.LBB24_10
.LBB24_10:                              # %do.end.6
	jmp	.LBB24_11
.LBB24_11:                              # %do.body.7
	cmpq	$0, -24(%rbp)
	je	.LBB24_13
# BB#12:                                # %if.then.9
	jmp	.LBB24_14
.LBB24_13:                              # %if.else.10
	movabsq	$.L.str.1, %rdi
	movabsq	$.L__func__.tile_manager_map_over_tile, %rsi
	movabsq	$.L.str.7, %rdx
	callq	g_return_if_fail_warning
	jmp	.LBB24_24
.LBB24_14:                              # %if.end.11
	jmp	.LBB24_15
.LBB24_15:                              # %do.end.12
	movq	-16(%rbp), %rax
	movq	48(%rax), %rax
	movq	%rax, -32(%rbp)
.LBB24_16:                              # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	cmpq	$0, -32(%rbp)
	je	.LBB24_21
# BB#17:                                # %for.body
                                        #   in Loop: Header=BB24_16 Depth=1
	movq	-32(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	-8(%rbp), %rax
	jne	.LBB24_19
# BB#18:                                # %if.then.15
	jmp	.LBB24_21
.LBB24_19:                              # %if.end.16
                                        #   in Loop: Header=BB24_16 Depth=1
	jmp	.LBB24_20
.LBB24_20:                              # %for.inc
                                        #   in Loop: Header=BB24_16 Depth=1
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB24_16
.LBB24_21:                              # %for.end
	cmpq	$0, -32(%rbp)
	jne	.LBB24_23
# BB#22:                                # %if.then.18
	movabsq	$.L.str.18, %rdi
	movabsq	$.L.str.19, %rsi
	movb	$0, %al
	callq	g_warning
	jmp	.LBB24_24
.LBB24_23:                              # %if.end.19
	movq	-8(%rbp), %rdi
	movq	-32(%rbp), %rax
	movl	8(%rax), %esi
	movq	-24(%rbp), %rdx
	callq	tile_manager_map
.LBB24_24:                              # %return
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end24:
	.size	tile_manager_map_over_tile, .Lfunc_end24-tile_manager_map_over_tile
	.cfi_endproc

	.globl	tile_manager_read_pixel_data
	.align	16, 0x90
	.type	tile_manager_read_pixel_data,@function
tile_manager_read_pixel_data:           # @tile_manager_read_pixel_data
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
	subq	$96, %rsp
	movl	16(%rbp), %eax
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movl	%r8d, -24(%rbp)
	movq	%r9, -32(%rbp)
	movl	%eax, -36(%rbp)
	movl	-16(%rbp), %eax
	movl	%eax, -44(%rbp)
.LBB25_1:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB25_3 Depth 2
                                        #       Child Loop BB25_9 Depth 3
	movl	-44(%rbp), %eax
	cmpl	-24(%rbp), %eax
	ja	.LBB25_15
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB25_1 Depth=1
	movl	-12(%rbp), %eax
	movl	%eax, -40(%rbp)
.LBB25_3:                               # %for.cond.1
                                        #   Parent Loop BB25_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB25_9 Depth 3
	movl	-40(%rbp), %eax
	cmpl	-20(%rbp), %eax
	ja	.LBB25_13
# BB#4:                                 # %for.body.3
                                        #   in Loop: Header=BB25_3 Depth=2
	movl	$1, %ecx
	xorl	%r8d, %r8d
	movq	-8(%rbp), %rdi
	movl	-40(%rbp), %esi
	movl	-44(%rbp), %edx
	callq	tile_manager_get_tile
	movq	%rax, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	32(%rax), %rax
	movl	-44(%rbp), %ecx
	andl	$63, %ecx
	movq	-56(%rbp), %rdi
	movzwl	10(%rdi), %edx
	imull	%edx, %ecx
	movl	-40(%rbp), %edx
	andl	$63, %edx
	addl	%edx, %ecx
	movq	-56(%rbp), %rdi
	movzbl	9(%rdi), %edx
	imull	%edx, %ecx
	movl	%ecx, %ecx
	movl	%ecx, %edi
	addq	%rdi, %rax
	movq	%rax, -64(%rbp)
	movq	-32(%rbp), %rax
	movl	-36(%rbp), %ecx
	movl	-44(%rbp), %edx
	subl	-16(%rbp), %edx
	imull	%edx, %ecx
	movl	%ecx, %ecx
	movl	%ecx, %edi
	addq	%rdi, %rax
	movq	-8(%rbp), %rdi
	movl	12(%rdi), %ecx
	movl	-40(%rbp), %edx
	subl	-12(%rbp), %edx
	imull	%edx, %ecx
	movl	%ecx, %ecx
	movl	%ecx, %edi
	addq	%rdi, %rax
	movq	%rax, -72(%rbp)
	movq	-56(%rbp), %rax
	movzwl	12(%rax), %ecx
	movl	-44(%rbp), %edx
	andl	$63, %edx
	subl	%edx, %ecx
	movl	%ecx, -76(%rbp)
	movl	-76(%rbp), %ecx
	movl	-24(%rbp), %edx
	subl	-44(%rbp), %edx
	addl	$1, %edx
	cmpl	%edx, %ecx
	jbe	.LBB25_6
# BB#5:                                 # %if.then
                                        #   in Loop: Header=BB25_3 Depth=2
	movl	-24(%rbp), %eax
	subl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -76(%rbp)
.LBB25_6:                               # %if.end
                                        #   in Loop: Header=BB25_3 Depth=2
	movq	-56(%rbp), %rax
	movzwl	10(%rax), %ecx
	movl	-40(%rbp), %edx
	andl	$63, %edx
	subl	%edx, %ecx
	movl	%ecx, -80(%rbp)
	movl	-80(%rbp), %ecx
	movl	-20(%rbp), %edx
	subl	-40(%rbp), %edx
	addl	$1, %edx
	cmpl	%edx, %ecx
	jbe	.LBB25_8
# BB#7:                                 # %if.then.31
                                        #   in Loop: Header=BB25_3 Depth=2
	movl	-20(%rbp), %eax
	subl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -80(%rbp)
.LBB25_8:                               # %if.end.34
                                        #   in Loop: Header=BB25_3 Depth=2
	movq	-56(%rbp), %rax
	movzwl	10(%rax), %ecx
	movq	-56(%rbp), %rax
	movzbl	9(%rax), %edx
	imull	%edx, %ecx
	movl	%ecx, -84(%rbp)
.LBB25_9:                               # %while.cond
                                        #   Parent Loop BB25_1 Depth=1
                                        #     Parent Loop BB25_3 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-76(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -76(%rbp)
	cmpl	$0, %eax
	je	.LBB25_11
# BB#10:                                # %while.body
                                        #   in Loop: Header=BB25_9 Depth=3
	movq	-72(%rbp), %rdi
	movq	-64(%rbp), %rsi
	movl	-80(%rbp), %eax
	movq	-8(%rbp), %rcx
	imull	12(%rcx), %eax
	movl	%eax, %eax
	movl	%eax, %edx
	callq	memcpy
	movl	-84(%rbp), %eax
	movq	-64(%rbp), %rcx
	movl	%eax, %eax
	movl	%eax, %edx
	addq	%rdx, %rcx
	movq	%rcx, -64(%rbp)
	movl	-36(%rbp), %eax
	movq	-72(%rbp), %rcx
	movl	%eax, %eax
	movl	%eax, %edx
	addq	%rdx, %rcx
	movq	%rcx, -72(%rbp)
	jmp	.LBB25_9
.LBB25_11:                              # %while.end
                                        #   in Loop: Header=BB25_3 Depth=2
	xorl	%esi, %esi
	movq	-56(%rbp), %rdi
	callq	tile_release
# BB#12:                                # %for.inc
                                        #   in Loop: Header=BB25_3 Depth=2
	movl	$64, %eax
	movl	-40(%rbp), %ecx
	andl	$63, %ecx
	subl	%ecx, %eax
	addl	-40(%rbp), %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB25_3
.LBB25_13:                              # %for.end
                                        #   in Loop: Header=BB25_1 Depth=1
	jmp	.LBB25_14
.LBB25_14:                              # %for.inc.50
                                        #   in Loop: Header=BB25_1 Depth=1
	movl	$64, %eax
	movl	-44(%rbp), %ecx
	andl	$63, %ecx
	subl	%ecx, %eax
	addl	-44(%rbp), %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB25_1
.LBB25_15:                              # %for.end.54
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end25:
	.size	tile_manager_read_pixel_data, .Lfunc_end25-tile_manager_read_pixel_data
	.cfi_endproc

	.globl	tile_manager_write_pixel_data
	.align	16, 0x90
	.type	tile_manager_write_pixel_data,@function
tile_manager_write_pixel_data:          # @tile_manager_write_pixel_data
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
	subq	$96, %rsp
	movl	16(%rbp), %eax
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	%ecx, -20(%rbp)
	movl	%r8d, -24(%rbp)
	movq	%r9, -32(%rbp)
	movl	%eax, -36(%rbp)
	movl	-16(%rbp), %eax
	movl	%eax, -44(%rbp)
.LBB26_1:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB26_3 Depth 2
                                        #       Child Loop BB26_9 Depth 3
	movl	-44(%rbp), %eax
	cmpl	-24(%rbp), %eax
	ja	.LBB26_15
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB26_1 Depth=1
	movl	-12(%rbp), %eax
	movl	%eax, -40(%rbp)
.LBB26_3:                               # %for.cond.1
                                        #   Parent Loop BB26_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB26_9 Depth 3
	movl	-40(%rbp), %eax
	cmpl	-20(%rbp), %eax
	ja	.LBB26_13
# BB#4:                                 # %for.body.3
                                        #   in Loop: Header=BB26_3 Depth=2
	movl	$1, %eax
	movq	-8(%rbp), %rdi
	movl	-40(%rbp), %esi
	movl	-44(%rbp), %edx
	movl	%eax, %ecx
	movl	%eax, %r8d
	callq	tile_manager_get_tile
	movq	%rax, -56(%rbp)
	movq	-32(%rbp), %rax
	movl	-36(%rbp), %ecx
	movl	-44(%rbp), %edx
	subl	-16(%rbp), %edx
	imull	%edx, %ecx
	movl	%ecx, %ecx
	movl	%ecx, %edi
	addq	%rdi, %rax
	movq	-8(%rbp), %rdi
	movl	12(%rdi), %ecx
	movl	-40(%rbp), %edx
	subl	-12(%rbp), %edx
	imull	%edx, %ecx
	movl	%ecx, %ecx
	movl	%ecx, %edi
	addq	%rdi, %rax
	movq	%rax, -64(%rbp)
	movq	-56(%rbp), %rax
	movq	32(%rax), %rax
	movl	-44(%rbp), %ecx
	andl	$63, %ecx
	movq	-56(%rbp), %rdi
	movzwl	10(%rdi), %edx
	imull	%edx, %ecx
	movl	-40(%rbp), %edx
	andl	$63, %edx
	addl	%edx, %ecx
	movq	-56(%rbp), %rdi
	movzbl	9(%rdi), %edx
	imull	%edx, %ecx
	movl	%ecx, %ecx
	movl	%ecx, %edi
	addq	%rdi, %rax
	movq	%rax, -72(%rbp)
	movq	-56(%rbp), %rax
	movzwl	12(%rax), %ecx
	movl	-44(%rbp), %edx
	andl	$63, %edx
	subl	%edx, %ecx
	movl	%ecx, -76(%rbp)
	movl	-76(%rbp), %ecx
	movl	-24(%rbp), %edx
	subl	-44(%rbp), %edx
	addl	$1, %edx
	cmpl	%edx, %ecx
	jbe	.LBB26_6
# BB#5:                                 # %if.then
                                        #   in Loop: Header=BB26_3 Depth=2
	movl	-24(%rbp), %eax
	subl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -76(%rbp)
.LBB26_6:                               # %if.end
                                        #   in Loop: Header=BB26_3 Depth=2
	movq	-56(%rbp), %rax
	movzwl	10(%rax), %ecx
	movl	-40(%rbp), %edx
	andl	$63, %edx
	subl	%edx, %ecx
	movl	%ecx, -80(%rbp)
	movl	-80(%rbp), %ecx
	movl	-20(%rbp), %edx
	subl	-40(%rbp), %edx
	addl	$1, %edx
	cmpl	%edx, %ecx
	jbe	.LBB26_8
# BB#7:                                 # %if.then.31
                                        #   in Loop: Header=BB26_3 Depth=2
	movl	-20(%rbp), %eax
	subl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -80(%rbp)
.LBB26_8:                               # %if.end.34
                                        #   in Loop: Header=BB26_3 Depth=2
	movq	-56(%rbp), %rax
	movzwl	10(%rax), %ecx
	movq	-56(%rbp), %rax
	movzbl	9(%rax), %edx
	imull	%edx, %ecx
	movl	%ecx, -84(%rbp)
.LBB26_9:                               # %while.cond
                                        #   Parent Loop BB26_1 Depth=1
                                        #     Parent Loop BB26_3 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	-76(%rbp), %eax
	movl	%eax, %ecx
	addl	$-1, %ecx
	movl	%ecx, -76(%rbp)
	cmpl	$0, %eax
	je	.LBB26_11
# BB#10:                                # %while.body
                                        #   in Loop: Header=BB26_9 Depth=3
	movq	-72(%rbp), %rdi
	movq	-64(%rbp), %rsi
	movl	-80(%rbp), %eax
	movq	-8(%rbp), %rcx
	imull	12(%rcx), %eax
	movl	%eax, %eax
	movl	%eax, %edx
	callq	memcpy
	movl	-36(%rbp), %eax
	movq	-64(%rbp), %rcx
	movl	%eax, %eax
	movl	%eax, %edx
	addq	%rdx, %rcx
	movq	%rcx, -64(%rbp)
	movl	-84(%rbp), %eax
	movq	-72(%rbp), %rcx
	movl	%eax, %eax
	movl	%eax, %edx
	addq	%rdx, %rcx
	movq	%rcx, -72(%rbp)
	jmp	.LBB26_9
.LBB26_11:                              # %while.end
                                        #   in Loop: Header=BB26_3 Depth=2
	movl	$1, %esi
	movq	-56(%rbp), %rdi
	callq	tile_release
# BB#12:                                # %for.inc
                                        #   in Loop: Header=BB26_3 Depth=2
	movl	$64, %eax
	movl	-40(%rbp), %ecx
	andl	$63, %ecx
	subl	%ecx, %eax
	addl	-40(%rbp), %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB26_3
.LBB26_13:                              # %for.end
                                        #   in Loop: Header=BB26_1 Depth=1
	jmp	.LBB26_14
.LBB26_14:                              # %for.inc.50
                                        #   in Loop: Header=BB26_1 Depth=1
	movl	$64, %eax
	movl	-44(%rbp), %ecx
	andl	$63, %ecx
	subl	%ecx, %eax
	addl	-44(%rbp), %eax
	movl	%eax, -44(%rbp)
	jmp	.LBB26_1
.LBB26_15:                              # %for.end.54
	addq	$96, %rsp
	popq	%rbp
	retq
.Lfunc_end26:
	.size	tile_manager_write_pixel_data, .Lfunc_end26-tile_manager_write_pixel_data
	.cfi_endproc

	.globl	tile_manager_read_pixel_data_1
	.align	16, 0x90
	.type	tile_manager_read_pixel_data_1,@function
tile_manager_read_pixel_data_1:         # @tile_manager_read_pixel_data_1
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	callq	tile_manager_get_tile_num
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	jge	.LBB27_2
# BB#1:                                 # %if.then
	jmp	.LBB27_11
.LBB27_2:                               # %if.end
	movl	-28(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	48(%rcx), %eax
	je	.LBB27_6
# BB#3:                                 # %if.then.2
	movq	-8(%rbp), %rax
	cmpq	$0, 56(%rax)
	je	.LBB27_5
# BB#4:                                 # %if.then.3
	xorl	%esi, %esi
	movq	-8(%rbp), %rax
	movq	56(%rax), %rdi
	callq	tile_release
.LBB27_5:                               # %if.end.5
	movl	$1, %edx
	xorl	%ecx, %ecx
	movq	-8(%rbp), %rax
	movl	$-1, 48(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 56(%rax)
	movq	-8(%rbp), %rdi
	movl	-28(%rbp), %esi
	callq	tile_manager_get
	movq	%rax, -40(%rbp)
	movl	-28(%rbp), %ecx
	movq	-8(%rbp), %rax
	movl	%ecx, 48(%rax)
	movq	-40(%rbp), %rax
	movq	-8(%rbp), %rdi
	movq	%rax, 56(%rdi)
.LBB27_6:                               # %if.end.11
	movq	-8(%rbp), %rax
	movq	56(%rax), %rax
	movq	32(%rax), %rcx
	movl	-16(%rbp), %edx
	andl	$63, %edx
	movzwl	10(%rax), %esi
	imull	%esi, %edx
	movl	-12(%rbp), %esi
	andl	$63, %esi
	addl	%esi, %edx
	movzbl	9(%rax), %esi
	imull	%esi, %edx
	movl	%edx, %eax
	addq	%rax, %rcx
	movq	%rcx, -48(%rbp)
	movq	-8(%rbp), %rax
	movl	12(%rax), %edx
	decl	%edx
	movl	%edx, %eax
	subl	$3, %edx
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movl	%edx, -60(%rbp)         # 4-byte Spill
	ja	.LBB27_11
# BB#12:                                # %if.end.11
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	.LJTI27_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB27_7:                               # %sw.bb
	movq	-48(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -48(%rbp)
	movb	(%rax), %dl
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -24(%rbp)
	movb	%dl, (%rax)
.LBB27_8:                               # %sw.bb.20
	movq	-48(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -48(%rbp)
	movb	(%rax), %dl
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -24(%rbp)
	movb	%dl, (%rax)
.LBB27_9:                               # %sw.bb.23
	movq	-48(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -48(%rbp)
	movb	(%rax), %dl
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -24(%rbp)
	movb	%dl, (%rax)
.LBB27_10:                              # %sw.bb.26
	movq	-48(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -48(%rbp)
	movb	(%rax), %dl
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -24(%rbp)
	movb	%dl, (%rax)
.LBB27_11:                              # %sw.epilog
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end27:
	.size	tile_manager_read_pixel_data_1, .Lfunc_end27-tile_manager_read_pixel_data_1
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI27_0:
	.quad	.LBB27_10
	.quad	.LBB27_9
	.quad	.LBB27_8
	.quad	.LBB27_7

	.text
	.globl	tile_manager_write_pixel_data_1
	.align	16, 0x90
	.type	tile_manager_write_pixel_data_1,@function
tile_manager_write_pixel_data_1:        # @tile_manager_write_pixel_data_1
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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	movl	-16(%rbp), %edx
	movl	$1, %eax
	movl	%eax, %ecx
	movl	%eax, %r8d
	callq	tile_manager_get_tile
	movq	%rax, -32(%rbp)
	movq	32(%rax), %rdi
	movl	-16(%rbp), %ecx
	andl	$63, %ecx
	movzwl	10(%rax), %edx
	imull	%edx, %ecx
	movl	-12(%rbp), %edx
	andl	$63, %edx
	addl	%edx, %ecx
	movzbl	9(%rax), %edx
	imull	%edx, %ecx
	movl	%ecx, %eax
	addq	%rax, %rdi
	movq	%rdi, -40(%rbp)
	movq	-8(%rbp), %rax
	movl	12(%rax), %ecx
	decl	%ecx
	movl	%ecx, %eax
	subl	$3, %ecx
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movl	%ecx, -52(%rbp)         # 4-byte Spill
	ja	.LBB28_5
# BB#6:                                 # %entry
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	.LJTI28_0(,%rax,8), %rcx
	jmpq	*%rcx
.LBB28_1:                               # %sw.bb
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -24(%rbp)
	movb	(%rax), %dl
	movq	-40(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -40(%rbp)
	movb	%dl, (%rax)
.LBB28_2:                               # %sw.bb.6
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -24(%rbp)
	movb	(%rax), %dl
	movq	-40(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -40(%rbp)
	movb	%dl, (%rax)
.LBB28_3:                               # %sw.bb.9
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -24(%rbp)
	movb	(%rax), %dl
	movq	-40(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -40(%rbp)
	movb	%dl, (%rax)
.LBB28_4:                               # %sw.bb.12
	movq	-24(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -24(%rbp)
	movb	(%rax), %dl
	movq	-40(%rbp), %rax
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, -40(%rbp)
	movb	%dl, (%rax)
.LBB28_5:                               # %sw.epilog
	movl	$1, %esi
	movq	-32(%rbp), %rdi
	callq	tile_release
	addq	$64, %rsp
	popq	%rbp
	retq
.Lfunc_end28:
	.size	tile_manager_write_pixel_data_1, .Lfunc_end28-tile_manager_write_pixel_data_1
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI28_0:
	.quad	.LBB28_4
	.quad	.LBB28_3
	.quad	.LBB28_2
	.quad	.LBB28_1

	.text
	.align	16, 0x90
	.type	tile_manager_invalidate_tile,@function
tile_manager_invalidate_tile:           # @tile_manager_invalidate_tile
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
	movslq	-12(%rbp), %rdi
	movq	-8(%rbp), %rax
	movq	24(%rax), %rax
	movq	(%rax,%rdi,8), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movb	8(%rax), %cl
	shrb	$1, %cl
	andb	$1, %cl
	movzbl	%cl, %esi
	cmpl	$0, %esi
	jne	.LBB29_2
# BB#1:                                 # %if.then
	jmp	.LBB29_12
.LBB29_2:                               # %if.end
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	48(%rcx), %eax
	jne	.LBB29_4
# BB#3:                                 # %if.then.1
	xorl	%esi, %esi
	movq	-8(%rbp), %rax
	movq	56(%rax), %rdi
	callq	tile_release
	movq	-8(%rbp), %rax
	movq	$0, 56(%rax)
	movq	-8(%rbp), %rax
	movl	$-1, 48(%rax)
.LBB29_4:                               # %if.end.4
	movq	-24(%rbp), %rax
	movb	8(%rax), %cl
	shrb	$2, %cl
	andb	$1, %cl
	movzbl	%cl, %edx
	cmpl	$0, %edx
	je	.LBB29_6
# BB#5:                                 # %if.then.10
	movq	-24(%rbp), %rdi
	callq	tile_cache_flush
.LBB29_6:                               # %if.end.11
	movq	-24(%rbp), %rax
	cmpl	$1, 4(%rax)
	jbe	.LBB29_8
# BB#7:                                 # %if.then.13
	movq	-24(%rbp), %rax
	movzbl	9(%rax), %edi
	callq	tile_new
	movq	%rax, -32(%rbp)
	movq	-24(%rbp), %rax
	movw	10(%rax), %cx
	movq	-32(%rbp), %rax
	movw	%cx, 10(%rax)
	movq	-24(%rbp), %rax
	movw	12(%rax), %cx
	movq	-32(%rbp), %rax
	movw	%cx, 12(%rax)
	movq	-24(%rbp), %rax
	movl	16(%rax), %edi
	movq	-32(%rbp), %rax
	movl	%edi, 16(%rax)
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %rax
	movl	-12(%rbp), %edx
	movq	%rax, %rsi
	callq	tile_detach
	movq	-32(%rbp), %rdi
	movq	-8(%rbp), %rax
	movl	-12(%rbp), %edx
	movq	%rax, %rsi
	callq	tile_attach
	movq	-32(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movslq	-12(%rbp), %rsi
	movq	-8(%rbp), %rdi
	movq	24(%rdi), %rdi
	movq	%rax, (%rdi,%rsi,8)
.LBB29_8:                               # %if.end.20
	movq	-24(%rbp), %rax
	movb	8(%rax), %cl
	andb	$-3, %cl
	movb	%cl, 8(%rax)
	movq	-24(%rbp), %rax
	cmpq	$0, 32(%rax)
	je	.LBB29_10
# BB#9:                                 # %if.then.25
	movq	-24(%rbp), %rax
	movq	32(%rax), %rdi
	callq	g_free
	movq	-24(%rbp), %rax
	movq	$0, 32(%rax)
.LBB29_10:                              # %if.end.28
	movq	-24(%rbp), %rax
	cmpq	$-1, 40(%rax)
	je	.LBB29_12
# BB#11:                                # %if.then.31
	movq	-24(%rbp), %rdi
	callq	tile_swap_delete
.LBB29_12:                              # %if.end.32
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end29:
	.size	tile_manager_invalidate_tile, .Lfunc_end29-tile_manager_invalidate_tile
	.cfi_endproc

	.type	gimp_tile_manager_get_type.type,@object # @gimp_tile_manager_get_type.type
	.local	gimp_tile_manager_get_type.type
	.comm	gimp_tile_manager_get_type.type,8,8
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"TileManager"
	.size	.L.str, 12

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Gimp-Base"
	.size	.L.str.1, 10

	.type	.L__func__.tile_manager_new,@object # @__func__.tile_manager_new
.L__func__.tile_manager_new:
	.asciz	"tile_manager_new"
	.size	.L__func__.tile_manager_new, 17

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"width > 0 && height > 0"
	.size	.L.str.2, 24

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"bpp > 0 && bpp <= 4"
	.size	.L.str.3, 20

	.type	.L__func__.tile_manager_ref,@object # @__func__.tile_manager_ref
.L__func__.tile_manager_ref:
	.asciz	"tile_manager_ref"
	.size	.L__func__.tile_manager_ref, 17

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"tm != NULL"
	.size	.L.str.4, 11

	.type	.L__func__.tile_manager_unref,@object # @__func__.tile_manager_unref
.L__func__.tile_manager_unref:
	.asciz	"tile_manager_unref"
	.size	.L__func__.tile_manager_unref, 19

	.type	.L__func__.tile_manager_duplicate,@object # @__func__.tile_manager_duplicate
.L__func__.tile_manager_duplicate:
	.asciz	"tile_manager_duplicate"
	.size	.L__func__.tile_manager_duplicate, 23

	.type	.L__func__.tile_manager_set_validate_proc,@object # @__func__.tile_manager_set_validate_proc
.L__func__.tile_manager_set_validate_proc:
	.asciz	"tile_manager_set_validate_proc"
	.size	.L__func__.tile_manager_set_validate_proc, 31

	.type	.L__func__.tile_manager_get_tile,@object # @__func__.tile_manager_get_tile
.L__func__.tile_manager_get_tile:
	.asciz	"tile_manager_get_tile"
	.size	.L__func__.tile_manager_get_tile, 22

	.type	.L__func__.tile_manager_get,@object # @__func__.tile_manager_get
.L__func__.tile_manager_get:
	.asciz	"tile_manager_get"
	.size	.L__func__.tile_manager_get, 17

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"WRITE-ONLY TILE... UNTESTED!"
	.size	.L.str.5, 29

	.type	.L__func__.tile_manager_get_at,@object # @__func__.tile_manager_get_at
.L__func__.tile_manager_get_at:
	.asciz	"tile_manager_get_at"
	.size	.L__func__.tile_manager_get_at, 20

	.type	.L__func__.tile_manager_validate_tile,@object # @__func__.tile_manager_validate_tile
.L__func__.tile_manager_validate_tile:
	.asciz	"tile_manager_validate_tile"
	.size	.L__func__.tile_manager_validate_tile, 27

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"tile != NULL"
	.size	.L.str.6, 13

	.type	.L__func__.tile_manager_map_tile,@object # @__func__.tile_manager_map_tile
.L__func__.tile_manager_map_tile:
	.asciz	"tile_manager_map_tile"
	.size	.L__func__.tile_manager_map_tile, 22

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"srctile != NULL"
	.size	.L.str.7, 16

	.type	.L__func__.tile_manager_map,@object # @__func__.tile_manager_map
.L__func__.tile_manager_map:
	.asciz	"tile_manager_map"
	.size	.L__func__.tile_manager_map, 17

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"tile_num >= 0"
	.size	.L.str.8, 14

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"tile_num < tm->ntile_rows * tm->ntile_cols"
	.size	.L.str.9, 43

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"%s: empty tile level - initializing"
	.size	.L.str.10, 36

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"tile-manager.c:492"
	.size	.L.str.11, 19

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"%s: srctile not validated yet!  please report"
	.size	.L.str.12, 46

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"tile-manager.c:504"
	.size	.L.str.13, 19

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"%s: nonconformant map (%p -> %p)"
	.size	.L.str.14, 33

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"tile-manager.c:511"
	.size	.L.str.15, 19

	.type	.L__func__.tile_manager_width,@object # @__func__.tile_manager_width
.L__func__.tile_manager_width:
	.asciz	"tile_manager_width"
	.size	.L__func__.tile_manager_width, 19

	.type	.L__func__.tile_manager_height,@object # @__func__.tile_manager_height
.L__func__.tile_manager_height:
	.asciz	"tile_manager_height"
	.size	.L__func__.tile_manager_height, 20

	.type	.L__func__.tile_manager_bpp,@object # @__func__.tile_manager_bpp
.L__func__.tile_manager_bpp:
	.asciz	"tile_manager_bpp"
	.size	.L__func__.tile_manager_bpp, 17

	.type	.L__func__.tile_manager_get_tile_col_row,@object # @__func__.tile_manager_get_tile_col_row
.L__func__.tile_manager_get_tile_col_row:
	.asciz	"tile_manager_get_tile_col_row"
	.size	.L__func__.tile_manager_get_tile_col_row, 30

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"tile_col != NULL && tile_row != NULL"
	.size	.L.str.16, 37

	.type	.L__func__.tile_manager_get_tile_coordinates,@object # @__func__.tile_manager_get_tile_coordinates
.L__func__.tile_manager_get_tile_coordinates:
	.asciz	"tile_manager_get_tile_coordinates"
	.size	.L__func__.tile_manager_get_tile_coordinates, 34

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"x != NULL && y != NULL"
	.size	.L.str.17, 23

	.type	.L__func__.tile_manager_map_over_tile,@object # @__func__.tile_manager_map_over_tile
.L__func__.tile_manager_map_over_tile:
	.asciz	"tile_manager_map_over_tile"
	.size	.L__func__.tile_manager_map_over_tile, 27

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"%s: tile not attached to manager"
	.size	.L.str.18, 33

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"tile-manager.c:694"
	.size	.L.str.19, 19

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"tile-manager.c"
	.size	.L.str.20, 15

	.type	.L__func__.tile_manager_allocate_tiles,@object # @__func__.tile_manager_allocate_tiles
.L__func__.tile_manager_allocate_tiles:
	.asciz	"tile_manager_allocate_tiles"
	.size	.L__func__.tile_manager_allocate_tiles, 28

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"tm->tiles == NULL"
	.size	.L.str.21, 18

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"tile-manager.c:631"
	.size	.L.str.22, 19


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
