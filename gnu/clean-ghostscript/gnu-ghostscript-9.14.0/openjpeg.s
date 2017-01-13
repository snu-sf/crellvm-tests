	.text
	.file	"openjpeg.bc"
	.globl	opj_set_info_handler
	.align	16, 0x90
	.type	opj_set_info_handler,@function
opj_set_info_handler:                   # @opj_set_info_handler
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	testq	%rdi, %rdi
	je	.LBB0_2
# BB#1:                                 # %if.end
	movq	%rsi, 128(%rdi)
	movq	%rdx, 104(%rdi)
	movl	$1, %eax
.LBB0_2:                                # %cleanup
	retq
.Lfunc_end0:
	.size	opj_set_info_handler, .Lfunc_end0-opj_set_info_handler
	.cfi_endproc

	.globl	opj_set_warning_handler
	.align	16, 0x90
	.type	opj_set_warning_handler,@function
opj_set_warning_handler:                # @opj_set_warning_handler
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	testq	%rdi, %rdi
	je	.LBB1_2
# BB#1:                                 # %if.end
	movq	%rsi, 120(%rdi)
	movq	%rdx, 96(%rdi)
	movl	$1, %eax
.LBB1_2:                                # %cleanup
	retq
.Lfunc_end1:
	.size	opj_set_warning_handler, .Lfunc_end1-opj_set_warning_handler
	.cfi_endproc

	.globl	opj_set_error_handler
	.align	16, 0x90
	.type	opj_set_error_handler,@function
opj_set_error_handler:                  # @opj_set_error_handler
	.cfi_startproc
# BB#0:                                 # %entry
	xorl	%eax, %eax
	testq	%rdi, %rdi
	je	.LBB2_2
# BB#1:                                 # %if.end
	movq	%rsi, 112(%rdi)
	movq	%rdx, 88(%rdi)
	movl	$1, %eax
.LBB2_2:                                # %cleanup
	retq
.Lfunc_end2:
	.size	opj_set_error_handler, .Lfunc_end2-opj_set_error_handler
	.cfi_endproc

	.globl	opj_version
	.align	16, 0x90
	.type	opj_version,@function
opj_version:                            # @opj_version
	.cfi_startproc
# BB#0:                                 # %entry
	movl	$.L.str, %eax
	retq
.Lfunc_end3:
	.size	opj_version, .Lfunc_end3-opj_version
	.cfi_endproc

	.globl	opj_create_decompress
	.align	16, 0x90
	.type	opj_create_decompress,@function
opj_create_decompress:                  # @opj_create_decompress
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp0:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp1:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp2:
	.cfi_def_cfa_offset 32
.Ltmp3:
	.cfi_offset %rbx, -24
.Ltmp4:
	.cfi_offset %rbp, -16
	movl	%edi, %ebp
	movl	$1, %edi
	movl	$168, %esi
	callq	calloc
	movq	%rax, %rbx
	xorl	%eax, %eax
	testq	%rbx, %rbx
	je	.LBB4_8
# BB#1:                                 # %if.end
	xorl	%esi, %esi
	movl	$168, %edx
	movq	%rbx, %rdi
	callq	memset
	movl	$1, 136(%rbx)
	cmpl	$2, %ebp
	jne	.LBB4_2
# BB#6:                                 # %sw.bb.25
	movq	$jp2_dump, 144(%rbx)
	movq	$jp2_get_cstr_info, 152(%rbx)
	movq	$jp2_get_cstr_index, 160(%rbx)
	movq	$opj_jp2_decode, 8(%rbx)
	movq	$opj_jp2_end_decompress, 32(%rbx)
	movq	$opj_jp2_read_header, (%rbx)
	movq	$opj_jp2_read_tile_header, 16(%rbx)
	movq	$opj_jp2_decode_tile, 24(%rbx)
	movq	$opj_jp2_destroy, 40(%rbx)
	movq	$opj_jp2_setup_decoder, 48(%rbx)
	movq	$opj_jp2_set_decode_area, 56(%rbx)
	movq	$opj_jp2_get_tile, 64(%rbx)
	movq	$opj_jp2_set_decoded_resolution_factor, 72(%rbx)
	movl	$1, %edi
	callq	opj_jp2_create
	jmp	.LBB4_4
.LBB4_2:                                # %if.end
	testl	%ebp, %ebp
	jne	.LBB4_5
# BB#3:                                 # %sw.bb
	movq	$j2k_dump, 144(%rbx)
	movq	$j2k_get_cstr_info, 152(%rbx)
	movq	$j2k_get_cstr_index, 160(%rbx)
	movq	$opj_j2k_decode, 8(%rbx)
	movq	$opj_j2k_end_decompress, 32(%rbx)
	movq	$opj_j2k_read_header, (%rbx)
	movq	$opj_j2k_destroy, 40(%rbx)
	movq	$opj_j2k_setup_decoder, 48(%rbx)
	movq	$opj_j2k_read_tile_header, 16(%rbx)
	movq	$opj_j2k_decode_tile, 24(%rbx)
	movq	$opj_j2k_set_decode_area, 56(%rbx)
	movq	$opj_j2k_get_tile, 64(%rbx)
	movq	$opj_j2k_set_decoded_resolution_factor, 72(%rbx)
	callq	opj_j2k_create_decompress
