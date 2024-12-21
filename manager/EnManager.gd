extends Node

enum act_state{ none, idle, walk ,run , slide , die , knockback , atk , casting } 
### stats ########################################################
enum sts_idx { base,sub_sts,item,bf,df }
enum sts_id {
NONE = 0,
MN_PATK,
MX_PATK,
MN_MATK,
MX_MATK,
MN_TPWR,
MX_TPWR,
STR,
CON,
WIS,
INT,
DEX,
LUK,
A_STAT,
P_ATK,
M_ATK,
TPWR,
CRIT_DMG,
CRIT_CHA,
M_SPD,
DRP_CHA,
P_DEF,
M_DEF,
HP_REGEN,
MP_REGEN,
SP_REGEN,
MX_HP,
MX_MP,
MX_SP,
ACC,
DODGE,
KBK,
KBKRES,
CDR,
HP,
MP,
SP,
SAT,
MX_SAT,
CD,
DURATION,
CRP,
DURABILITY,
AGI,
MX_WEIGHT,
WEIGHT,
ATK_SPD,
MX_CRP,
}
