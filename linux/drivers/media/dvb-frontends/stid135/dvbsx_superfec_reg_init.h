/* 
* This file is part of STiD135 OXFORD LLA 
* 
* Copyright (c) <2014>-<2018>, STMicroelectronics - All Rights Reserved 
* Author(s): Mathias Hilaire (mathias.hilaire@st.com), Thierry Delahaye (thierry.delahaye@st.com) for STMicroelectronics. 
* 
* License terms: BSD 3-clause "New" or "Revised" License. 
* 
* Redistribution and use in source and binary forms, with or without 
* modification, are permitted provided that the following conditions are met: 
* 
* 1. Redistributions of source code must retain the above copyright notice, this 
* list of conditions and the following disclaimer. 
* 
* 2. Redistributions in binary form must reproduce the above copyright notice, 
* this list of conditions and the following disclaimer in the documentation 
* and/or other materials provided with the distribution. 
* 
* 3. Neither the name of the copyright holder nor the names of its contributors 
* may be used to endorse or promote products derived from this software 
* without specific prior written permission. 
* 
* THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" 
* AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE 
* IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE 
* DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE 
* FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL 
* DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR 
* SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER 
* CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, 
* OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE 
* OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE. 
* 
*/ 
#ifndef _DVBSX_SUPERFEC_REG_INIT_H
#define _DVBSX_SUPERFEC_REG_INIT_H

/* -------------------------------------------------------------------------
 * File name  : dvbsx_superfec_reg_init.h
 * File type  : C header file
 * -------------------------------------------------------------------------
 * Description:  Register map constants
 * Generated by spirit2regtest v2.24_alpha3
 * -------------------------------------------------------------------------
 */


/* Register map constants */

/* SFAVSR */
#define RC8CODEW_DVBSX_SUPERFEC_SFAVSR                               0x00000000
#define RC8CODEW_DVBSX_SUPERFEC_SFAVSR__DEFAULT                      0x0       
#define FC8CODEW_DVBSX_SUPERFEC_SFAVSR_SFERROR_DBMODE__MASK          0x01      
#define FC8CODEW_DVBSX_SUPERFEC_SFAVSR_NOSTBL_SELECT_SFEC__MASK      0x0C      
#define FC8CODEW_DVBSX_SUPERFEC_SFAVSR_SN_SFEC__MASK                 0x30      
#define FC8CODEW_DVBSX_SUPERFEC_SFAVSR_SERROR_MAXMODE__MASK          0x40      
#define FC8CODEW_DVBSX_SUPERFEC_SFAVSR_SFEC_SUMERRORS__MASK          0x80      

/* SFDEMAP */
#define RC8CODEW_DVBSX_SUPERFEC_SFDEMAP                              0x00000001
#define RC8CODEW_DVBSX_SUPERFEC_SFDEMAP__DEFAULT                     0x0       
#define FC8CODEW_DVBSX_SUPERFEC_SFDEMAP_SFEC_K_DIVIDER_VIT__MASK     0x7F      
#define FC8CODEW_DVBSX_SUPERFEC_SFDEMAP_SFEC_VXINOBS__MASK           0x80      

/* SFERROR */
#define RC8CODEW_DVBSX_SUPERFEC_SFERROR                              0x00000002
#define RC8CODEW_DVBSX_SUPERFEC_SFERROR__DEFAULT                     0x0       
#define FC8CODEW_DVBSX_SUPERFEC_SFERROR_SFEC_REGERR_VIT__MASK        0xFF      

/* SFECCNR */
#define RC8CODEW_DVBSX_SUPERFEC_SFECCNR                              0x00000003
#define RC8CODEW_DVBSX_SUPERFEC_SFECCNR__DEFAULT                     0x0       
#define FC8CODEW_DVBSX_SUPERFEC_SFECCNR_SFEC_REGERR_CNR__MASK        0xFF      

/* SFKDIV12 */
#define RC8CODEW_DVBSX_SUPERFEC_SFKDIV12                             0x00000004
#define RC8CODEW_DVBSX_SUPERFEC_SFKDIV12__DEFAULT                    0x0       
#define FC8CODEW_DVBSX_SUPERFEC_SFKDIV12_SFEC_K_DIVIDER_12__MASK     0x7F      
#define FC8CODEW_DVBSX_SUPERFEC_SFKDIV12_SFECKDIV12_MAN__MASK        0x80      

/* SFKDIV23 */
#define RC8CODEW_DVBSX_SUPERFEC_SFKDIV23                             0x00000005
#define RC8CODEW_DVBSX_SUPERFEC_SFKDIV23__DEFAULT                    0x0       
#define FC8CODEW_DVBSX_SUPERFEC_SFKDIV23_SFEC_K_DIVIDER_23__MASK     0x7F      
#define FC8CODEW_DVBSX_SUPERFEC_SFKDIV23_SFECKDIV23_MAN__MASK        0x80      

/* SFKDIV34 */
#define RC8CODEW_DVBSX_SUPERFEC_SFKDIV34                             0x00000006
#define RC8CODEW_DVBSX_SUPERFEC_SFKDIV34__DEFAULT                    0x0       
#define FC8CODEW_DVBSX_SUPERFEC_SFKDIV34_SFEC_K_DIVIDER_34__MASK     0x7F      
#define FC8CODEW_DVBSX_SUPERFEC_SFKDIV34_SFECKDIV34_MAN__MASK        0x80      

