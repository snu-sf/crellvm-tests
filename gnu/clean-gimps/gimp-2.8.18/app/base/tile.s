	.text
	.file	"tile.bc"
	.globl	tile_new
	.align	16, 0x90
	.type	tile_new,@function
tile_new:                               # @tile_new
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
	subq	$16, %rsp
	movl	$72, %eax
	movl	%eax, %ecx
	movl	%edi, -4(%rbp)
	movq	%rcx, %rdi
	callq	g_slice_alloc0
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movw	$64, 10(%rax)
	movq	-16(%rbp), %rax
	movw	$64, 12(%rax)
	movl	-4(%rbp), %edx
	movb	%dl, %sil
	movq	-16(%rbp), %rax
	movb	%sil, 9(%rax)
	movq	-16(%rbp), %rax
	movq	$-1, 40(%rax)
	movq	-16(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	tile_new, .Lfunc_end0-tile_new
	.cfi_endproc

	.globl	tile_lock
	.align	16, 0x90
	.type	tile_lock,@function
tile_lock:                              # @tile_lock
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
	movl	tile_ref_count, %eax
	addl	$1, %eax
	movl	%eax, tile_ref_count
	movq	-8(%rbp), %rdi
	movw	(%rdi), %cx
	addw	$1, %cx
	movw	%cx, (%rdi)
	movq	-8(%rbp), %rdi
	movswl	(%rdi), %eax
	cmpl	$1, %eax
	jne	.LBB1_2
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rdi
	callq	tile_cache_flush
.LBB1_2:                                # %if.end
	movq	-8(%rbp), %rax
	cmpq	$0, 32(%rax)
	jne	.LBB1_4
# BB#3:                                 # %if.then.6
	movq	-8(%rbp), %rdi
	callq	tile_swap_in
.LBB1_4:                                # %if.end.7
	movq	-8(%rbp), %rax
	movb	8(%rax), %cl
	shrb	$1, %cl
	andb	$1, %cl
	movzbl	%cl, %edx
	cmpl	$0, %edx
	jne	.LBB1_6
# BB#5:                                 # %if.then.8
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	movq	16(%rax), %rdi
	movq	-8(%rbp), %rsi
	callq	tile_manager_validate_tile
.LBB1_6:                                # %if.end.9
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	tile_lock, .Lfunc_end1-tile_lock
	.cfi_endproc

	.globl	tile_release
	.align	16, 0x90
	.type	tile_release,@function
tile_release:                           # @tile_release
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
	movl	%esi, -12(%rbp)
	movl	tile_ref_count, %esi
	addl	$-1, %esi
	movl	%esi, tile_ref_count
	movq	-8(%rbp), %rdi
	movw	(%rdi), %ax
	addw	$-1, %ax
	movw	%ax, (%rdi)
	cmpl	$0, -12(%rbp)
	je	.LBB2_8
# BB#1:                                 # %if.then
	movq	-8(%rbp), %rax
	movw	2(%rax), %cx
	addw	$-1, %cx
	movw	%cx, 2(%rax)
	movq	-8(%rbp), %rax
	cmpq	$0, 24(%rax)
	je	.LBB2_7
# BB#2:                                 # %if.then.4
	movl	$0, -16(%rbp)
.LBB2_3:                                # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movl	-16(%rbp), %eax
	movq	-8(%rbp), %rcx
	movzwl	12(%rcx), %edx
	cmpl	%edx, %eax
	jge	.LBB2_6
# BB#4:                                 # %for.body
                                        #   in Loop: Header=BB2_3 Depth=1
	movslq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	24(%rcx), %rcx
	movb	$0, (%rcx,%rax)
# BB#5:                                 # %for.inc
                                        #   in Loop: Header=BB2_3 Depth=1
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB2_3
.LBB2_6:                                # %for.end
	jmp	.LBB2_7
.LBB2_7:                                # %if.end
	jmp	.LBB2_8
.LBB2_8:                                # %if.end.7
	movq	-8(%rbp), %rax
	movswl	(%rax), %ecx
	cmpl	$0, %ecx
	jne	.LBB2_13
# BB#9:                                 # %if.then.12
	movq	-8(%rbp), %rax
	cmpl	$0, 4(%rax)
	jne	.LBB2_11
# BB#10:                                # %if.then.15
	movq	-8(%rbp), %rdi
	callq	tile_destroy
	jmp	.LBB2_13
.LBB2_11:                               # %if.else
	movq	-8(%rbp), %rdi
	callq	tile_cache_insert
# BB#12:                                # %if.end.16
	jmp	.LBB2_13
.LBB2_13:                               # %if.end.17
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end2:
	.size	tile_release, .Lfunc_end2-tile_release
	.cfi_endproc

	.align	16, 0x90
	.type	tile_destroy,@function
tile_destroy:                           # @tile_destroy
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	cmpw	$0, (%rdi)
	je	.LBB3_2
# BB#1:                                 # %if.then
	movabsq	$.L.str.1, %rdi
	movb	$0, %al
	callq	g_warning
	jmp	.LBB3_12
.LBB3_2:                                # %if.end
	movq	-8(%rbp), %rax
	cmpl	$0, 4(%rax)
	je	.LBB3_4
# BB#3:                                 # %if.then.2
	movabsq	$.L.str.2, %rdi
	movb	$0, %al
	callq	g_warning
	jmp	.LBB3_12
.LBB3_4:                                # %if.end.3
	movq	-8(%rbp), %rax
	cmpq	$0, 32(%rax)
	je	.LBB3_6
# BB#5:                                 # %if.then.5
	movq	-8(%rbp), %rax
	movq	32(%rax), %rdi
	callq	g_free
	movq	-8(%rbp), %rax
	movq	$0, 32(%rax)
.LBB3_6:                                # %if.end.8
	movq	-8(%rbp), %rax
	cmpq	$0, 24(%rax)
	je	.LBB3_8
# BB#7:                                 # %if.then.10
	movl	$64, %eax
	movl	%eax, %edi
	movq	-8(%rbp), %rcx
	movq	24(%rcx), %rsi
	callq	g_slice_free1
	movq	-8(%rbp), %rcx
	movq	$0, 24(%rcx)
.LBB3_8:                                # %if.end.13
	movq	-8(%rbp), %rdi
	callq	tile_cache_flush
	movq	-8(%rbp), %rdi
	cmpq	$-1, 40(%rdi)
	je	.LBB3_10
# BB#9:                                 # %if.then.14
	movq	-8(%rbp), %rdi
	callq	tile_swap_delete
.LBB3_10:                               # %if.end.15
	jmp	.LBB3_11
.LBB3_11:                               # %do.body
	movl	$72, %eax
	movl	%eax, %edi
	movq	-8(%rbp), %rcx
	movq	%rcx, %rsi
	callq	g_slice_free1
.LBB3_12:                               # %do.end
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	tile_destroy, .Lfunc_end3-tile_destroy
	.cfi_endproc

	.globl	tile_alloc
	.align	16, 0x90
	.type	tile_alloc,@function
tile_alloc:                             # @tile_alloc
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
	cmpq	$0, 32(%rdi)
	je	.LBB4_2
# BB#1:                                 # %if.then
	jmp	.LBB4_3
.LBB4_2:                                # %if.end
	movl	$1, %eax
	movl	%eax, %esi
	movq	-8(%rbp), %rcx
	movslq	16(%rcx), %rdi
	callq	g_malloc_n
	movq	-8(%rbp), %rcx
	movq	%rax, 32(%rcx)
.LBB4_3:                                # %return
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	tile_alloc, .Lfunc_end4-tile_alloc
	.cfi_endproc

	.globl	tile_size
	.align	16, 0x90
	.type	tile_size,@function
tile_size:                              # @tile_size
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movl	16(%rdi), %eax
	popq	%rbp
	retq
.Lfunc_end5:
	.size	tile_size, .Lfunc_end5-tile_size
	.cfi_endproc

	.globl	tile_ewidth
	.align	16, 0x90
	.type	tile_ewidth,@function
tile_ewidth:                            # @tile_ewidth
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movzwl	10(%rdi), %eax
	popq	%rbp
	retq
.Lfunc_end6:
	.size	tile_ewidth, .Lfunc_end6-tile_ewidth
	.cfi_endproc

	.globl	tile_eheight
	.align	16, 0x90
	.type	tile_eheight,@function
tile_eheight:                           # @tile_eheight
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movzwl	12(%rdi), %eax
	popq	%rbp
	retq
.Lfunc_end7:
	.size	tile_eheight, .Lfunc_end7-tile_eheight
	.cfi_endproc

	.globl	tile_bpp
	.align	16, 0x90
	.type	tile_bpp,@function
tile_bpp:                               # @tile_bpp
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movzbl	9(%rdi), %eax
	popq	%rbp
	retq
.Lfunc_end8:
	.size	tile_bpp, .Lfunc_end8-tile_bpp
	.cfi_endproc

	.globl	tile_is_valid
	.align	16, 0x90
	.type	tile_is_valid,@function
tile_is_valid:                          # @tile_is_valid
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
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movb	8(%rdi), %al
	shrb	$1, %al
	andb	$1, %al
	movzbl	%al, %eax
	popq	%rbp
	retq
.Lfunc_end9:
	.size	tile_is_valid, .Lfunc_end9-tile_is_valid
	.cfi_endproc

	.globl	tile_attach
	.align	16, 0x90
	.type	tile_attach,@function
tile_attach:                            # @tile_attach
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
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	-8(%rbp), %rsi
	cmpl	$0, 4(%rsi)
	jbe	.LBB10_3
# BB#1:                                 # %land.lhs.true
	movq	-8(%rbp), %rax
	movb	8(%rax), %cl
	shrb	$1, %cl
	andb	$1, %cl
	movzbl	%cl, %edx
	cmpl	$0, %edx
	jne	.LBB10_3
# BB#2:                                 # %if.then
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	movq	16(%rax), %rdi
	movq	-8(%rbp), %rsi
	callq	tile_manager_validate_tile
.LBB10_3:                               # %if.end
	movl	$24, %eax
	movl	%eax, %edi
	movq	-8(%rbp), %rcx
	movl	4(%rcx), %eax
	addl	$1, %eax
	movl	%eax, 4(%rcx)
	callq	g_slice_alloc
	movq	%rax, -32(%rbp)
	movq	-16(%rbp), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, 16(%rcx)
	movl	-20(%rbp), %edx
	movq	-32(%rbp), %rax
	movl	%edx, 8(%rax)
	movq	-8(%rbp), %rax
	movq	48(%rax), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
	movq	-32(%rbp), %rax
	movq	-8(%rbp), %rcx
	movq	%rax, 48(%rcx)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end10:
	.size	tile_attach, .Lfunc_end10-tile_attach
	.cfi_endproc

	.globl	tile_detach
	.align	16, 0x90
	.type	tile_detach,@function
tile_detach:                            # @tile_detach
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
	movq	%rsi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movq	-8(%rbp), %rsi
	addq	$48, %rsi
	movq	%rsi, -32(%rbp)
.LBB11_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	je	.LBB11_7
# BB#2:                                 # %for.body
                                        #   in Loop: Header=BB11_1 Depth=1
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	16(%rax), %rax
	movq	-16(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	.LBB11_5
# BB#3:                                 # %land.lhs.true
                                        #   in Loop: Header=BB11_1 Depth=1
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movl	8(%rax), %ecx
	cmpl	-20(%rbp), %ecx
	jne	.LBB11_5
# BB#4:                                 # %if.then
	jmp	.LBB11_7
.LBB11_5:                               # %if.end
                                        #   in Loop: Header=BB11_1 Depth=1
	jmp	.LBB11_6
.LBB11_6:                               # %for.inc
                                        #   in Loop: Header=BB11_1 Depth=1
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -32(%rbp)
	jmp	.LBB11_1
.LBB11_7:                               # %for.end
	movq	-32(%rbp), %rax
	cmpq	$0, (%rax)
	jne	.LBB11_9
# BB#8:                                 # %if.then.6
	movabsq	$.L.str, %rdi
	movb	$0, %al
	callq	g_warning
	jmp	.LBB11_14
.LBB11_9:                               # %if.end.7
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	-32(%rbp), %rcx
	movq	%rax, (%rcx)
# BB#10:                                # %do.body
	movl	$24, %eax
	movl	%eax, %edi
	movq	-40(%rbp), %rcx
	movq	%rcx, %rsi
	callq	g_slice_free1
# BB#11:                                # %do.end
	movq	-8(%rbp), %rax
	movl	4(%rax), %ecx
	addl	$-1, %ecx
	movl	%ecx, 4(%rax)
	movq	-8(%rbp), %rax
	cmpl	$0, 4(%rax)
	jne	.LBB11_14
# BB#12:                                # %land.lhs.true.11
	movq	-8(%rbp), %rax
	movswl	(%rax), %ecx
	cmpl	$0, %ecx
	jne	.LBB11_14
# BB#13:                                # %if.then.14
	movq	-8(%rbp), %rdi
	callq	tile_destroy
.LBB11_14:                              # %if.end.15
	addq	$48, %rsp
	popq	%rbp
	retq
.Lfunc_end11:
	.size	tile_detach, .Lfunc_end11-tile_detach
	.cfi_endproc

	.align	16, 0x90
	.type	g_warning,@function
g_warning:                              # @g_warning
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
	movl	$.L.str.3, %r9d
	movl	%r9d, %edi
	movl	$16, %esi
	leaq	-32(%rbp), %rcx
	callq	g_logv
	addq	$384, %rsp              # imm = 0x180
	popq	%rbp
	retq
.Lfunc_end12:
	.size	g_warning, .Lfunc_end12-g_warning
	.cfi_endproc

	.globl	tile_data_pointer
	.align	16, 0x90
	.type	tile_data_pointer,@function
tile_data_pointer:                      # @tile_data_pointer
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
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	32(%rdi), %rdi
	movl	-16(%rbp), %edx
	andl	$63, %edx
	movq	-8(%rbp), %rax
	movzwl	10(%rax), %esi
	imull	%esi, %edx
	movl	-12(%rbp), %esi
	andl	$63, %esi
	addl	%esi, %edx
	movq	-8(%rbp), %rax
	movzbl	9(%rax), %esi
	imull	%esi, %edx
	movslq	%edx, %rax
	addq	%rax, %rdi
	movq	%rdi, %rax
	popq	%rbp
	retq
.Lfunc_end13:
	.size	tile_data_pointer, .Lfunc_end13-tile_data_pointer
	.cfi_endproc

	.globl	tile_global_refcount
	.align	16, 0x90
	.type	tile_global_refcount,@function
tile_global_refcount:                   # @tile_global_refcount
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
	movl	tile_ref_count, %eax
	popq	%rbp
	retq
.Lfunc_end14:
	.size	tile_global_refcount, .Lfunc_end14-tile_global_refcount
	.cfi_endproc

	.type	tile_ref_count,@object  # @tile_ref_count
	.local	tile_ref_count
	.comm	tile_ref_count,4,4
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Tried to detach a nonattached tile -- TILE BUG!"
	.size	.L.str, 48

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"tried to destroy a ref'd tile"
	.size	.L.str.1, 30

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"tried to destroy an attached tile"
	.size	.L.str.2, 34

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Gimp-Base"
	.size	.L.str.3, 10


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