.LBB4_4:                                # %sw.bb
	movq	%rax, 80(%rbx)
	testq	%rax, %rax
	je	.LBB4_5
# BB#7:                                 # %sw.epilog
	movq	%rbx, %rdi
	addq	$88, %rdi
	callq	opj_set_default_event_handler
	movq	%rbx, %rax
	jmp	.LBB4_8
.LBB4_5:                                # %if.then.23
	movq	%rbx, %rdi
	callq	free
	xorl	%eax, %eax
.LBB4_8:                                # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end4:
	.size	opj_create_decompress, .Lfunc_end4-opj_create_decompress
	.cfi_endproc

	.globl	opj_set_default_decoder_parameters
	.align	16, 0x90
	.type	opj_set_default_decoder_parameters,@function
opj_set_default_decoder_parameters:     # @opj_set_default_decoder_parameters
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp5:
	.cfi_def_cfa_offset 16
.Ltmp6:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	testq	%rbx, %rbx
	je	.LBB5_2
# BB#1:                                 # %if.then
	xorl	%esi, %esi
	movl	$8252, %edx             # imm = 0x203C
	movq	%rbx, %rdi
	callq	memset
	movq	$0, (%rbx)
	movq	$-1, 8200(%rbx)
	movl	$0, 8248(%rbx)
.LBB5_2:                                # %if.end
	popq	%rbx
	retq
.Lfunc_end5:
	.size	opj_set_default_decoder_parameters, .Lfunc_end5-opj_set_default_decoder_parameters
	.cfi_endproc

	.globl	opj_setup_decoder
	.align	16, 0x90
	.type	opj_setup_decoder,@function
opj_setup_decoder:                      # @opj_setup_decoder
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp7:
	.cfi_def_cfa_offset 16
.Ltmp8:
	.cfi_offset %rbx, -16
	movq	%rdi, %rcx
	xorl	%ebx, %ebx
	testq	%rcx, %rcx
	je	.LBB6_5
# BB#1:                                 # %entry
	testq	%rsi, %rsi
	je	.LBB6_5
# BB#2:                                 # %if.then
	cmpl	$0, 136(%rcx)
	je	.LBB6_3
# BB#4:                                 # %if.end
	movq	80(%rcx), %rdi
	callq	*48(%rcx)
	movl	$1, %ebx
	jmp	.LBB6_5
.LBB6_3:                                # %if.then.3
	addq	$88, %rcx
	xorl	%ebx, %ebx
	movl	$1, %esi
	movl	$.L.str.1, %edx
	xorl	%eax, %eax
	movq	%rcx, %rdi
	callq	opj_event_msg
.LBB6_5:                                # %return
	movl	%ebx, %eax
	popq	%rbx
	retq
.Lfunc_end6:
	.size	opj_setup_decoder, .Lfunc_end6-opj_setup_decoder
	.cfi_endproc

	.globl	opj_read_header
	.align	16, 0x90
	.type	opj_read_header,@function
opj_read_header:                        # @opj_read_header
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp9:
	.cfi_def_cfa_offset 16
	movq	%rsi, %rcx
	testq	%rdi, %rdi
	je	.LBB7_4
# BB#1:                                 # %entry
	testq	%rcx, %rcx
	je	.LBB7_4
# BB#2:                                 # %if.then
	cmpl	$0, 136(%rcx)
	je	.LBB7_3
# BB#5:                                 # %if.end
	movq	(%rcx), %rax
	movq	80(%rcx), %rsi
	addq	$88, %rcx
	popq	%r8
	jmpq	*%rax                   # TAILCALL
.LBB7_3:                                # %if.then.3
	addq	$88, %rcx
	movl	$1, %esi
	movl	$.L.str.2, %edx
	xorl	%eax, %eax
	movq	%rcx, %rdi
	callq	opj_event_msg
.LBB7_4:                                # %return
	xorl	%eax, %eax
	popq	%rdx
	retq
.Lfunc_end7:
	.size	opj_read_header, .Lfunc_end7-opj_read_header
	.cfi_endproc

	.globl	opj_decode
	.align	16, 0x90
	.type	opj_decode,@function
opj_decode:                             # @opj_decode
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rdi, %rax
	testq	%rax, %rax
	je	.LBB8_3
# BB#1:                                 # %entry
	testq	%rsi, %rsi
	je	.LBB8_3
# BB#2:                                 # %if.then
	cmpl	$0, 136(%rax)
	je	.LBB8_3
# BB#4:                                 # %if.end
	movq	8(%rax), %r8
	movq	80(%rax), %rdi
	addq	$88, %rax
	movq	%rax, %rcx
	jmpq	*%r8                    # TAILCALL
.LBB8_3:                                # %return
	xorl	%eax, %eax
	retq
.Lfunc_end8:
	.size	opj_decode, .Lfunc_end8-opj_decode
	.cfi_endproc

	.globl	opj_set_decode_area
	.align	16, 0x90
	.type	opj_set_decode_area,@function
opj_set_decode_area:                    # @opj_set_decode_area
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp10:
	.cfi_def_cfa_offset 16
	movq	%rdi, %rax
	testq	%rax, %rax
	je	.LBB9_3
