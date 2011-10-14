!OBJ
      SUBROUTINE fsh07s(ierror,an,bn,cn,b,ah,bh)
      DO 160 l = 1,kdo
          ir = l - 1
          i2 = 2**ir
          i4 = i2 + i2
          ifd = if - i4
          DO 150 i = i4,ifd,i4
              CALL fsh10s(i,l,ib,nb)
              IF (ierror.eq.0) then
                 endif
  150     CONTINUE
  160 CONTINUE
      END SUBROUTINE fsh07s
