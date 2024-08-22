module cfuncs
  implicit none
  private
  public :: cnlprt, h100s, h100l

contains
  subroutine cnlprt(msg)
    character(len=*), intent(in) :: msg
    
    print *, ''  ! Print a blank line
    print *, trim(msg)  ! Print the message without trailing spaces
  end subroutine cnlprt

  subroutine h100s(i1, i2, d1, d2, d3, d4, a1, a2, d5)
    integer, intent(in) :: i1, i2
    real(kind=8), intent(in) :: d1, d2, d3, d4, d5
    character(len=1), intent(in) :: a1
    character(len=2), intent(in) :: a2
    
    write(*, '(I6,I5,1PE10.3,2(1PE9.2),1PE8.1,A3,A4,1PE8.1)') &
      i1, i2, d1, d2, d3, d4, a1, a2, d5
  end subroutine h100s

  subroutine h100l(i1, i2, d1, d2, d3, d4, a1, a2, d5, d6, d7)
    integer, intent(in) :: i1, i2
    real(kind=8), intent(in) :: d1, d2, d3, d4, d5, d6, d7
    character(len=1), intent(in) :: a1
    character(len=2), intent(in) :: a2
    
    write(*, '(I6,I5,1PE10.3,2(1PE9.2),1PE8.1,A3,A4,2(1PE8.1),1PE9.2)') &
      i1, i2, d1, d2, d3, d4, a1, a2, d5, d6, d7
  end subroutine h100l
end module cfuncs
