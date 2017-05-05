SUBROUTINE SOLVECUBIC (C1 , C2 , C3, X1, X2, X3, X2I, X3I)
  REAL, INTENT(IN) :: C1 , C2 , C3
  REAL :: Q, R, THETA, A, B
  REAL, INTENT(OUT) :: X1, X2, X3, X2I, X3I

  Q = (C1*C1 - 3*C2)/9
  R = (2*C1*C1*C1 - 9*C1*C2 + 27*C3)/54

  IF (R**2 .LT. Q**3) THEN
    THETA = ACOS(R/SQRT(Q**3))
    X1 = -2*SQRT(Q)*COS(THETA/3)-C1/3
    X2 = -2*SQRT(Q)*COS((THETA+2*3.1415)/3)-C1/3
    X3 = -2*SQRT(Q)*COS((THETA-2*3.1415)/3)-C1/3
    X2I = 0
    X3I = 0
  ELSE
    A = -(R + SQRT(R*R - Q*Q*Q))**(1/3)
    IF (A .EQ. 0) THEN
      B = Q/A
    ELSE
      B = 0
    ENDIF
    X1 = (A + B) - C1/3
    X2 = -(1/2)*(A + B) - C1/3
    X2I = SQRT(3.0)*(A - B)/2
    X3 = -(1/2)*(A + B) - C1/3
    X2I = -SQRT(3.0)*(A - B)/2
  ENDIF

  RETURN
END SUBROUTINE SOLVECUBIC
