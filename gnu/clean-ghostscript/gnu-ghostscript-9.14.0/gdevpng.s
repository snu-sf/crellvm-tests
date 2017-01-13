	.text
	.file	"gdevpng.bc"
	.align	16, 0x90
	.type	png_print_page,@function
png_print_page:                         # @png_print_page
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%edx, %edx
	jmp	do_png_print_page       # TAILCALL
.Lfunc_end0:
	.size	png_print_page, .Lfunc_end0-png_print_page
	.cfi_endproc

	.align	16, 0x90
	.type	png_print_page_monod,@function
png_print_page_monod:                   # @png_print_page_monod
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$1, %edx
	jmp	do_png_print_page       # TAILCALL
.Lfunc_end1:
	.size	png_print_page_monod, .Lfunc_end1-png_print_page_monod
	.cfi_endproc

	.align	16, 0x90
	.type	png_get_params_downscale,@function
png_get_params_downscale:               # @png_get_params_downscale
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp0:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp1:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp2:
	.cfi_def_cfa_offset 32
.Ltmp3:
	.cfi_offset %rbx, -32
.Ltmp4:
	.cfi_offset %r14, -24
.Ltmp5:
	.cfi_offset %rbp, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	leaq	18472(%rbx), %rdx
	cmpl	$0, 18472(%rbx)
	jg	.LBB2_2
# BB#1:                                 # %if.then
	movl	$1, (%rdx)
.LBB2_2:                                # %if.end
	movl	$.L.str.10, %esi
	movq	%r14, %rdi
	callq	param_write_int
	movl	%eax, %ebp
	sarl	$31, %ebp
	andl	%eax, %ebp
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	gdev_prn_get_params
	testl	%eax, %eax
	cmovsl	%eax, %ebp
	movl	%ebp, %eax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end2:
	.size	png_get_params_downscale, .Lfunc_end2-png_get_params_downscale
	.cfi_endproc

	.align	16, 0x90
	.type	png_put_params_downscale,@function
png_put_params_downscale:               # @png_put_params_downscale
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp6:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp7:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp8:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp9:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp10:
	.cfi_def_cfa_offset 48
.Ltmp11:
	.cfi_offset %rbx, -40
.Ltmp12:
	.cfi_offset %r14, -32
.Ltmp13:
	.cfi_offset %r15, -24
.Ltmp14:
	.cfi_offset %rbp, -16
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movl	18472(%r14), %eax
	movl	%eax, 4(%rsp)
	leaq	4(%rsp), %rdx
	movl	$.L.str.10, %esi
	movq	%rbx, %rdi
	callq	param_read_int
	movl	%eax, %ebp
	xorl	%r15d, %r15d
	cmpl	$1, %ebp
	je	.LBB3_4
# BB#1:                                 # %entry
	testl	%ebp, %ebp
	jne	.LBB3_3
# BB#2:                                 # %sw.bb
	movl	$-15, %ebp
	cmpl	$0, 4(%rsp)
	jg	.LBB3_4
.LBB3_3:                                # %sw.default
	movq	(%rbx), %rax
	movl	$.L.str.10, %esi
	movq	%rbx, %rdi
	movl	%ebp, %edx
	callq	*56(%rax)
	movl	%ebp, %r15d
.LBB3_4:                                # %sw.epilog
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	gdev_prn_put_params
	testl	%eax, %eax
	cmovnsl	%r15d, %eax
	movl	4(%rsp), %ecx
	movl	%ecx, 18472(%r14)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	png_put_params_downscale, .Lfunc_end3-png_put_params_downscale
	.cfi_endproc

	.align	16, 0x90
	.type	png_get_params_downscale_mfs,@function
png_get_params_downscale_mfs:           # @png_get_params_downscale_mfs
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp15:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp16:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp17:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp18:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp19:
	.cfi_def_cfa_offset 48
.Ltmp20:
	.cfi_offset %rbx, -40
.Ltmp21:
	.cfi_offset %r14, -32
.Ltmp22:
	.cfi_offset %r15, -24
.Ltmp23:
	.cfi_offset %rbp, -16
	movq	%rsi, %r14
	movq	%rdi, %r15
	leaq	18476(%r15), %rdx
	movl	$.L.str.11, %esi
	movq	%r14, %rdi
	callq	param_write_int
	movl	%eax, %ebx
	sarl	$31, %ebx
	andl	%eax, %ebx
	leaq	18472(%r15), %rdx
	cmpl	$0, 18472(%r15)
	jg	.LBB4_2
# BB#1:                                 # %if.then.i
	movl	$1, (%rdx)
.LBB4_2:                                # %png_get_params_downscale.exit
	movl	$.L.str.10, %esi
	movq	%r14, %rdi
	callq	param_write_int
	movl	%eax, %ebp
	sarl	$31, %ebp
	andl	%eax, %ebp
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	gdev_prn_get_params
	testl	%eax, %eax
	cmovsl	%eax, %ebp
	testl	%ebp, %ebp
	cmovnsl	%ebx, %ebp
	movl	%ebp, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end4:
	.size	png_get_params_downscale_mfs, .Lfunc_end4-png_get_params_downscale_mfs
	.cfi_endproc

	.align	16, 0x90
	.type	png_put_params_downscale_mfs,@function
png_put_params_downscale_mfs:           # @png_put_params_downscale_mfs
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp24:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp25:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp26:
	.cfi_def_cfa_offset 32
	pushq	%r12
.Ltmp27:
	.cfi_def_cfa_offset 40
	pushq	%rbx
.Ltmp28:
	.cfi_def_cfa_offset 48
	subq	$16, %rsp
.Ltmp29:
	.cfi_def_cfa_offset 64
.Ltmp30:
	.cfi_offset %rbx, -48
.Ltmp31:
	.cfi_offset %r12, -40
.Ltmp32:
	.cfi_offset %r14, -32
.Ltmp33:
	.cfi_offset %r15, -24
.Ltmp34:
	.cfi_offset %rbp, -16
	movq	%rsi, %r14
	movq	%rdi, %r15
	movl	18476(%r15), %eax
	movl	%eax, 8(%rsp)
	leaq	8(%rsp), %rdx
	movl	$.L.str.11, %esi
	movq	%r14, %rdi
	callq	param_read_int
	movl	%eax, %ebx
	xorl	%ebp, %ebp
	cmpl	$1, %ebx
	movl	$0, %r12d
	je	.LBB5_4
# BB#1:                                 # %entry
	testl	%ebx, %ebx
	jne	.LBB5_3
# BB#2:                                 # %sw.bb
	movl	$-15, %ebx
	cmpl	$3, 8(%rsp)
	movl	$0, %r12d
	jb	.LBB5_4
.LBB5_3:                                # %sw.default
	movq	(%r14), %rax
	movl	$.L.str.11, %esi
	movq	%r14, %rdi
	movl	%ebx, %edx
	callq	*56(%rax)
	movl	%ebx, %r12d
.LBB5_4:                                # %sw.epilog
	movl	18472(%r15), %eax
	movl	%eax, 12(%rsp)
	leaq	12(%rsp), %rdx
	movl	$.L.str.10, %esi
	movq	%r14, %rdi
	callq	param_read_int
	movl	%eax, %ebx
	cmpl	$1, %ebx
	je	.LBB5_8
# BB#5:                                 # %sw.epilog
	testl	%ebx, %ebx
	jne	.LBB5_7
# BB#6:                                 # %sw.bb.i
	movl	$-15, %ebx
	cmpl	$0, 12(%rsp)
	jg	.LBB5_8
.LBB5_7:                                # %sw.default.i
	movq	(%r14), %rax
	movl	$.L.str.10, %esi
	movq	%r14, %rdi
	movl	%ebx, %edx
	callq	*56(%rax)
	movl	%ebx, %ebp
.LBB5_8:                                # %png_put_params_downscale.exit
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	gdev_prn_put_params
	testl	%eax, %eax
	cmovsl	%eax, %ebp
	movl	12(%rsp), %eax
	movl	%eax, 18472(%r15)
	testl	%ebp, %ebp
	cmovsl	%ebp, %r12d
	movl	8(%rsp), %eax
	movl	%eax, 18476(%r15)
	movl	%r12d, %eax
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end5:
	.size	png_put_params_downscale_mfs, .Lfunc_end5-png_put_params_downscale_mfs
	.cfi_endproc

	.align	16, 0x90
	.type	pngalpha_open,@function
pngalpha_open:                          # @pngalpha_open
	.cfi_startproc
# BB#0:                                 # %entry
	movq	$pngalpha_create_buf_device, 12984(%rdi)
	jmp	gdev_prn_open           # TAILCALL
.Lfunc_end6:
	.size	pngalpha_open, .Lfunc_end6-pngalpha_open
	.cfi_endproc

	.align	16, 0x90
	.type	pngalpha_encode_color,@function
pngalpha_encode_color:                  # @pngalpha_encode_color
	.cfi_startproc
# BB#0:                                 # %entry
	movzwl	4(%rsi), %eax
	imull	$65281, %eax, %eax      # imm = 0xFF01
	addl	$8388608, %eax          # imm = 0x800000
	shrl	$16, %eax
	andl	$65280, %eax            # imm = 0xFF00
	movzwl	2(%rsi), %ecx
	imull	$65281, %ecx, %ecx      # imm = 0xFF01
	addl	$8388608, %ecx          # imm = 0x800000
	shrl	$8, %ecx
	andl	$16711680, %ecx         # imm = 0xFF0000
	orq	%rax, %rcx
	movzwl	(%rsi), %eax
	imull	$65281, %eax, %eax      # imm = 0xFF01
	addl	$8388608, %eax          # imm = 0x800000
	andl	$-16777216, %eax        # imm = 0xFFFFFFFFFF000000
	orq	%rcx, %rax
	retq
.Lfunc_end7:
	.size	pngalpha_encode_color, .Lfunc_end7-pngalpha_encode_color
	.cfi_endproc

	.align	16, 0x90
	.type	pngalpha_decode_color,@function
pngalpha_decode_color:                  # @pngalpha_decode_color
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rsi, %rax
	movl	%eax, %ecx
	movzbl	%ah, %esi  # NOREX
	shrl	$24, %eax
	imull	$257, %eax, %eax        # imm = 0x101
	movw	%ax, (%rdx)
	shrl	$16, %ecx
	movzbl	%cl, %eax
	imull	$257, %eax, %eax        # imm = 0x101
	movw	%ax, 2(%rdx)
	imull	$257, %esi, %eax        # imm = 0x101
	movw	%ax, 4(%rdx)
	xorl	%eax, %eax
	retq
.Lfunc_end8:
	.size	pngalpha_decode_color, .Lfunc_end8-pngalpha_decode_color
	.cfi_endproc

	.align	16, 0x90
	.type	pngalpha_get_params,@function
