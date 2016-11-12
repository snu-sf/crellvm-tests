	.text
	.file	"jcmarker.bc"
	.globl	jinit_marker_writer
	.align	16, 0x90
	.type	jinit_marker_writer,@function
jinit_marker_writer:                    # @jinit_marker_writer
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp0:
	.cfi_def_cfa_offset 16
.Ltmp1:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	8(%rbx), %rax
	movl	$1, %esi
	movl	$64, %edx
	callq	*(%rax)
	movq	%rax, 528(%rbx)
	movl	$write_frame_header, %ecx
	movd	%rcx, %xmm0
	movl	$write_file_header, %ecx
	movd	%rcx, %xmm1
	punpcklqdq	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0]
	movdqu	%xmm1, (%rax)
	movl	$write_file_trailer, %ecx
	movd	%rcx, %xmm0
	movl	$write_scan_header, %ecx
	movd	%rcx, %xmm1
	punpcklqdq	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0]
	movdqu	%xmm1, 16(%rax)
	movq	$write_tables_only, 32(%rax)
	movq	$write_marker_header, 40(%rax)
	movq	$write_marker_byte, 48(%rax)
	movl	$0, 56(%rax)
	popq	%rbx
	retq
.Lfunc_end0:
	.size	jinit_marker_writer, .Lfunc_end0-jinit_marker_writer
	.cfi_endproc

	.align	16, 0x90
	.type	write_file_header,@function
write_file_header:                      # @write_file_header
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp2:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp3:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp4:
	.cfi_def_cfa_offset 32
.Ltmp5:
	.cfi_offset %rbx, -32
.Ltmp6:
	.cfi_offset %r14, -24
.Ltmp7:
	.cfi_offset %rbp, -16
	movq	%rdi, %rbp
	movq	40(%rbp), %rax
	movq	528(%rbp), %r14
	movq	(%rax), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, (%rax)
	movb	$-1, (%rcx)
	decq	8(%rax)
	jne	.LBB1_3
# BB#1:                                 # %if.then.i.i
	movq	%rbp, %rdi
	callq	*24(%rax)
	testl	%eax, %eax
	jne	.LBB1_3
# BB#2:                                 # %if.then.3.i.i
	movq	(%rbp), %rax
	movl	$25, 40(%rax)
	movq	%rbp, %rdi
	callq	*(%rax)
.LBB1_3:                                # %emit_byte.exit.i
	movq	40(%rbp), %rax
	movq	(%rax), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, (%rax)
	movb	$-40, (%rcx)
	decq	8(%rax)
	jne	.LBB1_6
# BB#4:                                 # %if.then.i.11.i
	movq	%rbp, %rdi
	callq	*24(%rax)
	testl	%eax, %eax
	jne	.LBB1_6
# BB#5:                                 # %if.then.3.i.15.i
	movq	(%rbp), %rax
	movl	$25, 40(%rax)
	movq	%rbp, %rdi
	callq	*(%rax)
.LBB1_6:                                # %emit_marker.exit
	movl	$0, 56(%r14)
	cmpl	$0, 324(%rbp)
	je	.LBB1_61
# BB#7:                                 # %if.then
	movq	40(%rbp), %rax
	movq	(%rax), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, (%rax)
	movb	$-1, (%rcx)
	decq	8(%rax)
	jne	.LBB1_10
# BB#8:                                 # %if.then.i.i.i
	movq	%rbp, %rdi
	callq	*24(%rax)
	testl	%eax, %eax
	jne	.LBB1_10
# BB#9:                                 # %if.then.3.i.i.i
	movq	(%rbp), %rax
	movl	$25, 40(%rax)
	movq	%rbp, %rdi
	callq	*(%rax)
.LBB1_10:                               # %emit_byte.exit.i.i
	movq	40(%rbp), %rax
	movq	(%rax), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, (%rax)
	movb	$-32, (%rcx)
	decq	8(%rax)
	jne	.LBB1_13
# BB#11:                                # %if.then.i.11.i.i
	movq	%rbp, %rdi
	callq	*24(%rax)
	testl	%eax, %eax
	jne	.LBB1_13
# BB#12:                                # %if.then.3.i.15.i.i
	movq	(%rbp), %rax
	movl	$25, 40(%rax)
	movq	%rbp, %rdi
	callq	*(%rax)
.LBB1_13:                               # %emit_marker.exit.i
	movq	40(%rbp), %rax
	movq	(%rax), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, (%rax)
	movb	$0, (%rcx)
	decq	8(%rax)
	jne	.LBB1_16
# BB#14:                                # %if.then.i.i.28.i
	movq	%rbp, %rdi
	callq	*24(%rax)
	testl	%eax, %eax
	jne	.LBB1_16
# BB#15:                                # %if.then.3.i.i.32.i
	movq	(%rbp), %rax
	movl	$25, 40(%rax)
	movq	%rbp, %rdi
	callq	*(%rax)
.LBB1_16:                               # %emit_byte.exit.i.33.i
	movq	40(%rbp), %rax
	movq	(%rax), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, (%rax)
	movb	$16, (%rcx)
	decq	8(%rax)
	jne	.LBB1_19
# BB#17:                                # %if.then.i.14.i.i
	movq	%rbp, %rdi
	callq	*24(%rax)
	testl	%eax, %eax
	jne	.LBB1_19
# BB#18:                                # %if.then.3.i.18.i.i
	movq	(%rbp), %rax
	movl	$25, 40(%rax)
	movq	%rbp, %rdi
	callq	*(%rax)
.LBB1_19:                               # %emit_2bytes.exit.i
	movq	40(%rbp), %rax
	movq	(%rax), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, (%rax)
	movb	$74, (%rcx)
	decq	8(%rax)
	jne	.LBB1_22
# BB#20:                                # %if.then.i.i.15
	movq	%rbp, %rdi
	callq	*24(%rax)
	testl	%eax, %eax
	jne	.LBB1_22
# BB#21:                                # %if.then.3.i.i.19
	movq	(%rbp), %rax
	movl	$25, 40(%rax)
	movq	%rbp, %rdi
	callq	*(%rax)
.LBB1_22:                               # %emit_byte.exit.i.20
	movq	40(%rbp), %rax
	movq	(%rax), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, (%rax)
	movb	$70, (%rcx)
	decq	8(%rax)
	jne	.LBB1_25
# BB#23:                                # %if.then.i.43.i
	movq	%rbp, %rdi
	callq	*24(%rax)
	testl	%eax, %eax
	jne	.LBB1_25
# BB#24:                                # %if.then.3.i.47.i
	movq	(%rbp), %rax
	movl	$25, 40(%rax)
	movq	%rbp, %rdi
	callq	*(%rax)
.LBB1_25:                               # %emit_byte.exit48.i
	movq	40(%rbp), %rax
	movq	(%rax), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, (%rax)
	movb	$73, (%rcx)
	decq	8(%rax)
	jne	.LBB1_28
# BB#26:                                # %if.then.i.58.i
	movq	%rbp, %rdi
	callq	*24(%rax)
	testl	%eax, %eax
	jne	.LBB1_28
# BB#27:                                # %if.then.3.i.62.i
	movq	(%rbp), %rax
	movl	$25, 40(%rax)
	movq	%rbp, %rdi
	callq	*(%rax)
.LBB1_28:                               # %emit_byte.exit63.i
	movq	40(%rbp), %rax
	movq	(%rax), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, (%rax)
	movb	$70, (%rcx)
	decq	8(%rax)
	jne	.LBB1_31
# BB#29:                                # %if.then.i.73.i
	movq	%rbp, %rdi
	callq	*24(%rax)
	testl	%eax, %eax
	jne	.LBB1_31
# BB#30:                                # %if.then.3.i.77.i
	movq	(%rbp), %rax
	movl	$25, 40(%rax)
	movq	%rbp, %rdi
	callq	*(%rax)
.LBB1_31:                               # %emit_byte.exit78.i
	movq	40(%rbp), %rax
	movq	(%rax), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, (%rax)
	movb	$0, (%rcx)
	decq	8(%rax)
	jne	.LBB1_34
# BB#32:                                # %if.then.i.88.i
	movq	%rbp, %rdi
	callq	*24(%rax)
	testl	%eax, %eax
	jne	.LBB1_34
# BB#33:                                # %if.then.3.i.92.i
	movq	(%rbp), %rax
	movl	$25, 40(%rax)
	movq	%rbp, %rdi
	callq	*(%rax)
.LBB1_34:                               # %emit_byte.exit93.i
	movb	328(%rbp), %cl
	movq	40(%rbp), %rax
	movq	(%rax), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, (%rax)
	movb	%cl, (%rdx)
	decq	8(%rax)
	jne	.LBB1_37
# BB#35:                                # %if.then.i.103.i
	movq	%rbp, %rdi
	callq	*24(%rax)
	testl	%eax, %eax
	jne	.LBB1_37
# BB#36:                                # %if.then.3.i.107.i
	movq	(%rbp), %rax
	movl	$25, 40(%rax)
	movq	%rbp, %rdi
	callq	*(%rax)
.LBB1_37:                               # %emit_byte.exit108.i
	movb	329(%rbp), %cl
	movq	40(%rbp), %rax
	movq	(%rax), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, (%rax)
	movb	%cl, (%rdx)
	decq	8(%rax)
	jne	.LBB1_40
# BB#38:                                # %if.then.i.119.i
	movq	%rbp, %rdi
	callq	*24(%rax)
	testl	%eax, %eax
	jne	.LBB1_40
# BB#39:                                # %if.then.3.i.123.i
	movq	(%rbp), %rax
	movl	$25, 40(%rax)
	movq	%rbp, %rdi
	callq	*(%rax)
.LBB1_40:                               # %emit_byte.exit124.i
	movb	330(%rbp), %cl
	movq	40(%rbp), %rax
	movq	(%rax), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, (%rax)
	movb	%cl, (%rdx)
	decq	8(%rax)
	jne	.LBB1_43
# BB#41:                                # %if.then.i.135.i
	movq	%rbp, %rdi
	callq	*24(%rax)
	testl	%eax, %eax
	jne	.LBB1_43
# BB#42:                                # %if.then.3.i.139.i
	movq	(%rbp), %rax
	movl	$25, 40(%rax)
	movq	%rbp, %rdi
	callq	*(%rax)
.LBB1_43:                               # %emit_byte.exit140.i
	movzwl	332(%rbp), %ebx
	movq	40(%rbp), %rax
	movq	(%rax), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, (%rax)
	movb	%bh, (%rcx)  # NOREX
	decq	8(%rax)
	jne	.LBB1_46
# BB#44:                                # %if.then.i.i.150.i
	movq	%rbp, %rdi
	callq	*24(%rax)
	testl	%eax, %eax
	jne	.LBB1_46
# BB#45:                                # %if.then.3.i.i.154.i
	movq	(%rbp), %rax
	movl	$25, 40(%rax)
	movq	%rbp, %rdi
	callq	*(%rax)
.LBB1_46:                               # %emit_byte.exit.i.160.i
	movq	40(%rbp), %rax
	movq	(%rax), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, (%rax)
	movb	%bl, (%rcx)
	decq	8(%rax)
	jne	.LBB1_49
# BB#47:                                # %if.then.i.14.i.164.i
	movq	%rbp, %rdi
	callq	*24(%rax)
	testl	%eax, %eax
	jne	.LBB1_49
# BB#48:                                # %if.then.3.i.18.i.168.i
	movq	(%rbp), %rax
	movl	$25, 40(%rax)
	movq	%rbp, %rdi
	callq	*(%rax)
.LBB1_49:                               # %emit_2bytes.exit169.i
	movzwl	334(%rbp), %ebx
	movq	40(%rbp), %rax
	movq	(%rax), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, (%rax)
	movb	%bh, (%rcx)  # NOREX
	decq	8(%rax)
	jne	.LBB1_52
# BB#50:                                # %if.then.i.i.181.i
	movq	%rbp, %rdi
	callq	*24(%rax)
	testl	%eax, %eax
	jne	.LBB1_52
# BB#51:                                # %if.then.3.i.i.185.i
	movq	(%rbp), %rax
	movl	$25, 40(%rax)
	movq	%rbp, %rdi
	callq	*(%rax)
.LBB1_52:                               # %emit_byte.exit.i.192.i
	movq	40(%rbp), %rax
	movq	(%rax), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, (%rax)
	movb	%bl, (%rcx)
	decq	8(%rax)
	jne	.LBB1_55
# BB#53:                                # %if.then.i.14.i.196.i
	movq	%rbp, %rdi
	callq	*24(%rax)
	testl	%eax, %eax
	jne	.LBB1_55
# BB#54:                                # %if.then.3.i.18.i.200.i
	movq	(%rbp), %rax
	movl	$25, 40(%rax)
	movq	%rbp, %rdi
	callq	*(%rax)
.LBB1_55:                               # %emit_2bytes.exit201.i
	movq	40(%rbp), %rax
	movq	(%rax), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, (%rax)
	movb	$0, (%rcx)
	decq	8(%rax)
	jne	.LBB1_58
# BB#56:                                # %if.then.i.211.i
	movq	%rbp, %rdi
	callq	*24(%rax)
	testl	%eax, %eax
	jne	.LBB1_58
# BB#57:                                # %if.then.3.i.215.i
	movq	(%rbp), %rax
	movl	$25, 40(%rax)
	movq	%rbp, %rdi
	callq	*(%rax)
.LBB1_58:                               # %emit_byte.exit216.i
	movq	40(%rbp), %rax
	movq	(%rax), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, (%rax)
	movb	$0, (%rcx)
	decq	8(%rax)
	jne	.LBB1_61
# BB#59:                                # %if.then.i.226.i
	movq	%rbp, %rdi
	callq	*24(%rax)
	testl	%eax, %eax
	jne	.LBB1_61
# BB#60:                                # %if.then.3.i.230.i
	movq	(%rbp), %rax
	movl	$25, 40(%rax)
	movq	%rbp, %rdi
	callq	*(%rax)
.LBB1_61:                               # %if.end
	cmpl	$0, 336(%rbp)
	je	.LBB1_115
# BB#62:                                # %if.then.3
	movq	40(%rbp), %rax
	movq	(%rax), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, (%rax)
	movb	$-1, (%rcx)
	decq	8(%rax)
	jne	.LBB1_65
# BB#63:                                # %if.then.i.i.i.30
	movq	%rbp, %rdi
	callq	*24(%rax)
	testl	%eax, %eax
	jne	.LBB1_65
# BB#64:                                # %if.then.3.i.i.i.34
	movq	(%rbp), %rax
	movl	$25, 40(%rax)
	movq	%rbp, %rdi
	callq	*(%rax)
.LBB1_65:                               # %emit_byte.exit.i.i.40
	movq	40(%rbp), %rax
	movq	(%rax), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, (%rax)
	movb	$-18, (%rcx)
	decq	8(%rax)
	jne	.LBB1_68
# BB#66:                                # %if.then.i.11.i.i.44
	movq	%rbp, %rdi
	callq	*24(%rax)
	testl	%eax, %eax
	jne	.LBB1_68
# BB#67:                                # %if.then.3.i.15.i.i.48
	movq	(%rbp), %rax
	movl	$25, 40(%rax)
	movq	%rbp, %rdi
	callq	*(%rax)
.LBB1_68:                               # %emit_marker.exit.i.49
	movq	40(%rbp), %rax
	movq	(%rax), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, (%rax)
	movb	$0, (%rcx)
	decq	8(%rax)
	jne	.LBB1_71
