#ifndef _DBFUNC_FOO_H_
#define _DBFUNC_FOO_H_

#ifdef __cplusplus
extern "C" {
#endif
#include "pubdb.h"
#include "cpack.h"

#ifndef CHECK_DB_ERR
#define CHECK_DB_ERR  db_chk_err(__FILE__,__LINE__,&sqlca)
#endif

int process930105(int devid,int week);
int process930117NoDel(T_t_door_device_cardlist *cardlist,int addflag);
int Get_card_next_serial(int card_id,char *tx_date,int total_cnt,double *in_bala,double *out_bala);
int CheckGatewayDynKey(int sysid,char * dynKey);
int GetDevUsageByDevId(char * devid,int *usage);
int GetDevUsageById(int id,int *usage);
//�õ����������̻��ĸ������ܵ�Ӫҵ��
int GetSumCountIndepShop(double *sum,int *count);
//�õ�����Ա����һ����ֽ��ܺ�,ȥ���ֽ𻮲��ͳ������ײ���
int ReadFromOpenGroupAndRepOper(char *group_no,double *GroupCash);
/////////////////////////////////////////////////////////////////
/// ����ǩ��ʹ�õĺ���
int GetConferenceIDByDev(T_t_door_txdtl* tTxdtl,int *conf,char sign[1]);
int SaveConferenceSerial(T_t_door_txdtl* tTxdtl,int conf,int custid,char sign);
int CheckOperatorPwd(const char* operator,const char* pwd);
int CheckShopMealTypeConflict();

int is_oper_has_authcard(char operator[11]);
int SaveKQSerial(T_t_door_txdtl* tTxdtl);

int process930117(T_t_door_device_cardlist *cardlist,int addflag,int seq);
int process930121(int cardid,int addflag,char * version,int devid,int seq);

int count_times_of_holiday(int holiday_id,int *count);

int get_curr_card_by_custid(int custid,T_t_pif_card *card);

int add_new_door_week_tbl(T_t_door_dev_week_tbl *week_tbl,int maxcnt);
int add_new_door_time_sect_tbl(T_t_door_dev_timesect_tbl *time_tbl,int maxcnt);
int add_new_door_time_group_tbl(T_t_door_dev_time_group_tbl *tg_tbl,int maxcnt);
int add_new_door_holiday_tbl(T_t_door_dev_holiday_tbl *holiday_tbl,int maxcnt);

int get_door_dev_by_parent_and_termid(T_t_pif_device *device,int parent_id,int termid);
int get_card_by_phyno(T_t_pif_card *card,const char *phyno);

int dynamic_execute_sql(const char *sqlstr,int *count);
/**
 \breif ��sequence �ж�ȡ��һ��ID ��
 \param seq_key - ��ʾ����, sequence ��ΪS_  + ����
 \param seq_val - ��ȡ��sequence ֵ
 \return 0 ��ʾ�ɹ� , ʧ�ܷ��ش�����
 */
#ifdef ESQL_ORA
int ora_gen_sequence(const char *seq_key,int *seq_val);
#elif defined ESQL_DB2
#define ora_gen_sequence(seq_key,seq_val)  (0)
#endif

#ifdef __cplusplus
}
#endif

#endif // _DBFUNC_FOO_H_