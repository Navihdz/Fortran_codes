       !principal--------------------------------
        program deriva
        parameter(n=50)
       real::x, y, yp, pi, y2
       real::a,b,dx
       integer::i
       dimension x(n),y(n), yp(n), y2(n)
       pi=4.e0*atan(1.e0)

      !unidades en donde se escribir 
       open(unit=200,file='evalfun.dat')
       open(unit=300,file='derivada.dat')
       open(unit=400,file='funcoseno.dat')
       a=0
       b=2*pi
       dx=(b-a)/(n-1)

       !ciclo para evaluar seno
       do i=1,n
       x(i)=a+(i-1)*dx
       call fun(x(i),y(i))
       write(*,*)x(i),y(i)
       write(200,*)x(i),y(i)
       end do

       !ciclo para evaluar coseno
       do i=1,n
        x(i)=a+(i-1)*dx
        call fun2(x(i),y2(i))
        write(400,*)y2(i)
       end do

       !diferencia adelantada para primer punto
       yp(1)=(y(2)-y(1))/dx
       write(300,*)yp(1)

       !diferencias aden}lantadas para los del centro
       do i=2,n-1
       yp(i)=(y(i+1)-y(i-1))/(2*dx)
       write(300,*)yp(i)
       end do

       !diferencia atrasada para ultimo punto
       yp(n)=(y(n)-y(n-1))/dx
       write(300,*)yp(n)

       !!----este lo pongo porque se cierra mi terminal en FORCE2.0--
       !si exite problema en otro programa eliminarlo
       pause
       end program
       
       
       !subrooutina para funcion seno-----------------------------
       subroutine fun(t,f)
       real::t,f
       f=sin(t)

       end subroutine
       !funcion coseno para comparar resultados
       subroutine fun2(t2,f2)
       real::t2,f2
       f2=cos(t2)
       end subroutine