pngalpha_get_params:                    # @pngalpha_get_params
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp35:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp36:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp37:
	.cfi_def_cfa_offset 32
.Ltmp38:
	.cfi_offset %rbx, -32
.Ltmp39:
	.cfi_offset %r14, -24
.Ltmp40:
	.cfi_offset %rbp, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	callq	gdev_prn_get_params
	movl	%eax, %ebp
	testl	%ebp, %ebp
	js	.LBB9_2
# BB#1:                                 # %if.then
	leaq	18480(%rbx), %rdx
	movl	$.L.str.12, %esi
	movq	%r14, %rdi
	callq	param_write_int
	movl	%eax, %ebp
.LBB9_2:                                # %if.end
	cmpl	$0, 18472(%rbx)
	leaq	18472(%rbx), %rdx
	jg	.LBB9_4
# BB#3:                                 # %if.then.3
	movl	$1, (%rdx)
.LBB9_4:                                # %if.end.5
	movl	$.L.str.10, %esi
	movq	%r14, %rdi
	callq	param_write_int
	testl	%eax, %eax
	cmovnsl	%ebp, %eax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end9:
	.size	pngalpha_get_params, .Lfunc_end9-pngalpha_get_params
	.cfi_endproc

	.align	16, 0x90
	.type	pngalpha_put_params,@function
pngalpha_put_params:                    # @pngalpha_put_params
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp41:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp42:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp43:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp44:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp45:
	.cfi_def_cfa_offset 48
.Ltmp46:
	.cfi_offset %rbx, -40
.Ltmp47:
	.cfi_offset %r14, -32
.Ltmp48:
	.cfi_offset %r15, -24
.Ltmp49:
	.cfi_offset %rbp, -16
	movq	%rsi, %r15
	movq	%rdi, %r14
	movl	18472(%r14), %eax
	movl	%eax, (%rsp)
	leaq	4(%rsp), %rdx
	movl	$.L.str.12, %esi
	movq	%r15, %rdi
	callq	param_read_int
	movl	%eax, %ebx
	xorl	%ebp, %ebp
	cmpl	$1, %ebx
	je	.LBB10_4
# BB#1:                                 # %entry
	testl	%ebx, %ebx
	jne	.LBB10_3
# BB#2:                                 # %sw.bb
	movl	$16777215, %eax         # imm = 0xFFFFFF
	andl	4(%rsp), %eax
	movl	%eax, 18480(%r14)
	jmp	.LBB10_4
.LBB10_3:                               # %sw.default
	movq	(%r15), %rax
	movl	$.L.str.12, %esi
	movq	%r15, %rdi
	movl	%ebx, %edx
	callq	*56(%rax)
	movl	%ebx, %ebp
.LBB10_4:                               # %sw.epilog
	leaq	(%rsp), %rdx
	movl	$.L.str.10, %esi
	movq	%r15, %rdi
	callq	param_read_int
	movl	%eax, %ebx
	cmpl	$1, %ebx
	je	.LBB10_8
# BB#5:                                 # %sw.epilog
	testl	%ebx, %ebx
	jne	.LBB10_7
# BB#6:                                 # %sw.bb.5
	movl	$-15, %ebx
	cmpl	$0, (%rsp)
	jle	.LBB10_7
.LBB10_8:                               # %sw.epilog.10
	testl	%ebp, %ebp
	jne	.LBB10_10
# BB#9:                                 # %if.then.12
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	gdev_prn_put_params
	movl	%eax, %ebp
	jmp	.LBB10_10
.LBB10_7:                               # %sw.epilog.10.thread
	movq	(%r15), %rax
	movl	$.L.str.10, %esi
	movq	%r15, %rdi
	movl	%ebx, %edx
	callq	*56(%rax)
	movl	%ebx, %ebp
.LBB10_10:                              # %if.end.14
	movl	(%rsp), %eax
	movl	%eax, 18472(%r14)
	movl	%ebp, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end10:
	.size	pngalpha_put_params, .Lfunc_end10-pngalpha_put_params
	.cfi_endproc

	.align	16, 0x90
	.type	pngalpha_copy_alpha,@function
pngalpha_copy_alpha:                    # @pngalpha_copy_alpha
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp50:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp51:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp52:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp53:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp54:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp55:
	.cfi_def_cfa_offset 56
	subq	$488, %rsp              # imm = 0x1E8
.Ltmp56:
	.cfi_def_cfa_offset 544
.Ltmp57:
	.cfi_offset %rbx, -56
.Ltmp58:
	.cfi_offset %r12, -48
.Ltmp59:
	.cfi_offset %r13, -40
.Ltmp60:
	.cfi_offset %r14, -32
.Ltmp61:
	.cfi_offset %r15, -24
.Ltmp62:
	.cfi_offset %rbp, -16
	movl	%edx, %r12d
	movq	%rdi, %r13
	movq	568(%rsp), %rax
	movl	560(%rsp), %r14d
	movl	552(%rsp), %r15d
	movl	544(%rsp), %ebp
	cmpl	$1, 576(%rsp)
	jne	.LBB11_2
# BB#1:                                 # %if.then
	movq	%rax, 32(%rsp)
	movl	%r14d, 16(%rsp)
	movl	%r15d, 8(%rsp)
	movl	%ebp, (%rsp)
	movq	$-1, 24(%rsp)
	movq	%r13, %rdi
	movl	%r12d, %edx
	callq	*1216(%r13)
	jmp	.LBB11_59
.LBB11_2:                               # %if.end
	movq	%rsi, 200(%rsp)         # 8-byte Spill
	movl	%ecx, 160(%rsp)         # 4-byte Spill
	movq	24(%r13), %rax
	movq	%rax, 192(%rsp)         # 8-byte Spill
	movzwl	108(%r13), %eax
	movl	%eax, 188(%rsp)         # 4-byte Spill
	movl	100(%r13), %eax
	movl	%eax, 164(%rsp)         # 4-byte Spill
	xorl	%esi, %esi
	movq	%r13, %rdi
	movl	%r9d, %ebx
	callq	gx_device_raster
	movl	%ebx, %esi
	movl	%ebp, %ecx
	orl	%esi, %ecx
	jns	.LBB11_3
# BB#4:                                 # %if.then.7
	movl	%esi, %ecx
	sarl	$31, %ecx
	andl	%esi, %ecx
	leal	(%r15,%rcx), %r15d
	xorl	%edx, %edx
	testl	%esi, %esi
	cmovsl	%edx, %esi
	subl	%ecx, %r12d
	testl	%ebp, %ebp
	js	.LBB11_5
.LBB11_3:
	movq	%r12, %rbx
	movq	%rbx, 176(%rsp)         # 8-byte Spill
.LBB11_6:                               # %if.end.17
	xorl	%ecx, %ecx
	movl	832(%r13), %r12d
	movl	836(%r13), %edx
	subl	%esi, %r12d
	cmpl	%r12d, %r15d
	cmovlel	%r15d, %r12d
	subl	%ebp, %edx
	cmpl	%edx, %r14d
	cmovlel	%r14d, %edx
	testl	%r12d, %r12d
	jle	.LBB11_58
# BB#7:                                 # %if.end.17
	testl	%edx, %edx
	jle	.LBB11_58
# BB#8:                                 # %do.end.41
	movl	%edx, %r15d
	movl	%esi, 168(%rsp)         # 4-byte Spill
	movl	%r12d, %r14d
	imull	188(%rsp), %r14d        # 4-byte Folded Reload
	addl	$63, %r14d
	sarl	$6, %r14d
	shll	$3, %r14d
	movl	$.L.str.13, %edx
	movq	192(%rsp), %rbx         # 8-byte Reload
	movq	%rbx, %rdi
	movl	%eax, %esi
	callq	*64(%rbx)
	movl	$.L.str.14, %edx
	movq	%rbx, %rdi
	movl	%r14d, %esi
	movq	%rax, %r14
	callq	*64(%rbx)
	movq	%rax, %r8
	testq	%r14, %r14
	movl	$-25, 172(%rsp)         # 4-byte Folded Spill
	je	.LBB11_57
# BB#9:                                 # %do.end.41
	testq	%r8, %r8
	je	.LBB11_57
# BB#10:                                # %if.end.55
	leaq	352(%rsp), %rdx
	movq	%r13, %rdi
	movq	568(%rsp), %rsi
	movq	%r8, %rbx
	callq	*1560(%r13)
	movq	%rbx, %r8
	movl	$0, 172(%rsp)           # 4-byte Folded Spill
	testl	%r15d, %r15d
	jle	.LBB11_57
# BB#11:                                # %for.body.lr.ph
	addl	%ebp, %r15d
	movl	%r15d, 68(%rsp)         # 4-byte Spill
	movq	176(%rsp), %rax         # 8-byte Reload
	leal	(%r12,%rax), %eax
	movl	%eax, 132(%rsp)         # 4-byte Spill
	movslq	160(%rsp), %rax         # 4-byte Folded Reload
	movq	%rax, 56(%rsp)          # 8-byte Spill
	movl	188(%rsp), %eax         # 4-byte Reload
	movl	%eax, %ecx
	shrl	$2, %ecx
	movl	%ecx, 156(%rsp)         # 4-byte Spill
	shrl	$3, %eax
	movq	%rax, 112(%rsp)         # 8-byte Spill
	movslq	168(%rsp), %rax         # 4-byte Folded Reload
	movq	%rax, 88(%rsp)          # 8-byte Spill
	leaq	344(%rsp), %rcx
                                        # implicit-def: EAX
	movl	%eax, 52(%rsp)          # 4-byte Spill
	jmp	.LBB11_12
.LBB11_13:                              # %for.cond.72.preheader
                                        #   in Loop: Header=BB11_12 Depth=1
	movq	%r14, 80(%rsp)          # 8-byte Spill
	movl	$0, 108(%rsp)           # 4-byte Folded Spill
	testl	%r12d, %r12d
	movq	88(%rsp), %r11          # 8-byte Reload
	movl	$0, 124(%rsp)           # 4-byte Folded Spill
	movq	%rbx, %rbp
	movq	%rbx, 72(%rsp)          # 8-byte Spill
	movl	168(%rsp), %r9d         # 4-byte Reload
	movl	%r9d, %eax
	movq	176(%rsp), %r14         # 8-byte Reload
	movq	568(%rsp), %rdi
	movl	576(%rsp), %r8d
	movl	132(%rsp), %r10d        # 4-byte Reload
	jg	.LBB11_16
# BB#14:                                #   in Loop: Header=BB11_12 Depth=1
	movq	80(%rsp), %r14          # 8-byte Reload
.LBB11_15:                              # %cleanup.315.thread199
                                        #   in Loop: Header=BB11_12 Depth=1
	movq	72(%rsp), %r8           # 8-byte Reload
	movl	%r15d, %ebp