# BB#69:                                # %if.then.i.i.23.i
	movq	%rbp, %rdi
	callq	*24(%rax)
	testl	%eax, %eax
	jne	.LBB1_71
# BB#70:                                # %if.then.3.i.i.27.i
	movq	(%rbp), %rax
	movl	$25, 40(%rax)
	movq	%rbp, %rdi
	callq	*(%rax)
.LBB1_71:                               # %emit_byte.exit.i.28.i
	movq	40(%rbp), %rax
	movq	(%rax), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, (%rax)
	movb	$14, (%rcx)
	decq	8(%rax)
	jne	.LBB1_74
# BB#72:                                # %if.then.i.14.i.i.58
	movq	%rbp, %rdi
	callq	*24(%rax)
	testl	%eax, %eax
	jne	.LBB1_74
# BB#73:                                # %if.then.3.i.18.i.i.62
	movq	(%rbp), %rax
	movl	$25, 40(%rax)
	movq	%rbp, %rdi
	callq	*(%rax)
.LBB1_74:                               # %emit_2bytes.exit.i.68
	movq	40(%rbp), %rax
	movq	(%rax), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, (%rax)
	movb	$65, (%rcx)
	decq	8(%rax)
	jne	.LBB1_77
# BB#75:                                # %if.then.i.i.72
	movq	%rbp, %rdi
	callq	*24(%rax)
	testl	%eax, %eax
	jne	.LBB1_77
# BB#76:                                # %if.then.3.i.i.76
	movq	(%rbp), %rax
	movl	$25, 40(%rax)
	movq	%rbp, %rdi
	callq	*(%rax)
.LBB1_77:                               # %emit_byte.exit.i.77
	movq	40(%rbp), %rax
	movq	(%rax), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, (%rax)
	movb	$100, (%rcx)
	decq	8(%rax)
	jne	.LBB1_80
# BB#78:                                # %if.then.i.38.i
	movq	%rbp, %rdi
	callq	*24(%rax)
	testl	%eax, %eax
	jne	.LBB1_80
# BB#79:                                # %if.then.3.i.42.i
	movq	(%rbp), %rax
	movl	$25, 40(%rax)
	movq	%rbp, %rdi
	callq	*(%rax)
.LBB1_80:                               # %emit_byte.exit43.i
	movq	40(%rbp), %rax
	movq	(%rax), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, (%rax)
	movb	$111, (%rcx)
	decq	8(%rax)
	jne	.LBB1_83
# BB#81:                                # %if.then.i.53.i
	movq	%rbp, %rdi
	callq	*24(%rax)
	testl	%eax, %eax
	jne	.LBB1_83
# BB#82:                                # %if.then.3.i.57.i
	movq	(%rbp), %rax
	movl	$25, 40(%rax)
	movq	%rbp, %rdi
	callq	*(%rax)
.LBB1_83:                               # %emit_byte.exit58.i
	movq	40(%rbp), %rax
	movq	(%rax), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, (%rax)
	movb	$98, (%rcx)
	decq	8(%rax)
	jne	.LBB1_86
# BB#84:                                # %if.then.i.68.i
	movq	%rbp, %rdi
	callq	*24(%rax)
	testl	%eax, %eax
	jne	.LBB1_86
# BB#85:                                # %if.then.3.i.72.i
	movq	(%rbp), %rax
	movl	$25, 40(%rax)
	movq	%rbp, %rdi
	callq	*(%rax)
.LBB1_86:                               # %emit_byte.exit73.i
	movq	40(%rbp), %rax
	movq	(%rax), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, (%rax)
	movb	$101, (%rcx)
	decq	8(%rax)
	jne	.LBB1_89
# BB#87:                                # %if.then.i.83.i
	movq	%rbp, %rdi
	callq	*24(%rax)
	testl	%eax, %eax
	jne	.LBB1_89
# BB#88:                                # %if.then.3.i.87.i
	movq	(%rbp), %rax
	movl	$25, 40(%rax)
	movq	%rbp, %rdi
	callq	*(%rax)
.LBB1_89:                               # %emit_byte.exit88.i
	movq	40(%rbp), %rax
	movq	(%rax), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, (%rax)
	movb	$0, (%rcx)
	decq	8(%rax)
	jne	.LBB1_92
# BB#90:                                # %if.then.i.i.98.i
	movq	%rbp, %rdi
	callq	*24(%rax)
	testl	%eax, %eax
	jne	.LBB1_92
# BB#91:                                # %if.then.3.i.i.102.i
	movq	(%rbp), %rax
	movl	$25, 40(%rax)
	movq	%rbp, %rdi
	callq	*(%rax)
.LBB1_92:                               # %emit_byte.exit.i.108.i
	movq	40(%rbp), %rax
	movq	(%rax), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, (%rax)
	movb	$100, (%rcx)
	decq	8(%rax)
	jne	.LBB1_95
# BB#93:                                # %if.then.i.14.i.112.i
	movq	%rbp, %rdi
	callq	*24(%rax)
	testl	%eax, %eax
	jne	.LBB1_95
# BB#94:                                # %if.then.3.i.18.i.116.i
	movq	(%rbp), %rax
	movl	$25, 40(%rax)
	movq	%rbp, %rdi
	callq	*(%rax)
.LBB1_95:                               # %emit_2bytes.exit117.i
	movq	40(%rbp), %rax
	movq	(%rax), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, (%rax)
	movb	$0, (%rcx)
	decq	8(%rax)
	jne	.LBB1_98
# BB#96:                                # %if.then.i.i.127.i
	movq	%rbp, %rdi
	callq	*24(%rax)
	testl	%eax, %eax
	jne	.LBB1_98
# BB#97:                                # %if.then.3.i.i.131.i
	movq	(%rbp), %rax
	movl	$25, 40(%rax)
	movq	%rbp, %rdi
	callq	*(%rax)
.LBB1_98:                               # %emit_byte.exit.i.137.i
	movq	40(%rbp), %rax
	movq	(%rax), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, (%rax)
	movb	$0, (%rcx)
	decq	8(%rax)
	jne	.LBB1_101
# BB#99:                                # %if.then.i.14.i.141.i
	movq	%rbp, %rdi
	callq	*24(%rax)
	testl	%eax, %eax
	jne	.LBB1_101
# BB#100:                               # %if.then.3.i.18.i.145.i
	movq	(%rbp), %rax
	movl	$25, 40(%rax)
	movq	%rbp, %rdi
	callq	*(%rax)
.LBB1_101:                              # %emit_2bytes.exit146.i
	movq	40(%rbp), %rax
	movq	(%rax), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, (%rax)
	movb	$0, (%rcx)
	decq	8(%rax)
	jne	.LBB1_104
# BB#102:                               # %if.then.i.i.156.i
	movq	%rbp, %rdi
	callq	*24(%rax)
	testl	%eax, %eax
	jne	.LBB1_104
# BB#103:                               # %if.then.3.i.i.160.i
	movq	(%rbp), %rax
	movl	$25, 40(%rax)
	movq	%rbp, %rdi
	callq	*(%rax)
.LBB1_104:                              # %emit_byte.exit.i.166.i
	movq	40(%rbp), %rax
	movq	(%rax), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, (%rax)
	movb	$0, (%rcx)
	decq	8(%rax)
	jne	.LBB1_107
# BB#105:                               # %if.then.i.14.i.170.i
	movq	%rbp, %rdi
	callq	*24(%rax)
	testl	%eax, %eax
	jne	.LBB1_107
# BB#106:                               # %if.then.3.i.18.i.174.i
	movq	(%rbp), %rax
	movl	$25, 40(%rax)
	movq	%rbp, %rdi
	callq	*(%rax)
.LBB1_107:                              # %emit_2bytes.exit175.i
	movl	96(%rbp), %eax
	cmpl	$5, %eax
	jne	.LBB1_108
# BB#113:                               # %sw.bb.1.i
	movq	40(%rbp), %rax
	movq	(%rax), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, (%rax)
	movb	$2, (%rcx)
	jmp	.LBB1_110
.LBB1_108:                              # %emit_2bytes.exit175.i
	cmpl	$3, %eax
	jne	.LBB1_114
# BB#109:                               # %sw.bb.i
	movq	40(%rbp), %rax
	movq	(%rax), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, (%rax)
	movb	$1, (%rcx)
	jmp	.LBB1_110
.LBB1_114:                              # %sw.default.i
	movq	40(%rbp), %rax
	movq	(%rax), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, (%rax)
	movb	$0, (%rcx)
.LBB1_110:                              # %sw.bb.i
	decq	8(%rax)
	jne	.LBB1_115
# BB#111:                               # %if.then.i.185.i
	movq	%rbp, %rdi
	callq	*24(%rax)
	testl	%eax, %eax
	je	.LBB1_112
.LBB1_115:                              # %if.end.4
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.LBB1_112:                              # %if.then.3.i.189.i
	movq	(%rbp), %rax
	movl	$25, 40(%rax)
	movq	%rbp, %rdi
	popq	%rbx
	popq	%r14
	popq	%rbp
	jmpq	*(%rax)                 # TAILCALL
.Lfunc_end1:
	.size	write_file_header, .Lfunc_end1-write_file_header
	.cfi_endproc

	.align	16, 0x90
	.type	write_frame_header,@function
write_frame_header:                     # @write_frame_header
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp8:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp9:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp10:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp11:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp12:
	.cfi_def_cfa_offset 48
.Ltmp13:
	.cfi_offset %rbx, -40
.Ltmp14:
	.cfi_offset %r14, -32
.Ltmp15:
	.cfi_offset %r15, -24
.Ltmp16:
	.cfi_offset %rbp, -16
	movq	%rdi, %r14
	movl	92(%r14), %eax
	xorl	%r15d, %r15d
	testl	%eax, %eax
	jle	.LBB2_3
# BB#1:                                 # %for.body.lr.ph
	movq	104(%r14), %rbx
	addq	$16, %rbx
	xorl	%r15d, %r15d
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB2_2:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movl	(%rbx), %esi
	movq	%r14, %rdi
	callq	emit_dqt
	addl	%eax, %r15d
	incl	%ebp
	movl	92(%r14), %eax
	addq	$96, %rbx
	cmpl	%eax, %ebp
	jl	.LBB2_2
.LBB2_3:                                # %for.end
	cmpl	$0, 292(%r14)
	movl	348(%r14), %ecx
	je	.LBB2_6
# BB#4:                                 # %if.end.24.thread
	testl	%ecx, %ecx
	jne	.LBB2_29
	jmp	.LBB2_5
.LBB2_6:                                # %lor.lhs.false
	testl	%ecx, %ecx
	jne	.LBB2_31
# BB#7:                                 # %lor.lhs.false.2
	cmpl	$8, 88(%r14)
	jne	.LBB2_34
# BB#8:                                 # %lor.lhs.false.4
	cmpl	$8, 476(%r14)
	jne	.LBB2_34
# BB#9:                                 # %if.else
	movl	$1, %ecx
	testl	%eax, %eax
	jle	.LBB2_25
# BB#10:                                # %for.body.10.lr.ph
	movq	104(%r14), %rdx
	testb	$1, %al
	jne	.LBB2_12
# BB#11:
	xorl	%esi, %esi
	movl	$1, %ecx
	jmp	.LBB2_16
.LBB2_12:                               # %for.body.10.prol
	cmpl	$1, 20(%rdx)
	jg	.LBB2_14
# BB#13:                                # %lor.lhs.false.12.prol
	movl	$1, %ecx
	cmpl	$2, 24(%rdx)
	jl	.LBB2_15
.LBB2_14:                               # %if.then.14.prol
	xorl	%ecx, %ecx
.LBB2_15:                               # %for.inc.15.prol
	addq	$96, %rdx
	movl	$1, %esi
.LBB2_16:                               # %for.body.10.lr.ph.split
	cmpl	$1, %eax
	je	.LBB2_25
# BB#17:                                # %for.body.10.lr.ph.split.split
	addq	$120, %rdx
	.align	16, 0x90
.LBB2_18:                               # %for.body.10
                                        # =>This Inner Loop Header: Depth=1
	cmpl	$1, -100(%rdx)
	jg	.LBB2_20
# BB#19:                                # %lor.lhs.false.12
                                        #   in Loop: Header=BB2_18 Depth=1
	cmpl	$2, -96(%rdx)
	jl	.LBB2_21
.LBB2_20:                               # %if.then.14
                                        #   in Loop: Header=BB2_18 Depth=1
	xorl	%ecx, %ecx
.LBB2_21:                               # %for.inc.15
                                        #   in Loop: Header=BB2_18 Depth=1
	cmpl	$1, -4(%rdx)
	jg	.LBB2_23
# BB#22:                                # %lor.lhs.false.12.1
                                        #   in Loop: Header=BB2_18 Depth=1
	cmpl	$2, (%rdx)
	jl	.LBB2_24
.LBB2_23:                               # %if.then.14.1
                                        #   in Loop: Header=BB2_18 Depth=1
	xorl	%ecx, %ecx
.LBB2_24:                               # %for.inc.15.1
                                        #   in Loop: Header=BB2_18 Depth=1
	addl	$2, %esi
	addq	$192, %rdx
	cmpl	%eax, %esi
	jl	.LBB2_18
.LBB2_25:                               # %for.end.18
	testl	%r15d, %r15d
	je	.LBB2_32
# BB#26:                                # %for.end.18
	testl	%ecx, %ecx
	je	.LBB2_32
# BB#27:                                # %if.end.24
	movq	(%r14), %rax
	movl	$77, 40(%rax)
	xorl	%esi, %esi
	movq	%r14, %rdi
	callq	*8(%rax)
	movl	348(%r14), %eax
	cmpl	$0, 292(%r14)
	je	.LBB2_30
# BB#28:                                # %if.then.27
	testl	%eax, %eax
	je	.LBB2_5
.LBB2_29:                               # %if.then.30
	movl	$202, %esi
	jmp	.LBB2_35
.LBB2_5:                                # %if.else.31
	movl	$201, %esi
	jmp	.LBB2_35
.LBB2_32:                               # %if.else.37
	testl	%ecx, %ecx
	je	.LBB2_34
# BB#33:                                # %if.then.39
	movl	$192, %esi
	jmp	.LBB2_35
.LBB2_30:                               # %if.else.33
	testl	%eax, %eax
	je	.LBB2_34
.LBB2_31:                               # %if.then.36
	movl	$194, %esi
	jmp	.LBB2_35
.LBB2_34:                               # %if.else.40
	movl	$193, %esi
.LBB2_35:                               # %if.end.43
	movq	%r14, %rdi
	callq	emit_sof
	movl	340(%r14), %eax
	testl	%eax, %eax
	je	.LBB2_117
# BB#36:                                # %if.end.43
	cmpl	$1, %eax
	jne	.LBB2_38
# BB#37:                                # %lor.lhs.false.i
	cmpl	$2, 92(%r14)
	jg	.LBB2_39
.LBB2_38:                               # %if.then.i
	movq	(%r14), %rax
	movl	$28, 40(%rax)
	movq	%r14, %rdi
	callq	*(%rax)
.LBB2_39:                               # %if.end.i
	movq	40(%r14), %rax
	movq	(%rax), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, (%rax)
	movb	$-1, (%rcx)
	decq	8(%rax)
	jne	.LBB2_42
# BB#40:                                # %if.then.i.i.i
	movq	%r14, %rdi
	callq	*24(%rax)
	testl	%eax, %eax
	jne	.LBB2_42
