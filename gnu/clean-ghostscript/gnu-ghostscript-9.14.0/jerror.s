	.text
	.file	"jerror.bc"
	.globl	jpeg_std_error
	.align	16, 0x90
	.type	jpeg_std_error,@function
jpeg_std_error:                         # @jpeg_std_error
	.cfi_startproc
# BB#0:                                 # %entry
	movq	$error_exit, (%rdi)
	movq	$emit_message, 8(%rdi)
	movq	$output_message, 16(%rdi)
	movq	$format_message, 24(%rdi)
	movq	$reset_error_mgr, 32(%rdi)
	movl	$0, 124(%rdi)
	movq	$0, 128(%rdi)
	movl	$0, 40(%rdi)
	movq	$jpeg_std_message_table, 136(%rdi)
	movl	$126, 144(%rdi)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 152(%rdi)
	movq	%rdi, %rax
	retq
.Lfunc_end0:
	.size	jpeg_std_error, .Lfunc_end0-jpeg_std_error
	.cfi_endproc

	.align	16, 0x90
	.type	error_exit,@function
error_exit:                             # @error_exit
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp0:
	.cfi_def_cfa_offset 16
.Ltmp1:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	(%rbx), %rax
	callq	*16(%rax)
	movq	%rbx, %rdi
	callq	jpeg_destroy
	movl	$1, %edi
	callq	exit
.Lfunc_end1:
	.size	error_exit, .Lfunc_end1-error_exit
	.cfi_endproc

	.align	16, 0x90
	.type	emit_message,@function
emit_message:                           # @emit_message
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp2:
	.cfi_def_cfa_offset 16
.Ltmp3:
	.cfi_offset %rbx, -16
	movq	(%rdi), %rcx
	testl	%esi, %esi
	js	.LBB2_1
# BB#5:                                 # %if.else
	cmpl	%esi, 124(%rcx)
	jge	.LBB2_7
# BB#6:                                 # %if.end.11
	popq	%rbx
	retq
.LBB2_1:                                # %if.then
	movq	128(%rcx), %rax
	testq	%rax, %rax
	je	.LBB2_3
# BB#2:                                 # %lor.lhs.false
	cmpl	$3, 124(%rcx)
	jl	.LBB2_4
.LBB2_3:                                # %if.then.4
	movq	%rcx, %rbx
	callq	*16(%rbx)
	movq	%rbx, %rcx
	movq	128(%rcx), %rax
.LBB2_4:                                # %if.end
	incq	%rax
	movq	%rax, 128(%rcx)
	popq	%rbx
	retq
.LBB2_7:                                # %if.then.8
	popq	%rbx
	jmpq	*16(%rcx)               # TAILCALL
.Lfunc_end2:
	.size	emit_message, .Lfunc_end2-emit_message
	.cfi_endproc

	.align	16, 0x90
	.type	output_message,@function
output_message:                         # @output_message
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp4:
	.cfi_def_cfa_offset 16
	subq	$208, %rsp
.Ltmp5:
	.cfi_def_cfa_offset 224
.Ltmp6:
	.cfi_offset %rbx, -16
	movq	(%rdi), %rax
	leaq	(%rsp), %rbx
	movq	%rbx, %rsi
	callq	*24(%rax)
	movq	stderr(%rip), %rdi
	movl	$.L.str.127, %esi
	xorl	%eax, %eax
	movq	%rbx, %rdx
	callq	fprintf
	addq	$208, %rsp
	popq	%rbx
	retq
.Lfunc_end3:
	.size	output_message, .Lfunc_end3-output_message
	.cfi_endproc

	.align	16, 0x90
	.type	format_message,@function
format_message:                         # @format_message
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp7:
	.cfi_def_cfa_offset 16
	subq	$32, %rsp
.Ltmp8:
	.cfi_def_cfa_offset 48
.Ltmp9:
	.cfi_offset %rbx, -16
	movq	(%rdi), %rdx
	movslq	40(%rdx), %rax
	testq	%rax, %rax
	jle	.LBB4_3