.LBB11_55:                              # %cleanup.315.thread199
                                        #   in Loop: Header=BB11_12 Depth=1
	movq	56(%rsp), %rax          # 8-byte Reload
	addq	%rax, 200(%rsp)         # 8-byte Folded Spill
	incl	%ebp
	movl	68(%rsp), %eax          # 4-byte Reload
	cmpl	%eax, %ebp
	leaq	344(%rsp), %rcx
	jl	.LBB11_12
	jmp	.LBB11_57
.LBB11_32:                              # %if.else.207
                                        #   in Loop: Header=BB11_16 Depth=2
	movl	$8, %ecx
	subl	%eax, %ecx
	movl	%eax, 124(%rsp)         # 4-byte Spill
	shlq	%cl, %rdx
	movl	108(%rsp), %eax         # 4-byte Reload
	orb	%al, %dl
	jmp	.LBB11_35
.LBB11_38:                              # %if.then.232
                                        #   in Loop: Header=BB11_16 Depth=2
	movq	%rdx, %rcx
	shrq	$4, %rcx
	movb	%cl, (%rbp)
	incq	%rbp
.LBB11_34:                              # %if.then.218
                                        #   in Loop: Header=BB11_16 Depth=2
	shlq	$4, %rdx
	movl	%eax, 124(%rsp)         # 4-byte Spill
.LBB11_35:                              # %for.inc.285
                                        #   in Loop: Header=BB11_16 Depth=2
	movb	%dl, %al
	movl	%eax, 108(%rsp)         # 4-byte Spill
	jmp	.LBB11_48
	.align	16, 0x90
.LBB11_16:                              # %for.body.76
                                        #   Parent Loop BB11_12 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB11_24 Depth 3
	movl	%eax, %esi
	movl	%r14d, %eax
	cmpl	$2, %r8d
	jne	.LBB11_18
# BB#17:                                # %if.then.79
                                        #   in Loop: Header=BB11_16 Depth=2
	sarl	$2, %eax
	cltq
	movq	200(%rsp), %rcx         # 8-byte Reload
	movzbl	(%rcx,%rax), %eax
	leal	(%r14,%r14), %ecx
	notl	%ecx
	andb	$6, %cl
	shrl	%cl, %eax
	andl	$3, %eax
	leal	(%rax,%rax,4), %ebx
	jmp	.LBB11_19
.LBB11_18:                              # %if.else
                                        #   in Loop: Header=BB11_16 Depth=2
	sarl	%eax
	cltq
	movq	200(%rsp), %rcx         # 8-byte Reload
	movzbl	(%rcx,%rax), %ebx
	movl	%ebx, %eax
	andl	$15, %eax
	shrl	$4, %ebx
	testb	$1, %r14b
	cmovnel	%eax, %ebx
.LBB11_19:                              # %if.end.100
                                        #   in Loop: Header=BB11_16 Depth=2
	cmpl	$15, %ebx
	movq	%rdi, %rdx
	je	.LBB11_27
# BB#20:                                # %if.then.107
                                        #   in Loop: Header=BB11_16 Depth=2
	movq	%rsi, 136(%rsp)         # 8-byte Spill
	movq	%rbp, 144(%rsp)         # 8-byte Spill
	movq	344(%rsp), %rax
	movq	%r11, %rcx
	imulq	112(%rsp), %rcx         # 8-byte Folded Reload
	movzbl	(%rax,%rcx), %edx
	shlq	$24, %rdx
	movzbl	1(%rax,%rcx), %esi
	shlq	$16, %rsi
	orq	%rdx, %rsi
	movzbl	2(%rax,%rcx), %edx
	shlq	$8, %rdx
	orq	%rsi, %rdx
	movzbl	3(%rax,%rcx), %ebp
	orq	%rbp, %rdx
	testl	%ebx, %ebx
	je	.LBB11_21
# BB#22:                                # %if.else.130
                                        #   in Loop: Header=BB11_16 Depth=2
	movq	%r11, 96(%rsp)          # 8-byte Spill
	movl	%r9d, 168(%rsp)         # 4-byte Spill
	movq	%r13, %rdi
	movq	%rdx, %rsi
	leaq	208(%rsp), %rdx
	callq	*1560(%r13)
	movw	%bp, 214(%rsp)
	movzwl	%bp, %eax
	xorl	$255, %eax
	imull	$255, %ebx, %r8d
	movl	$15, %esi
	subl	%ebx, %esi
	imull	%eax, %esi
	leal	(%rsi,%r8), %eax
	movslq	%eax, %r15
	imulq	$-2004318071, %r15, %rax # imm = 0xFFFFFFFF88888889
	shrq	$32, %rax
	addl	%eax, %r15d
	movl	%r15d, %eax
	shrl	$31, %eax
	sarl	$3, %r15d
	addl	%eax, %r15d
	cmpl	$0, 164(%rsp)           # 4-byte Folded Reload
	movw	$-1, %r9w
	jle	.LBB11_25
# BB#23:                                # %for.body.148.lr.ph
                                        #   in Loop: Header=BB11_16 Depth=2
	leal	(%r15,%r15,4), %eax
	leal	(%rax,%rax,2), %edi
	movl	164(%rsp), %ebp         # 4-byte Reload
	leaq	208(%rsp), %rbx
	leaq	352(%rsp), %rcx
	.align	16, 0x90
.LBB11_24:                              # %for.body.148
                                        #   Parent Loop BB11_12 Depth=1
                                        #     Parent Loop BB11_16 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movzwl	(%rcx), %edx
	imull	%r8d, %edx
	movzwl	(%rbx), %eax
	imull	%esi, %eax
	addl	%edx, %eax
	cltd
	idivl	%edi
	cmpl	$65535, %eax            # imm = 0xFFFF
	cmovgew	%r9w, %ax
	movw	%ax, (%rbx)
	addq	$2, %rcx
	addq	$2, %rbx
	decl	%ebp
	jne	.LBB11_24
.LBB11_25:                              # %for.end
                                        #   in Loop: Header=BB11_16 Depth=2
	movq	%r13, %rdi
	leaq	208(%rsp), %rsi
	callq	*1552(%r13)
	movl	$255, %ecx
	subl	%r15d, %ecx
	movzbl	%cl, %edx
	orq	%rax, %rdx
	movl	168(%rsp), %r9d         # 4-byte Reload
	movq	568(%rsp), %rdi
	movl	576(%rsp), %r8d
	movl	128(%rsp), %r15d        # 4-byte Reload
	movl	132(%rsp), %r10d        # 4-byte Reload
	movq	144(%rsp), %rbp         # 8-byte Reload
	movq	96(%rsp), %r11          # 8-byte Reload
	jmp	.LBB11_26
.LBB11_21:                              #   in Loop: Header=BB11_16 Depth=2
	movl	128(%rsp), %r15d        # 4-byte Reload
	movq	144(%rsp), %rbp         # 8-byte Reload
.LBB11_26:                              # %do.body.195
                                        #   in Loop: Header=BB11_16 Depth=2
	movq	136(%rsp), %rsi         # 8-byte Reload
.LBB11_27:                              # %do.body.195
                                        #   in Loop: Header=BB11_16 Depth=2
	movl	156(%rsp), %ecx         # 4-byte Reload
	movl	%ecx, %eax
	cmpl	$16, %ecx
	ja	.LBB11_29
# BB#28:                                # %do.body.195
                                        #   in Loop: Header=BB11_16 Depth=2
	jmpq	*.LJTI11_0(,%rax,8)
.LBB11_30:                              # %sw.bb
                                        #   in Loop: Header=BB11_16 Depth=2
	movl	124(%rsp), %eax         # 4-byte Reload
	addl	188(%rsp), %eax         # 4-byte Folded Reload
	cmpl	$8, %eax
	jne	.LBB11_32
# BB#31:                                # %if.then.200
                                        #   in Loop: Header=BB11_16 Depth=2
	movl	108(%rsp), %eax         # 4-byte Reload
	orb	%al, %dl
	movb	%dl, (%rbp)
	incq	%rbp
	movl	$0, 124(%rsp)           # 4-byte Folded Spill
	movl	$0, 108(%rsp)           # 4-byte Folded Spill
	jmp	.LBB11_48
.LBB11_33:                              # %sw.bb.216
                                        #   in Loop: Header=BB11_16 Depth=2
	movl	124(%rsp), %ecx         # 4-byte Reload
	movl	%ecx, %eax
	xorl	$4, %eax
	cmpl	$4, %ecx
	jne	.LBB11_34
# BB#36:                                # %if.else.221
                                        #   in Loop: Header=BB11_16 Depth=2
	movl	108(%rsp), %ecx         # 4-byte Reload
	orb	%cl, %dl
	movb	%dl, (%rbp)
	incq	%rbp
	movl	%eax, 124(%rsp)         # 4-byte Spill
	jmp	.LBB11_48
.LBB11_37:                              # %sw.bb.229
                                        #   in Loop: Header=BB11_16 Depth=2
	movl	124(%rsp), %ecx         # 4-byte Reload
	movl	%ecx, %eax
	xorl	$4, %eax
	cmpl	$4, %ecx
	jne	.LBB11_38
# BB#39:                                # %if.else.238
                                        #   in Loop: Header=BB11_16 Depth=2
	movq	%rdx, %rcx
	shrq	$8, %rcx
	movl	108(%rsp), %ebx         # 4-byte Reload
	orb	%bl, %cl
	movb	%cl, (%rbp)
	movb	%dl, 1(%rbp)
	addq	$2, %rbp
	movl	%eax, 124(%rsp)         # 4-byte Spill
	jmp	.LBB11_48
.LBB11_40:                              # %sw.bb.249
                                        #   in Loop: Header=BB11_16 Depth=2
	movq	%rdx, %rax
	shrq	$56, %rax
	movb	%al, (%rbp)
	incq	%rbp
.LBB11_41:                              # %sw.bb.253
                                        #   in Loop: Header=BB11_16 Depth=2
	movq	%rdx, %rax
	shrq	$48, %rax
	movb	%al, (%rbp)
	incq	%rbp
.LBB11_42:                              # %sw.bb.257
                                        #   in Loop: Header=BB11_16 Depth=2
	movq	%rdx, %rax
	shrq	$40, %rax
	movb	%al, (%rbp)
	incq	%rbp
.LBB11_43:                              # %sw.bb.261
                                        #   in Loop: Header=BB11_16 Depth=2
	movq	%rdx, %rax
	shrq	$32, %rax
	movb	%al, (%rbp)
	incq	%rbp
.LBB11_44:                              # %sw.bb.265
                                        #   in Loop: Header=BB11_16 Depth=2
	movq	%rdx, %rax
	shrq	$24, %rax
	movb	%al, (%rbp)
	incq	%rbp