# BB#41:                                # %if.then.3.i.i.i
	movq	(%r14), %rax
	movl	$25, 40(%rax)
	movq	%r14, %rdi
	callq	*(%rax)
.LBB2_42:                               # %emit_byte.exit.i.i
	movq	40(%r14), %rax
	movq	(%rax), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, (%rax)
	movb	$-8, (%rcx)
	decq	8(%rax)
	jne	.LBB2_45
# BB#43:                                # %if.then.i.11.i.i
	movq	%r14, %rdi
	callq	*24(%rax)
	testl	%eax, %eax
	jne	.LBB2_45
# BB#44:                                # %if.then.3.i.15.i.i
	movq	(%r14), %rax
	movl	$25, 40(%rax)
	movq	%r14, %rdi
	callq	*(%rax)
.LBB2_45:                               # %emit_marker.exit.i
	movq	40(%r14), %rax
	movq	(%rax), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, (%rax)
	movb	$0, (%rcx)
	decq	8(%rax)
	jne	.LBB2_48
# BB#46:                                # %if.then.i.i.34.i
	movq	%r14, %rdi
	callq	*24(%rax)
	testl	%eax, %eax
	jne	.LBB2_48
# BB#47:                                # %if.then.3.i.i.38.i
	movq	(%r14), %rax
	movl	$25, 40(%rax)
	movq	%r14, %rdi
	callq	*(%rax)
.LBB2_48:                               # %emit_byte.exit.i.39.i
	movq	40(%r14), %rax
	movq	(%rax), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, (%rax)
	movb	$24, (%rcx)
	decq	8(%rax)
	jne	.LBB2_51
# BB#49:                                # %if.then.i.14.i.i
	movq	%r14, %rdi
	callq	*24(%rax)
	testl	%eax, %eax
	jne	.LBB2_51
# BB#50:                                # %if.then.3.i.18.i.i
	movq	(%r14), %rax
	movl	$25, 40(%rax)
	movq	%r14, %rdi
	callq	*(%rax)
.LBB2_51:                               # %emit_2bytes.exit.i
	movq	40(%r14), %rax
	movq	(%rax), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, (%rax)
	movb	$13, (%rcx)
	decq	8(%rax)
	jne	.LBB2_54
# BB#52:                                # %if.then.i.i
	movq	%r14, %rdi
	callq	*24(%rax)
	testl	%eax, %eax
	jne	.LBB2_54
# BB#53:                                # %if.then.3.i.i
	movq	(%r14), %rax
	movl	$25, 40(%rax)
	movq	%r14, %rdi
	callq	*(%rax)
.LBB2_54:                               # %emit_byte.exit.i
	movq	40(%r14), %rax
	movq	(%rax), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, (%rax)
	movb	$0, (%rcx)
	decq	8(%rax)
	jne	.LBB2_57
# BB#55:                                # %if.then.i.i.49.i
	movq	%r14, %rdi
	callq	*24(%rax)
	testl	%eax, %eax
	jne	.LBB2_57
# BB#56:                                # %if.then.3.i.i.53.i
	movq	(%r14), %rax
	movl	$25, 40(%rax)
	movq	%r14, %rdi
	callq	*(%rax)
.LBB2_57:                               # %emit_byte.exit.i.59.i
	movq	40(%r14), %rax
	movq	(%rax), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, (%rax)
	movb	$-1, (%rcx)
	decq	8(%rax)
	jne	.LBB2_60
# BB#58:                                # %if.then.i.14.i.63.i
	movq	%r14, %rdi
	callq	*24(%rax)
	testl	%eax, %eax
	jne	.LBB2_60
# BB#59:                                # %if.then.3.i.18.i.67.i
	movq	(%r14), %rax
	movl	$25, 40(%rax)
	movq	%r14, %rdi
	callq	*(%rax)
.LBB2_60:                               # %emit_2bytes.exit68.i
	movq	40(%r14), %rax
	movq	(%rax), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, (%rax)
	movb	$3, (%rcx)
	decq	8(%rax)
	jne	.LBB2_63
# BB#61:                                # %if.then.i.78.i
	movq	%r14, %rdi
	callq	*24(%rax)
	testl	%eax, %eax
	jne	.LBB2_63
# BB#62:                                # %if.then.3.i.82.i
	movq	(%r14), %rax
	movl	$25, 40(%rax)
	movq	%r14, %rdi
	callq	*(%rax)
.LBB2_63:                               # %emit_byte.exit83.i
	movq	40(%r14), %rax
	movq	104(%r14), %rcx
	movb	96(%rcx), %cl
	movq	(%rax), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, (%rax)
	movb	%cl, (%rdx)
	decq	8(%rax)
	jne	.LBB2_66
# BB#64:                                # %if.then.i.93.i
	movq	%r14, %rdi
	callq	*24(%rax)
	testl	%eax, %eax
	jne	.LBB2_66
# BB#65:                                # %if.then.3.i.97.i
	movq	(%r14), %rax
	movl	$25, 40(%rax)
	movq	%r14, %rdi
	callq	*(%rax)
.LBB2_66:                               # %emit_byte.exit98.i
	movq	40(%r14), %rax
	movq	104(%r14), %rcx
	movb	(%rcx), %cl
	movq	(%rax), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, (%rax)
	movb	%cl, (%rdx)
	decq	8(%rax)
	jne	.LBB2_69
# BB#67:                                # %if.then.i.109.i
	movq	%r14, %rdi
	callq	*24(%rax)
	testl	%eax, %eax
	jne	.LBB2_69
# BB#68:                                # %if.then.3.i.113.i
	movq	(%r14), %rax
	movl	$25, 40(%rax)
	movq	%r14, %rdi
	callq	*(%rax)
.LBB2_69:                               # %emit_byte.exit114.i
	movq	40(%r14), %rax
	movq	104(%r14), %rcx
	movb	192(%rcx), %cl
	movq	(%rax), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, (%rax)
	movb	%cl, (%rdx)
	decq	8(%rax)
	jne	.LBB2_72
# BB#70:                                # %if.then.i.125.i
	movq	%r14, %rdi
	callq	*24(%rax)
	testl	%eax, %eax
	jne	.LBB2_72
# BB#71:                                # %if.then.3.i.129.i
	movq	(%r14), %rax
	movl	$25, 40(%rax)
	movq	%r14, %rdi
	callq	*(%rax)
.LBB2_72:                               # %emit_byte.exit130.i
	movq	40(%r14), %rax
	movq	(%rax), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, (%rax)
	movb	$-128, (%rcx)
	decq	8(%rax)
	jne	.LBB2_75
# BB#73:                                # %if.then.i.140.i
	movq	%r14, %rdi
	callq	*24(%rax)
	testl	%eax, %eax
	jne	.LBB2_75
# BB#74:                                # %if.then.3.i.144.i
	movq	(%r14), %rax
	movl	$25, 40(%rax)
	movq	%r14, %rdi
	callq	*(%rax)
.LBB2_75:                               # %emit_byte.exit145.i
	movq	40(%r14), %rax
	movq	(%rax), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, (%rax)
	movb	$0, (%rcx)
	decq	8(%rax)
	jne	.LBB2_78
# BB#76:                                # %if.then.i.i.155.i
	movq	%r14, %rdi
	callq	*24(%rax)
	testl	%eax, %eax
	jne	.LBB2_78
# BB#77:                                # %if.then.3.i.i.159.i
	movq	(%r14), %rax
	movl	$25, 40(%rax)
	movq	%r14, %rdi
	callq	*(%rax)
.LBB2_78:                               # %emit_byte.exit.i.165.i
	movq	40(%r14), %rax
	movq	(%rax), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, (%rax)
	movb	$0, (%rcx)
	decq	8(%rax)
	jne	.LBB2_81
# BB#79:                                # %if.then.i.14.i.169.i
	movq	%r14, %rdi
	callq	*24(%rax)
	testl	%eax, %eax
	jne	.LBB2_81
# BB#80:                                # %if.then.3.i.18.i.173.i
	movq	(%r14), %rax
	movl	$25, 40(%rax)
	movq	%r14, %rdi
	callq	*(%rax)
.LBB2_81:                               # %emit_2bytes.exit174.i
	movq	40(%r14), %rax
	movq	(%rax), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, (%rax)
	movb	$0, (%rcx)
	decq	8(%rax)
	jne	.LBB2_84
# BB#82:                                # %if.then.i.i.184.i
	movq	%r14, %rdi
	callq	*24(%rax)
	testl	%eax, %eax
	jne	.LBB2_84
# BB#83:                                # %if.then.3.i.i.188.i
	movq	(%r14), %rax
	movl	$25, 40(%rax)
	movq	%r14, %rdi
	callq	*(%rax)
.LBB2_84:                               # %emit_byte.exit.i.194.i
	movq	40(%r14), %rax
	movq	(%rax), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, (%rax)
	movb	$0, (%rcx)
	decq	8(%rax)
	jne	.LBB2_87
# BB#85:                                # %if.then.i.14.i.198.i
	movq	%r14, %rdi
	callq	*24(%rax)
	testl	%eax, %eax
	jne	.LBB2_87
# BB#86:                                # %if.then.3.i.18.i.202.i
	movq	(%r14), %rax
	movl	$25, 40(%rax)
	movq	%r14, %rdi
	callq	*(%rax)
.LBB2_87:                               # %emit_2bytes.exit203.i
	movq	40(%r14), %rax
	movq	(%rax), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, (%rax)
	movb	$0, (%rcx)
	decq	8(%rax)
	jne	.LBB2_90
# BB#88:                                # %if.then.i.213.i
	movq	%r14, %rdi
	callq	*24(%rax)
	testl	%eax, %eax
	jne	.LBB2_90
# BB#89:                                # %if.then.3.i.217.i
	movq	(%r14), %rax
	movl	$25, 40(%rax)
	movq	%r14, %rdi
	callq	*(%rax)
.LBB2_90:                               # %emit_byte.exit218.i
	movq	40(%r14), %rax
	movq	(%rax), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, (%rax)
	movb	$0, (%rcx)
	decq	8(%rax)
	jne	.LBB2_93
# BB#91:                                # %if.then.i.i.228.i
	movq	%r14, %rdi
	callq	*24(%rax)
	testl	%eax, %eax
	jne	.LBB2_93
# BB#92:                                # %if.then.3.i.i.232.i
	movq	(%r14), %rax
	movl	$25, 40(%rax)
	movq	%r14, %rdi
	callq	*(%rax)
.LBB2_93:                               # %emit_byte.exit.i.238.i
	movq	40(%r14), %rax
	movq	(%rax), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, (%rax)
	movb	$1, (%rcx)
	decq	8(%rax)
	jne	.LBB2_96
# BB#94:                                # %if.then.i.14.i.242.i
	movq	%r14, %rdi
	callq	*24(%rax)
	testl	%eax, %eax
	jne	.LBB2_96
# BB#95:                                # %if.then.3.i.18.i.246.i
	movq	(%r14), %rax
	movl	$25, 40(%rax)
	movq	%r14, %rdi
	callq	*(%rax)
.LBB2_96:                               # %emit_2bytes.exit247.i
	movq	40(%r14), %rax
	movq	(%rax), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, (%rax)
	movb	$0, (%rcx)
	decq	8(%rax)
	jne	.LBB2_99
# BB#97:                                # %if.then.i.i.257.i
	movq	%r14, %rdi
	callq	*24(%rax)
	testl	%eax, %eax
	jne	.LBB2_99
# BB#98:                                # %if.then.3.i.i.261.i
	movq	(%r14), %rax
	movl	$25, 40(%rax)
	movq	%r14, %rdi
	callq	*(%rax)
.LBB2_99:                               # %emit_byte.exit.i.267.i
	movq	40(%r14), %rax
	movq	(%rax), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, (%rax)
	movb	$0, (%rcx)
	decq	8(%rax)
	jne	.LBB2_102
# BB#100:                               # %if.then.i.14.i.271.i
	movq	%r14, %rdi
	callq	*24(%rax)
	testl	%eax, %eax
	jne	.LBB2_102
# BB#101:                               # %if.then.3.i.18.i.275.i
	movq	(%r14), %rax
	movl	$25, 40(%rax)
	movq	%r14, %rdi
	callq	*(%rax)
.LBB2_102:                              # %emit_2bytes.exit276.i
	movq	40(%r14), %rax
	movq	(%rax), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, (%rax)
	movb	$0, (%rcx)
	decq	8(%rax)
	jne	.LBB2_105
# BB#103:                               # %if.then.i.286.i
	movq	%r14, %rdi
	callq	*24(%rax)
	testl	%eax, %eax
	jne	.LBB2_105
# BB#104:                               # %if.then.3.i.290.i
	movq	(%r14), %rax
	movl	$25, 40(%rax)
	movq	%r14, %rdi
	callq	*(%rax)
.LBB2_105:                              # %emit_byte.exit291.i
	movq	40(%r14), %rax
	movq	(%rax), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, (%rax)
	movb	$0, (%rcx)
	decq	8(%rax)
	jne	.LBB2_108
# BB#106:                               # %if.then.i.i.301.i
	movq	%r14, %rdi
	callq	*24(%rax)
	testl	%eax, %eax
	jne	.LBB2_108
# BB#107:                               # %if.then.3.i.i.305.i
	movq	(%r14), %rax
	movl	$25, 40(%rax)
	movq	%r14, %rdi
	callq	*(%rax)
.LBB2_108:                              # %emit_byte.exit.i.311.i
	movq	40(%r14), %rax
	movq	(%rax), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, (%rax)
	movb	$1, (%rcx)
	decq	8(%rax)
	jne	.LBB2_111
# BB#109:                               # %if.then.i.14.i.315.i
	movq	%r14, %rdi
	callq	*24(%rax)
	testl	%eax, %eax
	jne	.LBB2_111
# BB#110:                               # %if.then.3.i.18.i.319.i
	movq	(%r14), %rax
	movl	$25, 40(%rax)
	movq	%r14, %rdi
	callq	*(%rax)
.LBB2_111:                              # %emit_2bytes.exit320.i
	movq	40(%r14), %rax
	movq	(%rax), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, (%rax)
	movb	$0, (%rcx)
	decq	8(%rax)
	jne	.LBB2_114
# BB#112:                               # %if.then.i.i.330.i
	movq	%r14, %rdi
	callq	*24(%rax)
	testl	%eax, %eax
	jne	.LBB2_114
# BB#113:                               # %if.then.3.i.i.334.i
	movq	(%r14), %rax
	movl	$25, 40(%rax)
	movq	%r14, %rdi
	callq	*(%rax)
.LBB2_114:                              # %emit_byte.exit.i.340.i
	movq	40(%r14), %rax
	movq	(%rax), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, (%rax)
	movb	$0, (%rcx)
	decq	8(%rax)
	jne	.LBB2_117
# BB#115:                               # %if.then.i.14.i.344.i
	movq	%r14, %rdi
	callq	*24(%rax)
	testl	%eax, %eax
	jne	.LBB2_117
# BB#116:                               # %if.then.3.i.18.i.348.i
	movq	(%r14), %rax
	movl	$25, 40(%rax)
	movq	%r14, %rdi
	callq	*(%rax)
.LBB2_117:                              # %if.end.46
	cmpl	$0, 348(%r14)
	je	.LBB2_142
# BB#118:                               # %land.lhs.true.49
	cmpl	$8, 476(%r14)
	je	.LBB2_142