# BB#1:                                 # %if.then
	cmpl	$0, 136(%rax)
	je	.LBB9_3
# BB#2:                                 # %if.end
	movq	80(%rax), %rdi
	leaq	88(%rax), %r10
	movq	%r10, (%rsp)
	callq	*56(%rax)
	popq	%rdx
	retq
.LBB9_3:                                # %return
	xorl	%eax, %eax
	popq	%rdx
	retq
.Lfunc_end9:
	.size	opj_set_decode_area, .Lfunc_end9-opj_set_decode_area
	.cfi_endproc

	.globl	opj_read_tile_header
	.align	16, 0x90
	.type	opj_read_tile_header,@function
opj_read_tile_header:                   # @opj_read_tile_header
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp11:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp12:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp13:
	.cfi_def_cfa_offset 32
	subq	$48, %rsp
.Ltmp14:
	.cfi_def_cfa_offset 80
.Ltmp15:
	.cfi_offset %rbx, -32
.Ltmp16:
	.cfi_offset %r14, -24
.Ltmp17:
	.cfi_offset %r15, -16
	movq	%rdi, %rax
	testq	%rdx, %rdx
	je	.LBB10_6
# BB#1:                                 # %entry
	testq	%rax, %rax
	je	.LBB10_6
# BB#2:                                 # %entry
	testq	%rsi, %rsi
	je	.LBB10_6
# BB#3:                                 # %entry
	testq	%rcx, %rcx
	je	.LBB10_6
# BB#4:                                 # %if.then
	cmpl	$0, 136(%rax)
	je	.LBB10_6
# BB#5:                                 # %if.end
	movq	104(%rsp), %r11
	movq	96(%rsp), %r15
	movq	88(%rsp), %r14
	movq	80(%rsp), %r10
	movq	80(%rax), %rdi
	leaq	88(%rax), %rbx
	movq	%rbx, 32(%rsp)
	movq	%rsi, 24(%rsp)
	movq	%r11, 16(%rsp)
	movq	%r15, 8(%rsp)
	movq	%r14, (%rsp)
	movq	%rdx, %rsi
	movq	%rcx, %rdx
	movq	%r8, %rcx
	movq	%r9, %r8
	movq	%r10, %r9
	callq	*16(%rax)
	jmp	.LBB10_7
.LBB10_6:                               # %return
	xorl	%eax, %eax
.LBB10_7:                               # %return
	addq	$48, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end10:
	.size	opj_read_tile_header, .Lfunc_end10-opj_read_tile_header
	.cfi_endproc

	.globl	opj_decode_tile_data
	.align	16, 0x90
	.type	opj_decode_tile_data,@function
opj_decode_tile_data:                   # @opj_decode_tile_data
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rdi, %rax
	testq	%rax, %rax
	je	.LBB11_4
# BB#1:                                 # %entry
	testq	%rdx, %rdx
	je	.LBB11_4
# BB#2:                                 # %entry
	testq	%r8, %r8
	je	.LBB11_4
# BB#3:                                 # %if.then
	cmpl	$0, 136(%rax)
	je	.LBB11_4
# BB#5:                                 # %if.end
	movq	24(%rax), %r11
	movq	80(%rax), %rdi
	addq	$88, %rax
	movq	%rax, %r9
	jmpq	*%r11                   # TAILCALL
.LBB11_4:                               # %return
	xorl	%eax, %eax
	retq
.Lfunc_end11:
	.size	opj_decode_tile_data, .Lfunc_end11-opj_decode_tile_data
	.cfi_endproc

	.globl	opj_get_decoded_tile
	.align	16, 0x90
	.type	opj_get_decoded_tile,@function
opj_get_decoded_tile:                   # @opj_get_decoded_tile
	.cfi_startproc
# BB#0:                                 # %entry
	movl	%ecx, %eax
	movq	%rdi, %rcx
	testq	%rcx, %rcx
	je	.LBB12_3
# BB#1:                                 # %entry
	testq	%rsi, %rsi
	je	.LBB12_3
# BB#2:                                 # %if.then
	cmpl	$0, 136(%rcx)
	je	.LBB12_3
# BB#4:                                 # %if.end
	movq	64(%rcx), %r9
	movq	80(%rcx), %rdi
	addq	$88, %rcx
	movl	%eax, %r8d
	jmpq	*%r9                    # TAILCALL
.LBB12_3:                               # %return
	xorl	%eax, %eax
	retq
.Lfunc_end12:
	.size	opj_get_decoded_tile, .Lfunc_end12-opj_get_decoded_tile
	.cfi_endproc

	.globl	opj_set_decoded_resolution_factor
	.align	16, 0x90
	.type	opj_set_decoded_resolution_factor,@function
opj_set_decoded_resolution_factor:      # @opj_set_decoded_resolution_factor
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp18:
	.cfi_def_cfa_offset 16
.Ltmp19:
	.cfi_offset %rbx, -16
	movq	%rdi, %rax
	testq	%rax, %rax
	je	.LBB13_1
# BB#2:                                 # %if.end
	movq	80(%rax), %rdi
	leaq	88(%rax), %rdx
	callq	*72(%rax)
	movl	$1, %ebx
	jmp	.LBB13_3