# BB#1:                                 # %land.lhs.true
	cmpl	144(%rdx), %eax
	jle	.LBB4_2
.LBB4_3:                                # %if.else
	movq	152(%rdx), %rcx
	testq	%rcx, %rcx
	je	.LBB4_8
# BB#4:                                 # %land.lhs.true.5
	movl	%eax, %edi
	subl	160(%rdx), %edi
	jl	.LBB4_8
# BB#5:                                 # %land.lhs.true.7
	cmpl	164(%rdx), %eax
	jg	.LBB4_8
# BB#6:                                 # %if.then.9
	movslq	%edi, %rdi
	leaq	(%rcx,%rdi,8), %rcx
	jmp	.LBB4_7
.LBB4_2:                                # %if.then
	movq	%rax, %rcx
	shlq	$3, %rcx
	addq	136(%rdx), %rcx
.LBB4_7:                                # %if.end.14
	movq	(%rcx), %r11
	testq	%r11, %r11
	jne	.LBB4_9
.LBB4_8:                                # %if.then.16
	movl	%eax, 44(%rdx)
	movq	136(%rdx), %rax
	movq	(%rax), %r11
.LBB4_9:                                # %if.end.20
	movq	%r11, %rax
.LBB4_10:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	movb	(%rax), %cl
	testb	%cl, %cl
	je	.LBB4_13
# BB#11:                                # %while.cond
                                        #   in Loop: Header=BB4_10 Depth=1
	incq	%rax
	movzbl	%cl, %ecx
	cmpl	$37, %ecx
	jne	.LBB4_10
# BB#12:                                # %while.end
	movzbl	(%rax), %eax
	cmpl	$115, %eax
	jne	.LBB4_13
# BB#14:                                # %if.then.33
	addq	$44, %rdx
	xorl	%eax, %eax
	movq	%rsi, %rdi
	movq	%r11, %rsi
	addq	$32, %rsp
	popq	%rbx
	jmp	sprintf                 # TAILCALL
.LBB4_13:                               # %if.else.35
	movl	44(%rdx), %r10d
	movl	48(%rdx), %ecx
	movl	52(%rdx), %r8d
	movl	56(%rdx), %r9d
	movl	60(%rdx), %eax
	movl	64(%rdx), %edi
	movl	68(%rdx), %ebx
	movl	72(%rdx), %edx
	movl	%edx, 24(%rsp)
	movl	%ebx, 16(%rsp)
	movl	%edi, 8(%rsp)
	movl	%eax, (%rsp)
	xorl	%eax, %eax
	movq	%rsi, %rdi
	movq	%r11, %rsi
	movl	%r10d, %edx
	callq	sprintf
	addq	$32, %rsp
	popq	%rbx
	retq
.Lfunc_end4:
	.size	format_message, .Lfunc_end4-format_message
	.cfi_endproc

	.align	16, 0x90
	.type	reset_error_mgr,@function
reset_error_mgr:                        # @reset_error_mgr
	.cfi_startproc
# BB#0:                                 # %entry
	movq	(%rdi), %rax
	movq	$0, 128(%rax)
	movl	$0, 40(%rax)
	retq