.LBB11_45:                              # %sw.bb.269
                                        #   in Loop: Header=BB11_16 Depth=2
	movq	%rdx, %rax
	shrq	$16, %rax
	movb	%al, (%rbp)
	incq	%rbp
.LBB11_46:                              # %sw.bb.273
                                        #   in Loop: Header=BB11_16 Depth=2
	movb	%dh, (%rbp)  # NOREX
	incq	%rbp
.LBB11_47:                              # %sw.bb.277
                                        #   in Loop: Header=BB11_16 Depth=2
	movb	%dl, (%rbp)
	incq	%rbp
.LBB11_48:                              # %for.inc.285
                                        #   in Loop: Header=BB11_16 Depth=2
	incl	%r14d
	leal	1(%rsi), %eax
	incq	%r11
	cmpl	%r10d, %r14d
	jl	.LBB11_16
# BB#49:                                # %for.end.288
                                        #   in Loop: Header=BB11_12 Depth=1
	cmpl	%r9d, %esi
	movq	80(%rsp), %r14          # 8-byte Reload
	jge	.LBB11_51
# BB#50:                                #   in Loop: Header=BB11_12 Depth=1
	movl	%r10d, 132(%rsp)        # 4-byte Spill
	movl	%r9d, 168(%rsp)         # 4-byte Spill
	jmp	.LBB11_15
.LBB11_51:                              # %if.then.291
                                        #   in Loop: Header=BB11_12 Depth=1
	movl	%r10d, 132(%rsp)        # 4-byte Spill
	movl	124(%rsp), %edx         # 4-byte Reload
	testl	%edx, %edx
	movq	72(%rsp), %rsi          # 8-byte Reload
	je	.LBB11_53
# BB#52:                                # %if.then.295
                                        #   in Loop: Header=BB11_12 Depth=1
	movl	108(%rsp), %ecx         # 4-byte Reload
	movzbl	%cl, %r8d
	movzbl	(%rbp), %ebx
	movl	$255, %edi
	movb	%dl, %cl
	shrl	%cl, %edi
	andl	%ebx, %edi
	orl	%r8d, %edi
	movb	%dil, (%rbp)
.LBB11_53:                              # %if.end.302
                                        #   in Loop: Header=BB11_12 Depth=1
	subl	%r9d, %eax
	movl	%eax, 8(%rsp)
	movl	%r15d, (%rsp)
	movl	$1, 16(%rsp)
	xorl	%edx, %edx
	xorl	%r8d, %r8d
	movq	%r13, %rdi
	movq	%rsi, %rbx
	movl	160(%rsp), %ecx         # 4-byte Reload
	movl	%r9d, 168(%rsp)         # 4-byte Spill
	callq	*1224(%r13)
	testl	%eax, %eax
	movl	52(%rsp), %ecx          # 4-byte Reload
	cmovsl	%eax, %ecx
	js	.LBB11_58
# BB#54:                                #   in Loop: Header=BB11_12 Depth=1
	movl	%ecx, 52(%rsp)          # 4-byte Spill
	movl	%r15d, %ebp
	movq	%rbx, %r8
	jmp	.LBB11_55
.LBB11_12:                              # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_16 Depth 2
                                        #       Child Loop BB11_24 Depth 3
	movq	%r8, %rbx
	movl	%ebp, 128(%rsp)         # 4-byte Spill
	movq	%r13, %rdi
	movl	%ebp, %esi
	movl	%ebp, %r15d
	movq	%r14, %rdx
	callq	*1240(%r13)
	movl	%eax, 172(%rsp)         # 4-byte Spill
	testl	%eax, %eax
	jns	.LBB11_13
# BB#56:                                # %cleanup.315.thread201
	movq	%rbx, %r8
.LBB11_57:                              # %out
	movl	$.L.str.14, %edx
	movq	192(%rsp), %rbx         # 8-byte Reload
	movq	%rbx, %rdi
	movq	%r8, %rsi
	callq	*24(%rbx)
	movl	$.L.str.13, %edx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	*24(%rbx)
	movl	172(%rsp), %ecx         # 4-byte Reload
	jmp	.LBB11_58
.LBB11_29:                              # %cleanup.315.thread
	movl	$-15, %ecx
.LBB11_58:                              # %return
	movl	%ecx, %eax
.LBB11_59:                              # %return
	addq	$488, %rsp              # imm = 0x1E8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB11_5:                               # %if.then.14
	movq	%r12, %rbx
	movq	%rbx, 176(%rsp)         # 8-byte Spill
	addl	%ebp, %r14d
	imull	160(%rsp), %ebp         # 4-byte Folded Reload
	movslq	%ebp, %rcx
	subq	%rcx, 200(%rsp)         # 8-byte Folded Spill
	xorl	%ebp, %ebp
	jmp	.LBB11_6
.Lfunc_end11:
	.size	pngalpha_copy_alpha, .Lfunc_end11-pngalpha_copy_alpha
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.align	8
.LJTI11_0:
	.quad	.LBB11_30
	.quad	.LBB11_33
	.quad	.LBB11_47
	.quad	.LBB11_37
	.quad	.LBB11_46
	.quad	.LBB11_29
	.quad	.LBB11_45
	.quad	.LBB11_29
	.quad	.LBB11_44
	.quad	.LBB11_29
	.quad	.LBB11_43
	.quad	.LBB11_29
	.quad	.LBB11_42
	.quad	.LBB11_29
	.quad	.LBB11_41
	.quad	.LBB11_29
	.quad	.LBB11_40

	.text
	.align	16, 0x90
	.type	pngalpha_fillpage,@function
pngalpha_fillpage:                      # @pngalpha_fillpage
	.cfi_startproc
# BB#0:                                 # %entry
	movq	1200(%rdi), %rax
	movl	832(%rdi), %ecx
	movl	836(%rdi), %r8d
	xorl	%esi, %esi
	xorl	%edx, %edx
	movl	$4294967295, %r9d       # imm = 0xFFFFFFFF
	jmpq	*%rax                   # TAILCALL
.Lfunc_end12:
	.size	pngalpha_fillpage, .Lfunc_end12-pngalpha_fillpage
	.cfi_endproc

	.align	16, 0x90
	.type	pngalpha_put_image,@function
pngalpha_put_image:                     # @pngalpha_put_image
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp63:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp64:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp65:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp66:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp67:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp68:
	.cfi_def_cfa_offset 56
.Ltmp69:
	.cfi_offset %rbx, -56
.Ltmp70:
	.cfi_offset %r12, -48
.Ltmp71:
	.cfi_offset %r13, -40
.Ltmp72:
	.cfi_offset %r14, -32
.Ltmp73:
	.cfi_offset %r15, -24
.Ltmp74:
	.cfi_offset %rbp, -16
	movq	%rsi, -16(%rsp)         # 8-byte Spill
	movq	%rdi, -8(%rsp)          # 8-byte Spill
	movl	72(%rsp), %ebp
	xorl	%eax, %eax
	testl	%ebp, %ebp
	je	.LBB13_10
# BB#1:                                 # %if.end
	cmpl	$3, %edx
	movl	$-1, %eax
	jne	.LBB13_10
# BB#2:                                 # %if.end
	movl	80(%rsp), %esi
	testl	%esi, %esi
	jle	.LBB13_10
# BB#3:                                 # %if.end.5
	movl	56(%rsp), %eax
	testl	%eax, %eax
	jle	.LBB13_10
# BB#4:                                 # %for.body.lr.ph
	leal	(%rax,%r8), %r11d
	leal	(%r9,%rcx), %r15d
	movq	-8(%rsp), %rax          # 8-byte Reload
	movq	1744(%rax), %rax
	leal	(%rbp,%rbp), %edx
	imull	%ebp, %esi
	movslq	%ebp, %r12
	movslq	%edx, %rdi
	movslq	%esi, %rbp
	addq	$3, %rax
	movq	%rax, -24(%rsp)         # 8-byte Spill
	movl	%ecx, %ebx
	shll	$2, %ecx
	xorl	%r13d, %r13d
	.align	16, 0x90
.LBB13_5:                               # %for.body
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB13_7 Depth 2
	testl	%r9d, %r9d
	jle	.LBB13_8
# BB#6:                                 # %for.body.12.lr.ph
                                        #   in Loop: Header=BB13_5 Depth=1
	movslq	%r13d, %rax
	movq	-16(%rsp), %rdx         # 8-byte Reload
	leaq	(%rax,%rdx), %r10
	movq	-8(%rsp), %rax          # 8-byte Reload
	movl	1736(%rax), %eax
	imull	%r8d, %eax
	leal	(%rax,%rcx), %eax
	cltq
	movq	-24(%rsp), %rdx         # 8-byte Reload
	leaq	(%rax,%rdx), %rax
	xorl	%r14d, %r14d
	.align	16, 0x90
.LBB13_7:                               # %for.body.12
                                        #   Parent Loop BB13_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movb	(%r10,%r14), %sil
	movb	%sil, -3(%rax,%r14,4)
	leaq	(%r12,%r14), %rsi
	movb	(%r10,%rsi), %dl
	movb	%dl, -2(%rax,%r14,4)
	leaq	(%rdi,%r14), %rdx
	movb	(%r10,%rdx), %dl
	movb	%dl, -1(%rax,%r14,4)
	leaq	(%rbp,%r14), %rdx
	movb	(%r10,%rdx), %dl
	notb	%dl
	movb	%dl, (%rax,%r14,4)
	incq	%r14
	leal	(%rbx,%r14), %edx
	cmpl	%r15d, %edx
	jl	.LBB13_7
.LBB13_8:                               # %for.inc.39
                                        #   in Loop: Header=BB13_5 Depth=1
	incl	%r8d
	addl	64(%rsp), %r13d
	cmpl	%r11d, %r8d
	jl	.LBB13_5
# BB#9:
	movl	56(%rsp), %eax
.LBB13_10:                              # %cleanup
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end13:
	.size	pngalpha_put_image, .Lfunc_end13-pngalpha_put_image
	.cfi_endproc

	.align	16, 0x90
	.type	pngalpha_create_buf_device,@function
pngalpha_create_buf_device:             # @pngalpha_create_buf_device
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r14
.Ltmp75:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp76:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp77:
	.cfi_def_cfa_offset 32
.Ltmp78:
	.cfi_offset %rbx, -24
.Ltmp79:
	.cfi_offset %r14, -16
	movq	%rsi, %r14
	movq	%rdi, %rbx
	callq	gx_default_create_buf_device
	movq	18056(%r14), %rcx
	movq	(%rbx), %rdx
	movq	%rcx, 1312(%rdx)
	movq	(%rbx), %rcx
	movq	$pngalpha_fillpage, 1632(%rcx)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end14:
	.size	pngalpha_create_buf_device, .Lfunc_end14-pngalpha_create_buf_device
	.cfi_endproc

	.section	.rodata.cst8,"aM",@progbits,8
	.align	8