.LBB13_1:                               # %if.then
	movq	stderr(%rip), %rdi
	xorl	%ebx, %ebx
	movl	$.L.str.3, %esi
	xorl	%eax, %eax
	callq	fprintf
.LBB13_3:                               # %cleanup
	movl	%ebx, %eax
	popq	%rbx
	retq
.Lfunc_end13:
	.size	opj_set_decoded_resolution_factor, .Lfunc_end13-opj_set_decoded_resolution_factor
	.cfi_endproc

	.globl	opj_create_compress
	.align	16, 0x90
	.type	opj_create_compress,@function
opj_create_compress:                    # @opj_create_compress
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp20:
	.cfi_def_cfa_offset 16
	pushq	%rbx
.Ltmp21:
	.cfi_def_cfa_offset 24
	pushq	%rax
.Ltmp22:
	.cfi_def_cfa_offset 32
.Ltmp23:
	.cfi_offset %rbx, -24
.Ltmp24:
	.cfi_offset %rbp, -16
	movl	%edi, %ebp
	movl	$1, %edi
	movl	$168, %esi
	callq	calloc
	movq	%rax, %rbx
	xorl	%eax, %eax
	testq	%rbx, %rbx
	je	.LBB14_8
# BB#1:                                 # %if.end
	xorl	%esi, %esi
	movl	$168, %edx
	movq	%rbx, %rdi
	callq	memset
	movl	$0, 136(%rbx)
	cmpl	$2, %ebp
	jne	.LBB14_2
# BB#6:                                 # %sw.bb.17
	movq	$opj_jp2_encode, 8(%rbx)
	movq	$opj_jp2_end_compress, 24(%rbx)
	movq	$opj_jp2_start_compress, (%rbx)
	movq	$opj_jp2_write_tile, 16(%rbx)
	movq	$opj_jp2_destroy, 32(%rbx)
	movq	$opj_jp2_setup_encoder, 40(%rbx)
	xorl	%edi, %edi
	callq	opj_jp2_create
	jmp	.LBB14_4
.LBB14_2:                               # %if.end
	testl	%ebp, %ebp
	jne	.LBB14_5
# BB#3:                                 # %sw.bb
	movq	$opj_j2k_encode, 8(%rbx)
	movq	$opj_j2k_end_compress, 24(%rbx)
	movq	$opj_j2k_start_compress, (%rbx)
	movq	$opj_j2k_write_tile, 16(%rbx)
	movq	$opj_j2k_destroy, 32(%rbx)
	movq	$opj_j2k_setup_encoder, 40(%rbx)
	callq	opj_j2k_create_compress
.LBB14_4:                               # %sw.bb
	movq	%rax, 80(%rbx)
	testq	%rax, %rax
	je	.LBB14_5
# BB#7:                                 # %sw.epilog
	movq	%rbx, %rdi
	addq	$88, %rdi
	callq	opj_set_default_event_handler
	movq	%rbx, %rax
	jmp	.LBB14_8
.LBB14_5:                               # %if.then.15
	movq	%rbx, %rdi
	callq	free
	xorl	%eax, %eax
.LBB14_8:                               # %cleanup
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end14:
	.size	opj_create_compress, .Lfunc_end14-opj_create_compress
	.cfi_endproc

	.section	.rodata.cst16,"aM",@progbits,16
	.align	16
.LCPI15_0:
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	4294967295              # 0xffffffff
	.long	4294967295              # 0xffffffff
	.text
	.globl	opj_set_default_encoder_parameters
	.align	16, 0x90
	.type	opj_set_default_encoder_parameters,@function
opj_set_default_encoder_parameters:     # @opj_set_default_encoder_parameters
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp25:
	.cfi_def_cfa_offset 16
.Ltmp26:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	testq	%rbx, %rbx
	je	.LBB15_2
# BB#1:                                 # %if.then
	xorl	%esi, %esi
	movl	$18712, %edx            # imm = 0x4918
	movq	%rbx, %rdi
	callq	memset
	movl	$0, 18684(%rbx)
	movl	$0, 18688(%rbx)
	movl	$6, 5600(%rbx)
	movl	$0, 18692(%rbx)
	movl	$64, 5604(%rbx)
	movl	$64, 5608(%rbx)
	movl	$0, 52(%rbx)
	movl	$-1, 5620(%rbx)
	movb	$0, 18696(%rbx)
	movaps	.LCPI15_0(%rip), %xmm0  # xmm0 = [1,1,4294967295,4294967295]
	movups	%xmm0, 18196(%rbx)
	movl	$0, 4800(%rbx)
	movl	$0, 4796(%rbx)
	movq	$0, 20(%rbx)
	movl	$0, 28(%rbx)
	movl	$0, 18700(%rbx)
.LBB15_2:                               # %if.end
	popq	%rbx
	retq
.Lfunc_end15:
	.size	opj_set_default_encoder_parameters, .Lfunc_end15-opj_set_default_encoder_parameters
	.cfi_endproc

	.globl	opj_setup_encoder
	.align	16, 0x90
	.type	opj_setup_encoder,@function