/* SFKDIV56 */
#define RC8CODEW_DVBSX_SUPERFEC_SFKDIV56                             0x00000007
#define RC8CODEW_DVBSX_SUPERFEC_SFKDIV56__DEFAULT                    0x0       
#define FC8CODEW_DVBSX_SUPERFEC_SFKDIV56_SFEC_K_DIVIDER_56__MASK     0x7F      
#define FC8CODEW_DVBSX_SUPERFEC_SFKDIV56_SFECKDIV56_MAN__MASK        0x80      

/* SFKDIV67 */
#define RC8CODEW_DVBSX_SUPERFEC_SFKDIV67                             0x00000008
#define RC8CODEW_DVBSX_SUPERFEC_SFKDIV67__DEFAULT                    0x0       
#define FC8CODEW_DVBSX_SUPERFEC_SFKDIV67_SFEC_K_DIVIDER_67__MASK     0x7F      
#define FC8CODEW_DVBSX_SUPERFEC_SFKDIV67_SFECKDIV67_MAN__MASK        0x80      

/* SFKDIV78 */
#define RC8CODEW_DVBSX_SUPERFEC_SFKDIV78                             0x00000009
#define RC8CODEW_DVBSX_SUPERFEC_SFKDIV78__DEFAULT                    0x0       
#define FC8CODEW_DVBSX_SUPERFEC_SFKDIV78_SFEC_K_DIVIDER_78__MASK     0x7F      
#define FC8CODEW_DVBSX_SUPERFEC_SFKDIV78_SFECKDIV78_MAN__MASK        0x80      

/* SFECSTATUS */
#define RC8CODEW_DVBSX_SUPERFEC_SFECSTATUS                           0x0000000a
#define RC8CODEW_DVBSX_SUPERFEC_SFECSTATUS__DEFAULT                  0x0       
#define FC8CODEW_DVBSX_SUPERFEC_SFECSTATUS_SFEC_OVFON__MASK          0x01      
#define FC8CODEW_DVBSX_SUPERFEC_SFECSTATUS_SFEC_DEMODSEL__MASK       0x02      
#define FC8CODEW_DVBSX_SUPERFEC_SFECSTATUS_SFEC_DELOCK__MASK         0x04      
#define FC8CODEW_DVBSX_SUPERFEC_SFECSTATUS_LOCKEDSFEC__MASK          0x08      
#define FC8CODEW_DVBSX_SUPERFEC_SFECSTATUS_SFEC_OFF__MASK            0x40      
#define FC8CODEW_DVBSX_SUPERFEC_SFECSTATUS_SFEC_ON__MASK             0x80      

/* TSTSFMET */
#define RC8CODEW_DVBSX_SUPERFEC_TSTSFMET                             0x0000000d
#define RC8CODEW_DVBSX_SUPERFEC_TSTSFMET__DEFAULT                    0x0       
#define FC8CODEW_DVBSX_SUPERFEC_TSTSFMET_TSTSFEC_METRIQUES__MASK     0xFF      

/* TSFSYNC */
#define RC8CODEW_DVBSX_SUPERFEC_TSFSYNC                              0x0000000e
#define RC8CODEW_DVBSX_SUPERFEC_TSFSYNC__DEFAULT                     0x0       
#define FC8CODEW_DVBSX_SUPERFEC_TSFSYNC_SFECTSTSYNCHRO_MODE__MASK    0x0F      
#define FC8CODEW_DVBSX_SUPERFEC_TSFSYNC_SFECPXX_BYPALL__MASK         0x10      
#define FC8CODEW_DVBSX_SUPERFEC_TSFSYNC_SFCERR_TSTMODE__MASK         0x20      
#define FC8CODEW_DVBSX_SUPERFEC_TSFSYNC_EN_SFECDEMAP__MASK           0x40      
#define FC8CODEW_DVBSX_SUPERFEC_TSFSYNC_EN_SFECSYNC__MASK            0x80      

/* TSTSFERR */
#define RC8CODEW_DVBSX_SUPERFEC_TSTSFERR                             0x0000000f
#define RC8CODEW_DVBSX_SUPERFEC_TSTSFERR__DEFAULT                    0x0       
#define FC8CODEW_DVBSX_SUPERFEC_TSTSFERR_SFECMETRIQUE_MODE__MASK     0x03      
#define FC8CODEW_DVBSX_SUPERFEC_TSTSFERR_SFEC_NCONVPROG__MASK        0x04      
#define FC8CODEW_DVBSX_SUPERFEC_TSTSFERR_SFECTRACEBACK_MODE__MASK    0x08      
#define FC8CODEW_DVBSX_SUPERFEC_TSTSFERR_SFECTST_ERASURE__MASK       0x10      


/* Number of registers */
#define C8CODEW_DVBSX_SUPERFEC_REG_NBREGS                            14        

/* Number of fields */
#define C8CODEW_DVBSX_SUPERFEC_REG_NBFIELDS                          37        



#endif /* #ifndef _DVBSX_SUPERFEC_REG_INIT_H */