.LCPI15_0:
	.quad	4630737663307740652     # double 39.370078740157481
.LCPI15_1:
	.quad	4602678819172646912     # double 0.5
	.text
	.align	16, 0x90
	.type	do_png_print_page,@function
do_png_print_page:                      # @do_png_print_page
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp80:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp81:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp82:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp83:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp84:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp85:
	.cfi_def_cfa_offset 56
	subq	$1976, %rsp             # imm = 0x7B8
.Ltmp86:
	.cfi_def_cfa_offset 2032
.Ltmp87:
	.cfi_offset %rbx, -56
.Ltmp88:
	.cfi_offset %r12, -48
.Ltmp89:
	.cfi_offset %r13, -40
.Ltmp90:
	.cfi_offset %r14, -32
.Ltmp91:
	.cfi_offset %r15, -24
.Ltmp92:
	.cfi_offset %rbp, -16
	movl	%edx, %r14d
	movq	%rsi, 120(%rsp)         # 8-byte Spill
	movq	%rdi, %r15
	movq	24(%r15), %rbx
	movq	%rbx, 128(%rsp)         # 8-byte Spill
	xorl	%esi, %esi
	callq	gx_device_raster
	movl	%eax, 116(%rsp)         # 4-byte Spill
	movl	$.L.str.15, %edx
	movq	%rbx, %rdi
	movl	%eax, %esi
	callq	*64(%rbx)
	movq	%rax, %r13
	movq	%r13, 1344(%rsp)
	movl	$.L.str.16, %edi
	xorl	%esi, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	callq	png_create_write_struct
	movq	%rax, %rbx
	movq	%rbx, 1336(%rsp)
	movq	%rbx, %rdi
	callq	png_create_info_struct
	movq	%rax, 1328(%rsp)
	movzwl	108(%r15), %edi
	movl	18472(%r15), %esi
	movl	18476(%r15), %ecx
	testl	%esi, %esi
	movl	$1, %edx
	cmovlel	%edx, %esi
	cmpl	$2, %ecx
	movl	$2, %ebp
	cmovlel	%ecx, %ebp
	testl	%ecx, %ecx
	cmovlel	%edx, %ebp
	testl	%r14d, %r14d
	setne	%r12b
	cmovnel	%edx, %edi
	testq	%r13, %r13
	movl	$-25, %r14d
	je	.LBB15_40
# BB#1:                                 # %entry
	testq	%rbx, %rbx
	je	.LBB15_40
# BB#2:                                 # %entry
	testq	%rax, %rax
	je	.LBB15_40
# BB#3:                                 # %if.end.24
	movl	%ebp, 108(%rsp)         # 4-byte Spill
	movl	%edi, 112(%rsp)         # 4-byte Spill
	movl	%esi, %ebp
	movl	$longjmp, %esi
	movl	$200, %edx
	movq	%rbx, %rdi
	callq	png_set_longjmp_fn
	movq	%rax, %rdi
	callq	_setjmp
	testl	%eax, %eax
	jne	.LBB15_40
# BB#4:                                 # %if.end.29
	movzbl	%r12b, %r14d
	movq	%rbx, %rdi
	movq	120(%rsp), %rsi         # 8-byte Reload
	callq	png_init_io
	movss	884(%r15), %xmm0        # xmm0 = mem[0],zero,zero,zero
	movss	888(%r15), %xmm1        # xmm1 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movsd	.LCPI15_0(%rip), %xmm2  # xmm2 = mem[0],zero
	mulsd	%xmm2, %xmm0
	movl	%ebp, %eax
	cvtsi2sdl	%eax, %xmm3
	divsd	%xmm3, %xmm0
	movsd	.LCPI15_1(%rip), %xmm4  # xmm4 = mem[0],zero
	addsd	%xmm4, %xmm0
	cvttsd2si	%xmm0, %rdx
	xorps	%xmm0, %xmm0
	cvtss2sd	%xmm1, %xmm0
	mulsd	%xmm2, %xmm0
	divsd	%xmm3, %xmm0
	addsd	%xmm4, %xmm0
	cvttsd2si	%xmm0, %rsi
	movl	112(%rsp), %ecx         # 4-byte Reload
	cmpl	$23, %ecx
	jg	.LBB15_8
# BB#5:                                 # %if.end.29
	cmpl	$1, %ecx
	je	.LBB15_19
# BB#6:                                 # %if.end.29
	cmpl	$4, %ecx
	jne	.LBB15_16
# BB#7:
	movq	%rsi, 40(%rsp)          # 8-byte Spill
	movq	%rdx, 48(%rsp)          # 8-byte Spill
	movl	%eax, 120(%rsp)         # 4-byte Spill
	movl	%r14d, %ebp
	movl	116(%rsp), %r12d        # 4-byte Reload
	movl	$4, %r14d
	jmp	.LBB15_21
.LBB15_8:                               # %if.end.29
	cmpl	$24, %ecx
	je	.LBB15_15
# BB#9:                                 # %if.end.29
	cmpl	$48, %ecx
	jne	.LBB15_10
# BB#12:                                # %sw.bb.50
	movq	%rsi, 40(%rsp)          # 8-byte Spill
	movq	%rdx, 48(%rsp)          # 8-byte Spill
	movl	%eax, 120(%rsp)         # 4-byte Spill
	movl	$1, %eax
	xorl	%ecx, %ecx
	movl	%r14d, %edi
	movl	$16, %r14d
	movl	$2, %ebp
	jmp	.LBB15_13
.LBB15_19:                              # %sw.bb.65
	movq	%rsi, 40(%rsp)          # 8-byte Spill
	movq	%rdx, 48(%rsp)          # 8-byte Spill
	movl	%eax, 120(%rsp)         # 4-byte Spill
	movl	%r14d, %edx
	xorl	$1, %edx
	movl	%r14d, %edi
	movl	$1, %r14d
	xorl	%ebp, %ebp
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	jmp	.LBB15_14
.LBB15_16:                              # %if.end.29
	movq	%rsi, 40(%rsp)          # 8-byte Spill
	movq	%rdx, 48(%rsp)          # 8-byte Spill
	movl	%eax, 120(%rsp)         # 4-byte Spill
	cmpl	$8, %ecx
	movl	%r14d, %edi
	movl	$0, %r14d
	movl	$0, %ecx
	movl	$0, %eax
	movl	$0, %edx
	movl	$0, %esi
	movl	$0, %ebx
	movl	116(%rsp), %r12d        # 4-byte Reload
	movl	$0, %ebp
	jne	.LBB15_24
# BB#17:                                # %sw.bb.52
	cmpl	$1, 100(%r15)
	jle	.LBB15_20
# BB#18:
	xorl	%ebp, %ebp
	movl	$8, %r14d
	jmp	.LBB15_21
.LBB15_15:                              # %sw.bb.51
	movq	%rsi, 40(%rsp)          # 8-byte Spill
	movq	%rdx, 48(%rsp)          # 8-byte Spill
	movl	%eax, 120(%rsp)         # 4-byte Spill
	xorl	%ecx, %ecx
	movl	$8, %r14d
	movl	$2, %ebp
	movl	$1, %edi
	xorl	%eax, %eax
.LBB15_13:                              # %if.end.112
	xorl	%edx, %edx
.LBB15_14:                              # %if.end.112
	xorl	%esi, %esi
	xorl	%ebx, %ebx
	movl	116(%rsp), %r12d        # 4-byte Reload
	jmp	.LBB15_24
.LBB15_10:                              # %if.end.29
	movq	%rsi, 40(%rsp)          # 8-byte Spill
	movq	%rdx, 48(%rsp)          # 8-byte Spill
	movl	%eax, 120(%rsp)         # 4-byte Spill
	cmpl	$32, %ecx
	movl	%r14d, %edi
	movl	$0, %r14d
	movl	$0, %ecx
	movl	$0, %eax
	movl	$0, %edx
	movl	$0, %esi
	movl	$0, %ebx
	movl	116(%rsp), %r12d        # 4-byte Reload
	movl	$0, %ebp
	jne	.LBB15_24
# BB#11:                                # %sw.bb
	movb	$0, 920(%rsp)
	movl	18480(%r15), %eax
	movzbl	%ah, %ecx  # NOREX
	movzbl	%al, %edx
	shrl	$16, %eax
	movzbl	%al, %eax
	movw	%ax, 922(%rsp)
	movw	%cx, 924(%rsp)
	movw	%dx, 926(%rsp)
	movw	$0, 928(%rsp)
	xorl	%eax, %eax
	movl	$8, %r14d
	movl	$6, %ebp
	movl	$1, %edi
	movl	$1, %ecx
	movl	$1, %edx
	xorl	%esi, %esi
	xorl	%ebx, %ebx
	jmp	.LBB15_24
.LBB15_20:                              # %lor.lhs.false.56
	movzbl	110(%r15), %eax
	movl	$1, %edi
	xorl	%ebp, %ebp
	movl	$8, %r14d
	cmpl	$255, %eax
	movl	$0, %ecx
	movl	$0, %eax
	movl	$0, %edx
	movl	$0, %esi
	movl	$0, %ebx
	jne	.LBB15_24
.LBB15_21:                              # %for.body.lr.ph
	movq	%rbp, 96(%rsp)          # 8-byte Spill
	movl	%r14d, 88(%rsp)         # 4-byte Spill
	movl	$1, %eax
	movl	112(%rsp), %ecx         # 4-byte Reload
	shll	%cl, %eax
	movl	%eax, 80(%rsp)          # 4-byte Spill
	movslq	%eax, %rbp
	leaq	146(%rsp), %r14
	xorl	%ebx, %ebx
	leaq	138(%rsp), %r13
	.align	16, 0x90
.LBB15_22:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	%r15, %rdi
	movq	%rbx, %rsi
	movq	%r13, %rdx
	callq	*1192(%r15)
	movzwl	138(%rsp), %eax
	imull	$65281, %eax, %eax      # imm = 0xFF01
	addl	$8388608, %eax          # imm = 0x800000
	shrl	$24, %eax
	movb	%al, -2(%r14)
	movzwl	140(%rsp), %eax
	imull	$65281, %eax, %eax      # imm = 0xFF01
	addl	$8388608, %eax          # imm = 0x800000
	shrl	$24, %eax
	movb	%al, -1(%r14)
	movzwl	142(%rsp), %eax
	imull	$65281, %eax, %eax      # imm = 0xFF01
	addl	$8388608, %eax          # imm = 0x800000
	shrl	$24, %eax
	movb	%al, (%r14)
	incq	%rbx
	addq	$3, %r14
	cmpq	%rbp, %rbx
	jl	.LBB15_22
