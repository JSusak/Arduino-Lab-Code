.equ SREG ,0x3f

.equ DDRB ,0x04

.equ PORTB ,0x05

.equ DDRC ,0x07

.equ PINC, 0x06

 

.org 0

 

main: ldi r16,0

            out SREG, r16

 

            ldi r16,0x0F

            out DDRB, r16
            
            ldi r17, 0x01
            
      

 

            ldi r16, 0xF0

            out DDRC, r16

 

            in r16, PINC
            
            sub r16,r17
            
            out PORTB ,r16
            
mainloop: rjmp mainloop
