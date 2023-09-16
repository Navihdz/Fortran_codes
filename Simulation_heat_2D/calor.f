      program calor

      parameter(ni=11,nk=100)
      integer i,k
      real T,C
      dimension T(nk,ni)

      C=0.1e0

      do k=1,nk
      do i=1,ni
      T(k,i)=0.e0
      enddo
      enddo

C     define la Condicion Inicial
      T(1,1)=10.e0
      do i=2,ni-1
      T(1,i)=5.e0
      enddo
      T(1,ni)=0.e0
      write(6,'(11F6.2)') T(1,:)

      open(unit=100,file='calor.dat')
      write(100,'(11F6.2)') T(1,:)

      do k=1,nk-1
        T(k+1,1)=10.e0
        do i=2,ni-1
          T(k+1,i)=T(k,i)+C*(T(k,i+1)-2.e0*T(k,i)+T(k,i-1))
        enddo
        T(k+1,ni)=T(k+1,ni-1)
        if(mod(k,10).eq.0.e0) then
        write(100,'(11F6.2)') T(k+1,:)
        endif
      enddo
      close(100)
      write(6,'(11F6.2)') T(nk,:)

      end program




