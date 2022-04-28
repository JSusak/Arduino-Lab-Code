.equ SREG ,0x3f 
.equ PORTB ,0x05
.equ DDRB ,0x04

.org 0




main: ldi r16 ,0
out SREG , r16
      
ldi r17, 255
ldi r18, 255
ldi r19,255
ldi r20,255
ldi r21,255
ldi r22,255
ldi r23,255
ldi r24,255
ldi r25,255
ldi r26,255
ldi r27,255
ldi r28,255

      enable: nop
      ldi r16, 0x01
      out DDRB, r16
      ldi r16, 0x01
      out PORTB, r16
      dec r17
      dec r19
      dec r20
      dec r23
      dec r24
      dec r25
      
      cpi r17,0
      cpi r19,0
      cpi r20,0
      cpi r23,0
      cpi r24,0
      cpi r25,0
      brne enable
      
      disable: nop
      ldi r16, 0x00
      out DDRB, r16
      ldi r16, 0x00
      out PORTB, r16
      dec r18
      dec r21
      dec r22
      dec r26
      dec r27
      dec r28
      
      cpi r18,0
      cpi r21,0
      cpi r22,0
      cpi r26,0
      cpi r27,0
      cpi r28,0
      brne disable
      
mainloop: rjmp mainloop
   