# BB#119:                               # %if.then.52
	movq	40(%r14), %rax
	movq	(%rax), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, (%rax)
	movb	$-1, (%rcx)
	decq	8(%rax)
	jne	.LBB2_122
# BB#120:                               # %if.then.i.i.i.43
	movq	%r14, %rdi
	callq	*24(%rax)
	testl	%eax, %eax
	jne	.LBB2_122
# BB#121:                               # %if.then.3.i.i.i.47
	movq	(%r14), %rax
	movl	$25, 40(%rax)
	movq	%r14, %rdi
	callq	*(%rax)
.LBB2_122:                              # %emit_byte.exit.i.i.53
	movq	40(%r14), %rax
	movq	(%rax), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, (%rax)
	movb	$-38, (%rcx)
	decq	8(%rax)
	jne	.LBB2_125
# BB#123:                               # %if.then.i.11.i.i.57
	movq	%r14, %rdi
	callq	*24(%rax)
	testl	%eax, %eax
	jne	.LBB2_125
# BB#124:                               # %if.then.3.i.15.i.i.61
	movq	(%r14), %rax
	movl	$25, 40(%rax)
	movq	%r14, %rdi
	callq	*(%rax)
.LBB2_125:                              # %emit_marker.exit.i.62
	movq	40(%r14), %rax
	movq	(%rax), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, (%rax)
	movb	$0, (%rcx)
	decq	8(%rax)
	jne	.LBB2_128
# BB#126:                               # %if.then.i.i.17.i
	movq	%r14, %rdi
	callq	*24(%rax)
	testl	%eax, %eax
	jne	.LBB2_128
# BB#127:                               # %if.then.3.i.i.21.i
	movq	(%r14), %rax
	movl	$25, 40(%rax)
	movq	%r14, %rdi
	callq	*(%rax)
.LBB2_128:                              # %emit_byte.exit.i.22.i
	movq	40(%r14), %rax
	movq	(%rax), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, (%rax)
	movb	$6, (%rcx)
	decq	8(%rax)
	jne	.LBB2_131
# BB#129:                               # %if.then.i.14.i.i.71
	movq	%r14, %rdi
	callq	*24(%rax)
	testl	%eax, %eax
	jne	.LBB2_131
# BB#130:                               # %if.then.3.i.18.i.i.75
	movq	(%r14), %rax
	movl	$25, 40(%rax)
	movq	%r14, %rdi
	callq	*(%rax)
.LBB2_131:                              # %emit_2bytes.exit.i.81
	movq	40(%r14), %rax
	movq	(%rax), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, (%rax)
	movb	$0, (%rcx)
	decq	8(%rax)
	jne	.LBB2_134
# BB#132:                               # %if.then.i.i.85
	movq	%r14, %rdi
	callq	*24(%rax)
	testl	%eax, %eax
	jne	.LBB2_134
# BB#133:                               # %if.then.3.i.i.89
	movq	(%r14), %rax
	movl	$25, 40(%rax)
	movq	%r14, %rdi
	callq	*(%rax)
.LBB2_134:                              # %emit_byte.exit.i.90
	movq	40(%r14), %rax
	movq	(%rax), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, (%rax)
	movb	$0, (%rcx)
	decq	8(%rax)
	jne	.LBB2_137
# BB#135:                               # %if.then.i.32.i
	movq	%r14, %rdi
	callq	*24(%rax)
	testl	%eax, %eax
	jne	.LBB2_137
# BB#136:                               # %if.then.3.i.36.i
	movq	(%r14), %rax
	movl	$25, 40(%rax)
	movq	%r14, %rdi
	callq	*(%rax)
.LBB2_137:                              # %emit_byte.exit37.i
	movl	476(%r14), %ecx
	imull	%ecx, %ecx
	addl	$255, %ecx
	movq	40(%r14), %rax
	movq	(%rax), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, (%rax)
	movb	%cl, (%rdx)
	decq	8(%rax)
	jne	.LBB2_140
# BB#138:                               # %if.then.i.47.i
	movq	%r14, %rdi
	callq	*24(%rax)
	testl	%eax, %eax
	jne	.LBB2_140
# BB#139:                               # %if.then.3.i.51.i
	movq	(%r14), %rax
	movl	$25, 40(%rax)
	movq	%r14, %rdi
	callq	*(%rax)
.LBB2_140:                              # %emit_byte.exit52.i
	movq	40(%r14), %rax
	movq	(%rax), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, (%rax)
	movb	$0, (%rcx)
	decq	8(%rax)
	jne	.LBB2_142
# BB#141:                               # %if.then.i.62.i
	movq	%r14, %rdi
	callq	*24(%rax)
	testl	%eax, %eax
	je	.LBB2_143
.LBB2_142:                              # %if.end.53
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB2_143:                              # %if.then.3.i.66.i
	movq	(%r14), %rax
	movl	$25, 40(%rax)
	movq	%r14, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	jmpq	*(%rax)                 # TAILCALL
.Lfunc_end2:
	.size	write_frame_header, .Lfunc_end2-write_frame_header
	.cfi_endproc

	.align	16, 0x90
	.type	write_scan_header,@function
write_scan_header:                      # @write_scan_header
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp17:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp18:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp19:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp20:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp21:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp22:
	.cfi_def_cfa_offset 56
	subq	$216, %rsp
.Ltmp23:
	.cfi_def_cfa_offset 272
.Ltmp24:
	.cfi_offset %rbx, -56
.Ltmp25:
	.cfi_offset %r12, -48
.Ltmp26:
	.cfi_offset %r13, -40
.Ltmp27:
	.cfi_offset %r14, -32
.Ltmp28:
	.cfi_offset %r15, -24
.Ltmp29:
	.cfi_offset %rbp, -16
	movq	%rdi, %r13
	movq	528(%r13), %r14
	cmpl	$0, 292(%r13)
	je	.LBB3_1
# BB#9:                                 # %if.then
	movq	%r14, 56(%rsp)          # 8-byte Spill
	xorps	%xmm0, %xmm0
	movaps	%xmm0, 176(%rsp)
	movaps	%xmm0, 192(%rsp)
	movslq	372(%r13), %rcx
	xorl	%r12d, %r12d
	testq	%rcx, %rcx
	movl	$0, %r8d
	movl	$0, %r9d
	movl	$0, %r14d
	movl	$0, %ebx
	movl	$0, %eax
	movl	$0, %edx
	movl	$0, %r11d
	movl	$0, %r10d
	movl	$0, %edi
	movl	$0, 68(%rsp)            # 4-byte Folded Spill
	movl	$0, 72(%rsp)            # 4-byte Folded Spill
	movl	$0, 80(%rsp)            # 4-byte Folded Spill
	movl	$0, 88(%rsp)            # 4-byte Folded Spill
	movl	$0, 76(%rsp)            # 4-byte Folded Spill
	movl	$0, 84(%rsp)            # 4-byte Folded Spill
	movl	$0, 156(%rsp)           # 4-byte Folded Spill
	movl	$0, 152(%rsp)           # 4-byte Folded Spill
	movl	$0, %ebp
	movq	%rbp, 104(%rsp)         # 8-byte Spill
	movl	$0, %ebp
	movq	%rbp, 120(%rsp)         # 8-byte Spill
	movl	$0, %ebp
	movq	%rbp, 136(%rsp)         # 8-byte Spill
	movl	$0, %ebp
	movq	%rbp, 144(%rsp)         # 8-byte Spill
	movl	$0, %ebp
	movq	%rbp, 160(%rsp)         # 8-byte Spill
	movl	$0, %ebp
	movq	%rbp, 168(%rsp)         # 8-byte Spill
	movl	$0, 92(%rsp)            # 4-byte Folded Spill
	movl	$0, 96(%rsp)            # 4-byte Folded Spill
	movl	$0, 100(%rsp)           # 4-byte Folded Spill
	movl	$0, 116(%rsp)           # 4-byte Folded Spill
	movl	$0, %ebp
	movl	$0, %esi
	movl	$0, 132(%rsp)           # 4-byte Folded Spill
	movl	$0, %r15d
	jle	.LBB3_18
# BB#10:                                # %for.body.5.lr.ph.i
	movl	460(%r13), %eax
	movl	464(%r13), %edx
	leaq	376(%r13), %rsi
	.align	16, 0x90
.LBB3_11:                               # %for.body.5.i
                                        # =>This Inner Loop Header: Depth=1
	movq	(%rsi), %rdi
	testl	%eax, %eax
	jne	.LBB3_14
# BB#12:                                # %land.lhs.true.i
                                        #   in Loop: Header=BB3_11 Depth=1
	cmpl	$0, 468(%r13)
	jne	.LBB3_14
# BB#13:                                # %if.then.i
                                        #   in Loop: Header=BB3_11 Depth=1
	movslq	20(%rdi), %rbp
	movb	$1, 192(%rsp,%rbp)
	.align	16, 0x90
.LBB3_14:                               # %if.end.i
                                        #   in Loop: Header=BB3_11 Depth=1
	testl	%edx, %edx
	je	.LBB3_16
# BB#15:                                # %if.then.12.i
                                        #   in Loop: Header=BB3_11 Depth=1
	movslq	24(%rdi), %rdi
	movb	$1, 176(%rsp,%rdi)
.LBB3_16:                               # %for.inc.16.i
                                        #   in Loop: Header=BB3_11 Depth=1
	addq	$8, %rsi
	decq	%rcx
	jne	.LBB3_11
# BB#17:                                # %for.cond.3.for.cond.19.preheader_crit_edge.i
	movq	192(%rsp), %r15
	movq	176(%rsp), %rcx
	movl	%r15d, %eax
	shrl	$8, %eax
	movl	%eax, 152(%rsp)         # 4-byte Spill
	movl	%ecx, %r10d
	shrl	$8, %r10d
	movq	%r15, %rax
	shrq	$32, %rax
	movq	%rax, 168(%rsp)         # 8-byte Spill
	movq	%rcx, %rdx
	shrq	$32, %rdx
	movq	%rdx, 160(%rsp)         # 8-byte Spill
	movq	%r15, %r11
	shrq	$16, %r11
	andl	$-16777216, %r11d       # imm = 0xFFFFFFFFFF000000
	movq	%rcx, %r14
	shrq	$16, %r14
	andl	$-16777216, %r14d       # imm = 0xFFFFFFFFFF000000
	movq	%r15, %r9
	shrq	$24, %r9
	andl	$-16777216, %r9d        # imm = 0xFFFFFFFFFF000000
	movq	%rcx, %r8
	shrq	$24, %r8
	andl	$-16777216, %r8d        # imm = 0xFFFFFFFFFF000000
	movl	%eax, %ebp
	andl	$-16777216, %ebp        # imm = 0xFFFFFFFFFF000000
	movl	%edx, %eax
	andl	$-16777216, %eax        # imm = 0xFFFFFFFFFF000000
	movl	%eax, 156(%rsp)         # 4-byte Spill
	movq	200(%rsp), %rdx
	movq	184(%rsp), %rdi
	movl	%edx, %eax
	shrl	$8, %eax
	movl	%eax, 88(%rsp)          # 4-byte Spill
	movl	%edi, %eax
	shrl	$8, %eax
	movl	%eax, 84(%rsp)          # 4-byte Spill
	movq	%rdx, %rax
	shrq	$32, %rax
	movq	%rdi, %rbx
	shrq	$32, %rbx
	movq	%rbx, 8(%rsp)           # 8-byte Spill
	movq	%rdx, %rsi
	shrq	$16, %rsi
	andl	$-16777216, %esi        # imm = 0xFFFFFFFFFF000000
	movq	%rsi, 48(%rsp)          # 8-byte Spill
	movq	%rdi, %rsi
	shrq	$16, %rsi
	andl	$-16777216, %esi        # imm = 0xFFFFFFFFFF000000
	movq	%rsi, 40(%rsp)          # 8-byte Spill
	movq	%rdx, %rsi
	shrq	$24, %rsi
	andl	$-16777216, %esi        # imm = 0xFFFFFFFFFF000000
	movq	%rsi, 32(%rsp)          # 8-byte Spill
	movq	%rdi, %rsi
	shrq	$24, %rsi
	andl	$-16777216, %esi        # imm = 0xFFFFFFFFFF000000
	movq	%rsi, 24(%rsp)          # 8-byte Spill
	movl	%eax, %esi
	andl	$-16777216, %esi        # imm = 0xFFFFFFFFFF000000
	movl	%esi, 20(%rsp)          # 4-byte Spill
	movl	%ebx, %r12d
	andl	$-16777216, %r12d       # imm = 0xFFFFFFFFFF000000
	movl	152(%rsp), %esi         # 4-byte Reload
	movsbl	%sil, %esi
	movl	%esi, 16(%rsp)          # 4-byte Spill
	movsbl	%r10b, %esi
	movl	%esi, 4(%rsp)           # 4-byte Spill
	movl	%r15d, %ebx
	shrl	$16, %ebx
	movsbl	%bl, %ebx
	movl	%ebx, 116(%rsp)         # 4-byte Spill
	movq	%rax, %rsi
	movq	160(%rsp), %rax         # 8-byte Reload
	movq	168(%rsp), %rbx         # 8-byte Reload
	movsbl	%cl, %r10d
	movl	%r10d, 132(%rsp)        # 4-byte Spill
	shrl	$16, %ecx
	movsbl	%cl, %ecx
	movl	%ecx, 100(%rsp)         # 4-byte Spill
	movl	192(%rsp), %ecx
	sarl	$24, %ecx
	movl	%ecx, 96(%rsp)          # 4-byte Spill
	movl	176(%rsp), %ecx
	sarl	$24, %ecx
	movl	%ecx, 92(%rsp)          # 4-byte Spill
	shlq	$24, %rbx
	sarl	$24, %ebx
	movq	%rbx, 168(%rsp)         # 8-byte Spill
	shlq	$24, %rax
	sarl	$24, %eax
	movq	%rax, 160(%rsp)         # 8-byte Spill
	sarl	$24, %r11d
	movq	%r11, 144(%rsp)         # 8-byte Spill
	sarl	$24, %r14d
	movq	%r14, 136(%rsp)         # 8-byte Spill
	sarl	$24, %r9d
	movq	%r9, 120(%rsp)          # 8-byte Spill
	sarl	$24, %r8d
	movq	%r8, 104(%rsp)          # 8-byte Spill
	sarl	$24, %ebp
	movl	%ebp, 152(%rsp)         # 4-byte Spill
	sarl	$24, 156(%rsp)          # 4-byte Folded Spill
	movl	88(%rsp), %eax          # 4-byte Reload
	movsbl	%al, %eax
	movl	%eax, 88(%rsp)          # 4-byte Spill
	movl	84(%rsp), %eax          # 4-byte Reload
	movsbl	%al, %eax
	movl	%eax, 80(%rsp)          # 4-byte Spill
	movsbl	%dl, %eax
	movl	%eax, 84(%rsp)          # 4-byte Spill
	shrl	$16, %edx
	movsbl	%dl, %eax
	movl	%eax, 72(%rsp)          # 4-byte Spill
	movsbl	%dil, %eax
	movl	%eax, 76(%rsp)          # 4-byte Spill
	shrl	$16, %edi
	movsbl	%dil, %eax
	movl	%eax, 68(%rsp)          # 4-byte Spill
	movl	200(%rsp), %edi
	sarl	$24, %edi
	movl	184(%rsp), %r10d
	sarl	$24, %r10d
	shlq	$24, %rsi
	sarl	$24, %esi
	movq	%rsi, %r11
	movq	8(%rsp), %rax           # 8-byte Reload
	shlq	$24, %rax
	sarl	$24, %eax
	movq	%rax, %rdx
	movl	4(%rsp), %ebp           # 4-byte Reload
	movq	40(%rsp), %rbx          # 8-byte Reload
	movl	16(%rsp), %esi          # 4-byte Reload
	movq	48(%rsp), %rax          # 8-byte Reload
	sarl	$24, %eax
	sarl	$24, %ebx
	movq	32(%rsp), %r14          # 8-byte Reload
	sarl	$24, %r14d
	movq	24(%rsp), %r9           # 8-byte Reload
	sarl	$24, %r9d
	movl	20(%rsp), %r8d          # 4-byte Reload
	sarl	$24, %r8d
	sarl	$24, %r12d
