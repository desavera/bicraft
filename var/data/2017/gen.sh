#!/bin/bash

counter=0

for num in $* 
do

    let counter++

    sed -e s/-23/-$counter/g historico_pedidos-BASE1 > swap
    tail -$num swap > historico_pedidos-01-$counter
done

counter=0
mkdir 01
mv hist*-01-* 01
for num in $* 
do

    let counter++

    sed -e s/-23/-$counter/g historico_pedidos-BASE1 > swap
    sed -e s/-01-/-02-/g swap > swap1
    tail -$num swap1 > historico_pedidos-02-$counter
done

counter=0
mkdir 02
mv hist*-02-* 02
for num in $* 
do

    let counter++

    sed -e s/-23/-$counter/g historico_pedidos-BASE1 > swap
    sed -e s/-01-/-03-/g swap > swap1
    tail -$num swap1 > historico_pedidos-03-$counter
done
counter=0

mkdir 03
mv hist*-03-* 03
for num in $* 
do

    let counter++

    sed -e s/-23/-$counter/g historico_pedidos-BASE1 > swap
    sed -e s/-01-/-04-/g swap > swap1
    tail -$num swap1 > historico_pedidos-04-$counter
done
counter=0

mkdir 04
mv hist*-04-* 04
for num in $* 
do

    let counter++

    sed -e s/-23/-$counter/g historico_pedidos-BASE1 > swap
    sed -e s/-01-/-05-/g swap > swap1
    tail -$num swap1 > historico_pedidos-05-$counter
done
counter=0

mkdir 05
mv hist*-05-* 05

for num in $* 
do

    let counter++

    sed -e s/-23/-$counter/g historico_pedidos-BASE1 > swap
    sed -e s/-01-/-06-/g swap > swap1
    tail -$num swap1 > historico_pedidos-06-$counter
done
counter=0
mkdir 06
mv hist*-06-* 06

for num in $* 
do

    let counter++

    sed -e s/-23/-$counter/g historico_pedidos-BASE1 > swap
    sed -e s/-01-/-07-/g swap > swap1
    tail -$num swap1 > historico_pedidos-07-$counter
done
counter=0
mkdir 07
mv hist*-07-* 07

for num in $* 
do

    let counter++

    sed -e s/-23/-$counter/g historico_pedidos-BASE > swap
    sed -e s/-01-/-08-/g swap > swap1
    tail -$num swap1 > historico_pedidos-08-$counter
done
counter=0

mkdir 08
mv hist*-08-* 08
for num in $* 
do

    let counter++

    sed -e s/-23/-$counter/g historico_pedidos-BASE > swap
    sed -e s/-01-/-09-/g swap > swap1
    tail -$num swap1 > historico_pedidos-09-$counter
done
counter=0

mkdir 09
mv hist*-09-* 09
for num in $* 
do

    let counter++

    sed -e s/-23/-$counter/g historico_pedidos-BASE2 > swap
    sed -e s/-01-/-10-/g swap > swap1
    tail -$num swap1 > historico_pedidos-10-$counter
done
counter=0

mkdir 10
mv hist*-10-* 10
for num in $* 
do

    let counter++

    sed -e s/-23/-$counter/g historico_pedidos-BASE2 > swap
    sed -e s/-01-/-11-/g swap > swap1
    tail -$num swap1 > historico_pedidos-11-$counter
done
counter=0

mkdir 11
mv hist*-11-* 11
for num in $* 
do

    let counter++

    sed -e s/-23/-$counter/g historico_pedidos-BASE2 > swap
    sed -e s/-01-/-12-/g swap > swap1
    tail -$num swap1 > historico_pedidos-12-$counter
done
counter=0
mkdir 12
mv hist*-12-* 12
