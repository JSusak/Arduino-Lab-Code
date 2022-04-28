.equ SREG ,0x3f 
.equ PORTB ,0x05
.equ DDRB ,0x04
.equ DDRD ,0x0A
.equ PORTD ,0x0B

.org 0


main: ldi r16 ,0
      out SREG , r16
      
      ldi r20,255
      ldi r21,255
      
      ldi r16 , 0x0F
      out DDRB, r16
      
      ldi r16, 0xF0
      out DDRD, r16
      
      
      ldi r16, 0x55
      call delay2
      lsl r16
      out PORTB, r16
      call delay2
      lsr r16
      out PORTB, r16
      call delay2
      out PORTB, r16
      
      ldi r16, 0x55
      call delay2
      lsl r16
      out PORTD, r16
      call delay2
      lsr r16
      out PORTD, r16
      call delay2
      out PORTD, r16
      
      
      delay2: 
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		nop
		dec r21
		brne delay2
		nop
		nop
		nop
		nop
		dec r20
		brne delay2
ret
     
      
mainloop: rjmp mainloop
