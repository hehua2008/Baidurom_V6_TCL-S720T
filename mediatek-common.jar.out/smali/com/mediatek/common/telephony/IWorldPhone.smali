.class public interface abstract Lcom/mediatek/common/telephony/IWorldPhone;
.super Ljava/lang/Object;
.source "IWorldPhone.java"


# static fields
.field public static final AUTO_SELECT_DISABLE:I = -0x62

.field public static final CAMP_ON_NOT_DENIED:I = 0x0

.field public static final DEFAULT_3G_SLOT:I = 0x0

.field public static final DENY_CAMP_ON_REASON_DOMESTIC_WCDMA:I = 0x4

.field public static final DENY_CAMP_ON_REASON_NEED_SWITCH_TO_FDD:I = 0x2

.field public static final DENY_CAMP_ON_REASON_NEED_SWITCH_TO_TDD:I = 0x3

.field public static final DENY_CAMP_ON_REASON_UNKNOWN:I = 0x1

.field public static final EVENT_GET_PLMN_PREFER_LIST_1:I = 0x50

.field public static final EVENT_GET_PLMN_PREFER_LIST_2:I = 0x51

.field public static final EVENT_GSM_PLMN_CHANGED_1:I = 0x0

.field public static final EVENT_GSM_PLMN_CHANGED_2:I = 0x1

.field public static final EVENT_GSM_SUSPENDED_1:I = 0xa

.field public static final EVENT_GSM_SUSPENDED_2:I = 0xb

.field public static final EVENT_QUERY_MODEM_TYPE:I = 0x46

.field public static final EVENT_RADIO_ON_1:I = 0x1e

.field public static final EVENT_RADIO_ON_2:I = 0x1f

.field public static final EVENT_SET_RAT_GSM_ONLY:I = 0x28

.field public static final EVENT_SET_RAT_WCDMA_PREF:I = 0x32

.field public static final EVENT_STORE_MODEM_TYPE:I = 0x3c

.field public static final LOG_TAG:Ljava/lang/String; = "PHONE"

.field public static final NO_3G_CAPABILITY:I = -0x1

.field public static final NO_OP:Ljava/lang/String; = "OM"

.field public static final POLICY_OM:I = 0x0

.field public static final POLICY_OP01:I = 0x1

.field public static final REGION_DOMESTIC:I = 0x1

.field public static final REGION_FOREIGN:I = 0x2

.field public static final REGION_UNKNOWN:I = 0x0

.field public static final SELECTION_MODE_AUTO:I = 0x0

.field public static final SELECTION_MODE_MANUAL:I = 0x1

.field public static final SET_RAT_TO_2G:I = 0x0

.field public static final SET_RAT_TO_AUTO:I = 0x1

.field public static final UNKNOWN_3G_SLOT:I = -0x63

.field public static final sType1User:I = 0x1

.field public static final sType2User:I = 0x2

.field public static final sType3User:I = 0x3

.field public static final sUnknownUser:I


# virtual methods
.method public abstract disposeWorldPhone()V
.end method

.method public abstract setNetworkSelectionMode(I)V
.end method
