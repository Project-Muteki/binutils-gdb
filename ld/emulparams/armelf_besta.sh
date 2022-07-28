source_sh ${srcdir}/emulparams/armelf.sh

# This matches better with official SDK
TEXT_START_ADDR=0x401000
# Adding remainder breaks the page alignment, which negatively affects the post-linker.
# (post-linker can handle this by padding the section at post-link time but this will inflate the generated binary a little)
DATA_SEGMENT_ALIGN="ALIGN(${SEGMENT_SIZE})"
DATA_SEGMENT_RELRO_END=""
DATA_SEGMENT_END=""
