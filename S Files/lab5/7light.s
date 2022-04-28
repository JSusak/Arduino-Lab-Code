.equ SREG ,0x3f 
.equ PORTB ,0x05
.equ DDRB ,0x04
.equ DDRD ,0x0A
.equ PORTD ,0x0B

.org 0

main: ldi r16 ,0
      out SREG , r16
      
      ldi r16 , 0x0F
      out DDRB, r16
      
      ldi r16, 0xF0
      out DDRD, r16
      
      
      ldi r16, 0xDB
      out PORTB, r16
      
      ldi r16, 0xDB
      out PORTD, r16
      
      
      
      
      
mainloop: rjmp mainloop