# BB#23:                                # %for.end
	leaq	144(%rsp), %rsi
	movl	80(%rsp), %eax          # 4-byte Reload
	movzwl	%ax, %ebx
	xorl	%ecx, %ecx
	movq	96(%rsp), %rax          # 8-byte Reload
	movl	%eax, %edi
	movl	$3, %ebp
	xorl	%eax, %eax
	xorl	%edx, %edx
	movl	88(%rsp), %r14d         # 4-byte Reload
.LBB15_24:                              # %if.end.112
	movl	%edi, 60(%rsp)          # 4-byte Spill
	movq	%rbp, 96(%rsp)          # 8-byte Spill
	movl	%ebx, 36(%rsp)          # 4-byte Spill
	movq	%rsi, 64(%rsp)          # 8-byte Spill
	movl	%edx, 76(%rsp)          # 4-byte Spill
	movq	%rcx, 80(%rsp)          # 8-byte Spill
	movq	%rax, 88(%rsp)          # 8-byte Spill
	leaq	1248(%rsp), %r13
	movl	$.L.str.17, %esi
	movl	$80, %edx
	movq	%r13, %rdi
	callq	strncpy
	movq	gs_product(%rip), %r8
	movq	gs_revision(%rip), %rbp
	movabsq	$-6640827866535438581, %rcx # imm = 0xA3D70A3D70A3D70B
	movq	%rbp, %rax
	imulq	%rcx
	movq	%rdx, %rcx
	addq	%rbp, %rcx
	movq	%rcx, %rax
	shrq	$63, %rax
	shrq	$6, %rcx
	addl	%eax, %ecx
	imull	$100, %ecx, %eax
	subl	%eax, %ebp
	leaq	992(%rsp), %rbx
	movl	$.L.str.18, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdi
	movq	%r8, %rdx
	movl	%ebp, %r8d
	callq	gs_sprintf
	movl	$-1, 936(%rsp)
	movq	%r13, 944(%rsp)
	movq	%rbx, 952(%rsp)
	movq	%rbx, %rdi
	callq	strlen
	movq	%rax, 960(%rsp)
	cmpl	$0, 60(%rsp)            # 4-byte Folded Reload
	movl	$1, %eax
	movl	120(%rsp), %esi         # 4-byte Reload
	cmovel	%eax, %esi
	movl	%esi, 120(%rsp)         # 4-byte Spill
	movl	$8, %eax
	cmovel	%r14d, %eax
	movl	%eax, 60(%rsp)          # 4-byte Spill
	movl	832(%r15), %eax
	movl	836(%r15), %ecx
	cltd
	idivl	%esi
	movl	%eax, %ebx
	movl	%ecx, %eax
	cltd
	idivl	%esi
	movl	%eax, %r13d
	movq	1336(%rsp), %rdi
	movq	1328(%rsp), %rsi
	movl	$1, %r8d
	movq	48(%rsp), %rdx          # 8-byte Reload
	movq	40(%rsp), %rcx          # 8-byte Reload
	callq	png_set_pHYs
	movq	1336(%rsp), %rdi
	movq	1328(%rsp), %rsi
	movl	$0, 16(%rsp)
	movl	$0, 8(%rsp)
	movl	$0, (%rsp)
	movl	%ebx, %edx
	movl	%r13d, %ecx
	movl	%r14d, %r8d
	movq	96(%rsp), %r9           # 8-byte Reload
	callq	png_set_IHDR
	movq	64(%rsp), %rdx          # 8-byte Reload
	testq	%rdx, %rdx
	je	.LBB15_26
# BB#25:                                # %if.then.137
	movq	1336(%rsp), %rdi
	movq	1328(%rsp), %rsi
	movl	36(%rsp), %ecx          # 4-byte Reload
	callq	png_set_PLTE
.LBB15_26:                              # %if.end.139
	movq	1336(%rsp), %rdi
	movq	1328(%rsp), %rsi
	leaq	936(%rsp), %rdx
	movl	$1, %ecx
	callq	png_set_text
	cmpl	$0, 76(%rsp)            # 4-byte Folded Reload
	je	.LBB15_30
# BB#27:                                # %if.then.141
	movq	1336(%rsp), %rdi
	movl	112(%rsp), %eax         # 4-byte Reload
	cmpl	$32, %eax
	jne	.LBB15_29
# BB#28:                                # %if.then.144
	callq	png_set_invert_alpha
	jmp	.LBB15_30
.LBB15_29:                              # %if.else.145
	callq	png_set_invert_mono
.LBB15_30:                              # %if.end.147
	movq	80(%rsp), %rax          # 8-byte Reload
	testl	%eax, %eax
	je	.LBB15_32
# BB#31:                                # %if.then.149
	movq	1336(%rsp), %rdi
	movq	1328(%rsp), %rsi
	leaq	920(%rsp), %rdx
	callq	png_set_bKGD
.LBB15_32:                              # %if.end.150
	movq	88(%rsp), %rax          # 8-byte Reload
	testl	%eax, %eax
	je	.LBB15_34
# BB#33:                                # %if.then.152
	movq	1336(%rsp), %rdi
	callq	png_set_swap
.LBB15_34:                              # %if.end.153
	movq	1336(%rsp), %rdi
	movq	1328(%rsp), %rsi
	callq	png_write_info
	xorl	%ebx, %ebx
	xorl	%edx, %edx
	movl	112(%rsp), %eax         # 4-byte Reload
	divl	%r14d
	movl	108(%rsp), %ecx         # 4-byte Reload
	movl	%ecx, (%rsp)
	movl	$0, 16(%rsp)
	movq	$0, 8(%rsp)
	leaq	1352(%rsp), %rdi
	movq	%r15, %rsi
	movl	60(%rsp), %edx          # 4-byte Reload
	movl	%r14d, %ecx
	movl	%eax, %r8d
	movl	120(%rsp), %r9d         # 4-byte Reload
	callq	gx_downscaler_init
	movl	%eax, %r14d
	testl	%r14d, %r14d
	js	.LBB15_39
# BB#35:                                # %for.cond.159.preheader
	testl	%r13d, %r13d
	je	.LBB15_38
# BB#36:
	leaq	1352(%rsp), %r15
	leaq	1344(%rsp), %rbp
	.align	16, 0x90
.LBB15_37:                              # %for.body.162
                                        # =>This Inner Loop Header: Depth=1
	movq	1344(%rsp), %rdx
	movq	%r15, %rdi
	movl	%ebx, %esi
	movl	%r12d, %ecx
	callq	gx_downscaler_copy_scan_lines
	movq	1336(%rsp), %rdi
	movl	$1, %edx
	movq	%rbp, %rsi
	callq	png_write_rows
	incl	%ebx
	cmpl	%ebx, %r13d
	jne	.LBB15_37
.LBB15_38:                              # %for.end.166
	leaq	1352(%rsp), %rdi
	callq	gx_downscaler_fin
.LBB15_39:                              # %if.end.167
	movq	1336(%rsp), %rdi
	movq	1328(%rsp), %rsi
	callq	png_write_end
.LBB15_40:                              # %done
	leaq	1336(%rsp), %rdi
	leaq	1328(%rsp), %rsi
	callq	png_destroy_write_struct
	movq	1344(%rsp), %rsi
	movl	$.L.str.15, %edx
	movq	128(%rsp), %rdi         # 8-byte Reload
	callq	*24(%rdi)
	movl	%r14d, %eax
	addq	$1976, %rsp             # imm = 0x7B8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end15:
	.size	do_png_print_page, .Lfunc_end15-do_png_print_page
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"pngmono"
	.size	.L.str, 8

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"DeviceGray"
	.size	.L.str.1, 11

	.type	gs_pngmono_device,@object # @gs_pngmono_device
	.section	.rodata,"a",@progbits
	.globl	gs_pngmono_device
	.align	8
gs_pngmono_device:
	.long	18480                   # 0x4830
	.zero	4
	.quad	prn_bg_procs
	.quad	.L.str
	.quad	0
	.quad	st_device_printer
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.zero	24
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.short	1                       # 0x1
	.byte	0                       # 0x0
	.zero	1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	4294967295              # 0xffffffff
	.zero	64
	.zero	64
	.zero	4
	.zero	512
	.quad	.L.str.1
	.long	4294967295              # 0xffffffff
	.zero	4
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	-1                      # 0xffffffffffffffff
	.quad	-1                      # 0xffffffffffffffff
	.long	612                     # 0x264
	.long	792                     # 0x318
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1142489088              # float 6.120000e+02
	.long	1145438208              # float 7.920000e+02
	.zero	16
	.long	0                       # 0x0
	.long	1116733440              # float 7.200000e+01
	.long	1116733440              # float 7.200000e+01
	.long	1116733440              # float 7.200000e+01
	.long	1116733440              # float 7.200000e+01
	.zero	8
	.zero	16
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.zero	68
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	10000000                # 0x989680
	.quad	4000000                 # 0x3d0900
	.zero	16
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	gx_default_install
	.quad	gx_default_begin_page
	.quad	gx_default_end_page
	.zero	584
	.zero	11240
	.quad	png_print_page
	.quad	gx_default_print_page_copies
	.quad	gx_default_create_buf_device
	.quad	gx_default_size_buf_device
	.quad	gx_default_setup_buf_device
	.quad	gx_default_destroy_buf_device
	.quad	gx_default_get_space_params
	.quad	gx_default_start_render_thread
	.quad	gx_default_open_render_device
	.quad	gx_default_close_render_device
	.quad	gx_default_buffer_page
	.zero	4096
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	4294967295              # 0xffffffff
	.long	0                       # 0x0
	.quad	0
	.quad	0                       # 0x0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	32
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.zero	584
	.zero	584
	.long	1                       # 0x1
	.long	0                       # 0x0
	.size	gs_pngmono_device, 18480

	.type	png16_procs,@object     # @png16_procs
	.align	8
png16_procs:
	.quad	gdev_prn_open
	.quad	0
	.quad	0
	.quad	gdev_prn_bg_output_page
	.quad	gdev_prn_close
	.quad	pc_4bit_map_rgb_color
	.quad	pc_4bit_map_color_rgb
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gdev_prn_get_params
	.quad	gdev_prn_put_params
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gx_page_device_get_page_device
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gdev_prn_dev_spec_op
	.quad	0
	.quad	gx_default_get_profile
	.quad	gx_default_set_graphics_type_tag
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.size	png16_procs, 584

	.type	.L.str.2,@object        # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"png16"
	.size	.L.str.2, 6

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"DeviceRGB"
	.size	.L.str.3, 10

	.type	gs_png16_device,@object # @gs_png16_device
	.section	.rodata,"a",@progbits
	.globl	gs_png16_device
	.align	8