.Lfunc_end5:
	.size	reset_error_mgr, .Lfunc_end5-reset_error_mgr
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Bogus message code %d"
	.size	.L.str, 22

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"ALIGN_TYPE is wrong, please fix"
	.size	.L.str.1, 32

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"MAX_ALLOC_CHUNK is wrong, please fix"
	.size	.L.str.2, 37

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Bogus buffer control mode"
	.size	.L.str.3, 26

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"Invalid component ID %d in SOS"
	.size	.L.str.4, 31

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"Invalid crop request"
	.size	.L.str.5, 21

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"DCT coefficient out of range"
	.size	.L.str.6, 29

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"DCT scaled block size %dx%d not supported"
	.size	.L.str.7, 42

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"Component index %d: mismatching sampling ratio %d:%d, %d:%d, %c"
	.size	.L.str.8, 64

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Bogus Huffman table definition"
	.size	.L.str.9, 31

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"Bogus input colorspace"
	.size	.L.str.10, 23

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"Bogus JPEG colorspace"
	.size	.L.str.11, 22

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"Bogus marker length"
	.size	.L.str.12, 20

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"Wrong JPEG library version: library is %d, caller expects %d"
	.size	.L.str.13, 61

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"Sampling factors too large for interleaved scan"
	.size	.L.str.14, 48

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"Invalid memory pool code %d"
	.size	.L.str.15, 28

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"Unsupported JPEG data precision %d"
	.size	.L.str.16, 35

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"Invalid progressive parameters Ss=%d Se=%d Ah=%d Al=%d"
	.size	.L.str.17, 55

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"Invalid progressive parameters at scan script entry %d"
	.size	.L.str.18, 55

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"Bogus sampling factors"
	.size	.L.str.19, 23

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"Invalid scan script at entry %d"
	.size	.L.str.20, 32

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"Improper call to JPEG library in state %d"
	.size	.L.str.21, 42

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"JPEG parameter struct mismatch: library thinks size is %u, caller expects %u"
	.size	.L.str.22, 77

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"Bogus virtual array access"
	.size	.L.str.23, 27

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"Buffer passed to JPEG library is too small"
	.size	.L.str.24, 43

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"Suspension not allowed here"
	.size	.L.str.25, 28

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"CCIR601 sampling not implemented yet"
	.size	.L.str.26, 37

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"Too many color components: %d, max %d"
	.size	.L.str.27, 38

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"Unsupported color conversion request"
	.size	.L.str.28, 37

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"Bogus DAC index %d"
	.size	.L.str.29, 19

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"Bogus DAC value 0x%x"
	.size	.L.str.30, 21

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"Bogus DHT index %d"
	.size	.L.str.31, 19

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"Bogus DQT index %d"
	.size	.L.str.32, 19

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"Empty JPEG image (DNL not supported)"
	.size	.L.str.33, 37

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"Read from EMS failed"
	.size	.L.str.34, 21

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"Write to EMS failed"
	.size	.L.str.35, 20

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"Didn't expect more than one scan"
	.size	.L.str.36, 33

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"Input file read error"
	.size	.L.str.37, 22

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"Output file write error --- out of disk space?"
	.size	.L.str.38, 47

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"Fractional sampling not implemented yet"
	.size	.L.str.39, 40

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"Huffman code size table overflow"
	.size	.L.str.40, 33

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"Missing Huffman code table entry"
	.size	.L.str.41, 33

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"Maximum supported image dimension is %u pixels"
	.size	.L.str.42, 47

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"Empty input file"
	.size	.L.str.43, 17

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"Premature end of input file"
	.size	.L.str.44, 28

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"Cannot transcode due to multiple use of quantization table %d"
	.size	.L.str.45, 62

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"Scan script does not transmit all data"
	.size	.L.str.46, 39

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"Invalid color quantization mode change"
	.size	.L.str.47, 39

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"Not implemented yet"
	.size	.L.str.48, 20

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"Requested feature was omitted at compile time"
	.size	.L.str.49, 46

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"Arithmetic table 0x%02x was not defined"
	.size	.L.str.50, 40

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"Backing store not supported"
	.size	.L.str.51, 28

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"Huffman table 0x%02x was not defined"
	.size	.L.str.52, 37

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"JPEG datastream contains no image"
	.size	.L.str.53, 34

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"Quantization table 0x%02x was not defined"
	.size	.L.str.54, 42

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"Not a JPEG file: starts with 0x%02x 0x%02x"
	.size	.L.str.55, 43

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"Insufficient memory (case %d)"
	.size	.L.str.56, 30

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"Cannot quantize more than %d color components"
	.size	.L.str.57, 46

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"Cannot quantize to fewer than %d colors"
	.size	.L.str.58, 40

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"Cannot quantize to more than %d colors"
	.size	.L.str.59, 39

	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	"Invalid JPEG file structure: %s before SOF"
	.size	.L.str.60, 43

	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.asciz	"Invalid JPEG file structure: two SOF markers"
	.size	.L.str.61, 45

	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	"Invalid JPEG file structure: missing SOS marker"
	.size	.L.str.62, 48

	.type	.L.str.63,@object       # @.str.63
