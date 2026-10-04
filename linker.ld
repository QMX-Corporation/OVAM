ENTRY(boot_main)
SECTIONS
{
    . = 0x00100000;
    .text ALIGN(4K) : {
        *(.text)
        *(.text.)
        *(.text.*)
        *(.text*)
    }
    .data ALIGN(4K) : {
        *(.data)
        *(.data.)
        *(.data.*)
        *(.data.*)
    }
    .rodata ALIGN(4K) : {
        *(.rodata)
        *(.rodata.)
        *(.rodata.*)
        *(.rodata*)
    }
    .bss ALIGN(4K) : {
        *(.bss)
        *(.bss.)
        *(.bss.*)
        *(.bss*)
    }
    .reset_vector 0xFFFFFFF0 : {
        *(.reset)
    }
    /DISCARD/ : {
        *(.comment)
        *(.note*)
        *(.eh_frame)
    }
}