opj_setup_encoder:                      # @opj_setup_encoder
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp27:
	.cfi_def_cfa_offset 16
	movq	%rdi, %r8
	xorl	%eax, %eax
	testq	%r8, %r8
	je	.LBB16_5
# BB#1:                                 # %entry
	testq	%rsi, %rsi
	je	.LBB16_5
# BB#2:                                 # %entry
	testq	%rdx, %rdx
	je	.LBB16_5
# BB#3:                                 # %if.then
	cmpl	$0, 136(%r8)
	jne	.LBB16_5
# BB#4:                                 # %if.then.5
	movq	80(%r8), %rdi
	leaq	88(%r8), %rcx
	callq	*40(%r8)
	movl	$1, %eax
.LBB16_5:                               # %return
	popq	%rdx
	retq
.Lfunc_end16:
	.size	opj_setup_encoder, .Lfunc_end16-opj_setup_encoder
	.cfi_endproc

	.globl	opj_start_compress
	.align	16, 0x90
	.type	opj_start_compress,@function
opj_start_compress:                     # @opj_start_compress
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rsi, %rax
	movq	%rdi, %rcx
	testq	%rcx, %rcx
	je	.LBB17_3
# BB#1:                                 # %entry
	testq	%rdx, %rdx
	je	.LBB17_3
# BB#2:                                 # %if.then
	cmpl	$0, 136(%rcx)
	je	.LBB17_4
.LBB17_3:                               # %return
	xorl	%eax, %eax
	retq
.LBB17_4:                               # %cleanup
	movq	(%rcx), %r8
	movq	80(%rcx), %rdi
	addq	$88, %rcx
	movq	%rdx, %rsi
	movq	%rax, %rdx
	jmpq	*%r8                    # TAILCALL
.Lfunc_end17:
	.size	opj_start_compress, .Lfunc_end17-opj_start_compress
	.cfi_endproc

	.globl	opj_encode
	.align	16, 0x90
	.type	opj_encode,@function
opj_encode:                             # @opj_encode
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp28:
	.cfi_def_cfa_offset 16
	movq	%rdi, %rcx
	xorl	%eax, %eax
	testq	%rcx, %rcx
	je	.LBB18_4
# BB#1:                                 # %entry
	testq	%rsi, %rsi
	je	.LBB18_4
# BB#2:                                 # %if.then
	cmpl	$0, 136(%rcx)
	jne	.LBB18_4
# BB#3:                                 # %if.then.3
	movq	80(%rcx), %rdi
	leaq	88(%rcx), %rdx
	callq	*8(%rcx)
	movl	$1, %eax
.LBB18_4:                               # %return
	popq	%rdx
	retq
.Lfunc_end18:
	.size	opj_encode, .Lfunc_end18-opj_encode
	.cfi_endproc

	.globl	opj_end_compress
	.align	16, 0x90
	.type	opj_end_compress,@function
opj_end_compress:                       # @opj_end_compress
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rdi, %rax
	testq	%rax, %rax
	je	.LBB19_3
# BB#1:                                 # %entry
	testq	%rsi, %rsi
	je	.LBB19_3
# BB#2:                                 # %if.then
	cmpl	$0, 136(%rax)
	je	.LBB19_4
.LBB19_3:                               # %return
	xorl	%eax, %eax
	retq
.LBB19_4:                               # %cleanup
	movq	24(%rax), %rcx
	movq	80(%rax), %rdi
	addq	$88, %rax
	movq	%rax, %rdx
	jmpq	*%rcx                   # TAILCALL
.Lfunc_end19:
	.size	opj_end_compress, .Lfunc_end19-opj_end_compress
	.cfi_endproc

	.globl	opj_end_decompress
	.align	16, 0x90
	.type	opj_end_decompress,@function
opj_end_decompress:                     # @opj_end_decompress
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rdi, %rax
	testq	%rax, %rax
	je	.LBB20_3
# BB#1:                                 # %entry
	testq	%rsi, %rsi
	je	.LBB20_3
# BB#2:                                 # %if.then
	cmpl	$0, 136(%rax)
	je	.LBB20_3
# BB#4:                                 # %if.end
	movq	32(%rax), %rcx
	movq	80(%rax), %rdi
	addq	$88, %rax
	movq	%rax, %rdx
	jmpq	*%rcx                   # TAILCALL
.LBB20_3:                               # %return
	xorl	%eax, %eax
	retq
.Lfunc_end20:
	.size	opj_end_decompress, .Lfunc_end20-opj_end_decompress
	.cfi_endproc

	.globl	opj_set_MCT
	.align	16, 0x90
	.type	opj_set_MCT,@function
opj_set_MCT:                            # @opj_set_MCT
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp29:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp30:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp31:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp32:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp33:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp34:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp35:
	.cfi_def_cfa_offset 64
.Ltmp36:
	.cfi_offset %rbx, -56
.Ltmp37:
	.cfi_offset %r12, -48
.Ltmp38:
	.cfi_offset %r13, -40
.Ltmp39:
	.cfi_offset %r14, -32
.Ltmp40:
	.cfi_offset %r15, -24
