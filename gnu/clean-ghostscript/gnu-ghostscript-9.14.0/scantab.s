	.text
	.file	"scantab.bc"
	.type	scan_char_array,@object # @scan_char_array
	.section	.rodata,"a",@progbits
	.globl	scan_char_array
	.align	16
scan_char_array:
	.ascii	"hhhhfdddgddddffdffddddddddddddddddddfddddgddggdddddg\000\001\002\003\004\005\006\007\b\tddgdgdd\n\013\f\r\016\017\020\021\022\023\024\025\026\027\030\031\032\033\034\035\036\037 !\"#gdgddd\n\013\f\r\016\017\020\021\022\023\024\025\026\027\030\031\032\033\034\035\036\037 !\"#gdgddeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeedddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddd"
	.size	scan_char_array, 260


	.ident	"clang version 3.7.0 (tags/RELEASE_370/final)"
	.section	".note.GNU-stack","",@progbits