.LBB3_18:                               # %for.cond.19.preheader.i
	addl	%r8d, %r12d
	addl	%r9d, %r12d
	addl	%r14d, %r12d
	addl	%ebx, %r12d
	addl	%eax, %r12d
	addl	%edx, %r12d
	addl	%r11d, %r12d
	addl	%r10d, %r12d
	addl	%edi, %r12d
	addl	68(%rsp), %r12d         # 4-byte Folded Reload
	addl	72(%rsp), %r12d         # 4-byte Folded Reload
	addl	80(%rsp), %r12d         # 4-byte Folded Reload
	addl	88(%rsp), %r12d         # 4-byte Folded Reload
	addl	76(%rsp), %r12d         # 4-byte Folded Reload
	addl	84(%rsp), %r12d         # 4-byte Folded Reload
	addl	156(%rsp), %r12d        # 4-byte Folded Reload
	addl	152(%rsp), %r12d        # 4-byte Folded Reload
	movq	104(%rsp), %rax         # 8-byte Reload
	addl	%eax, %r12d
	movq	120(%rsp), %rax         # 8-byte Reload
	addl	%eax, %r12d
	movq	136(%rsp), %rax         # 8-byte Reload
	addl	%eax, %r12d
	movq	144(%rsp), %rax         # 8-byte Reload
	addl	%eax, %r12d
	movq	160(%rsp), %rax         # 8-byte Reload
	addl	%eax, %r12d
	movq	168(%rsp), %rax         # 8-byte Reload
	addl	%eax, %r12d
	addl	92(%rsp), %r12d         # 4-byte Folded Reload
	addl	96(%rsp), %r12d         # 4-byte Folded Reload
	addl	100(%rsp), %r12d        # 4-byte Folded Reload
	addl	116(%rsp), %r12d        # 4-byte Folded Reload
	addl	%ebp, %r12d
	addl	%esi, %r12d
	addl	132(%rsp), %r12d        # 4-byte Folded Reload
	movsbl	%r15b, %eax
	addl	%eax, %r12d
	je	.LBB3_48
# BB#19:                                # %if.then.32.i
	movq	40(%r13), %rax
	movq	(%rax), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, (%rax)
	movb	$-1, (%rcx)
	decq	8(%rax)
	jne	.LBB3_22
# BB#20:                                # %if.then.i.i.i
	movq	%r13, %rdi
	callq	*24(%rax)
	testl	%eax, %eax
	jne	.LBB3_22
# BB#21:                                # %if.then.3.i.i.i
	movq	(%r13), %rax
	movl	$25, 40(%rax)
	movq	%r13, %rdi
	callq	*(%rax)
.LBB3_22:                               # %emit_byte.exit.i.i
	movq	40(%r13), %rax
	movq	(%rax), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, (%rax)
	movb	$-52, (%rcx)
	decq	8(%rax)
	jne	.LBB3_25
# BB#23:                                # %if.then.i.11.i.i
	movq	%r13, %rdi
	callq	*24(%rax)
	testl	%eax, %eax
	jne	.LBB3_25
# BB#24:                                # %if.then.3.i.15.i.i
	movq	(%r13), %rax
	movl	$25, 40(%rax)
	movq	%r13, %rdi
	callq	*(%rax)
.LBB3_25:                               # %emit_marker.exit.i
	leal	2(%r12,%r12), %ebx
	movq	40(%r13), %rax
	movq	(%rax), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, (%rax)
	movb	%bh, (%rcx)  # NOREX
	decq	8(%rax)
	jne	.LBB3_28
# BB#26:                                # %if.then.i.i.48.i
	movq	%r13, %rdi
	callq	*24(%rax)
	testl	%eax, %eax
	jne	.LBB3_28
# BB#27:                                # %if.then.3.i.i.52.i
	movq	(%r13), %rax
	movl	$25, 40(%rax)
	movq	%r13, %rdi
	callq	*(%rax)
.LBB3_28:                               # %emit_byte.exit.i.53.i
	movq	40(%r13), %rax
	movq	(%rax), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, (%rax)
	movb	%bl, (%rcx)
	decq	8(%rax)
	jne	.LBB3_31
# BB#29:                                # %if.then.i.14.i.i
	movq	%r13, %rdi
	callq	*24(%rax)
	testl	%eax, %eax
	jne	.LBB3_31
# BB#30:                                # %if.then.3.i.18.i.i
	movq	(%r13), %rax
	movl	$25, 40(%rax)
	movq	%r13, %rdi
	callq	*(%rax)
.LBB3_31:                               # %for.cond.34.preheader.i
	xorl	%ebp, %ebp
	jmp	.LBB3_32
	.align	16, 0x90
.LBB3_47:                               # %for.inc.59.for.body.37_crit_edge.i
                                        #   in Loop: Header=BB3_32 Depth=1
	movb	193(%rsp,%rbp), %r15b
	incq	%rbp
.LBB3_32:                               # %for.body.37.i
                                        # =>This Inner Loop Header: Depth=1
	testb	%r15b, %r15b
	je	.LBB3_39
# BB#33:                                # %if.then.41.i
                                        #   in Loop: Header=BB3_32 Depth=1
	movq	40(%r13), %rax
	movq	(%rax), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, (%rax)
	movb	%bpl, (%rcx)
	decq	8(%rax)
	jne	.LBB3_36
# BB#34:                                # %if.then.i.i
                                        #   in Loop: Header=BB3_32 Depth=1
	movq	%r13, %rdi
	callq	*24(%rax)
	testl	%eax, %eax
	jne	.LBB3_36
# BB#35:                                # %if.then.3.i.i
                                        #   in Loop: Header=BB3_32 Depth=1
	movq	(%r13), %rax
	movl	$25, 40(%rax)
	movq	%r13, %rdi
	callq	*(%rax)
	.align	16, 0x90
.LBB3_36:                               # %emit_byte.exit.i
                                        #   in Loop: Header=BB3_32 Depth=1
	movb	240(%r13,%rbp), %cl
	shlb	$4, %cl
	addb	224(%r13,%rbp), %cl
	movq	40(%r13), %rax
	movq	(%rax), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, (%rax)
	movb	%cl, (%rdx)
	decq	8(%rax)
	jne	.LBB3_39
# BB#37:                                # %if.then.i.64.i
                                        #   in Loop: Header=BB3_32 Depth=1
	movq	%r13, %rdi
	callq	*24(%rax)
	testl	%eax, %eax
	jne	.LBB3_39
# BB#38:                                # %if.then.3.i.68.i
                                        #   in Loop: Header=BB3_32 Depth=1
	movq	(%r13), %rax
	movl	$25, 40(%rax)
	movq	%r13, %rdi
	callq	*(%rax)
	.align	16, 0x90
.LBB3_39:                               # %if.end.49.i
                                        #   in Loop: Header=BB3_32 Depth=1
	cmpb	$0, 176(%rsp,%rbp)
	je	.LBB3_46
# BB#40:                                # %if.then.53.i
                                        #   in Loop: Header=BB3_32 Depth=1
	movq	40(%r13), %rax
	movq	(%rax), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, (%rax)
	leal	16(%rbp), %edx
	movb	%dl, (%rcx)
	decq	8(%rax)
	jne	.LBB3_43
# BB#41:                                # %if.then.i.80.i
                                        #   in Loop: Header=BB3_32 Depth=1
	movq	%r13, %rdi
	callq	*24(%rax)
	testl	%eax, %eax
	jne	.LBB3_43
# BB#42:                                # %if.then.3.i.84.i
                                        #   in Loop: Header=BB3_32 Depth=1
	movq	(%r13), %rax
	movl	$25, 40(%rax)
	movq	%r13, %rdi
	callq	*(%rax)
	.align	16, 0x90
.LBB3_43:                               # %emit_byte.exit85.i
                                        #   in Loop: Header=BB3_32 Depth=1
	movb	256(%r13,%rbp), %cl
	movq	40(%r13), %rax
	movq	(%rax), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, (%rax)
	movb	%cl, (%rdx)
	decq	8(%rax)
	jne	.LBB3_46
# BB#44:                                # %if.then.i.96.i
                                        #   in Loop: Header=BB3_32 Depth=1
	movq	%r13, %rdi
	callq	*24(%rax)
	testl	%eax, %eax
	jne	.LBB3_46
# BB#45:                                # %if.then.3.i.100.i
                                        #   in Loop: Header=BB3_32 Depth=1
	movq	(%r13), %rax
	movl	$25, 40(%rax)
	movq	%r13, %rdi
	callq	*(%rax)
	.align	16, 0x90
.LBB3_46:                               # %for.inc.59.i
                                        #   in Loop: Header=BB3_32 Depth=1
	cmpq	$15, %rbp
	jne	.LBB3_47
.LBB3_48:                               # %emit_dac.exit
	movq	56(%rsp), %r14          # 8-byte Reload
	jmp	.LBB3_49
.LBB3_1:                                # %for.cond.preheader
	cmpl	$0, 372(%r13)
	jle	.LBB3_49
# BB#2:                                 # %for.body.lr.ph
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB3_3:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movq	376(%r13,%rbx,8), %rbp
	cmpl	$0, 460(%r13)
	jne	.LBB3_6
# BB#4:                                 # %land.lhs.true
                                        #   in Loop: Header=BB3_3 Depth=1
	cmpl	$0, 468(%r13)
	jne	.LBB3_6
# BB#5:                                 # %if.then.4
                                        #   in Loop: Header=BB3_3 Depth=1
	movl	20(%rbp), %esi
	xorl	%edx, %edx
	movq	%r13, %rdi
	callq	emit_dht
	.align	16, 0x90
.LBB3_6:                                # %if.end
                                        #   in Loop: Header=BB3_3 Depth=1
	cmpl	$0, 464(%r13)
	je	.LBB3_8
# BB#7:                                 # %if.then.6
                                        #   in Loop: Header=BB3_3 Depth=1
	movl	24(%rbp), %esi
	movl	$1, %edx
	movq	%r13, %rdi
	callq	emit_dht
.LBB3_8:                                # %for.inc
                                        #   in Loop: Header=BB3_3 Depth=1
	incq	%rbx
	movslq	372(%r13), %rax
	cmpq	%rax, %rbx
	jl	.LBB3_3
.LBB3_49:                               # %if.end.8
	movl	316(%r13), %eax
	cmpl	56(%r14), %eax
	je	.LBB3_69
# BB#50:                                # %if.then.10
	movq	40(%r13), %rax
	movq	(%rax), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, (%rax)
	movb	$-1, (%rcx)
	decq	8(%rax)
	jne	.LBB3_53
# BB#51:                                # %if.then.i.i.i.30
	movq	%r13, %rdi
	callq	*24(%rax)
	testl	%eax, %eax
	jne	.LBB3_53
# BB#52:                                # %if.then.3.i.i.i.34
	movq	(%r13), %rax
	movl	$25, 40(%rax)
	movq	%r13, %rdi
	callq	*(%rax)
.LBB3_53:                               # %emit_byte.exit.i.i.40
	movq	40(%r13), %rax
	movq	(%rax), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, (%rax)
	movb	$-35, (%rcx)
	decq	8(%rax)
	jne	.LBB3_56
# BB#54:                                # %if.then.i.11.i.i.44
	movq	%r13, %rdi
	callq	*24(%rax)
	testl	%eax, %eax
	jne	.LBB3_56
# BB#55:                                # %if.then.3.i.15.i.i.48
	movq	(%r13), %rax
	movl	$25, 40(%rax)
	movq	%r13, %rdi
	callq	*(%rax)
.LBB3_56:                               # %emit_marker.exit.i.49
	movq	40(%r13), %rax
	movq	(%rax), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, (%rax)
	movb	$0, (%rcx)
	decq	8(%rax)
	jne	.LBB3_59
# BB#57:                                # %if.then.i.i.13.i
	movq	%r13, %rdi
	callq	*24(%rax)
	testl	%eax, %eax
	jne	.LBB3_59
# BB#58:                                # %if.then.3.i.i.17.i
	movq	(%r13), %rax
	movl	$25, 40(%rax)
	movq	%r13, %rdi
	callq	*(%rax)
.LBB3_59:                               # %emit_byte.exit.i.18.i
	movq	40(%r13), %rax
	movq	(%rax), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, (%rax)
	movb	$4, (%rcx)
	decq	8(%rax)
	jne	.LBB3_62
# BB#60:                                # %if.then.i.14.i.i.58
	movq	%r13, %rdi
	callq	*24(%rax)
	testl	%eax, %eax
	jne	.LBB3_62
# BB#61:                                # %if.then.3.i.18.i.i.62
	movq	(%r13), %rax
	movl	$25, 40(%rax)
	movq	%r13, %rdi
	callq	*(%rax)
.LBB3_62:                               # %emit_2bytes.exit.i
	movl	316(%r13), %ebx
	movq	40(%r13), %rax
	movq	(%rax), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, (%rax)
	movb	%bh, (%rcx)  # NOREX
	decq	8(%rax)
	jne	.LBB3_65
# BB#63:                                # %if.then.i.i.28.i
	movq	%r13, %rdi
	callq	*24(%rax)
	testl	%eax, %eax
	jne	.LBB3_65
# BB#64:                                # %if.then.3.i.i.32.i
	movq	(%r13), %rax
	movl	$25, 40(%rax)
	movq	%r13, %rdi
	callq	*(%rax)
.LBB3_65:                               # %emit_byte.exit.i.38.i
	movq	40(%r13), %rax
	movq	(%rax), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, (%rax)
	movb	%bl, (%rcx)
	decq	8(%rax)
	jne	.LBB3_68
# BB#66:                                # %if.then.i.14.i.42.i
	movq	%r13, %rdi
	callq	*24(%rax)
	testl	%eax, %eax
	jne	.LBB3_68
# BB#67:                                # %if.then.3.i.18.i.46.i
	movq	(%r13), %rax
	movl	$25, 40(%rax)
	movq	%r13, %rdi
	callq	*(%rax)
.LBB3_68:                               # %emit_dri.exit
	movl	316(%r13), %eax
	movl	%eax, 56(%r14)
.LBB3_69:                               # %if.end.13
	movq	40(%r13), %rax
	movq	(%rax), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, (%rax)
	movb	$-1, (%rcx)
	decq	8(%rax)
	jne	.LBB3_72
# BB#70:                                # %if.then.i.i.i.75
	movq	%r13, %rdi
	callq	*24(%rax)
	testl	%eax, %eax
	jne	.LBB3_72
# BB#71:                                # %if.then.3.i.i.i.79
	movq	(%r13), %rax
	movl	$25, 40(%rax)
	movq	%r13, %rdi
	callq	*(%rax)