.Ltmp41:
	.cfi_offset %rbp, -16
	movq	%rdx, %r14
	movq	%rsi, %r15
	movq	%rdi, %rbx
	leal	(,%rcx,4), %r13d
	movl	%r13d, %ebp
	orb	$-127, 18693(%rbx)
	imull	%ecx, %ebp
	movl	$1, 5616(%rbx)
	movb	$2, 18698(%rbx)
	leal	(%rbp,%rcx,4), %edi
	callq	malloc
	movq	%rax, 18704(%rbx)
	xorl	%ecx, %ecx
	testq	%rax, %rax
	je	.LBB21_2
# BB#1:                                 # %if.end
	movl	%ebp, %r12d
	movq	%rax, %rdi
	movq	%r15, %rsi
	movq	%r12, %rdx
	callq	memcpy
	addq	18704(%rbx), %r12
	movl	%r13d, %edx
	movq	%r12, %rdi
	movq	%r14, %rsi
	callq	memcpy
	movl	$1, %ecx
.LBB21_2:                               # %cleanup
	movl	%ecx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end21:
	.size	opj_set_MCT, .Lfunc_end21-opj_set_MCT
	.cfi_endproc

	.globl	opj_write_tile
	.align	16, 0x90
	.type	opj_write_tile,@function
opj_write_tile:                         # @opj_write_tile
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rdi, %rax
	testq	%rdx, %rdx
	je	.LBB22_4
# BB#1:                                 # %entry
	testq	%rax, %rax
	je	.LBB22_4
# BB#2:                                 # %entry
	testq	%r8, %r8
	je	.LBB22_4
# BB#3:                                 # %if.then
	cmpl	$0, 136(%rax)
	je	.LBB22_5
.LBB22_4:                               # %return
	xorl	%eax, %eax
	retq
.LBB22_5:                               # %if.end
	movq	16(%rax), %r11
	movq	80(%rax), %rdi
	addq	$88, %rax
	movq	%rax, %r9
	jmpq	*%r11                   # TAILCALL
.Lfunc_end22:
	.size	opj_write_tile, .Lfunc_end22-opj_write_tile
	.cfi_endproc

	.globl	opj_destroy_codec
	.align	16, 0x90
	.type	opj_destroy_codec,@function
opj_destroy_codec:                      # @opj_destroy_codec
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp42:
	.cfi_def_cfa_offset 16
.Ltmp43:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	testq	%rbx, %rbx
	je	.LBB23_5
# BB#1:                                 # %if.then
	cmpl	$0, 136(%rbx)
	movq	80(%rbx), %rdi
	je	.LBB23_3
# BB#2:                                 # %if.then.2
	callq	*40(%rbx)
	jmp	.LBB23_4
.LBB23_5:                               # %if.end.7
	popq	%rbx
	retq
.LBB23_3:                               # %if.else
	callq	*32(%rbx)
.LBB23_4:                               # %if.end
	movq	$0, 80(%rbx)
	movq	%rbx, %rdi
	popq	%rbx
	jmp	free                    # TAILCALL
.Lfunc_end23:
	.size	opj_destroy_codec, .Lfunc_end23-opj_destroy_codec
	.cfi_endproc

	.globl	opj_dump_codec
	.align	16, 0x90
	.type	opj_dump_codec,@function
opj_dump_codec:                         # @opj_dump_codec
	.cfi_startproc
# BB#0:                                 # %entry
	testq	%rdi, %rdi
	je	.LBB24_2
# BB#1:                                 # %if.then
	movq	80(%rdi), %rax
	movq	144(%rdi), %rcx
	movq	%rax, %rdi
	jmpq	*%rcx                   # TAILCALL
.LBB24_2:                               # %if.end
	movq	stderr(%rip), %rdi
	movl	$.L.str.4, %esi
	xorl	%eax, %eax
	jmp	fprintf                 # TAILCALL
.Lfunc_end24:
	.size	opj_dump_codec, .Lfunc_end24-opj_dump_codec
	.cfi_endproc

	.globl	opj_get_cstr_info
	.align	16, 0x90
	.type	opj_get_cstr_info,@function
opj_get_cstr_info:                      # @opj_get_cstr_info
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rdi, %rax
	testq	%rax, %rax
	je	.LBB25_1
# BB#2:                                 # %if.then
	movq	80(%rax), %rdi
	jmpq	*152(%rax)              # TAILCALL
.LBB25_1:                               # %return
	xorl	%eax, %eax
	retq
.Lfunc_end25:
	.size	opj_get_cstr_info, .Lfunc_end25-opj_get_cstr_info
	.cfi_endproc

	.globl	opj_destroy_cstr_info
	.align	16, 0x90
	.type	opj_destroy_cstr_info,@function
opj_destroy_cstr_info:                  # @opj_destroy_cstr_info
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp44:
	.cfi_def_cfa_offset 16
.Ltmp45:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	testq	%rbx, %rbx
	je	.LBB26_4
# BB#1:                                 # %if.then
	movq	(%rbx), %rdi
	movq	56(%rdi), %rax
	testq	%rax, %rax
	je	.LBB26_3
# BB#2:                                 # %if.then.2
	movq	%rax, %rdi
	callq	free
	movq	(%rbx), %rdi
.LBB26_3:                               # %if.end
	callq	free
	movq	$0, (%rbx)