.L.str.63:
	.asciz	"Unsupported JPEG process: SOF type 0x%02x"
	.size	.L.str.63, 42

	.type	.L.str.64,@object       # @.str.64
.L.str.64:
	.asciz	"Invalid JPEG file structure: two SOI markers"
	.size	.L.str.64, 45

	.type	.L.str.65,@object       # @.str.65
.L.str.65:
	.asciz	"Failed to create temporary file %s"
	.size	.L.str.65, 35

	.type	.L.str.66,@object       # @.str.66
.L.str.66:
	.asciz	"Read failed on temporary file"
	.size	.L.str.66, 30

	.type	.L.str.67,@object       # @.str.67
.L.str.67:
	.asciz	"Seek failed on temporary file"
	.size	.L.str.67, 30

	.type	.L.str.68,@object       # @.str.68
.L.str.68:
	.asciz	"Write failed on temporary file --- out of disk space?"
	.size	.L.str.68, 54

	.type	.L.str.69,@object       # @.str.69
.L.str.69:
	.asciz	"Application transferred too few scanlines"
	.size	.L.str.69, 42

	.type	.L.str.70,@object       # @.str.70
.L.str.70:
	.asciz	"Unsupported marker type 0x%02x"
	.size	.L.str.70, 31

	.type	.L.str.71,@object       # @.str.71
.L.str.71:
	.asciz	"Virtual array controller messed up"
	.size	.L.str.71, 35

	.type	.L.str.72,@object       # @.str.72
.L.str.72:
	.asciz	"Image too wide for this implementation"
	.size	.L.str.72, 39

	.type	.L.str.73,@object       # @.str.73
.L.str.73:
	.asciz	"Read from XMS failed"
	.size	.L.str.73, 21

	.type	.L.str.74,@object       # @.str.74
.L.str.74:
	.asciz	"Write to XMS failed"
	.size	.L.str.74, 20

	.type	.L.str.75,@object       # @.str.75
.L.str.75:
	.asciz	"Copyright (C) 2016, Thomas G. Lane, Guido Vollbeding"
	.size	.L.str.75, 53

	.type	.L.str.76,@object       # @.str.76
.L.str.76:
	.asciz	"9b  17-Jan-2016"
	.size	.L.str.76, 16

	.type	.L.str.77,@object       # @.str.77
.L.str.77:
	.asciz	"Caution: quantization tables are too coarse for baseline JPEG"
	.size	.L.str.77, 62

	.type	.L.str.78,@object       # @.str.78
.L.str.78:
	.asciz	"Adobe APP14 marker: version %d, flags 0x%04x 0x%04x, transform %d"
	.size	.L.str.78, 66

	.type	.L.str.79,@object       # @.str.79
.L.str.79:
	.asciz	"Unknown APP0 marker (not JFIF), length %u"
	.size	.L.str.79, 42

	.type	.L.str.80,@object       # @.str.80
.L.str.80:
	.asciz	"Unknown APP14 marker (not Adobe), length %u"
	.size	.L.str.80, 44

	.type	.L.str.81,@object       # @.str.81
.L.str.81:
	.asciz	"Define Arithmetic Table 0x%02x: 0x%02x"
	.size	.L.str.81, 39

	.type	.L.str.82,@object       # @.str.82
.L.str.82:
	.asciz	"Define Huffman Table 0x%02x"
	.size	.L.str.82, 28

	.type	.L.str.83,@object       # @.str.83