gs_png16_device:
	.long	18480                   # 0x4830
	.zero	4
	.quad	png16_procs
	.quad	.L.str.2
	.quad	0
	.quad	st_device_printer
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.zero	24
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	1                       # 0x1
	.short	4                       # 0x4
	.byte	255                     # 0xff
	.zero	1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	4294967295              # 0xffffffff
	.zero	64
	.zero	64
	.zero	4
	.zero	512
	.quad	.L.str.3
	.long	4294967295              # 0xffffffff
	.zero	4
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	-1                      # 0xffffffffffffffff
	.quad	-1                      # 0xffffffffffffffff
	.long	612                     # 0x264
	.long	792                     # 0x318
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1142489088              # float 6.120000e+02
	.long	1145438208              # float 7.920000e+02
	.zero	16
	.long	0                       # 0x0
	.long	1116733440              # float 7.200000e+01
	.long	1116733440              # float 7.200000e+01
	.long	1116733440              # float 7.200000e+01
	.long	1116733440              # float 7.200000e+01
	.zero	8
	.zero	16
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.zero	68
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	10000000                # 0x989680
	.quad	4000000                 # 0x3d0900
	.zero	16
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	gx_default_install
	.quad	gx_default_begin_page
	.quad	gx_default_end_page
	.zero	584
	.zero	11240
	.quad	png_print_page
	.quad	gx_default_print_page_copies
	.quad	gx_default_create_buf_device
	.quad	gx_default_size_buf_device
	.quad	gx_default_setup_buf_device
	.quad	gx_default_destroy_buf_device
	.quad	gx_default_get_space_params
	.quad	gx_default_start_render_thread
	.quad	gx_default_open_render_device
	.quad	gx_default_close_render_device
	.quad	gx_default_buffer_page
	.zero	4096
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	4294967295              # 0xffffffff
	.long	0                       # 0x0
	.quad	0
	.quad	0                       # 0x0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	32
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.zero	584
	.zero	584
	.long	1                       # 0x1
	.long	0                       # 0x0
	.size	gs_png16_device, 18480

	.type	png256_procs,@object    # @png256_procs
	.align	8
png256_procs:
	.quad	gdev_prn_open
	.quad	0
	.quad	0
	.quad	gdev_prn_bg_output_page
	.quad	gdev_prn_close
	.quad	pc_8bit_map_rgb_color
	.quad	pc_8bit_map_color_rgb
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gdev_prn_get_params
	.quad	gdev_prn_put_params
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gx_page_device_get_page_device
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gdev_prn_dev_spec_op
	.quad	0
	.quad	gx_default_get_profile
	.quad	gx_default_set_graphics_type_tag
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.size	png256_procs, 584

	.type	.L.str.4,@object        # @.str.4
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.4:
	.asciz	"png256"
	.size	.L.str.4, 7

	.type	gs_png256_device,@object # @gs_png256_device
	.section	.rodata,"a",@progbits
	.globl	gs_png256_device
	.align	8
gs_png256_device:
	.long	18480                   # 0x4830
	.zero	4
	.quad	png256_procs
	.quad	.L.str.4
	.quad	0
	.quad	st_device_printer
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.zero	24
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	1                       # 0x1
	.short	8                       # 0x8
	.byte	255                     # 0xff
	.zero	1
	.long	5                       # 0x5
	.long	5                       # 0x5
	.long	6                       # 0x6
	.long	6                       # 0x6
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	4294967295              # 0xffffffff
	.zero	64
	.zero	64
	.zero	4
	.zero	512
	.quad	.L.str.3
	.long	4294967295              # 0xffffffff
	.zero	4
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	-1                      # 0xffffffffffffffff
	.quad	-1                      # 0xffffffffffffffff
	.long	612                     # 0x264
	.long	792                     # 0x318
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1142489088              # float 6.120000e+02
	.long	1145438208              # float 7.920000e+02
	.zero	16
	.long	0                       # 0x0
	.long	1116733440              # float 7.200000e+01
	.long	1116733440              # float 7.200000e+01
	.long	1116733440              # float 7.200000e+01
	.long	1116733440              # float 7.200000e+01
	.zero	8
	.zero	16
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.zero	68
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	10000000                # 0x989680
	.quad	4000000                 # 0x3d0900
	.zero	16
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	gx_default_install
	.quad	gx_default_begin_page
	.quad	gx_default_end_page
	.zero	584
	.zero	11240
	.quad	png_print_page
	.quad	gx_default_print_page_copies
	.quad	gx_default_create_buf_device
	.quad	gx_default_size_buf_device
	.quad	gx_default_setup_buf_device
	.quad	gx_default_destroy_buf_device
	.quad	gx_default_get_space_params
	.quad	gx_default_start_render_thread
	.quad	gx_default_open_render_device
	.quad	gx_default_close_render_device
	.quad	gx_default_buffer_page
	.zero	4096
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	4294967295              # 0xffffffff
	.long	0                       # 0x0
	.quad	0
	.quad	0                       # 0x0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	32
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.zero	584
	.zero	584
	.long	1                       # 0x1
	.long	0                       # 0x0
	.size	gs_png256_device, 18480

	.type	pnggray_procs,@object   # @pnggray_procs
	.align	8
pnggray_procs:
	.quad	gdev_prn_open
	.quad	0
	.quad	0
	.quad	gdev_prn_bg_output_page
	.quad	gdev_prn_close
	.quad	gx_default_gray_map_rgb_color
	.quad	gx_default_gray_map_color_rgb
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	png_get_params_downscale
	.quad	png_put_params_downscale
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gx_page_device_get_page_device
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gdev_prn_dev_spec_op
	.quad	0
	.quad	gx_default_get_profile
	.quad	gx_default_set_graphics_type_tag
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.size	pnggray_procs, 584

	.type	.L.str.5,@object        # @.str.5
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.5:
	.asciz	"pnggray"
	.size	.L.str.5, 8

	.type	gs_pnggray_device,@object # @gs_pnggray_device
	.section	.rodata,"a",@progbits
	.globl	gs_pnggray_device
	.align	8
gs_pnggray_device:
	.long	18480                   # 0x4830
	.zero	4
	.quad	pnggray_procs
	.quad	.L.str.5
	.quad	0
	.quad	st_device_printer
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.zero	24
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.short	8                       # 0x8
	.byte	0                       # 0x0
	.zero	1
	.long	255                     # 0xff
	.long	0                       # 0x0
	.long	256                     # 0x100
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	4294967295              # 0xffffffff
	.zero	64
	.zero	64
	.zero	4
	.zero	512
	.quad	.L.str.1
	.long	4294967295              # 0xffffffff
	.zero	4
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	-1                      # 0xffffffffffffffff
	.quad	-1                      # 0xffffffffffffffff
	.long	612                     # 0x264
	.long	792                     # 0x318
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1142489088              # float 6.120000e+02
	.long	1145438208              # float 7.920000e+02
	.zero	16
	.long	0                       # 0x0
	.long	1116733440              # float 7.200000e+01
	.long	1116733440              # float 7.200000e+01
	.long	1116733440              # float 7.200000e+01
	.long	1116733440              # float 7.200000e+01
	.zero	8
	.zero	16
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.zero	68
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	10000000                # 0x989680
	.quad	4000000                 # 0x3d0900
	.zero	16
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	gx_default_install
	.quad	gx_default_begin_page
	.quad	gx_default_end_page
	.zero	584
	.zero	11240
	.quad	png_print_page
	.quad	gx_default_print_page_copies
	.quad	gx_default_create_buf_device
	.quad	gx_default_size_buf_device
	.quad	gx_default_setup_buf_device
	.quad	gx_default_destroy_buf_device
	.quad	gx_default_get_space_params
	.quad	gx_default_start_render_thread
	.quad	gx_default_open_render_device
	.quad	gx_default_close_render_device
	.quad	gx_default_buffer_page
	.zero	4096
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	4294967295              # 0xffffffff
	.long	0                       # 0x0
	.quad	0
	.quad	0                       # 0x0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	32
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.zero	584
	.zero	584
	.long	1                       # 0x1
	.long	0                       # 0x0
	.size	gs_pnggray_device, 18480

	.type	pngmonod_procs,@object  # @pngmonod_procs
	.align	8
pngmonod_procs:
	.quad	gdev_prn_open
	.quad	0
	.quad	0
	.quad	gdev_prn_bg_output_page
	.quad	gdev_prn_close
	.quad	gx_default_gray_map_rgb_color
	.quad	gx_default_gray_map_color_rgb
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	png_get_params_downscale_mfs
	.quad	png_put_params_downscale_mfs
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gx_page_device_get_page_device
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gdev_prn_dev_spec_op
	.quad	0
	.quad	gx_default_get_profile
	.quad	gx_default_set_graphics_type_tag
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.size	pngmonod_procs, 584

	.type	.L.str.6,@object        # @.str.6
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.6:
	.asciz	"pngmonod"
	.size	.L.str.6, 9

	.type	gs_pngmonod_device,@object # @gs_pngmonod_device
	.section	.rodata,"a",@progbits
	.globl	gs_pngmonod_device
	.align	8
gs_pngmonod_device:
	.long	18480                   # 0x4830
	.zero	4
	.quad	pngmonod_procs
	.quad	.L.str.6
	.quad	0
	.quad	st_device_printer
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.zero	24
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	1                       # 0x1
	.short	8                       # 0x8
	.byte	0                       # 0x0
	.zero	1
	.long	255                     # 0xff
	.long	0                       # 0x0
	.long	256                     # 0x100
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	4294967295              # 0xffffffff
	.zero	64
	.zero	64
	.zero	4
	.zero	512
	.quad	.L.str.1
	.long	4294967295              # 0xffffffff
	.zero	4
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	-1                      # 0xffffffffffffffff
	.quad	-1                      # 0xffffffffffffffff
	.long	612                     # 0x264
	.long	792                     # 0x318
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1142489088              # float 6.120000e+02
	.long	1145438208              # float 7.920000e+02
	.zero	16
	.long	0                       # 0x0
	.long	1116733440              # float 7.200000e+01
	.long	1116733440              # float 7.200000e+01
	.long	1116733440              # float 7.200000e+01
	.long	1116733440              # float 7.200000e+01
	.zero	8
	.zero	16
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.zero	68
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	10000000                # 0x989680
	.quad	4000000                 # 0x3d0900
	.zero	16
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	gx_default_install
	.quad	gx_default_begin_page
	.quad	gx_default_end_page
	.zero	584
	.zero	11240
	.quad	png_print_page_monod
	.quad	gx_default_print_page_copies
	.quad	gx_default_create_buf_device
	.quad	gx_default_size_buf_device
	.quad	gx_default_setup_buf_device
	.quad	gx_default_destroy_buf_device
	.quad	gx_default_get_space_params
	.quad	gx_default_start_render_thread
	.quad	gx_default_open_render_device
	.quad	gx_default_close_render_device
	.quad	gx_default_buffer_page
	.zero	4096
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	4294967295              # 0xffffffff
	.long	0                       # 0x0
	.quad	0
	.quad	0                       # 0x0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	32
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.zero	584
	.zero	584
	.long	1                       # 0x1
	.long	0                       # 0x0
	.size	gs_pngmonod_device, 18480

	.type	png16m_procs,@object    # @png16m_procs
	.align	8