.LBB26_4:                               # %if.end.8
	popq	%rbx
	retq
.Lfunc_end26:
	.size	opj_destroy_cstr_info, .Lfunc_end26-opj_destroy_cstr_info
	.cfi_endproc

	.globl	opj_get_cstr_index
	.align	16, 0x90
	.type	opj_get_cstr_index,@function
opj_get_cstr_index:                     # @opj_get_cstr_index
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rdi, %rax
	testq	%rax, %rax
	je	.LBB27_1
# BB#2:                                 # %if.then
	movq	80(%rax), %rdi
	jmpq	*160(%rax)              # TAILCALL
.LBB27_1:                               # %return
	xorl	%eax, %eax
	retq
.Lfunc_end27:
	.size	opj_get_cstr_index, .Lfunc_end27-opj_get_cstr_index
	.cfi_endproc

	.globl	opj_destroy_cstr_index
	.align	16, 0x90
	.type	opj_destroy_cstr_index,@function
opj_destroy_cstr_index:                 # @opj_destroy_cstr_index
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp46:
	.cfi_def_cfa_offset 16
.Ltmp47:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB28_2
# BB#1:                                 # %if.then
	callq	j2k_destroy_cstr_index
	movq	$0, (%rbx)
.LBB28_2:                               # %if.end
	popq	%rbx
	retq
.Lfunc_end28:
	.size	opj_destroy_cstr_index, .Lfunc_end28-opj_destroy_cstr_index
	.cfi_endproc

	.globl	opj_stream_create_default_file_stream
	.align	16, 0x90
	.type	opj_stream_create_default_file_stream,@function
opj_stream_create_default_file_stream:  # @opj_stream_create_default_file_stream
	.cfi_startproc
# BB#0:                                 # %entry
	movl	%esi, %eax
	movl	$1048576, %esi          # imm = 0x100000
	movl	%eax, %edx
	jmp	opj_stream_create_file_stream # TAILCALL
.Lfunc_end29:
	.size	opj_stream_create_default_file_stream, .Lfunc_end29-opj_stream_create_default_file_stream
	.cfi_endproc

	.globl	opj_stream_create_file_stream
	.align	16, 0x90
	.type	opj_stream_create_file_stream,@function
opj_stream_create_file_stream:          # @opj_stream_create_file_stream
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%r15
.Ltmp48:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp49:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp50:
	.cfi_def_cfa_offset 32
.Ltmp51:
	.cfi_offset %rbx, -32
.Ltmp52:
	.cfi_offset %r14, -24
.Ltmp53:
	.cfi_offset %r15, -16
	movq	%rdi, %rbx
	xorl	%eax, %eax
	testq	%rbx, %rbx
	je	.LBB30_3
# BB#1:                                 # %if.end
	movq	%rsi, %rdi
	movl	%edx, %esi
	callq	opj_stream_create
	movq	%rax, %r14
	xorl	%eax, %eax
	testq	%r14, %r14
	je	.LBB30_3
# BB#2:                                 # %if.end.3
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	opj_stream_set_user_data
	xorl	%esi, %esi
	movl	$2, %edx
	movq	%rbx, %rdi
	callq	fseek
	movq	%rbx, %rdi
	callq	ftell
	movq	%rax, %r15
	xorl	%esi, %esi
	xorl	%edx, %edx
	movq	%rbx, %rdi
	callq	fseek
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	opj_stream_set_user_data_length
	movl	$opj_read_from_file, %esi
	movq	%r14, %rdi
	callq	opj_stream_set_read_function
	movl	$opj_write_from_file, %esi
	movq	%r14, %rdi
	callq	opj_stream_set_write_function
	movl	$opj_skip_from_file, %esi
	movq	%r14, %rdi
	callq	opj_stream_set_skip_function
	movl	$opj_seek_from_file, %esi
	movq	%r14, %rdi
	callq	opj_stream_set_seek_function
	movq	%r14, %rax
.LBB30_3:                               # %cleanup
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.Lfunc_end30:
	.size	opj_stream_create_file_stream, .Lfunc_end30-opj_stream_create_file_stream
	.cfi_endproc

	.globl	opj_stream_create_default_file_stream_v3
	.align	16, 0x90
	.type	opj_stream_create_default_file_stream_v3,@function
opj_stream_create_default_file_stream_v3: # @opj_stream_create_default_file_stream_v3
	.cfi_startproc
# BB#0:                                 # %entry
	movl	%esi, %eax
	movl	$1048576, %esi          # imm = 0x100000
	movl	%eax, %edx
	jmp	opj_stream_create_file_stream_v3 # TAILCALL
.Lfunc_end31:
	.size	opj_stream_create_default_file_stream_v3, .Lfunc_end31-opj_stream_create_default_file_stream_v3
	.cfi_endproc

	.globl	opj_stream_create_file_stream_v3
	.align	16, 0x90
	.type	opj_stream_create_file_stream_v3,@function
opj_stream_create_file_stream_v3:       # @opj_stream_create_file_stream_v3
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp54:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp55:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp56:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp57:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp58:
	.cfi_def_cfa_offset 48
.Ltmp59:
	.cfi_offset %rbx, -40
.Ltmp60:
	.cfi_offset %r14, -32
