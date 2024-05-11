pin0 = 0
tmr.delay(100)
-- entrada para habilitar programa

-- bujia de encendido SALIDA
pin1 = 1
bue = 5
tmr.delay(100)

-- sensor de llama ENTRADA
pin2 = 2
s1 = 2
tmr.delay(100)
pin5 = 5
tmr.delay(100)

 -- valvula de gas SALIDA rele
 vg = 6
gpio.mode(vg,gpio.OUTPUT)
-- APAGADO LA VALVULA DE GAS
gpio.write(vg,gpio.HIGH)
print('valvula de gas abierta')

 -- valvula de ALARMA RELE
alarma = 1
gpio.mode(alarma,gpio.OUTPUT)
tmr.delay(100)
gpio.write(alarma,gpio.LOW)

gpio.mode(pin0,gpio.OUTPUT)
gpio.write(pin0,gpio.LOW)
tmr.delay(100)
tmr.delay(100)
gpio.mode(pin2,gpio.OUTPUT)
gpio.write(pin2,gpio.LOW)
gpio.mode(pin5,gpio.OUTPUT)
tmr.delay(100)

i=1
p=0
tmr.delay(100000)
gpio.mode(s1,gpio.INT)
gpio.mode(bue,gpio.OUTPUT)
tmr.delay(2000000)
ciclo = 0
while ciclo < 2 do 
  tmr.delay(100000)
  a=gpio.read(s1)
  c=gpio.read(bue)
  -- si no hay llama enciendo la bujia
  if a == 0 then gpio.write(bue,gpio.LOW)  
                 tmr.delay(10
                 
                 0000)
                 gpio.write(vg,gpio.LOW)  end 
                 -- enciendo la bujia si o si 
                 gpio.write(bue,gpio.LOW)


             --    if a==1  and c==0
          --apago la BUJIA 
         -- then gpio.write(bue,gpio.HIGH)  end 
           if a ==1 then print('calentador encendido') end
   
   tmr.delay(900000)  
  
  tmr.delay(100000) 
   ciclo = ciclo + 1
   print('vamos por el ciclo:',ciclo)
-- if ciclo-100 == 0 then print('vamos por el ciclo:',ciclo)  end
end
gpio.write(bue,gpio.HIGH)
if a ==1 then print('calentador encendido') end
if a==0 then gpio.write(vg,gpio.HIGH)   end
if a==0 then gpio.write(bue,gpio.HIGH)   end
print('terminamos ciclo de encendido')

while p == 0 do 
 
  a=gpio.read(s1)
 
   
   tmr.delay(1000000)    
   a=gpio.read(s1)
   c=gpio.read(bue)

   if gpio.read(pin0) == 0 then gpio.write(pin0,gpio.HIGH) end

  if a==0 then
    p = p+1
    -- se enciende la alarma
    gpio.write(alarma,gpio.HIGH)
      if gpio.read(vg) ==0 then 
        -- apago la VALVULA DE GAS
        gpio.write(vg,gpio.HIGH) 
        tmr.delay(90000) 
        gpio.write(alarma,gpio.HIGH) 
        tmr.delay(90000) 
        p = p+1
          end end  
       
   tmr.delay(900000)  
   if gpio.read(pin0) == 1 then gpio.write(pin0,gpio.LOW) end
   -- apago la BUJIA
   gpio.write(bue,gpio.HIGH)   
 
  tmr.delay(100000) 
 
end
print('apago todo y espero')

gpio.write(4,gpio.HIGH)