.LBB3_72:                               # %emit_byte.exit.i.i.85
	movq	40(%r13), %rax
	movq	(%rax), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, (%rax)
	movb	$-38, (%rcx)
	decq	8(%rax)
	jne	.LBB3_75
# BB#73:                                # %if.then.i.11.i.i.89
	movq	%r13, %rdi
	callq	*24(%rax)
	testl	%eax, %eax
	jne	.LBB3_75
# BB#74:                                # %if.then.3.i.15.i.i.93
	movq	(%r13), %rax
	movl	$25, 40(%rax)
	movq	%r13, %rdi
	callq	*(%rax)
.LBB3_75:                               # %emit_marker.exit.i.98
	movl	372(%r13), %eax
	leal	6(%rax,%rax), %ebx
	movq	40(%r13), %rax
	movq	(%rax), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, (%rax)
	movb	%bh, (%rcx)  # NOREX
	decq	8(%rax)
	jne	.LBB3_78
# BB#76:                                # %if.then.i.i.36.i
	movq	%r13, %rdi
	callq	*24(%rax)
	testl	%eax, %eax
	jne	.LBB3_78
# BB#77:                                # %if.then.3.i.i.40.i
	movq	(%r13), %rax
	movl	$25, 40(%rax)
	movq	%r13, %rdi
	callq	*(%rax)
.LBB3_78:                               # %emit_byte.exit.i.41.i
	movq	40(%r13), %rax
	movq	(%rax), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, (%rax)
	movb	%bl, (%rcx)
	decq	8(%rax)
	jne	.LBB3_81
# BB#79:                                # %if.then.i.14.i.i.108
	movq	%r13, %rdi
	callq	*24(%rax)
	testl	%eax, %eax
	jne	.LBB3_81
# BB#80:                                # %if.then.3.i.18.i.i.112
	movq	(%r13), %rax
	movl	$25, 40(%rax)
	movq	%r13, %rdi
	callq	*(%rax)
.LBB3_81:                               # %emit_2bytes.exit.i.119
	movb	372(%r13), %cl
	movq	40(%r13), %rax
	movq	(%rax), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, (%rax)
	movb	%cl, (%rdx)
	decq	8(%rax)
	jne	.LBB3_84
# BB#82:                                # %if.then.i.i.123
	movq	%r13, %rdi
	callq	*24(%rax)
	testl	%eax, %eax
	jne	.LBB3_84
# BB#83:                                # %if.then.3.i.i.126
	movq	(%r13), %rax
	movl	$25, 40(%rax)
	movq	%r13, %rdi
	callq	*(%rax)
.LBB3_84:                               # %for.cond.preheader.i
	cmpl	$0, 372(%r13)
	jle	.LBB3_98
# BB#85:                                # %for.body.lr.ph.i
	xorl	%ebp, %ebp
	.align	16, 0x90
.LBB3_86:                               # %for.body.i
                                        # =>This Inner Loop Header: Depth=1
	movq	376(%r13,%rbp,8), %rbx
	movb	(%rbx), %cl
	movq	40(%r13), %rax
	movq	(%rax), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, (%rax)
	movb	%cl, (%rdx)
	decq	8(%rax)
	jne	.LBB3_89
# BB#87:                                # %if.then.i.52.i
                                        #   in Loop: Header=BB3_86 Depth=1
	movq	%r13, %rdi
	callq	*24(%rax)
	testl	%eax, %eax
	jne	.LBB3_89
# BB#88:                                # %if.then.3.i.56.i
                                        #   in Loop: Header=BB3_86 Depth=1
	movq	(%r13), %rax
	movl	$25, 40(%rax)
	movq	%r13, %rdi
	callq	*(%rax)
	.align	16, 0x90
.LBB3_89:                               # %emit_byte.exit57.i
                                        #   in Loop: Header=BB3_86 Depth=1
	xorl	%ecx, %ecx
	cmpl	$0, 460(%r13)
	movl	$0, %eax
	jne	.LBB3_92
# BB#90:                                # %land.lhs.true.i.132
                                        #   in Loop: Header=BB3_86 Depth=1
	cmpl	$0, 468(%r13)
	movl	$0, %eax
	jne	.LBB3_92
# BB#91:                                # %cond.true.i
                                        #   in Loop: Header=BB3_86 Depth=1
	movl	20(%rbx), %eax
	.align	16, 0x90
.LBB3_92:                               # %cond.end.i
                                        #   in Loop: Header=BB3_86 Depth=1
	cmpl	$0, 464(%r13)
	je	.LBB3_94
# BB#93:                                # %cond.true.7.i
                                        #   in Loop: Header=BB3_86 Depth=1
	movl	24(%rbx), %ecx
.LBB3_94:                               # %cond.end.9.i
                                        #   in Loop: Header=BB3_86 Depth=1
	shll	$4, %eax
	addl	%ecx, %eax
	movq	40(%r13), %rcx
	movq	(%rcx), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, (%rcx)
	movb	%al, (%rdx)
	decq	8(%rcx)
	jne	.LBB3_97
# BB#95:                                # %if.then.i.68.i
                                        #   in Loop: Header=BB3_86 Depth=1
	movq	%r13, %rdi
	callq	*24(%rcx)
	testl	%eax, %eax
	jne	.LBB3_97
# BB#96:                                # %if.then.3.i.72.i
                                        #   in Loop: Header=BB3_86 Depth=1
	movq	(%r13), %rax
	movl	$25, 40(%rax)
	movq	%r13, %rdi
	callq	*(%rax)
	.align	16, 0x90
.LBB3_97:                               # %emit_byte.exit73.i
                                        #   in Loop: Header=BB3_86 Depth=1
	incq	%rbp
	movslq	372(%r13), %rax
	cmpq	%rax, %rbp
	jl	.LBB3_86
.LBB3_98:                               # %for.end.i
	movb	460(%r13), %cl
	movq	40(%r13), %rax
	movq	(%rax), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, (%rax)
	movb	%cl, (%rdx)
	decq	8(%rax)
	jne	.LBB3_101
# BB#99:                                # %if.then.i.84.i
	movq	%r13, %rdi
	callq	*24(%rax)
	testl	%eax, %eax
	jne	.LBB3_101
# BB#100:                               # %if.then.3.i.88.i
	movq	(%r13), %rax
	movl	$25, 40(%rax)
	movq	%r13, %rdi
	callq	*(%rax)
.LBB3_101:                              # %emit_byte.exit89.i
	movb	464(%r13), %cl
	movq	40(%r13), %rax
	movq	(%rax), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, (%rax)
	movb	%cl, (%rdx)
	decq	8(%rax)
	jne	.LBB3_104
# BB#102:                               # %if.then.i.100.i
	movq	%r13, %rdi
	callq	*24(%rax)
	testl	%eax, %eax
	jne	.LBB3_104
# BB#103:                               # %if.then.3.i.104.i
	movq	(%r13), %rax
	movl	$25, 40(%rax)
	movq	%r13, %rdi
	callq	*(%rax)
.LBB3_104:                              # %emit_byte.exit105.i
	movl	468(%r13), %ecx
	shll	$4, %ecx
	addl	472(%r13), %ecx
	movq	40(%r13), %rax
	movq	(%rax), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, (%rax)
	movb	%cl, (%rdx)
	decq	8(%rax)
	jne	.LBB3_106
# BB#105:                               # %if.then.i.116.i
	movq	%r13, %rdi
	callq	*24(%rax)
	testl	%eax, %eax
	je	.LBB3_107
.LBB3_106:                              # %emit_sos.exit
	addq	$216, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB3_107:                              # %if.then.3.i.120.i
	movq	(%r13), %rax
	movl	$25, 40(%rax)
	movq	%r13, %rdi
	addq	$216, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmpq	*(%rax)                 # TAILCALL
.Lfunc_end3:
	.size	write_scan_header, .Lfunc_end3-write_scan_header
	.cfi_endproc

	.align	16, 0x90
	.type	write_file_trailer,@function
write_file_trailer:                     # @write_file_trailer
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp30:
	.cfi_def_cfa_offset 16
.Ltmp31:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	40(%rbx), %rax
	movq	(%rax), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, (%rax)
	movb	$-1, (%rcx)
	decq	8(%rax)
	jne	.LBB4_3
# BB#1:                                 # %if.then.i.i
	movq	%rbx, %rdi
	callq	*24(%rax)
	testl	%eax, %eax
	jne	.LBB4_3
# BB#2:                                 # %if.then.3.i.i
	movq	(%rbx), %rax
	movl	$25, 40(%rax)
	movq	%rbx, %rdi
	callq	*(%rax)
.LBB4_3:                                # %emit_byte.exit.i
	movq	40(%rbx), %rax
	movq	(%rax), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, (%rax)
	movb	$-39, (%rcx)
	decq	8(%rax)
	jne	.LBB4_5
# BB#4:                                 # %if.then.i.11.i
	movq	%rbx, %rdi
	callq	*24(%rax)
	testl	%eax, %eax
	je	.LBB4_6
.LBB4_5:                                # %emit_marker.exit
	popq	%rbx
	retq
.LBB4_6:                                # %if.then.3.i.15.i
	movq	(%rbx), %rax
	movl	$25, 40(%rax)
	movq	%rbx, %rdi
	popq	%rbx
	jmpq	*(%rax)                 # TAILCALL
.Lfunc_end4:
	.size	write_file_trailer, .Lfunc_end4-write_file_trailer
	.cfi_endproc

	.align	16, 0x90
	.type	write_tables_only,@function
write_tables_only:                      # @write_tables_only
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp32:
	.cfi_def_cfa_offset 16
.Ltmp33:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	40(%rbx), %rax
	movq	(%rax), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, (%rax)
	movb	$-1, (%rcx)
	decq	8(%rax)
	jne	.LBB5_3
# BB#1:                                 # %if.then.i.i
	movq	%rbx, %rdi
	callq	*24(%rax)
	testl	%eax, %eax
	jne	.LBB5_3
# BB#2:                                 # %if.then.3.i.i
	movq	(%rbx), %rax
	movl	$25, 40(%rax)
	movq	%rbx, %rdi
	callq	*(%rax)
.LBB5_3:                                # %emit_byte.exit.i
	movq	40(%rbx), %rax
	movq	(%rax), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, (%rax)
	movb	$-40, (%rcx)
	decq	8(%rax)
	jne	.LBB5_6
# BB#4:                                 # %if.then.i.11.i
	movq	%rbx, %rdi
	callq	*24(%rax)
	testl	%eax, %eax
	jne	.LBB5_6
# BB#5:                                 # %if.then.3.i.15.i
	movq	(%rbx), %rax
	movl	$25, 40(%rax)
	movq	%rbx, %rdi
	callq	*(%rax)
.LBB5_6:                                # %for.cond.preheader
	cmpq	$0, 112(%rbx)
	je	.LBB5_8
# BB#7:                                 # %if.then
	xorl	%esi, %esi
	movq	%rbx, %rdi
	callq	emit_dqt
.LBB5_8:                                # %for.inc
	cmpq	$0, 120(%rbx)
	je	.LBB5_10
# BB#9:                                 # %if.then.1
	movl	$1, %esi
	movq	%rbx, %rdi
	callq	emit_dqt
.LBB5_10:                               # %for.inc.1
	cmpq	$0, 128(%rbx)
	je	.LBB5_12
# BB#11:                                # %if.then.2
	movl	$2, %esi
	movq	%rbx, %rdi
	callq	emit_dqt
.LBB5_12:                               # %for.inc.2
	cmpq	$0, 136(%rbx)
	je	.LBB5_14
# BB#13:                                # %if.then.3
	movl	$3, %esi
	movq	%rbx, %rdi
	callq	emit_dqt
.LBB5_14:                               # %for.inc.3
	cmpl	$0, 292(%rbx)
	jne	.LBB5_30
# BB#15:                                # %for.cond.3.preheader
	cmpq	$0, 160(%rbx)
	je	.LBB5_17
# BB#16:                                # %if.then.9
	xorl	%esi, %esi
	xorl	%edx, %edx
	movq	%rbx, %rdi
	callq	emit_dht
.LBB5_17:                               # %if.end.10
	cmpq	$0, 192(%rbx)
	je	.LBB5_19
# BB#18:                                # %if.then.14
	xorl	%esi, %esi
	movl	$1, %edx
	movq	%rbx, %rdi
	callq	emit_dht
.LBB5_19:                               # %for.inc.16
	cmpq	$0, 168(%rbx)
	je	.LBB5_21
# BB#20:                                # %if.then.9.1
	movl	$1, %esi
	xorl	%edx, %edx
	movq	%rbx, %rdi
	callq	emit_dht
.LBB5_21:                               # %if.end.10.1
	cmpq	$0, 200(%rbx)
	je	.LBB5_23
# BB#22:                                # %if.then.14.1
	movl	$1, %esi
	movl	$1, %edx
	movq	%rbx, %rdi
	callq	emit_dht
.LBB5_23:                               # %for.inc.16.1
	cmpq	$0, 176(%rbx)
	je	.LBB5_25
# BB#24:                                # %if.then.9.2
	movl	$2, %esi
	xorl	%edx, %edx
	movq	%rbx, %rdi
	callq	emit_dht
.LBB5_25:                               # %if.end.10.2
	cmpq	$0, 208(%rbx)
	je	.LBB5_27
# BB#26:                                # %if.then.14.2
	movl	$2, %esi
	movl	$1, %edx
	movq	%rbx, %rdi
	callq	emit_dht
.LBB5_27:                               # %for.inc.16.2
	cmpq	$0, 184(%rbx)
	je	.LBB5_29
# BB#28:                                # %if.then.9.3
	movl	$3, %esi
	xorl	%edx, %edx
	movq	%rbx, %rdi
	callq	emit_dht
.LBB5_29:                               # %if.end.10.3
	cmpq	$0, 216(%rbx)
	je	.LBB5_30
# BB#36:                                # %if.then.14.3
	movl	$3, %esi
	movl	$1, %edx
	movq	%rbx, %rdi
	callq	emit_dht
.LBB5_30:                               # %if.end.19
	movq	40(%rbx), %rax
	movq	(%rax), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, (%rax)
	movb	$-1, (%rcx)
	decq	8(%rax)
	jne	.LBB5_33
# BB#31:                                # %if.then.i.i.28
	movq	%rbx, %rdi
	callq	*24(%rax)
	testl	%eax, %eax
	jne	.LBB5_33
# BB#32:                                # %if.then.3.i.i.32
	movq	(%rbx), %rax
	movl	$25, 40(%rax)
	movq	%rbx, %rdi
	callq	*(%rax)
.LBB5_33:                               # %emit_byte.exit.i.38
	movq	40(%rbx), %rax
	movq	(%rax), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, (%rax)
	movb	$-39, (%rcx)
	decq	8(%rax)
	jne	.LBB5_35
# BB#34:                                # %if.then.i.11.i.42
	movq	%rbx, %rdi
	callq	*24(%rax)
	testl	%eax, %eax
	je	.LBB5_37
.LBB5_35:                               # %emit_marker.exit47
	popq	%rbx
	retq
.LBB5_37:                               # %if.then.3.i.15.i.46
	movq	(%rbx), %rax
	movl	$25, 40(%rax)
	movq	%rbx, %rdi
	popq	%rbx
	jmpq	*(%rax)                 # TAILCALL
.Lfunc_end5:
	.size	write_tables_only, .Lfunc_end5-write_tables_only
	.cfi_endproc

	.align	16, 0x90
	.type	write_marker_header,@function
