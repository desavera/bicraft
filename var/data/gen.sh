#!/bin/bash

export counter=0

for num in $* 
do

    let counter++

    sed -e s/-23/-$counter/g historico_pedidos-BASE1 > swap
    tail -$num swap > historico_pedidos-01-$counter
done

mkdir 01
mv hist*-01-* 01
for num in $* 
do

    let counter++

    sed -e s/-23/-$counter/g historico_pedidos-BASE1 > swap
    tail -$num swap > historico_pedidos-02-$counter
done

mkdir 02
mv hist*-02-* 02
for num in $* 
do

    let counter++

    sed -e s/-23/-$counter/g historico_pedidos-BASE1 > swap
    tail -$num swap > historico_pedidos-03-$counter
done

mkdir 03
mv hist*-03-* 03
for num in $* 
do

    let counter++

    sed -e s/-23/-$counter/g historico_pedidos-BASE1 > swap
    tail -$num swap > historico_pedidos-04-$counter
done

mkdir 04
mv hist*-04-* 04
for num in $* 
do

    let counter++

    sed -e s/-23/-$counter/g historico_pedidos-BASE1 > swap
    tail -$num swap > historico_pedidos-05-$counter
done

mkdir 05
mv hist*-05-* 05

for num in $* 
do

    let counter++

    sed -e s/-23/-$counter/g historico_pedidos-BASE1 > swap
    tail -$num swap > historico_pedidos-06-$counter
done
mkdir 06
mv hist*-06-* 06

for num in $* 
do

    let counter++

    sed -e s/-23/-$counter/g historico_pedidos-BASE1 > swap
    tail -$num swap > historico_pedidos-07-$counter
done
mkdir 07
mv hist*-07-* 07

for num in $* 
do

    let counter++

    sed -e s/-23/-$counter/g historico_pedidos-BASE > swap
    tail -$num swap > historico_pedidos-08-$counter
done

mkdir 08
mv hist*-08-* 08
for num in $* 
do

    let counter++

    sed -e s/-23/-$counter/g historico_pedidos-BASE > swap
    tail -$num swap > historico_pedidos-09-$counter
done

mkdir 09
mv hist*-09-* 09
for num in $* 
do

    let counter++

    sed -e s/-23/-$counter/g historico_pedidos-BASE2 > swap
    tail -$num swap > historico_pedidos-10-$counter
done

mkdir 10
mv hist*-10-* 10
for num in $* 
do

    let counter++

    sed -e s/-23/-$counter/g historico_pedidos-BASE2 > swap
    tail -$num swap > historico_pedidos-11-$counter
done

mkdir 11
mv hist*-11-* 11
for num in $* 
do

    let counter++

    sed -e s/-23/-$counter/g historico_pedidos-BASE2 > swap
    tail -$num swap > historico_pedidos-12-$counter
done
mkdir 12
mv hist*-12-* 12
