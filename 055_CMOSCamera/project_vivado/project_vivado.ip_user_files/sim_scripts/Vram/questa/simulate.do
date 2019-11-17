onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib Vram_opt

do {wave.do}

view wave
view structure
view signals

do {Vram.udo}

run -all

quit -force