png16m_procs:
	.quad	gdev_prn_open
	.quad	0
	.quad	0
	.quad	gdev_prn_bg_output_page
	.quad	gdev_prn_close
	.quad	gx_default_rgb_map_rgb_color
	.quad	gx_default_rgb_map_color_rgb
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	png_get_params_downscale
	.quad	png_put_params_downscale
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gx_page_device_get_page_device
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gdev_prn_dev_spec_op
	.quad	0
	.quad	gx_default_get_profile
	.quad	gx_default_set_graphics_type_tag
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.size	png16m_procs, 584

	.type	.L.str.7,@object        # @.str.7
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.7:
	.asciz	"png16m"
	.size	.L.str.7, 7

	.type	gs_png16m_device,@object # @gs_png16m_device
	.section	.rodata,"a",@progbits
	.globl	gs_png16m_device
	.align	8
gs_png16m_device:
	.long	18480                   # 0x4830
	.zero	4
	.quad	png16m_procs
	.quad	.L.str.7
	.quad	0
	.quad	st_device_printer
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.zero	24
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	1                       # 0x1
	.short	24                      # 0x18
	.byte	255                     # 0xff
	.zero	1
	.long	255                     # 0xff
	.long	255                     # 0xff
	.long	256                     # 0x100
	.long	256                     # 0x100
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	4294967295              # 0xffffffff
	.zero	64
	.zero	64
	.zero	4
	.zero	512
	.quad	.L.str.3
	.long	4294967295              # 0xffffffff
	.zero	4
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	-1                      # 0xffffffffffffffff
	.quad	-1                      # 0xffffffffffffffff
	.long	612                     # 0x264
	.long	792                     # 0x318
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1142489088              # float 6.120000e+02
	.long	1145438208              # float 7.920000e+02
	.zero	16
	.long	0                       # 0x0
	.long	1116733440              # float 7.200000e+01
	.long	1116733440              # float 7.200000e+01
	.long	1116733440              # float 7.200000e+01
	.long	1116733440              # float 7.200000e+01
	.zero	8
	.zero	16
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.zero	68
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	10000000                # 0x989680
	.quad	4000000                 # 0x3d0900
	.zero	16
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	gx_default_install
	.quad	gx_default_begin_page
	.quad	gx_default_end_page
	.zero	584
	.zero	11240
	.quad	png_print_page
	.quad	gx_default_print_page_copies
	.quad	gx_default_create_buf_device
	.quad	gx_default_size_buf_device
	.quad	gx_default_setup_buf_device
	.quad	gx_default_destroy_buf_device
	.quad	gx_default_get_space_params
	.quad	gx_default_start_render_thread
	.quad	gx_default_open_render_device
	.quad	gx_default_close_render_device
	.quad	gx_default_buffer_page
	.zero	4096
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	4294967295              # 0xffffffff
	.long	0                       # 0x0
	.quad	0
	.quad	0                       # 0x0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	32
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.zero	584
	.zero	584
	.long	1                       # 0x1
	.long	0                       # 0x0
	.size	gs_png16m_device, 18480

	.type	png48_procs,@object     # @png48_procs
	.align	8
png48_procs:
	.quad	gdev_prn_open
	.quad	0
	.quad	0
	.quad	gdev_prn_bg_output_page
	.quad	gdev_prn_close
	.quad	gx_default_rgb_map_rgb_color
	.quad	gx_default_rgb_map_color_rgb
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gdev_prn_get_params
	.quad	gdev_prn_put_params
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gx_page_device_get_page_device
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gdev_prn_dev_spec_op
	.quad	0
	.quad	gx_default_get_profile
	.quad	gx_default_set_graphics_type_tag
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.size	png48_procs, 584

	.type	.L.str.8,@object        # @.str.8
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.8:
	.asciz	"png48"
	.size	.L.str.8, 6

	.type	gs_png48_device,@object # @gs_png48_device
	.section	.rodata,"a",@progbits
	.globl	gs_png48_device
	.align	8
gs_png48_device:
	.long	18480                   # 0x4830
	.zero	4
	.quad	png48_procs
	.quad	.L.str.8
	.quad	0
	.quad	st_device_printer
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.zero	24
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	1                       # 0x1
	.short	48                      # 0x30
	.byte	255                     # 0xff
	.zero	1
	.long	0                       # 0x0
	.long	65535                   # 0xffff
	.long	1                       # 0x1
	.long	65536                   # 0x10000
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	4294967295              # 0xffffffff
	.zero	64
	.zero	64
	.zero	4
	.zero	512
	.quad	.L.str.3
	.long	4294967295              # 0xffffffff
	.zero	4
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	-1                      # 0xffffffffffffffff
	.quad	-1                      # 0xffffffffffffffff
	.long	612                     # 0x264
	.long	792                     # 0x318
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1142489088              # float 6.120000e+02
	.long	1145438208              # float 7.920000e+02
	.zero	16
	.long	0                       # 0x0
	.long	1116733440              # float 7.200000e+01
	.long	1116733440              # float 7.200000e+01
	.long	1116733440              # float 7.200000e+01
	.long	1116733440              # float 7.200000e+01
	.zero	8
	.zero	16
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.zero	68
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	10000000                # 0x989680
	.quad	4000000                 # 0x3d0900
	.zero	16
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	gx_default_install
	.quad	gx_default_begin_page
	.quad	gx_default_end_page
	.zero	584
	.zero	11240
	.quad	png_print_page
	.quad	gx_default_print_page_copies
	.quad	gx_default_create_buf_device
	.quad	gx_default_size_buf_device
	.quad	gx_default_setup_buf_device
	.quad	gx_default_destroy_buf_device
	.quad	gx_default_get_space_params
	.quad	gx_default_start_render_thread
	.quad	gx_default_open_render_device
	.quad	gx_default_close_render_device
	.quad	gx_default_buffer_page
	.zero	4096
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	4294967295              # 0xffffffff
	.long	0                       # 0x0
	.quad	0
	.quad	0                       # 0x0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	32
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.zero	584
	.zero	584
	.long	1                       # 0x1
	.long	0                       # 0x0
	.size	gs_png48_device, 18480

	.type	pngalpha_procs,@object  # @pngalpha_procs
	.align	8
pngalpha_procs:
	.quad	pngalpha_open
	.quad	0
	.quad	0
	.quad	gdev_prn_bg_output_page
	.quad	gdev_prn_close
	.quad	pngalpha_encode_color
	.quad	pngalpha_decode_color
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	pngalpha_get_params
	.quad	pngalpha_put_params
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gx_page_device_get_page_device
	.quad	0
	.quad	pngalpha_copy_alpha
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	gx_default_DevRGB_get_color_mapping_procs
	.quad	gx_default_DevRGB_get_color_comp_index
	.quad	pngalpha_encode_color
	.quad	pngalpha_decode_color
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	pngalpha_fillpage
	.quad	0
	.quad	0
	.quad	pngalpha_put_image
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.size	pngalpha_procs, 584

	.type	.L.str.9,@object        # @.str.9
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.9:
	.asciz	"pngalpha"
	.size	.L.str.9, 9

	.type	gs_pngalpha_device,@object # @gs_pngalpha_device
	.section	.rodata,"a",@progbits
	.globl	gs_pngalpha_device
	.align	8
gs_pngalpha_device:
	.long	18488                   # 0x4838
	.zero	4
	.quad	pngalpha_procs
	.quad	.L.str.9
	.quad	0
	.quad	st_device_printer
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.zero	24
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	1                       # 0x1
	.short	32                      # 0x20
	.byte	255                     # 0xff
	.zero	1
	.long	255                     # 0xff
	.long	255                     # 0xff
	.long	256                     # 0x100
	.long	256                     # 0x100
	.long	4                       # 0x4
	.long	4                       # 0x4
	.long	0                       # 0x0
	.zero	64
	.zero	64
	.zero	4
	.zero	512
	.quad	.L.str.3
	.long	4294967295              # 0xffffffff
	.zero	4
	.quad	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	-1                      # 0xffffffffffffffff
	.quad	-1                      # 0xffffffffffffffff
	.long	612                     # 0x264
	.long	792                     # 0x318
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	1142489088              # float 6.120000e+02
	.long	1145438208              # float 7.920000e+02
	.zero	16
	.long	0                       # 0x0
	.long	1116733440              # float 7.200000e+01
	.long	1116733440              # float 7.200000e+01
	.long	1116733440              # float 7.200000e+01
	.long	1116733440              # float 7.200000e+01
	.zero	8
	.zero	16
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	0                       # 0x0
	.quad	0                       # 0x0
	.zero	68
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	4
	.quad	10000000                # 0x989680
	.quad	4000000                 # 0x3d0900
	.zero	16
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	gx_default_install
	.quad	gx_default_begin_page
	.quad	gx_default_end_page
	.zero	584
	.zero	11240
	.quad	png_print_page
	.quad	gx_default_print_page_copies
	.quad	gx_default_create_buf_device
	.quad	gx_default_size_buf_device
	.quad	gx_default_setup_buf_device
	.quad	gx_default_destroy_buf_device
	.quad	gx_default_get_space_params
	.quad	gx_default_start_render_thread
	.quad	gx_default_open_render_device
	.quad	gx_default_close_render_device
	.quad	gx_default_buffer_page
	.zero	4096
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.long	4294967295              # 0xffffffff
	.long	0                       # 0x0
	.quad	0
	.quad	0                       # 0x0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.quad	0
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.long	0                       # 0x0
	.long	0                       # 0x0
	.zero	32
	.long	0                       # 0x0
	.zero	4
	.quad	0
	.zero	584
	.zero	584
	.long	1                       # 0x1
	.long	0                       # 0x0
	.long	16777215                # 0xffffff
	.zero	4
	.size	gs_pngalpha_device, 18488

	.type	.L.str.10,@object       # @.str.10
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.10:
	.asciz	"DownScaleFactor"
	.size	.L.str.10, 16

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"MinFeatureSize"
	.size	.L.str.11, 15

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"BackgroundColor"
	.size	.L.str.12, 16

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"copy_alpha(lin)"
	.size	.L.str.13, 16

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"copy_alpha(lout)"
	.size	.L.str.14, 17

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"png raster buffer"
	.size	.L.str.15, 18

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"1.5.13"
	.size	.L.str.16, 7

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"Software"
	.size	.L.str.17, 9

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"%s %d.%02d"
	.size	.L.str.18, 11


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
