      program calor

      parameter(ni=11,nj=21,nk=100)
      integer i,k
      real T,Tf,C,pi
      dimension T(ni,nj),Tf(ni,nj)

      pi=4.e0*atan(1.e0)
      C=.2e0

C     define las Condiciones  Iniciales
      do j=1,nj
      do i=1,ni
      T(i,j)=0.e0
      enddo
      enddo
      write(6,*) T
      


      open(unit=100,file='calor2d.dat')
      write(100,*) T


      do k=1,nk-1
        do j=2,nj-1
        do i=2,ni-1
          Tf(i,j)=T(i,j)+C*(T(i+1,j)-2.e0*T(i,j)+T(i-1,j))
     $                  +C*(T(i,j+1)-2.e0*T(i,j)+T(i,j-1))
        enddo
        enddo

        do j=1,nj
        Tf(1,j)=T(2,j)
        Tf(ni,j)=T(ni-1,j)
        enddo

        do i=1,ni
        Tf(i,1)=Tf(i,2)
        Tf(i,nj)=Tf(i,nj-1)
        enddo
       !define dinde se encuentra la fuente de calor
        Tf(10,20)= 100.e0
 
        if(mod(k,1).eq.0.e0) then
        write(100,*) T
        endif
        T=Tf
        do j=1,nj
      T(1,j)=5.e0
      enddo
      enddo
      close(100)
      write(6,*) '* * *' 
      write(6,*) T
      end program