write_marker_header:                    # @write_marker_header
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp34:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp35:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp36:
	.cfi_def_cfa_offset 32
.Ltmp37:
	.cfi_offset %rbx, -32
.Ltmp38:
	.cfi_offset %r14, -24
.Ltmp39:
	.cfi_offset %rbp, -16
	movl	%esi, %ebx
	movq	%rdi, %rbp
	cmpl	$65534, %edx            # imm = 0xFFFE
	movl	%edx, %r14d
	jb	.LBB6_2
# BB#1:                                 # %if.then
	movq	(%rbp), %rax
	movl	$12, 40(%rax)
	movq	%rbp, %rdi
	callq	*(%rax)
.LBB6_2:                                # %if.end
	movq	40(%rbp), %rax
	movq	(%rax), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, (%rax)
	movb	$-1, (%rcx)
	decq	8(%rax)
	jne	.LBB6_5
# BB#3:                                 # %if.then.i.i
	movq	%rbp, %rdi
	callq	*24(%rax)
	testl	%eax, %eax
	jne	.LBB6_5
# BB#4:                                 # %if.then.3.i.i
	movq	(%rbp), %rax
	movl	$25, 40(%rax)
	movq	%rbp, %rdi
	callq	*(%rax)
.LBB6_5:                                # %emit_byte.exit.i
	movq	40(%rbp), %rax
	movq	(%rax), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, (%rax)
	movb	%bl, (%rcx)
	decq	8(%rax)
	jne	.LBB6_8
# BB#6:                                 # %if.then.i.11.i
	movq	%rbp, %rdi
	callq	*24(%rax)
	testl	%eax, %eax
	jne	.LBB6_8
# BB#7:                                 # %if.then.3.i.15.i
	movq	(%rbp), %rax
	movl	$25, 40(%rax)
	movq	%rbp, %rdi
	callq	*(%rax)
.LBB6_8:                                # %emit_marker.exit
	movl	%r14d, %ebx
	addl	$2, %ebx
	movq	40(%rbp), %rax
	movq	(%rax), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, (%rax)
	movb	%bh, (%rcx)  # NOREX
	decq	8(%rax)
	jne	.LBB6_11
# BB#9:                                 # %if.then.i.i.16
	movq	%rbp, %rdi
	callq	*24(%rax)
	testl	%eax, %eax
	jne	.LBB6_11
# BB#10:                                # %if.then.3.i.i.20
	movq	(%rbp), %rax
	movl	$25, 40(%rax)
	movq	%rbp, %rdi
	callq	*(%rax)
.LBB6_11:                               # %emit_byte.exit.i.21
	movq	40(%rbp), %rax
	movq	(%rax), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, (%rax)
	movb	%bl, (%rcx)
	decq	8(%rax)
	jne	.LBB6_13
# BB#12:                                # %if.then.i.14.i
	movq	%rbp, %rdi
	callq	*24(%rax)
	testl	%eax, %eax
	je	.LBB6_14
.LBB6_13:                               # %emit_2bytes.exit
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.LBB6_14:                               # %if.then.3.i.18.i
	movq	(%rbp), %rax
	movl	$25, 40(%rax)
	movq	%rbp, %rdi
	popq	%rbx
	popq	%r14
	popq	%rbp
	jmpq	*(%rax)                 # TAILCALL
.Lfunc_end6:
	.size	write_marker_header, .Lfunc_end6-write_marker_header
	.cfi_endproc

	.align	16, 0x90
	.type	write_marker_byte,@function
write_marker_byte:                      # @write_marker_byte
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbx
.Ltmp40:
	.cfi_def_cfa_offset 16
.Ltmp41:
	.cfi_offset %rbx, -16
	movq	%rdi, %rbx
	movq	40(%rbx), %rax
	movq	(%rax), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, (%rax)
	movb	%sil, (%rcx)
	decq	8(%rax)
	jne	.LBB7_2
# BB#1:                                 # %if.then.i
	movq	%rbx, %rdi
	callq	*24(%rax)
	testl	%eax, %eax
	je	.LBB7_3
.LBB7_2:                                # %emit_byte.exit
	popq	%rbx
	retq
.LBB7_3:                                # %if.then.3.i
	movq	(%rbx), %rax
	movl	$25, 40(%rax)
	movq	%rbx, %rdi
	popq	%rbx
	jmpq	*(%rax)                 # TAILCALL
.Lfunc_end7:
	.size	write_marker_byte, .Lfunc_end7-write_marker_byte
	.cfi_endproc

	.align	16, 0x90
	.type	emit_dqt,@function
emit_dqt:                               # @emit_dqt
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp42:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp43:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp44:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp45:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp46:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp47:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp48:
	.cfi_def_cfa_offset 64
.Ltmp49:
	.cfi_offset %rbx, -56
.Ltmp50:
	.cfi_offset %r12, -48
.Ltmp51:
	.cfi_offset %r13, -40
.Ltmp52:
	.cfi_offset %r14, -32
.Ltmp53:
	.cfi_offset %r15, -24
.Ltmp54:
	.cfi_offset %rbp, -16
	movl	%esi, %r14d
	movq	%rdi, %r12
	movslq	%r14d, %rax
	movq	112(%r12,%rax,8), %r15
	testq	%r15, %r15
	jne	.LBB8_2
# BB#1:                                 # %if.then
	movq	(%r12), %rax
	movl	$54, 40(%rax)
	movl	%r14d, 44(%rax)
	movq	%r12, %rdi
	callq	*(%rax)
.LBB8_2:                                # %for.cond.preheader
	movslq	488(%r12), %rax
	xorl	%r13d, %r13d
	testq	%rax, %rax
	js	.LBB8_8
# BB#3:                                 # %for.body.lr.ph
	movq	480(%r12), %rcx
	xorl	%edx, %edx
	testb	$1, %al
	movl	$0, %r13d
	jne	.LBB8_5
# BB#4:                                 # %for.body.prol
	movslq	(%rcx), %rdx
	movzwl	(%r15,%rdx,2), %edx
	cmpl	$255, %edx
	seta	%dl
	movzbl	%dl, %r13d
	movl	$1, %edx
.LBB8_5:                                # %for.body.lr.ph.split
	testl	%eax, %eax
	je	.LBB8_8
# BB#6:                                 # %for.body.lr.ph.split.split
	decq	%rdx
	movl	$1, %esi
	.align	16, 0x90
.LBB8_7:                                # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movslq	4(%rcx,%rdx,4), %rdi
	movslq	8(%rcx,%rdx,4), %rbx
	movw	(%r15,%rbx,2), %bx
	orw	(%r15,%rdi,2), %bx
	movzwl	%bx, %edi
	cmpl	$255, %edi
	cmoval	%esi, %r13d
	addq	$2, %rdx
	cmpq	%rax, %rdx
	jl	.LBB8_7
.LBB8_8:                                # %for.end
	cmpl	$0, 128(%r15)
	jne	.LBB8_35
# BB#9:                                 # %if.then.14
	movq	40(%r12), %rax
	movq	(%rax), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, (%rax)
	movb	$-1, (%rcx)
	decq	8(%rax)
	jne	.LBB8_12
# BB#10:                                # %if.then.i.i
	movq	%r12, %rdi
	callq	*24(%rax)
	testl	%eax, %eax
	jne	.LBB8_12
# BB#11:                                # %if.then.3.i.i
	movq	(%r12), %rax
	movl	$25, 40(%rax)
	movq	%r12, %rdi
	callq	*(%rax)
.LBB8_12:                               # %emit_byte.exit.i
	movq	40(%r12), %rax
	movq	(%rax), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, (%rax)
	movb	$-37, (%rcx)
	decq	8(%rax)
	jne	.LBB8_15
# BB#13:                                # %if.then.i.11.i
	movq	%r12, %rdi
	callq	*24(%rax)
	testl	%eax, %eax
	jne	.LBB8_15
# BB#14:                                # %if.then.3.i.15.i
	movq	(%r12), %rax
	movl	$25, 40(%rax)
	movq	%r12, %rdi
	callq	*(%rax)
.LBB8_15:                               # %emit_marker.exit
	movl	488(%r12), %eax
	leal	1(%rax), %ecx
	testl	%r13d, %r13d
	leal	2(%rax,%rax), %ebx
	cmovel	%ecx, %ebx
	addl	$3, %ebx
	movq	40(%r12), %rax
	movq	(%rax), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, (%rax)
	movb	%bh, (%rcx)  # NOREX
	decq	8(%rax)
	jne	.LBB8_18
# BB#16:                                # %if.then.i.i.43
	movq	%r12, %rdi
	callq	*24(%rax)
	testl	%eax, %eax
	jne	.LBB8_18
# BB#17:                                # %if.then.3.i.i.47
	movq	(%r12), %rax
	movl	$25, 40(%rax)
	movq	%r12, %rdi
	callq	*(%rax)
.LBB8_18:                               # %emit_byte.exit.i.48
	movq	40(%r12), %rax
	movq	(%rax), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, (%rax)
	movb	%bl, (%rcx)
	decq	8(%rax)
	jne	.LBB8_21
# BB#19:                                # %if.then.i.14.i
	movq	%r12, %rdi
	callq	*24(%rax)
	testl	%eax, %eax
	jne	.LBB8_21
# BB#20:                                # %if.then.3.i.18.i
	movq	(%r12), %rax
	movl	$25, 40(%rax)
	movq	%r12, %rdi
	callq	*(%rax)
.LBB8_21:                               # %emit_2bytes.exit
	movl	%r13d, %ecx
	shll	$4, %ecx
	addl	%r14d, %ecx
	movq	40(%r12), %rax
	movq	(%rax), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, (%rax)
	movb	%cl, (%rdx)
	decq	8(%rax)
	jne	.LBB8_24
# BB#22:                                # %if.then.i
	movq	%r12, %rdi
	callq	*24(%rax)
	testl	%eax, %eax
	jne	.LBB8_24
# BB#23:                                # %if.then.3.i
	movq	(%r12), %rax
	movl	$25, 40(%rax)
	movq	%r12, %rdi
	callq	*(%rax)
.LBB8_24:                               # %for.cond.24.preheader
	cmpl	$0, 488(%r12)
	js	.LBB8_34
# BB#25:                                # %for.body.28.lr.ph
	movq	$-1, %rbx
	.align	16, 0x90
.LBB8_26:                               # %for.body.28
                                        # =>This Inner Loop Header: Depth=1
	movq	480(%r12), %rax
	movslq	4(%rax,%rbx,4), %rax
	movzwl	(%r15,%rax,2), %ebp
	testl	%r13d, %r13d
	je	.LBB8_30
# BB#27:                                # %if.then.37
                                        #   in Loop: Header=BB8_26 Depth=1
	movq	40(%r12), %rax
	movq	(%rax), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, (%rax)
	movl	%ebp, %edx
	movb	%dh, (%rcx)  # NOREX
	decq	8(%rax)
	jne	.LBB8_30
# BB#28:                                # %if.then.i.59
                                        #   in Loop: Header=BB8_26 Depth=1
	movq	%r12, %rdi
	callq	*24(%rax)
	testl	%eax, %eax
	jne	.LBB8_30
# BB#29:                                # %if.then.3.i.63
                                        #   in Loop: Header=BB8_26 Depth=1
	movq	(%r12), %rax
	movl	$25, 40(%rax)
	movq	%r12, %rdi
	callq	*(%rax)
	.align	16, 0x90
.LBB8_30:                               # %if.end.38
                                        #   in Loop: Header=BB8_26 Depth=1
	movq	40(%r12), %rax
	movq	(%rax), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, (%rax)
	movb	%bpl, (%rcx)
	decq	8(%rax)
	jne	.LBB8_33
# BB#31:                                # %if.then.i.75
                                        #   in Loop: Header=BB8_26 Depth=1
	movq	%r12, %rdi
	callq	*24(%rax)
	testl	%eax, %eax
	jne	.LBB8_33
# BB#32:                                # %if.then.3.i.79
                                        #   in Loop: Header=BB8_26 Depth=1
	movq	(%r12), %rax
	movl	$25, 40(%rax)
	movq	%r12, %rdi
	callq	*(%rax)
	.align	16, 0x90
.LBB8_33:                               # %emit_byte.exit80
                                        #   in Loop: Header=BB8_26 Depth=1
	movslq	488(%r12), %rax
	incq	%rbx
	cmpq	%rax, %rbx
	jl	.LBB8_26
.LBB8_34:                               # %for.end.41
	movl	$1, 128(%r15)
.LBB8_35:                               # %if.end.43
	movl	%r13d, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end8:
	.size	emit_dqt, .Lfunc_end8-emit_dqt
	.cfi_endproc

	.align	16, 0x90
	.type	emit_sof,@function
emit_sof:                               # @emit_sof
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp55:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp56:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp57:
	.cfi_def_cfa_offset 32
.Ltmp58:
	.cfi_offset %rbx, -32
.Ltmp59:
	.cfi_offset %r14, -24
.Ltmp60:
	.cfi_offset %rbp, -16
	movl	%esi, %ebp
	movq	%rdi, %r14
	movq	40(%r14), %rax
	movq	(%rax), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, (%rax)
	movb	$-1, (%rcx)
	decq	8(%rax)
	jne	.LBB9_3
# BB#1:                                 # %if.then.i.i
	movq	%r14, %rdi
	callq	*24(%rax)
	testl	%eax, %eax
	jne	.LBB9_3
# BB#2:                                 # %if.then.3.i.i
	movq	(%r14), %rax
	movl	$25, 40(%rax)
	movq	%r14, %rdi
	callq	*(%rax)
.LBB9_3:                                # %emit_byte.exit.i
	movq	40(%r14), %rax
	movq	(%rax), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, (%rax)
	movb	%bpl, (%rcx)
	decq	8(%rax)
	jne	.LBB9_6
# BB#4:                                 # %if.then.i.11.i
	movq	%r14, %rdi
	callq	*24(%rax)
	testl	%eax, %eax
	jne	.LBB9_6
# BB#5:                                 # %if.then.3.i.15.i
	movq	(%r14), %rax
	movl	$25, 40(%rax)
	movq	%r14, %rdi
	callq	*(%rax)
.LBB9_6:                                # %emit_marker.exit
	movl	92(%r14), %eax
	leal	8(%rax,%rax,2), %ebx
	movq	40(%r14), %rax
	movq	(%rax), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, (%rax)
	movb	%bh, (%rcx)  # NOREX
	decq	8(%rax)
	jne	.LBB9_9
# BB#7:                                 # %if.then.i.i.39
	movq	%r14, %rdi
	callq	*24(%rax)
	testl	%eax, %eax
	jne	.LBB9_9
# BB#8:                                 # %if.then.3.i.i.43
	movq	(%r14), %rax
	movl	$25, 40(%rax)
	movq	%r14, %rdi
	callq	*(%rax)
.LBB9_9:                                # %emit_byte.exit.i.44
	movq	40(%r14), %rax
	movq	(%rax), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, (%rax)
	movb	%bl, (%rcx)
	decq	8(%rax)
	jne	.LBB9_12
# BB#10:                                # %if.then.i.14.i
	movq	%r14, %rdi
	callq	*24(%rax)
	testl	%eax, %eax
	jne	.LBB9_12
# BB#11:                                # %if.then.3.i.18.i
	movq	(%r14), %rax
	movl	$25, 40(%rax)
	movq	%r14, %rdi
	callq	*(%rax)
.LBB9_12:                               # %emit_2bytes.exit
	cmpl	$65535, 84(%r14)        # imm = 0xFFFF
	ja	.LBB9_14
