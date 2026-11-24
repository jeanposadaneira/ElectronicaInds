Function main
Integer i
Integer j
Real espesor

Print "Hola robot"
Motor On
Power High
Accel 50, 50
Speed 10

Home

espesor = 2.8

P1 = P0 -Y(100)
P2 = P0 +X(100)

P10 = P0 +Y(50)
P11 = P0 -X(100)
P12 = P10 -X(200)

P20 = P0 +Y(50) -X(100)
P21 = P0 -X(200)
P22 = P20 -X(250)

Pallet 0, P0, P2, P1, 3, 3
Pallet 1, P12, P10, P11, 1, 3
Pallet 2, P20, P22, P21, 1, 3

Salto1:

If Sw(8) = True Then


  For i = 1 To 9

    j = ((i - 1) Mod 3) + 1
    
    Go Pallet(0, i)
    Go Pallet(0, i) -Z(50)
    Wait 0.5

    On 9

    Go Pallet(0, i)

    Go Pallet(2, j)
    Go Pallet(2, j) -Z(50)
    Wait 0.5

    Off 9

    Go Pallet(2, j)

  Next


  For i = 1 To 9

    j = ((i - 1) Mod 3) + 1

    Go Pallet(2, j)
    Go Pallet(2, j) -Z(50)
    Wait 0.5

    On 9

    Go Pallet(2, j)

    Go Pallet(0, i)
    Go Pallet(0, i) -Z(50)
    Wait 0.5

    Off 9

    Go Pallet(0, i)

  Next

Else


  For i = 1 To 9

    j = ((i - 1) Mod 3) + 1

    Go Pallet(0, i)
    Go Pallet(0, i) -Z(50)
    Wait 0.5

    On 9

    Go Pallet(0, i)

    Go Pallet(1, j)
    Go Pallet(1, j) -Z(50)
    Wait 0.5

    Off 9

    Go Pallet(1, j)

  Next

  For i = 1 To 9

    j = ((i - 1) Mod 3) + 1

    Go Pallet(1, j)
    Go Pallet(1, j) -Z(50)
    Wait 0.5

    On 9

    Go Pallet(1, j)

    Go Pallet(0, i)
    Go Pallet(0, i) -Z(50)
    Wait 0.5

    Off 9

    Go Pallet(0, i)

  Next

EndIf

Home
GoTo Salto1

Fend