.Ltmp61:
	.cfi_offset %r15, -24
.Ltmp62:
	.cfi_offset %rbp, -16
	movl	%edx, %ebp
	movq	%rsi, %r15
	xorl	%ebx, %ebx
	testq	%rdi, %rdi
	je	.LBB32_5
# BB#1:                                 # %if.end
	testl	%ebp, %ebp
	movl	$.L.str.6, %eax
	movl	$.L.str.5, %esi
	cmoveq	%rax, %rsi
	callq	fopen
	movq	%rax, %r14
	xorl	%ebx, %ebx
	testq	%r14, %r14
	je	.LBB32_5
# BB#2:                                 # %if.end.6
	movq	%r15, %rdi
	movl	%ebp, %esi
	callq	opj_stream_create
	movq	%rax, %rbx
	testq	%rbx, %rbx
	je	.LBB32_3
# BB#4:                                 # %if.end.11
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	opj_stream_set_user_data
	xorl	%esi, %esi
	movl	$2, %edx
	movq	%r14, %rdi
	callq	fseek
	movq	%r14, %rdi
	callq	ftell
	movq	%rax, %rbp
	xorl	%esi, %esi
	xorl	%edx, %edx
	movq	%r14, %rdi
	callq	fseek
	movq	%rbx, %rdi
	movq	%rbp, %rsi
	callq	opj_stream_set_user_data_length
	movl	$opj_read_from_file, %esi
	movq	%rbx, %rdi
	callq	opj_stream_set_read_function
	movl	$opj_write_from_file, %esi
	movq	%rbx, %rdi
	callq	opj_stream_set_write_function
	movl	$opj_skip_from_file, %esi
	movq	%rbx, %rdi
	callq	opj_stream_set_skip_function
	movl	$opj_seek_from_file, %esi
	movq	%rbx, %rdi
	callq	opj_stream_set_seek_function
	jmp	.LBB32_5
.LBB32_3:                               # %if.then.9
	movq	%r14, %rdi
	callq	fclose
	xorl	%ebx, %ebx
.LBB32_5:                               # %cleanup
	movq	%rbx, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end32:
	.size	opj_stream_create_file_stream_v3, .Lfunc_end32-opj_stream_create_file_stream_v3
	.cfi_endproc

	.align	16, 0x90
	.type	opj_read_from_file,@function
opj_read_from_file:                     # @opj_read_from_file
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp63:
	.cfi_def_cfa_offset 16
	movq	%rdx, %rax
	movq	%rsi, %rcx
	movl	$1, %esi
	movq	%rcx, %rdx
	movq	%rax, %rcx
	callq	fread
	cmpq	$1, %rax
	sbbq	%rcx, %rcx
	orq	%rcx, %rax
	popq	%rdx
	retq
.Lfunc_end33:
	.size	opj_read_from_file, .Lfunc_end33-opj_read_from_file
	.cfi_endproc

	.align	16, 0x90
	.type	opj_write_from_file,@function
opj_write_from_file:                    # @opj_write_from_file
	.cfi_startproc
# BB#0:                                 # %entry
	movq	%rdx, %rax
	movq	%rsi, %rcx
	movl	$1, %esi
	movq	%rcx, %rdx
	movq	%rax, %rcx
	jmp	fwrite                  # TAILCALL
.Lfunc_end34:
	.size	opj_write_from_file, .Lfunc_end34-opj_write_from_file
	.cfi_endproc

	.align	16, 0x90
	.type	opj_skip_from_file,@function
opj_skip_from_file:                     # @opj_skip_from_file
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp64:
	.cfi_def_cfa_offset 16
.Ltmp65:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movl	$1, %edx
	movq	%rsi, %rdi
	movq	%rbx, %rsi
	callq	fseek
	cmpl	$1, %eax
	sbbq	%rax, %rax
	notq	%rax
	orq	%rbx, %rax
	popq	%rbx
	retq
.Lfunc_end35:
	.size	opj_skip_from_file, .Lfunc_end35-opj_skip_from_file
	.cfi_endproc

	.align	16, 0x90
	.type	opj_seek_from_file,@function
opj_seek_from_file:                     # @opj_seek_from_file
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rax
.Ltmp66:
	.cfi_def_cfa_offset 16
	movq	%rdi, %rax
	xorl	%edx, %edx
	movq	%rsi, %rdi
	movq	%rax, %rsi
	callq	fseek
	testl	%eax, %eax
	sete	%al
	movzbl	%al, %eax
	popq	%rdx
	retq
.Lfunc_end36:
	.size	opj_seek_from_file, .Lfunc_end36-opj_seek_from_file
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"2.0.0"
	.size	.L.str, 6

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Codec provided to the opj_setup_decoder function is not a decompressor handler.\n"
	.size	.L.str.1, 81

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"Codec provided to the opj_read_header function is not a decompressor handler.\n"
	.size	.L.str.2, 79

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"[ERROR] Input parameters of the setup_decoder function are incorrect.\n"
	.size	.L.str.3, 71

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"[ERROR] Input parameter of the dump_codec function are incorrect.\n"
	.size	.L.str.4, 67

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"rb"
	.size	.L.str.5, 3

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"wb"
	.size	.L.str.6, 3


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