.L.str.83:
	.asciz	"Define Quantization Table %d  precision %d"
	.size	.L.str.83, 43

	.type	.L.str.84,@object       # @.str.84
.L.str.84:
	.asciz	"Define Restart Interval %u"
	.size	.L.str.84, 27

	.type	.L.str.85,@object       # @.str.85
.L.str.85:
	.asciz	"Freed EMS handle %u"
	.size	.L.str.85, 20

	.type	.L.str.86,@object       # @.str.86
.L.str.86:
	.asciz	"Obtained EMS handle %u"
	.size	.L.str.86, 23

	.type	.L.str.87,@object       # @.str.87
.L.str.87:
	.asciz	"End Of Image"
	.size	.L.str.87, 13

	.type	.L.str.88,@object       # @.str.88
.L.str.88:
	.asciz	"        %3d %3d %3d %3d %3d %3d %3d %3d"
	.size	.L.str.88, 40

	.type	.L.str.89,@object       # @.str.89
.L.str.89:
	.asciz	"JFIF APP0 marker: version %d.%02d, density %dx%d  %d"
	.size	.L.str.89, 53

	.type	.L.str.90,@object       # @.str.90
.L.str.90:
	.asciz	"Warning: thumbnail image size does not match data length %u"
	.size	.L.str.90, 60

	.type	.L.str.91,@object       # @.str.91
.L.str.91:
	.asciz	"JFIF extension marker: type 0x%02x, length %u"
	.size	.L.str.91, 46

	.type	.L.str.92,@object       # @.str.92
.L.str.92:
	.asciz	"    with %d x %d thumbnail image"
	.size	.L.str.92, 33

	.type	.L.str.93,@object       # @.str.93
.L.str.93:
	.asciz	"Miscellaneous marker 0x%02x, length %u"
	.size	.L.str.93, 39

	.type	.L.str.94,@object       # @.str.94
.L.str.94:
	.asciz	"Unexpected marker 0x%02x"
	.size	.L.str.94, 25

	.type	.L.str.95,@object       # @.str.95
.L.str.95:
	.asciz	"        %4u %4u %4u %4u %4u %4u %4u %4u"
	.size	.L.str.95, 40

	.type	.L.str.96,@object       # @.str.96
.L.str.96:
	.asciz	"Quantizing to %d = %d*%d*%d colors"
	.size	.L.str.96, 35

	.type	.L.str.97,@object       # @.str.97
.L.str.97:
	.asciz	"Quantizing to %d colors"
	.size	.L.str.97, 24

	.type	.L.str.98,@object       # @.str.98
.L.str.98:
	.asciz	"Selected %d colors for quantization"
	.size	.L.str.98, 36

	.type	.L.str.99,@object       # @.str.99
.L.str.99:
	.asciz	"At marker 0x%02x, recovery action %d"
	.size	.L.str.99, 37

	.type	.L.str.100,@object      # @.str.100
.L.str.100:
	.asciz	"RST%d"
	.size	.L.str.100, 6

	.type	.L.str.101,@object      # @.str.101
.L.str.101:
	.asciz	"Smoothing not supported with nonstandard sampling ratios"
	.size	.L.str.101, 57

	.type	.L.str.102,@object      # @.str.102
.L.str.102:
	.asciz	"Start Of Frame 0x%02x: width=%u, height=%u, components=%d"
	.size	.L.str.102, 58

	.type	.L.str.103,@object      # @.str.103
.L.str.103:
	.asciz	"    Component %d: %dhx%dv q=%d"
	.size	.L.str.103, 31

	.type	.L.str.104,@object      # @.str.104
.L.str.104:
	.asciz	"Start of Image"
	.size	.L.str.104, 15

	.type	.L.str.105,@object      # @.str.105
.L.str.105:
	.asciz	"Start Of Scan: %d components"
	.size	.L.str.105, 29

	.type	.L.str.106,@object      # @.str.106
