/* ====================================================================
 * ====================================================================
 *
 * Description:
 */

#ifndef targ_issue_port_INCLUDED
#define targ_issue_port_INCLUDED

#ifndef defs_INCLUDED
#define defs_INCLUDED
typedef signed int INT;
typedef signed int INT32;
typedef signed long long INT64;
typedef signed char mINT8;
typedef signed short mINT16;
typedef signed int mINT32;
typedef signed long long mINT64;
typedef unsigned int UINT;
typedef unsigned int UINT32;
typedef unsigned long long UINT64;
typedef unsigned char mUINT8;
typedef unsigned short mUINT16;
typedef unsigned int mUINT32;
typedef unsigned long long mUINT64;
typedef int BOOL;
typedef unsigned char mBOOL;
#ifndef TRUE
#define TRUE    ((BOOL) 1)
#endif
#ifndef FALSE
#define FALSE   ((BOOL) 0)
#endif
#if (defined(_LANGUAGE_C) || defined(__GNUC__)) && !defined(inline)
#define inline static __inline
#endif
#endif

#include "topcode.h" 
#define ISA_MAX_ISSUE_BUNDLES (2) // Machine width in bunldes
typedef INT ISSUE_PORT;
extern ISSUE_PORT ip_M0, ip_M1, ip_M2, ip_M3, ip_I0, ip_I1, ip_F0, ip_F1, ip_B0, ip_B1, ip_B2, ip_invalid, ip_number;
extern char *issue_port_name[];
inline char *Issue_Port_Name( const ISSUE_PORT ip)
{ return issue_port_name[ip];}

extern ISSUE_PORT issue_port_seq[];

class PORT_SET{
   INT body;

public:
   PORT_SET() : body(0) {}
   PORT_SET(INT b): body(b) {}
   PORT_SET(const PORT_SET& p): body(p.body) {}

   PORT_SET& operator=(PORT_SET p){ body=p.body; return *this; }

   PORT_SET operator+(PORT_SET p) const
       { return PORT_SET(body|p.body); }
   PORT_SET operator&(PORT_SET p) const
       { return PORT_SET(body&p.body); }
   PORT_SET operator+(ISSUE_PORT p) const
       { return PORT_SET(body|(1<<p)); }

   PORT_SET operator-(PORT_SET p) const
       { return PORT_SET(body&~(p.body)); }
   PORT_SET operator-(ISSUE_PORT p) const
       { return PORT_SET(body&~(1<<p));}

   operator INT() const{return body; }   INT Body() const{ return body; }
   BOOL In(ISSUE_PORT p) const { return ((1<<p)&body)!=0;}
   BOOL Is_Subset_Of(PORT_SET p) const { return (~body)|(p.body);}
   void Print(FILE *fp, char *str);
   ISSUE_PORT First_IP();
   ISSUE_PORT Last_IP();
   INT Count();
};

extern PORT_SET M_PORTS, I_PORTS, F_PORTS, B_PORTS;
extern const INT op_issue_port[];
inline const PORT_SET TSI_Issue_Ports(TOP top)
{
    switch(top){
    case TOP_mov_t_ar_r:
        return (PORT_SET)( op_issue_port[TOP_mov_t_ar_r_i]
                         | op_issue_port[TOP_mov_t_ar_r_m] );
    case TOP_mov_t_ar_i:
        return (PORT_SET)( op_issue_port[TOP_mov_t_ar_i_i]
                         | op_issue_port[TOP_mov_t_ar_i_m] );
    case TOP_mov_f_ar:
        return (PORT_SET)( op_issue_port[TOP_mov_f_ar_i]
                         | op_issue_port[TOP_mov_f_ar_m] );
    case TOP_break:
        return (PORT_SET)( op_issue_port[TOP_break_i]
                         | op_issue_port[TOP_break_m]
                         | op_issue_port[TOP_break_b]
                         | op_issue_port[TOP_break_f] );
    case TOP_chk_s:
        return (PORT_SET)( op_issue_port[TOP_chk_s_i]
                         | op_issue_port[TOP_chk_s_m] );
    default:
        return (PORT_SET)(op_issue_port[top]);
    }
}

extern INT PROCESSOR_Version;
#endif