# BB#13:                                # %lor.lhs.false
	cmpl	$65536, 80(%r14)        # imm = 0x10000
	jb	.LBB9_15
.LBB9_14:                               # %if.then
	movq	(%r14), %rax
	movl	$42, 40(%rax)
	movl	$65535, 44(%rax)        # imm = 0xFFFF
	movq	%r14, %rdi
	callq	*(%rax)
.LBB9_15:                               # %if.end
	movb	88(%r14), %cl
	movq	40(%r14), %rax
	movq	(%rax), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, (%rax)
	movb	%cl, (%rdx)
	decq	8(%rax)
	jne	.LBB9_18
# BB#16:                                # %if.then.i
	movq	%r14, %rdi
	callq	*24(%rax)
	testl	%eax, %eax
	jne	.LBB9_18
# BB#17:                                # %if.then.3.i
	movq	(%r14), %rax
	movl	$25, 40(%rax)
	movq	%r14, %rdi
	callq	*(%rax)
.LBB9_18:                               # %emit_byte.exit
	movl	84(%r14), %ebx
	movq	40(%r14), %rax
	movq	(%rax), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, (%rax)
	movb	%bh, (%rcx)  # NOREX
	decq	8(%rax)
	jne	.LBB9_21
# BB#19:                                # %if.then.i.i.56
	movq	%r14, %rdi
	callq	*24(%rax)
	testl	%eax, %eax
	jne	.LBB9_21
# BB#20:                                # %if.then.3.i.i.60
	movq	(%r14), %rax
	movl	$25, 40(%rax)
	movq	%r14, %rdi
	callq	*(%rax)
.LBB9_21:                               # %emit_byte.exit.i.67
	movq	40(%r14), %rax
	movq	(%rax), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, (%rax)
	movb	%bl, (%rcx)
	decq	8(%rax)
	jne	.LBB9_24
# BB#22:                                # %if.then.i.14.i.71
	movq	%r14, %rdi
	callq	*24(%rax)
	testl	%eax, %eax
	jne	.LBB9_24
# BB#23:                                # %if.then.3.i.18.i.75
	movq	(%r14), %rax
	movl	$25, 40(%rax)
	movq	%r14, %rdi
	callq	*(%rax)
.LBB9_24:                               # %emit_2bytes.exit76
	movl	80(%r14), %ebx
	movq	40(%r14), %rax
	movq	(%rax), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, (%rax)
	movb	%bh, (%rcx)  # NOREX
	decq	8(%rax)
	jne	.LBB9_27
# BB#25:                                # %if.then.i.i.88
	movq	%r14, %rdi
	callq	*24(%rax)
	testl	%eax, %eax
	jne	.LBB9_27
# BB#26:                                # %if.then.3.i.i.92
	movq	(%r14), %rax
	movl	$25, 40(%rax)
	movq	%r14, %rdi
	callq	*(%rax)
.LBB9_27:                               # %emit_byte.exit.i.99
	movq	40(%r14), %rax
	movq	(%rax), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, (%rax)
	movb	%bl, (%rcx)
	decq	8(%rax)
	jne	.LBB9_30
# BB#28:                                # %if.then.i.14.i.103
	movq	%r14, %rdi
	callq	*24(%rax)
	testl	%eax, %eax
	jne	.LBB9_30
# BB#29:                                # %if.then.3.i.18.i.107
	movq	(%r14), %rax
	movl	$25, 40(%rax)
	movq	%r14, %rdi
	callq	*(%rax)
.LBB9_30:                               # %emit_2bytes.exit108
	movb	92(%r14), %cl
	movq	40(%r14), %rax
	movq	(%rax), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, (%rax)
	movb	%cl, (%rdx)
	decq	8(%rax)
	jne	.LBB9_33
# BB#31:                                # %if.then.i.119
	movq	%r14, %rdi
	callq	*24(%rax)
	testl	%eax, %eax
	jne	.LBB9_33
# BB#32:                                # %if.then.3.i.123
	movq	(%r14), %rax
	movl	$25, 40(%rax)
	movq	%r14, %rdi
	callq	*(%rax)
.LBB9_33:                               # %emit_byte.exit124
	cmpl	$0, 92(%r14)
	jle	.LBB9_45
# BB#34:                                # %for.body.lr.ph
	movq	104(%r14), %rbp
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB9_35:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	movb	(%rbp), %cl
	movq	40(%r14), %rax
	movq	(%rax), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, (%rax)
	movb	%cl, (%rdx)
	decq	8(%rax)
	jne	.LBB9_38
# BB#36:                                # %if.then.i.135
                                        #   in Loop: Header=BB9_35 Depth=1
	movq	%r14, %rdi
	callq	*24(%rax)
	testl	%eax, %eax
	jne	.LBB9_38
# BB#37:                                # %if.then.3.i.139
                                        #   in Loop: Header=BB9_35 Depth=1
	movq	(%r14), %rax
	movl	$25, 40(%rax)
	movq	%r14, %rdi
	callq	*(%rax)
	.align	16, 0x90
.LBB9_38:                               # %emit_byte.exit140
                                        #   in Loop: Header=BB9_35 Depth=1
	movl	8(%rbp), %ecx
	shll	$4, %ecx
	addl	12(%rbp), %ecx
	movq	40(%r14), %rax
	movq	(%rax), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, (%rax)
	movb	%cl, (%rdx)
	decq	8(%rax)
	jne	.LBB9_41
# BB#39:                                # %if.then.i.151
                                        #   in Loop: Header=BB9_35 Depth=1
	movq	%r14, %rdi
	callq	*24(%rax)
	testl	%eax, %eax
	jne	.LBB9_41
# BB#40:                                # %if.then.3.i.155
                                        #   in Loop: Header=BB9_35 Depth=1
	movq	(%r14), %rax
	movl	$25, 40(%rax)
	movq	%r14, %rdi
	callq	*(%rax)
	.align	16, 0x90
.LBB9_41:                               # %emit_byte.exit156
                                        #   in Loop: Header=BB9_35 Depth=1
	movb	16(%rbp), %cl
	movq	40(%r14), %rax
	movq	(%rax), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, (%rax)
	movb	%cl, (%rdx)
	decq	8(%rax)
	jne	.LBB9_44
# BB#42:                                # %if.then.i.167
                                        #   in Loop: Header=BB9_35 Depth=1
	movq	%r14, %rdi
	callq	*24(%rax)
	testl	%eax, %eax
	jne	.LBB9_44
# BB#43:                                # %if.then.3.i.171
                                        #   in Loop: Header=BB9_35 Depth=1
	movq	(%r14), %rax
	movl	$25, 40(%rax)
	movq	%r14, %rdi
	callq	*(%rax)
	.align	16, 0x90
.LBB9_44:                               # %emit_byte.exit172
                                        #   in Loop: Header=BB9_35 Depth=1
	incl	%ebx
	addq	$96, %rbp
	cmpl	92(%r14), %ebx
	jl	.LBB9_35
.LBB9_45:                               # %for.end
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end9:
	.size	emit_sof, .Lfunc_end9-emit_sof
	.cfi_endproc

	.align	16, 0x90
	.type	emit_dht,@function
emit_dht:                               # @emit_dht
	.cfi_startproc
# BB#0:                                 # %entry
	pushq	%rbp
.Ltmp61:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp62:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp63:
	.cfi_def_cfa_offset 32
	pushq	%r13
.Ltmp64:
	.cfi_def_cfa_offset 40
	pushq	%r12
.Ltmp65:
	.cfi_def_cfa_offset 48
	pushq	%rbx
.Ltmp66:
	.cfi_def_cfa_offset 56
	pushq	%rax
.Ltmp67:
	.cfi_def_cfa_offset 64
.Ltmp68:
	.cfi_offset %rbx, -56
.Ltmp69:
	.cfi_offset %r12, -48
.Ltmp70:
	.cfi_offset %r13, -40
.Ltmp71:
	.cfi_offset %r14, -32
.Ltmp72:
	.cfi_offset %r15, -24
.Ltmp73:
	.cfi_offset %rbp, -16
	movq	%rdi, %r12
	leal	16(%rsi), %eax
	testl	%edx, %edx
	movslq	%esi, %r15
	leaq	192(%r12,%r15,8), %rcx
	leaq	160(%r12,%r15,8), %rdx
	cmovnel	%eax, %r15d
	cmovneq	%rcx, %rdx
	movq	(%rdx), %r14
	testq	%r14, %r14
	jne	.LBB10_2
# BB#1:                                 # %if.then.3
	movq	(%r12), %rax
	movl	$52, 40(%rax)
	movl	%r15d, 44(%rax)
	movq	%r12, %rdi
	callq	*(%rax)
.LBB10_2:                               # %if.end.8
	cmpl	$0, 276(%r14)
	jne	.LBB10_30
# BB#3:                                 # %if.then.10
	movq	40(%r12), %rax
	movq	(%rax), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, (%rax)
	movb	$-1, (%rcx)
	decq	8(%rax)
	jne	.LBB10_6
# BB#4:                                 # %if.then.i.i
	movq	%r12, %rdi
	callq	*24(%rax)
	testl	%eax, %eax
	jne	.LBB10_6
# BB#5:                                 # %if.then.3.i.i
	movq	(%r12), %rax
	movl	$25, 40(%rax)
	movq	%r12, %rdi
	callq	*(%rax)
.LBB10_6:                               # %emit_byte.exit.i
	movq	40(%r12), %rax
	movq	(%rax), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, (%rax)
	movb	$-60, (%rcx)
	decq	8(%rax)
	jne	.LBB10_9
# BB#7:                                 # %if.then.i.11.i
	movq	%r12, %rdi
	callq	*24(%rax)
	testl	%eax, %eax
	jne	.LBB10_9
# BB#8:                                 # %if.then.3.i.15.i
	movq	(%r12), %rax
	movl	$25, 40(%rax)
	movq	%r12, %rdi
	callq	*(%rax)
.LBB10_9:                               # %for.cond.preheader
	movzbl	1(%r14), %eax
	movzbl	2(%r14), %ecx
	addl	%eax, %ecx
	movzbl	3(%r14), %eax
	addl	%ecx, %eax
	movzbl	4(%r14), %ecx
	addl	%eax, %ecx
	movzbl	5(%r14), %eax
	addl	%ecx, %eax
	movzbl	6(%r14), %ecx
	addl	%eax, %ecx
	movzbl	7(%r14), %eax
	addl	%ecx, %eax
	movzbl	8(%r14), %ecx
	addl	%eax, %ecx
	movzbl	9(%r14), %eax
	addl	%ecx, %eax
	movzbl	10(%r14), %ecx
	addl	%eax, %ecx
	movzbl	11(%r14), %eax
	addl	%ecx, %eax
	movzbl	12(%r14), %ecx
	addl	%eax, %ecx
	movzbl	13(%r14), %eax
	addl	%ecx, %eax
	movzbl	14(%r14), %ecx
	addl	%eax, %ecx
	movzbl	15(%r14), %r13d
	addl	%ecx, %r13d
	movzbl	16(%r14), %ebp
	leal	19(%rbp,%r13), %ebx
	movq	40(%r12), %rax
	movq	(%rax), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, (%rax)
	movb	%bh, (%rcx)  # NOREX
	decq	8(%rax)
	jne	.LBB10_12
# BB#10:                                # %if.then.i.i.40
	movq	%r12, %rdi
	callq	*24(%rax)
	testl	%eax, %eax
	jne	.LBB10_12
# BB#11:                                # %if.then.3.i.i.44
	movq	(%r12), %rax
	movl	$25, 40(%rax)
	movq	%r12, %rdi
	callq	*(%rax)
.LBB10_12:                              # %emit_byte.exit.i.45
	movq	40(%r12), %rax
	movq	(%rax), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, (%rax)
	movb	%bl, (%rcx)
	decq	8(%rax)
	jne	.LBB10_15
# BB#13:                                # %if.then.i.14.i
	movq	%r12, %rdi
	callq	*24(%rax)
	testl	%eax, %eax
	jne	.LBB10_15
# BB#14:                                # %if.then.3.i.18.i
	movq	(%r12), %rax
	movl	$25, 40(%rax)
	movq	%r12, %rdi
	callq	*(%rax)
.LBB10_15:                              # %emit_2bytes.exit
	movq	40(%r12), %rax
	movq	(%rax), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, (%rax)
	movb	%r15b, (%rcx)
	decq	8(%rax)
	jne	.LBB10_18
# BB#16:                                # %if.then.i
	movq	%r12, %rdi
	callq	*24(%rax)
	testl	%eax, %eax
	jne	.LBB10_18
# BB#17:                                # %if.then.3.i
	movq	(%r12), %rax
	movl	$25, 40(%rax)
	movq	%r12, %rdi
	callq	*(%rax)
.LBB10_18:                              # %for.cond.18.preheader
	addl	%r13d, %ebp
	xorl	%ebx, %ebx
	.align	16, 0x90
.LBB10_19:                              # %for.body.21
                                        # =>This Inner Loop Header: Depth=1
	movb	1(%r14,%rbx), %cl
	movq	40(%r12), %rax
	movq	(%rax), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, (%rax)
	movb	%cl, (%rdx)
	decq	8(%rax)
	jne	.LBB10_22
# BB#20:                                # %if.then.i.56
                                        #   in Loop: Header=BB10_19 Depth=1
	movq	%r12, %rdi
	callq	*24(%rax)
	testl	%eax, %eax
	jne	.LBB10_22
# BB#21:                                # %if.then.3.i.60
                                        #   in Loop: Header=BB10_19 Depth=1
	movq	(%r12), %rax
	movl	$25, 40(%rax)
	movq	%r12, %rdi
	callq	*(%rax)
	.align	16, 0x90
.LBB10_22:                              # %emit_byte.exit61
                                        #   in Loop: Header=BB10_19 Depth=1
	incq	%rbx
	cmpq	$16, %rbx
	jne	.LBB10_19
# BB#23:                                # %for.cond.29.preheader
	testl	%ebp, %ebp
	jle	.LBB10_29
# BB#24:                                # %for.body.32.preheader
	leaq	17(%r14), %rbx
	.align	16, 0x90
.LBB10_25:                              # %for.body.32
                                        # =>This Inner Loop Header: Depth=1
	movb	(%rbx), %cl
	movq	40(%r12), %rax
	movq	(%rax), %rdx
	leaq	1(%rdx), %rsi
	movq	%rsi, (%rax)
	movb	%cl, (%rdx)
	decq	8(%rax)
	jne	.LBB10_28
# BB#26:                                # %if.then.i.72
                                        #   in Loop: Header=BB10_25 Depth=1
	movq	%r12, %rdi
	callq	*24(%rax)
	testl	%eax, %eax
	jne	.LBB10_28
# BB#27:                                # %if.then.3.i.76
                                        #   in Loop: Header=BB10_25 Depth=1
	movq	(%r12), %rax
	movl	$25, 40(%rax)
	movq	%r12, %rdi
	callq	*(%rax)
	.align	16, 0x90
.LBB10_28:                              # %emit_byte.exit77
                                        #   in Loop: Header=BB10_25 Depth=1
	incq	%rbx
	decl	%ebp
	jne	.LBB10_25
.LBB10_29:                              # %for.end.38
	movl	$1, 276(%r14)
.LBB10_30:                              # %if.end.40
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end10:
	.size	emit_dht, .Lfunc_end10-emit_dht
	.cfi_endproc


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