.L.str.106:
	.asciz	"    Component %d: dc=%d ac=%d"
	.size	.L.str.106, 30

	.type	.L.str.107,@object      # @.str.107
.L.str.107:
	.asciz	"  Ss=%d, Se=%d, Ah=%d, Al=%d"
	.size	.L.str.107, 29

	.type	.L.str.108,@object      # @.str.108
.L.str.108:
	.asciz	"Closed temporary file %s"
	.size	.L.str.108, 25

	.type	.L.str.109,@object      # @.str.109
.L.str.109:
	.asciz	"Opened temporary file %s"
	.size	.L.str.109, 25

	.type	.L.str.110,@object      # @.str.110
.L.str.110:
	.asciz	"JFIF extension marker: JPEG-compressed thumbnail image, length %u"
	.size	.L.str.110, 66

	.type	.L.str.111,@object      # @.str.111
.L.str.111:
	.asciz	"JFIF extension marker: palette thumbnail image, length %u"
	.size	.L.str.111, 58

	.type	.L.str.112,@object      # @.str.112
.L.str.112:
	.asciz	"JFIF extension marker: RGB thumbnail image, length %u"
	.size	.L.str.112, 54

	.type	.L.str.113,@object      # @.str.113
.L.str.113:
	.asciz	"Unrecognized component IDs %d %d %d, assuming YCbCr"
	.size	.L.str.113, 52

	.type	.L.str.114,@object      # @.str.114
.L.str.114:
	.asciz	"Freed XMS handle %u"
	.size	.L.str.114, 20

	.type	.L.str.115,@object      # @.str.115
.L.str.115:
	.asciz	"Obtained XMS handle %u"
	.size	.L.str.115, 23

	.type	.L.str.116,@object      # @.str.116
.L.str.116:
	.asciz	"Unknown Adobe color transform code %d"
	.size	.L.str.116, 38

	.type	.L.str.117,@object      # @.str.117
.L.str.117:
	.asciz	"Corrupt JPEG data: bad arithmetic code"
	.size	.L.str.117, 39

	.type	.L.str.118,@object      # @.str.118
.L.str.118:
	.asciz	"Inconsistent progression sequence for component %d coefficient %d"
	.size	.L.str.118, 66

	.type	.L.str.119,@object      # @.str.119
.L.str.119:
	.asciz	"Corrupt JPEG data: %u extraneous bytes before marker 0x%02x"
	.size	.L.str.119, 60

	.type	.L.str.120,@object      # @.str.120
.L.str.120:
	.asciz	"Corrupt JPEG data: premature end of data segment"
	.size	.L.str.120, 49

	.type	.L.str.121,@object      # @.str.121
.L.str.121:
	.asciz	"Corrupt JPEG data: bad Huffman code"
	.size	.L.str.121, 36

	.type	.L.str.122,@object      # @.str.122
.L.str.122:
	.asciz	"Warning: unknown JFIF revision number %d.%02d"
	.size	.L.str.122, 46

	.type	.L.str.123,@object      # @.str.123
.L.str.123:
	.asciz	"Premature end of JPEG file"
	.size	.L.str.123, 27

	.type	.L.str.124,@object      # @.str.124
.L.str.124:
	.asciz	"Corrupt JPEG data: found marker 0x%02x instead of RST%d"
	.size	.L.str.124, 56

	.type	.L.str.125,@object      # @.str.125
.L.str.125:
	.asciz	"Invalid SOS parameters for sequential JPEG"
	.size	.L.str.125, 43

	.type	.L.str.126,@object      # @.str.126
.L.str.126:
	.asciz	"Application transferred too many scanlines"
	.size	.L.str.126, 43

	.type	jpeg_std_message_table,@object # @jpeg_std_message_table
	.section	.rodata,"a",@progbits
	.globl	jpeg_std_message_table
	.align	16
