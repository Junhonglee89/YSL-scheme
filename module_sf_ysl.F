!WRF:MODEL_LAYER:PHYSICS
!
MODULE module_sf_sfclayrev_rsl

 REAL    , PARAMETER ::  VCONVC=1.
 REAL    , PARAMETER ::  CZO=0.0185
 REAL    , PARAMETER ::  OZO=1.59E-5

 REAL,   DIMENSION(0:1000 ),SAVE :: psim_stab,psim_unstab,psih_stab,psih_unstab

CONTAINS

!-------------------------------------------------------------------
   SUBROUTINE SFCLAYREV_rsl(U3D,V3D,T3D,QV3D,P3D,dz8w,                    &
                     CP,G,ROVCP,R,XLV,PSFC,CHS,CHS2,CQS2,CPM,      &
                     ZNT,UST,PBLH,MAVAIL,ZOL,MOL,REGIME,PSIM,PSIH, &
                     FM,FH,                                        &
                     XLAND,HFX,QFX,LH,TSK,FLHC,FLQC,QGH,QSFC,RMOL, &
                     U10,V10,TH2,T2,Q2,                            &
                     GZ1OZ0,WSPD,BR,ISFFLX,DX,                     &
                     SVP1,SVP2,SVP3,SVPT0,EP1,EP2,                 &
                     KARMAN,EOMEG,STBOLT,                          &
                     P1000mb,                                      &
!$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$_junhong
                     itimestep, &
                     LAI, VEGTYP, MMINLU,                          &
                     psim_hat_jun, psih_hat_jun,                   &
                     psix_jun, psiq_jun, wspd_jun, ust_jun,        &
                     hc_jun, lai_jun, lc_jun, m10_wind, m2_temp,mjeju_wind, mjeju_temp, &
                     beta_jun, zpd_jun,                            &
                     CHS_ori, &
                     jpsim1,jpsim2,jpsim3,jpsim4,jpsiq1,jpsiq2,jpsiq3,jpsiq4, &
!$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$
                     ids,ide, jds,jde, kds,kde,                    &
                     ims,ime, jms,jme, kms,kme,                    &
                     its,ite, jts,jte, kts,kte,                    &
                     ustm,ck,cka,cd,cda,isftcflx,iz0tlnd,scm_force_flux           )
!-------------------------------------------------------------------
      IMPLICIT NONE