jpeg_std_message_table:
	.quad	.L.str
	.quad	.L.str.1
	.quad	.L.str.2
	.quad	.L.str.3
	.quad	.L.str.4
	.quad	.L.str.5
	.quad	.L.str.6
	.quad	.L.str.7
	.quad	.L.str.8
	.quad	.L.str.9
	.quad	.L.str.10
	.quad	.L.str.11
	.quad	.L.str.12
	.quad	.L.str.13
	.quad	.L.str.14
	.quad	.L.str.15
	.quad	.L.str.16
	.quad	.L.str.17
	.quad	.L.str.18
	.quad	.L.str.19
	.quad	.L.str.20
	.quad	.L.str.21
	.quad	.L.str.22
	.quad	.L.str.23
	.quad	.L.str.24
	.quad	.L.str.25
	.quad	.L.str.26
	.quad	.L.str.27
	.quad	.L.str.28
	.quad	.L.str.29
	.quad	.L.str.30
	.quad	.L.str.31
	.quad	.L.str.32
	.quad	.L.str.33
	.quad	.L.str.34
	.quad	.L.str.35
	.quad	.L.str.36
	.quad	.L.str.37
	.quad	.L.str.38
	.quad	.L.str.39
	.quad	.L.str.40
	.quad	.L.str.41
	.quad	.L.str.42
	.quad	.L.str.43
	.quad	.L.str.44
	.quad	.L.str.45
	.quad	.L.str.46
	.quad	.L.str.47
	.quad	.L.str.48
	.quad	.L.str.49
	.quad	.L.str.50
	.quad	.L.str.51
	.quad	.L.str.52
	.quad	.L.str.53
	.quad	.L.str.54
	.quad	.L.str.55
	.quad	.L.str.56
	.quad	.L.str.57
	.quad	.L.str.58
	.quad	.L.str.59
	.quad	.L.str.60
	.quad	.L.str.61
	.quad	.L.str.62
	.quad	.L.str.63
	.quad	.L.str.64
	.quad	.L.str.65
	.quad	.L.str.66
	.quad	.L.str.67
	.quad	.L.str.68
	.quad	.L.str.69
	.quad	.L.str.70
	.quad	.L.str.71
	.quad	.L.str.72
	.quad	.L.str.73
	.quad	.L.str.74
	.quad	.L.str.75
	.quad	.L.str.76
	.quad	.L.str.77
	.quad	.L.str.78
	.quad	.L.str.79
	.quad	.L.str.80
	.quad	.L.str.81
	.quad	.L.str.82
	.quad	.L.str.83
	.quad	.L.str.84
	.quad	.L.str.85
	.quad	.L.str.86
	.quad	.L.str.87
	.quad	.L.str.88
	.quad	.L.str.89
	.quad	.L.str.90
	.quad	.L.str.91
	.quad	.L.str.92
	.quad	.L.str.93
	.quad	.L.str.94
	.quad	.L.str.95
	.quad	.L.str.96
	.quad	.L.str.97
	.quad	.L.str.98
	.quad	.L.str.99
	.quad	.L.str.100
	.quad	.L.str.101
	.quad	.L.str.102
	.quad	.L.str.103
	.quad	.L.str.104
	.quad	.L.str.105
	.quad	.L.str.106
	.quad	.L.str.107
	.quad	.L.str.108
	.quad	.L.str.109
	.quad	.L.str.110
	.quad	.L.str.111
	.quad	.L.str.112
	.quad	.L.str.113
	.quad	.L.str.114
	.quad	.L.str.115
	.quad	.L.str.116
	.quad	.L.str.117
	.quad	.L.str.118
	.quad	.L.str.119
	.quad	.L.str.120
	.quad	.L.str.121
	.quad	.L.str.122
	.quad	.L.str.123
	.quad	.L.str.124
	.quad	.L.str.125
	.quad	.L.str.126
	.quad	0
	.size	jpeg_std_message_table, 1024

	.type	.L.str.127,@object      # @.str.127
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.127:
	.asciz	"%s\n"
	.size	.L.str.127, 4


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
