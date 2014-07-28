.class public Lcom/android/internal/telephony/gemini/GeminiPhone;
.super Landroid/os/Handler;
.source "SourceFile"

# interfaces
.implements Lcom/android/internal/telephony/Phone;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gemini/GeminiPhone$a;
    }
.end annotation


# static fields
.field private static final C:[I = null

.field public static EVENT_3G_SWITCH_DONE:Ljava/lang/String; = null

.field public static EVENT_3G_SWITCH_LOCK_CHANGED:Ljava/lang/String; = null

.field protected static final EVENT_3G_SWITCH_SET_PREFERRED_NETWORK_MODE:I = 0x3

.field public static EVENT_3G_SWITCH_START_MD_RESET:Ljava/lang/String; = null

.field protected static final EVENT_DUAL_SIM_SWITCH_DONE:I = 0x1

.field protected static final EVENT_GET_AVAILABLE_NW:I = 0x6

.field protected static final EVENT_GET_ICCID_FOR_SIM_HOT_SWAP_DONE:I = 0x5

.field protected static final EVENT_GET_NETWORK_SELECTION_MODE:I = 0x4

.field protected static final EVENT_GPRS_DETACHED:I = 0x7

.field public static EVENT_INITIALIZATION_FRAMEWORK_DONE:Ljava/lang/String; = null

.field public static EVENT_PRE_3G_SWITCH:Ljava/lang/String; = null

.field protected static final EVENT_RADIO_AVAILABLE:I = 0x8

.field protected static final EVENT_SIM_INSERTED_STATUS:I = 0x2

.field public static EXTRA_3G_SIM:Ljava/lang/String; = null

.field public static EXTRA_3G_SWITCH_LOCKED:Ljava/lang/String; = null

.field public static final EXTRA_VALUE_NEW_SIM:Ljava/lang/String; = "NEW"

.field public static final EXTRA_VALUE_REMOVE_SIM:Ljava/lang/String; = "REMOVE"

.field public static final EXTRA_VALUE_SWAP_SIM:Ljava/lang/String; = "SWAP"

.field public static final INTENT_KEY_DETECT_STATUS:Ljava/lang/String; = "simDetectStatus"

.field public static final INTENT_KEY_NEW_SIM_SLOT:Ljava/lang/String; = "newSIMSlot"

.field public static final INTENT_KEY_SIM_COUNT:Ljava/lang/String; = "simCount"

.field public static final PREFERENCE_3G_SWITCH:Ljava/lang/String; = "com.mtk.3G_SWITCH"

.field public static final PREF_3G_SIM_ID:Ljava/lang/String; = "3G_SIM_ID"

.field public static final PROPERTY_3G_SWITCH:Ljava/lang/String; = "gsm.3gswitch"

.field public static final PROPERTY_SMART_3G_SWITCH:Ljava/lang/String; = "ro.gemini.smart_3g_switch"

.field protected static final STATUS_DUAL_SIM_INSERTED:I = 0x3

.field protected static final STATUS_NO_SIM_INSERTED:I = 0x0

.field protected static final STATUS_QUAD_SIM_INSERTED:I = 0xf

.field protected static final STATUS_SIM1_INSERTED:I = 0x1

.field protected static final STATUS_SIM2_INSERTED:I = 0x2

.field protected static final STATUS_SIM3_INSERTED:I = 0x4

.field protected static final STATUS_SIM4_INSERTED:I = 0x8

.field protected static final STATUS_TRIPLE_SIM_INSERTED:I = 0x7

.field private static s:Landroid/content/SharedPreferences;


# instance fields
.field private A:I

.field private B:I

.field private D:[Ljava/lang/String;

.field private E:Z

.field private F:Lcom/mediatek/common/telephony/internationalroaming/IInternationalRoamingController;

.field private G:Ljava/lang/Runnable;

.field private H:Ljava/lang/Runnable;

.field private I:Lcom/android/internal/telephony/gemini/GeminiPhone$a;

.field private J:Ljava/lang/Runnable;

.field a:Lcom/mediatek/common/telephony/ISimInfoUpdate;

.field private b:Lcom/android/internal/telephony/Phone;

.field private c:[Lcom/android/internal/telephony/Phone;

.field private d:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

.field private e:Landroid/content/Context;

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:[Ljava/lang/String;

.field private k:I

.field private l:I

.field private m:Landroid/os/RegistrantList;

.field public mWorldPhone:Lcom/mediatek/common/telephony/IWorldPhone;

.field private n:Lcom/mediatek/common/telephony/ISwitch3GPolicy;

.field private o:Lcom/mediatek/common/telephony/ITelephonyExt;

.field private p:I

.field private q:Z

.field private r:Z

.field private t:I

.field private u:Landroid/os/PowerManager$WakeLock;

.field private v:Z

.field private w:Z

.field private x:Z

.field private y:Z

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 195
    const-string v0, "com.mtk.EVENT_INITIALIZATION_FRAMEWORK_DONE"

    sput-object v0, Lcom/android/internal/telephony/gemini/GeminiPhone;->EVENT_INITIALIZATION_FRAMEWORK_DONE:Ljava/lang/String;

    .line 208
    const-string v0, "com.mtk.PRE_3G_SWITCH"

    sput-object v0, Lcom/android/internal/telephony/gemini/GeminiPhone;->EVENT_PRE_3G_SWITCH:Ljava/lang/String;

    .line 209
    const-string v0, "com.mtk.3G_SWITCH_DONE"

    sput-object v0, Lcom/android/internal/telephony/gemini/GeminiPhone;->EVENT_3G_SWITCH_DONE:Ljava/lang/String;

    .line 210
    const-string v0, "com.mtk.EVENT_3G_SWITCH_START_MD_RESET"

    sput-object v0, Lcom/android/internal/telephony/gemini/GeminiPhone;->EVENT_3G_SWITCH_START_MD_RESET:Ljava/lang/String;

    .line 211
    const-string v0, "com.mtk.EVENT_3G_SWITCH_LOCK_CHANGED"

    sput-object v0, Lcom/android/internal/telephony/gemini/GeminiPhone;->EVENT_3G_SWITCH_LOCK_CHANGED:Ljava/lang/String;

    .line 213
    const-string v0, "3G_SIM"

    sput-object v0, Lcom/android/internal/telephony/gemini/GeminiPhone;->EXTRA_3G_SIM:Ljava/lang/String;

    .line 214
    const-string v0, "com.mtk.EXTRA_3G_SWITCH_LOCKED"

    sput-object v0, Lcom/android/internal/telephony/gemini/GeminiPhone;->EXTRA_3G_SWITCH_LOCKED:Ljava/lang/String;

    .line 249
    const/16 v0, 0x1b

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/internal/telephony/gemini/GeminiPhone;->C:[I

    return-void

    :array_0
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Phone;I)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 277
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 146
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    new-array v0, v0, [Lcom/android/internal/telephony/Phone;

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->c:[Lcom/android/internal/telephony/Phone;

    .line 161
    iput v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->f:I

    .line 163
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->h:I

    .line 164
    iput v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->i:I

    .line 165
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->j:[Ljava/lang/String;

    .line 167
    iput v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->k:I

    .line 168
    iput v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->l:I

    .line 171
    iput-object v4, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->a:Lcom/mediatek/common/telephony/ISimInfoUpdate;

    .line 173
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->m:Landroid/os/RegistrantList;

    .line 222
    const/16 v0, -0x63

    iput v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->p:I

    .line 232
    iput-boolean v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->x:Z

    .line 236
    iput-boolean v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->y:Z

    .line 237
    iput v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->z:I

    .line 245
    iput v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->A:I

    .line 248
    iput v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->B:I

    .line 251
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "ril.iccid.sim1"

    aput-object v1, v0, v2

    const-string/jumbo v1, "ril.iccid.sim2"

    aput-object v1, v0, v3

    const-string/jumbo v1, "ril.iccid.sim3"

    aput-object v1, v0, v5

    const-string/jumbo v1, "ril.iccid.sim4"

    aput-object v1, v0, v6

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->D:[Ljava/lang/String;

    .line 635
    new-instance v0, Lcom/android/internal/telephony/gemini/e;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/gemini/e;-><init>(Lcom/android/internal/telephony/gemini/GeminiPhone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->G:Ljava/lang/Runnable;

    .line 820
    new-instance v0, Lcom/android/internal/telephony/gemini/a;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/gemini/a;-><init>(Lcom/android/internal/telephony/gemini/GeminiPhone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->H:Ljava/lang/Runnable;

    .line 3309
    new-instance v0, Lcom/android/internal/telephony/gemini/GeminiPhone$a;

    invoke-direct {v0, p0, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone$a;-><init>(Lcom/android/internal/telephony/gemini/GeminiPhone;Lcom/android/internal/telephony/gemini/e;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->I:Lcom/android/internal/telephony/gemini/GeminiPhone$a;

    .line 3487
    new-instance v0, Lcom/android/internal/telephony/gemini/c;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/gemini/c;-><init>(Lcom/android/internal/telephony/gemini/GeminiPhone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->J:Ljava/lang/Runnable;

    .line 278
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->c:[Lcom/android/internal/telephony/Phone;

    aput-object p1, v0, v2

    .line 279
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->c:[Lcom/android/internal/telephony/Phone;

    aput-object p2, v0, v3

    .line 280
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->c:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, p3

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    .line 282
    iput-boolean v3, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->x:Z

    .line 284
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->e:Landroid/content/Context;

    .line 287
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->g()I

    move-result v1

    .line 289
    if-ne v1, v3, :cond_2

    .line 290
    :try_start_0
    const-class v0, Lcom/mediatek/common/telephony/ISwitch3GPolicy;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v5, "DEFAULT"

    aput-object v5, v2, v3

    invoke-static {v0, v2}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/common/telephony/ISwitch3GPolicy;

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->n:Lcom/mediatek/common/telephony/ISwitch3GPolicy;

    .line 298
    :goto_0
    const-string v0, "PHONE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ISwitch3GPolicy created (policyId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mSwitch3GPolicy="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->n:Lcom/mediatek/common/telephony/ISwitch3GPolicy;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 306
    :goto_1
    :try_start_1
    const-class v0, Lcom/mediatek/common/telephony/ISimInfoUpdate;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->e:Landroid/content/Context;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/common/telephony/ISimInfoUpdate;

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->a:Lcom/mediatek/common/telephony/ISimInfoUpdate;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 311
    :goto_2
    :try_start_2
    const-class v0, Lcom/mediatek/common/telephony/ITelephonyExt;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/common/telephony/ITelephonyExt;

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->o:Lcom/mediatek/common/telephony/ITelephonyExt;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 316
    :goto_3
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isWorldPhone()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 318
    :try_start_3
    const-string/jumbo v0, "ro.operator.optr"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 319
    if-eqz v0, :cond_4

    const-string v1, "OP01"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 320
    const-class v0, Lcom/mediatek/common/telephony/IWorldPhone;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/common/telephony/IWorldPhone;

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->mWorldPhone:Lcom/mediatek/common/telephony/IWorldPhone;

    .line 324
    :goto_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WorldPhoneWrapper created mWorldPhone = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->mWorldPhone:Lcom/mediatek/common/telephony/IWorldPhone;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->b(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 330
    :cond_0
    :goto_5
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "dual_sim_mode_setting"

    invoke-static {v0, v1, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->g:I

    .line 333
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiRadioStatusUtil;->checkRadioOffSIM(Landroid/content/Context;)V

    .line 334
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GeminiPhone initizlization to initialize telephony framework ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->b(Ljava/lang/String;)V

    .line 337
    new-instance v0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;-><init>(Lcom/android/internal/telephony/gemini/GeminiPhone;Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Phone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->d:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    .line 340
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isInternationalRoamingEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 341
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->k()V

    .line 345
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->c()V

    .line 346
    return-void

    .line 291
    :cond_2
    if-ne v1, v5, :cond_3

    .line 292
    :try_start_4
    const-class v0, Lcom/mediatek/common/telephony/ISwitch3GPolicy;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v5, "OP"

    aput-object v5, v2, v3

    invoke-static {v0, v2}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/common/telephony/ISwitch3GPolicy;

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->n:Lcom/mediatek/common/telephony/ISwitch3GPolicy;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0

    .line 299
    :catch_0
    move-exception v0

    .line 300
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 301
    const-string v2, "PHONE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ISwitch3GPolicy create exception (policyId="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "): "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 294
    :cond_3
    const/4 v0, 0x0

    :try_start_5
    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->n:Lcom/mediatek/common/telephony/ISwitch3GPolicy;

    .line 295
    const-string v0, "PHONE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Switch 3G Policy Missing (mSwitch3GPolicy=null, policyId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_0

    .line 307
    :catch_1
    move-exception v0

    .line 308
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 312
    :catch_2
    move-exception v0

    .line 313
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    .line 322
    :cond_4
    :try_start_6
    const-class v0, Lcom/mediatek/common/telephony/IWorldPhone;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/common/telephony/IWorldPhone;

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->mWorldPhone:Lcom/mediatek/common/telephony/IWorldPhone;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto/16 :goto_4

    .line 325
    :catch_3
    move-exception v0

    .line 326
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_5
.end method

.method public constructor <init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Phone;I)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 348
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 146
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    new-array v0, v0, [Lcom/android/internal/telephony/Phone;

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->c:[Lcom/android/internal/telephony/Phone;

    .line 161
    iput v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->f:I

    .line 163
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->h:I

    .line 164
    iput v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->i:I

    .line 165
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->j:[Ljava/lang/String;

    .line 167
    iput v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->k:I

    .line 168
    iput v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->l:I

    .line 171
    iput-object v5, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->a:Lcom/mediatek/common/telephony/ISimInfoUpdate;

    .line 173
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->m:Landroid/os/RegistrantList;

    .line 222
    const/16 v0, -0x63

    iput v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->p:I

    .line 232
    iput-boolean v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->x:Z

    .line 236
    iput-boolean v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->y:Z

    .line 237
    iput v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->z:I

    .line 245
    iput v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->A:I

    .line 248
    iput v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->B:I

    .line 251
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "ril.iccid.sim1"

    aput-object v1, v0, v2

    const-string/jumbo v1, "ril.iccid.sim2"

    aput-object v1, v0, v3

    const-string/jumbo v1, "ril.iccid.sim3"

    aput-object v1, v0, v4

    const-string/jumbo v1, "ril.iccid.sim4"

    aput-object v1, v0, v6

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->D:[Ljava/lang/String;

    .line 635
    new-instance v0, Lcom/android/internal/telephony/gemini/e;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/gemini/e;-><init>(Lcom/android/internal/telephony/gemini/GeminiPhone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->G:Ljava/lang/Runnable;

    .line 820
    new-instance v0, Lcom/android/internal/telephony/gemini/a;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/gemini/a;-><init>(Lcom/android/internal/telephony/gemini/GeminiPhone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->H:Ljava/lang/Runnable;

    .line 3309
    new-instance v0, Lcom/android/internal/telephony/gemini/GeminiPhone$a;

    invoke-direct {v0, p0, v5}, Lcom/android/internal/telephony/gemini/GeminiPhone$a;-><init>(Lcom/android/internal/telephony/gemini/GeminiPhone;Lcom/android/internal/telephony/gemini/e;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->I:Lcom/android/internal/telephony/gemini/GeminiPhone$a;

    .line 3487
    new-instance v0, Lcom/android/internal/telephony/gemini/c;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/gemini/c;-><init>(Lcom/android/internal/telephony/gemini/GeminiPhone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->J:Ljava/lang/Runnable;

    .line 349
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->c:[Lcom/android/internal/telephony/Phone;

    aput-object p1, v0, v2

    .line 350
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->c:[Lcom/android/internal/telephony/Phone;

    aput-object p2, v0, v3

    .line 351
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->c:[Lcom/android/internal/telephony/Phone;

    aput-object p3, v0, v4

    .line 352
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->c:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, p4

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    .line 354
    iput-boolean v3, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->x:Z

    .line 356
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->e:Landroid/content/Context;

    .line 359
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->g()I

    move-result v1

    .line 361
    if-ne v1, v3, :cond_1

    .line 362
    :try_start_0
    const-class v0, Lcom/mediatek/common/telephony/ISwitch3GPolicy;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "DEFAULT"

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/common/telephony/ISwitch3GPolicy;

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->n:Lcom/mediatek/common/telephony/ISwitch3GPolicy;

    .line 370
    :goto_0
    const-string v0, "PHONE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ISwitch3GPolicy created (policyId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mSwitch3GPolicy="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->n:Lcom/mediatek/common/telephony/ISwitch3GPolicy;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 378
    :goto_1
    :try_start_1
    const-class v0, Lcom/mediatek/common/telephony/ISimInfoUpdate;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->e:Landroid/content/Context;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/common/telephony/ISimInfoUpdate;

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->a:Lcom/mediatek/common/telephony/ISimInfoUpdate;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 383
    :goto_2
    :try_start_2
    const-class v0, Lcom/mediatek/common/telephony/ITelephonyExt;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/common/telephony/ITelephonyExt;

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->o:Lcom/mediatek/common/telephony/ITelephonyExt;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 388
    :goto_3
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "dual_sim_mode_setting"

    invoke-static {v0, v1, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->g:I

    .line 391
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiRadioStatusUtil;->checkRadioOffSIM(Landroid/content/Context;)V

    .line 392
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GeminiPhone initizlization to initialize telephony framework ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->b(Ljava/lang/String;)V

    .line 395
    new-instance v0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;-><init>(Lcom/android/internal/telephony/gemini/GeminiPhone;Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Phone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->d:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    .line 398
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isInternationalRoamingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 399
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->k()V

    .line 403
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->c()V

    .line 404
    return-void

    .line 363
    :cond_1
    if-ne v1, v4, :cond_2

    .line 364
    :try_start_3
    const-class v0, Lcom/mediatek/common/telephony/ISwitch3GPolicy;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "OP"

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/common/telephony/ISwitch3GPolicy;

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->n:Lcom/mediatek/common/telephony/ISwitch3GPolicy;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 371
    :catch_0
    move-exception v0

    .line 372
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 373
    const-string v2, "PHONE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ISwitch3GPolicy create exception (policyId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "): "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 366
    :cond_2
    const/4 v0, 0x0

    :try_start_4
    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->n:Lcom/mediatek/common/telephony/ISwitch3GPolicy;

    .line 367
    const-string v0, "PHONE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Switch 3G Policy Missing (mSwitch3GPolicy=null, policyId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0

    .line 379
    :catch_1
    move-exception v0

    .line 380
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 384
    :catch_2
    move-exception v0

    .line 385
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3
.end method

.method public constructor <init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Phone;I)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 406
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 146
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    new-array v0, v0, [Lcom/android/internal/telephony/Phone;

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->c:[Lcom/android/internal/telephony/Phone;

    .line 161
    iput v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->f:I

    .line 163
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->h:I

    .line 164
    iput v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->i:I

    .line 165
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->j:[Ljava/lang/String;

    .line 167
    iput v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->k:I

    .line 168
    iput v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->l:I

    .line 171
    iput-object v6, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->a:Lcom/mediatek/common/telephony/ISimInfoUpdate;

    .line 173
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->m:Landroid/os/RegistrantList;

    .line 222
    const/16 v0, -0x63

    iput v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->p:I

    .line 232
    iput-boolean v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->x:Z

    .line 236
    iput-boolean v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->y:Z

    .line 237
    iput v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->z:I

    .line 245
    iput v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->A:I

    .line 248
    iput v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->B:I

    .line 251
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "ril.iccid.sim1"

    aput-object v1, v0, v2

    const-string/jumbo v1, "ril.iccid.sim2"

    aput-object v1, v0, v3

    const-string/jumbo v1, "ril.iccid.sim3"

    aput-object v1, v0, v4

    const-string/jumbo v1, "ril.iccid.sim4"

    aput-object v1, v0, v5

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->D:[Ljava/lang/String;

    .line 635
    new-instance v0, Lcom/android/internal/telephony/gemini/e;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/gemini/e;-><init>(Lcom/android/internal/telephony/gemini/GeminiPhone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->G:Ljava/lang/Runnable;

    .line 820
    new-instance v0, Lcom/android/internal/telephony/gemini/a;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/gemini/a;-><init>(Lcom/android/internal/telephony/gemini/GeminiPhone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->H:Ljava/lang/Runnable;

    .line 3309
    new-instance v0, Lcom/android/internal/telephony/gemini/GeminiPhone$a;

    invoke-direct {v0, p0, v6}, Lcom/android/internal/telephony/gemini/GeminiPhone$a;-><init>(Lcom/android/internal/telephony/gemini/GeminiPhone;Lcom/android/internal/telephony/gemini/e;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->I:Lcom/android/internal/telephony/gemini/GeminiPhone$a;

    .line 3487
    new-instance v0, Lcom/android/internal/telephony/gemini/c;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/gemini/c;-><init>(Lcom/android/internal/telephony/gemini/GeminiPhone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->J:Ljava/lang/Runnable;

    .line 407
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->c:[Lcom/android/internal/telephony/Phone;

    aput-object p1, v0, v2

    .line 408
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->c:[Lcom/android/internal/telephony/Phone;

    aput-object p2, v0, v3

    .line 409
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->c:[Lcom/android/internal/telephony/Phone;

    aput-object p3, v0, v4

    .line 410
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->c:[Lcom/android/internal/telephony/Phone;

    aput-object p4, v0, v5

    .line 411
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->c:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, p5

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    .line 413
    iput-boolean v3, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->x:Z

    .line 415
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->e:Landroid/content/Context;

    .line 418
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->g()I

    move-result v1

    .line 420
    if-ne v1, v3, :cond_1

    .line 421
    :try_start_0
    const-class v0, Lcom/mediatek/common/telephony/ISwitch3GPolicy;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "DEFAULT"

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/common/telephony/ISwitch3GPolicy;

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->n:Lcom/mediatek/common/telephony/ISwitch3GPolicy;

    .line 429
    :goto_0
    const-string v0, "PHONE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ISwitch3GPolicy created (policyId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mSwitch3GPolicy="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->n:Lcom/mediatek/common/telephony/ISwitch3GPolicy;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 437
    :goto_1
    :try_start_1
    const-class v0, Lcom/mediatek/common/telephony/ISimInfoUpdate;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->e:Landroid/content/Context;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/common/telephony/ISimInfoUpdate;

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->a:Lcom/mediatek/common/telephony/ISimInfoUpdate;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 442
    :goto_2
    :try_start_2
    const-class v0, Lcom/mediatek/common/telephony/ITelephonyExt;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/common/telephony/ITelephonyExt;

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->o:Lcom/mediatek/common/telephony/ITelephonyExt;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 447
    :goto_3
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "dual_sim_mode_setting"

    invoke-static {v0, v1, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->g:I

    .line 450
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/gemini/GeminiRadioStatusUtil;->checkRadioOffSIM(Landroid/content/Context;)V

    .line 451
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GeminiPhone initizlization to initialize telephony framework ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->b(Ljava/lang/String;)V

    .line 454
    new-instance v0, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;-><init>(Lcom/android/internal/telephony/gemini/GeminiPhone;Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Phone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->d:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    .line 457
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isInternationalRoamingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 458
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->k()V

    .line 462
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->c()V

    .line 463
    return-void

    .line 422
    :cond_1
    if-ne v1, v4, :cond_2

    .line 423
    :try_start_3
    const-class v0, Lcom/mediatek/common/telephony/ISwitch3GPolicy;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "OP"

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/common/telephony/ISwitch3GPolicy;

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->n:Lcom/mediatek/common/telephony/ISwitch3GPolicy;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 430
    :catch_0
    move-exception v0

    .line 431
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 432
    const-string v2, "PHONE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ISwitch3GPolicy create exception (policyId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "): "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 425
    :cond_2
    const/4 v0, 0x0

    :try_start_4
    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->n:Lcom/mediatek/common/telephony/ISwitch3GPolicy;

    .line 426
    const-string v0, "PHONE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Switch 3G Policy Missing (mSwitch3GPolicy=null, policyId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0

    .line 438
    :catch_1
    move-exception v0

    .line 439
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 443
    :catch_2
    move-exception v0

    .line 444
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3
.end method

.method static synthetic a(Lcom/android/internal/telephony/gemini/GeminiPhone;)I
    .locals 1
    .parameter

    .prologue
    .line 143
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->B:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->B:I

    return v0
.end method

.method private a(I)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x2

    .line 885
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "To register SIM"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " inserted status notification"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->b(Ljava/lang/String;)V

    .line 886
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhoneTypeGemini(I)I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 887
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    .line 888
    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneBase;

    .line 889
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->E:Z

    .line 890
    iget-object v1, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForAvailable(Landroid/os/Handler;)V

    .line 891
    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x8

    invoke-interface {v0, p0, v1, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 899
    :goto_0
    return-void

    .line 892
    :cond_0
    if-ltz p1, :cond_1

    sget v0, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge p1, v0, :cond_1

    .line 893
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "To re-register SIM"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " inserted status notification"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->b(Ljava/lang/String;)V

    .line 894
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->c:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, p1

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/PhoneProxy;->unregisterForSimInsertedStatus(Landroid/os/Handler;)V

    .line 895
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->c:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, p1

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0, p0, v2, v3}, Lcom/android/internal/telephony/PhoneProxy;->registerForSimInsertedStatus(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_0

    .line 897
    :cond_1
    const-string v0, "To re-register invalid phone inserted status notification"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/android/internal/telephony/gemini/GeminiPhone;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 143
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->b(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 923
    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[GeminiPhone] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 924
    return-void
.end method

.method static a()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 3128
    const-string v1, "gsm.3gswitch"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/android/internal/telephony/gemini/GeminiPhone;I)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 143
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->b(I)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/android/internal/telephony/gemini/GeminiPhone;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 143
    iput-boolean p1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->y:Z

    return p1
.end method

.method private b()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 513
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setVoiceCall,mSimInsertedStatus:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->b(Ljava/lang/String;)V

    .line 514
    const/4 v0, 0x1

    iget v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->f:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x2

    iget v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->f:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x4

    iget v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->f:I

    if-eq v0, v1, :cond_0

    const/16 v0, 0x8

    iget v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->f:I

    if-eq v0, v1, :cond_0

    .line 537
    :goto_0
    return-void

    .line 521
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "enable_internet_call_value"

    invoke-static {v0, v1, v4, v5}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    .line 522
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setVoiceCall,defaultSim:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->b(Ljava/lang/String;)V

    .line 523
    cmp-long v0, v4, v0

    if-nez v0, :cond_2

    .line 524
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->e:Landroid/content/Context;

    iget v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->f:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Landroid/provider/Telephony$SIMInfo;->getSIMInfoBySlot(Landroid/content/Context;I)Landroid/provider/Telephony$SIMInfo;

    move-result-object v0

    .line 526
    if-eqz v0, :cond_1

    .line 527
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->e:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "voice_call_sim_setting"

    iget-wide v3, v0, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 529
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setVoiceCall,simid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, v0, Landroid/provider/Telephony$SIMInfo;->mSimId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->b(Ljava/lang/String;)V

    .line 534
    :cond_1
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setVoiceCall,defaultSim:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->e:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "voice_call_sim_setting"

    const-wide/16 v3, -0x1

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 532
    :cond_2
    const-string/jumbo v0, "setVoiceCall else"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->b(Ljava/lang/String;)V

    goto :goto_1
.end method

.method static synthetic b(Lcom/android/internal/telephony/gemini/GeminiPhone;)V
    .locals 0
    .parameter

    .prologue
    .line 143
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->c()V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 931
    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[GeminiPhone] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 932
    return-void
.end method

.method private b(I)Z
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 3362
    iput-boolean v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->r:Z

    .line 3364
    invoke-static {}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a()Z

    .line 3366
    invoke-static {}, Lcom/android/internal/telephony/gemini/GeminiPhone;->get3GSimId()I

    move-result v0

    .line 3367
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->c:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v1, v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->set3GCapabilitySIM(I)Z

    move-result v3

    .line 3369
    if-eqz v3, :cond_3

    move v1, v2

    .line 3370
    :goto_0
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v1, v0, :cond_2

    .line 3371
    if-ne p1, v1, :cond_1

    .line 3372
    const-string v0, "PHONE"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "force3GSwitch:setPreferredNetworkType:Auto,GSM only ,sim"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, p1, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3373
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->c:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, v1

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->isWCDMAPrefered()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3374
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/PhoneProxy;->setPreferredNetworkTypeRIL(I)V

    .line 3370
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 3376
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    const/4 v4, 0x3

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/PhoneProxy;->setPreferredNetworkTypeRIL(I)V

    goto :goto_1

    .line 3378
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/PhoneProxy;->setPreferredNetworkTypeRIL(I)V

    goto :goto_1

    .line 3381
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->e:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lcom/android/internal/telephony/gemini/GeminiPhone;->EVENT_3G_SWITCH_START_MD_RESET:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3382
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->c(I)V

    .line 3388
    :goto_2
    return v3

    .line 3384
    :cond_3
    const-string v0, "PHONE"

    const-string v1, "force3GSwitch else case"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3385
    iput-boolean v6, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->r:Z

    .line 3386
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->i()V

    goto :goto_2
.end method

.method static synthetic b(Lcom/android/internal/telephony/gemini/GeminiPhone;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 143
    iput-boolean p1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->q:Z

    return p1
.end method

.method private c()V
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 644
    iput-boolean v3, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->v:Z

    .line 645
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->j()Z

    move v0, v1

    .line 646
    :goto_0
    sget v2, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v0, v2, :cond_0

    .line 647
    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->j:[Ljava/lang/String;

    iget-object v4, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->D:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v0

    .line 646
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    .line 651
    :goto_1
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v2, v0, :cond_16

    .line 652
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mIccId"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ":["

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->j:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "]"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->b(Ljava/lang/String;)V

    .line 653
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->j:[Ljava/lang/String;

    aget-object v0, v0, v2

    if-eqz v0, :cond_1

    const-string v0, ""

    iget-object v4, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->j:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->c:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, v2

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->isRadioAvailable()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    move v0, v3

    .line 659
    :goto_2
    iget v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->B:I

    sget-object v4, Lcom/android/internal/telephony/gemini/GeminiPhone;->C:[I

    array-length v4, v4

    if-ge v2, v4, :cond_3

    if-eqz v0, :cond_3

    .line 661
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RILD initialize not completed, wait for it,counter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->B:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", next="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/gemini/GeminiPhone;->C:[I

    iget v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->B:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->b(Ljava/lang/String;)V

    .line 662
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->G:Ljava/lang/Runnable;

    sget-object v1, Lcom/android/internal/telephony/gemini/GeminiPhone;->C:[I

    iget v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->B:I

    aget v1, v1, v2

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 737
    :goto_3
    return-void

    .line 651
    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_1

    .line 665
    :cond_3
    iput v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->B:I

    .line 666
    const-string/jumbo v0, "start telephony framework initialization"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->b(Ljava/lang/String;)V

    move v0, v1

    .line 668
    :goto_4
    sget v2, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v0, v2, :cond_5

    .line 669
    const-string v2, "N/A"

    iget-object v4, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->j:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 670
    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->j:[Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v4, v2, v0

    .line 668
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 672
    :cond_5
    iput v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->f:I

    move v2, v1

    .line 674
    :goto_5
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v2, v0, :cond_c

    .line 675
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->j:[Ljava/lang/String;

    aget-object v0, v0, v2

    if-eqz v0, :cond_7

    const-string v0, ""

    iget-object v4, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->j:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 676
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->f:I

    shl-int v4, v3, v2

    or-int/2addr v0, v4

    iput v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->f:I

    .line 677
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isSupportCommonSlot()Z

    move-result v0

    if-ne v0, v3, :cond_6

    .line 678
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->A:I

    shl-int v4, v3, v2

    or-int/2addr v0, v4

    iput v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->A:I

    .line 680
    :cond_6
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->c:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, v2

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v4, 0x4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v0, v4}, Lcom/android/internal/telephony/CommandsInterface;->getNetworkSelectionMode(Landroid/os/Message;)V

    .line 682
    :cond_7
    invoke-static {}, Lcom/android/internal/telephony/PhoneProxy;->is3GSwitchEnable()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isRildReadIMSIEnabled()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 683
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "gsm.sim.ril.op"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez v2, :cond_a

    const-string v0, ""

    :goto_6
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 684
    const-string v0, ""

    .line 685
    iget-object v5, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->j:[Ljava/lang/String;

    aget-object v5, v5, v2

    if-eqz v5, :cond_8

    const-string v5, ""

    iget-object v6, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->j:[Ljava/lang/String;

    aget-object v6, v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 686
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "gsm.sim.ril.mcc.mnc"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-nez v2, :cond_b

    const-string v0, ""

    :goto_7
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 687
    const-string v5, ""

    invoke-static {v0, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 688
    invoke-static {v5}, Lcom/android/internal/telephony/gsm/SIMRecords;->convertImsi2Op(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 689
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "convertImsi2Op (simIdx="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", opStr="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", numeric="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/gemini/GeminiPhone;->b(Ljava/lang/String;)V

    .line 691
    :cond_8
    invoke-static {v4, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 692
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "set sim op property (simIdx="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", opStr="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ", propName="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ")"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->b(Ljava/lang/String;)V

    .line 694
    :cond_9
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->j:[Ljava/lang/String;

    aget-object v0, v0, v2

    invoke-static {v2, v0}, Lcom/android/internal/telephony/gemini/GeminiRadioStatusUtil;->setSIMIccId(ILjava/lang/String;)V

    .line 674
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_5

    .line 683
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "."

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_6

    .line 686
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "."

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v6, v2, 0x1

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_7

    .line 696
    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InsertedStatus: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->f:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->j:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "] ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->j:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->b(Ljava/lang/String;)V

    .line 697
    const/4 v0, 0x2

    :goto_8
    sget v2, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v0, v2, :cond_d

    .line 698
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mIccId[SIM"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->j:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->b(Ljava/lang/String;)V

    .line 697
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 700
    :cond_d
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isInternationalRoamingEnabled()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->l()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 701
    const-string v0, "[IRC] Stop initializeTelephonyFramework, start switch phone."

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->b(Ljava/lang/String;)V

    .line 702
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->m()V

    goto/16 :goto_3

    .line 706
    :cond_e
    iget-boolean v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->q:Z

    if-eqz v0, :cond_f

    .line 707
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->p:I

    const/16 v2, -0x63

    if-ne v0, v2, :cond_11

    .line 708
    const-string v0, "Initialize telephony framework and finish 3G Switch [target radio mode invalid]"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->b(Ljava/lang/String;)V

    .line 715
    :cond_f
    :goto_9
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "airplane_mode_on"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 716
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->c:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, v1

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-static {}, Lcom/android/internal/telephony/PhoneProxy;->is3GSwitchEnable()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isFlightModePowerOffMD()Z

    move-result v0

    if-eqz v0, :cond_10

    if-nez v2, :cond_15

    .line 717
    :cond_10
    invoke-virtual {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->get3GCapabilitySIM()I

    move-result v2

    .line 718
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->h()I

    move-result v3

    .line 719
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->c:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, v1

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->isBspPackage()Z

    move-result v0

    if-nez v0, :cond_14

    if-ltz v3, :cond_14

    sget v0, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v3, v0, :cond_14

    if-eq v2, v3, :cond_14

    .line 720
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->set3GCapabilitySIM(I)Z

    move-result v0

    .line 721
    if-eqz v0, :cond_12

    .line 722
    const-string v0, "To re-register SIM inserted status notification just after doing 3G switch"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->b(Ljava/lang/String;)V

    move v0, v1

    .line 723
    :goto_a
    sget v2, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v0, v2, :cond_13

    .line 724
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)V

    .line 723
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 710
    :cond_11
    const-string v0, "Initialize telephony framework and finish 3G Switch"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->b(Ljava/lang/String;)V

    .line 711
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->i()V

    goto :goto_9

    .line 727
    :cond_12
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->e()V

    .line 736
    :cond_13
    :goto_b
    iput-boolean v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->v:Z

    goto/16 :goto_3

    .line 730
    :cond_14
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->c(I)V

    .line 731
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->e()V

    goto :goto_b

    .line 734
    :cond_15
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->e()V

    goto :goto_b

    :cond_16
    move v0, v1

    goto/16 :goto_2
.end method

.method private c(I)V
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 3453
    const/4 v1, 0x0

    .line 3454
    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->e:Landroid/content/Context;

    const-string v3, "com.mtk.3G_SWITCH"

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 3455
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 3457
    const/4 v3, -0x1

    if-ne p1, v3, :cond_0

    .line 3459
    const-string v0, "PHONE"

    const-string v1, "Just turn off 3G capability. not to store ICCID"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3478
    :goto_0
    return-void

    :cond_0
    move v4, v0

    move-object v0, v1

    move v1, v4

    .line 3463
    :goto_1
    sget v3, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v1, v3, :cond_2

    .line 3464
    if-ne p1, v1, :cond_1

    .line 3465
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->j:[Ljava/lang/String;

    aget-object v0, v0, v1

    .line 3463
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3468
    :cond_2
    const-string v1, "3G_SIM_ID"

    invoke-interface {v2, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 3470
    iget v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->f:I

    if-eqz v1, :cond_3

    .line 3471
    const-string v1, "3G_SIM_ICCID"

    invoke-interface {v2, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3472
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3473
    const-string v1, "PHONE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Current 3G SIM ICCID ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3475
    :cond_3
    const-string v0, "PHONE"

    const-string v1, "No SIM inserted, not to store ICCID"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic c(Lcom/android/internal/telephony/gemini/GeminiPhone;)V
    .locals 0
    .parameter

    .prologue
    .line 143
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->d()V

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 935
    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[GeminiPhone] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 936
    return-void
.end method

.method private d()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v1, 0x0

    .line 740
    const-string/jumbo v0, "start telephony framework initialization for sim hot swap"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->b(Ljava/lang/String;)V

    .line 741
    iput-boolean v7, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->v:Z

    .line 745
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isSupportCommonSlot()Z

    move-result v0

    if-ne v0, v7, :cond_2

    .line 746
    iget-boolean v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->y:Z

    if-eqz v0, :cond_1

    .line 747
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->z:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->z:I

    .line 748
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SIM Count = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->z:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mDualSimHotPlugStatus = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->A:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->b(Ljava/lang/String;)V

    .line 749
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->z:I

    sget v2, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v0, v2, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->A:I

    if-nez v0, :cond_5

    .line 751
    :cond_0
    iput-boolean v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->y:Z

    .line 752
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->H:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 761
    :cond_1
    iput v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->z:I

    :cond_2
    move v0, v1

    .line 767
    :goto_0
    sget v2, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v0, v2, :cond_9

    .line 768
    iget v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->f:I

    shl-int v3, v7, v0

    and-int/2addr v2, v3

    if-nez v2, :cond_6

    .line 769
    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->j:[Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v3, v2, v0

    .line 773
    :goto_1
    invoke-static {}, Lcom/android/internal/telephony/PhoneProxy;->is3GSwitchEnable()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isRildReadIMSIEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 774
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "gsm.sim.ril.op"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez v0, :cond_7

    const-string v2, ""

    :goto_2
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 775
    const-string v2, ""

    .line 776
    iget-object v4, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->j:[Ljava/lang/String;

    aget-object v4, v4, v0

    if-eqz v4, :cond_3

    const-string v4, ""

    iget-object v5, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->j:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 777
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "gsm.sim.ril.mcc.mnc"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez v0, :cond_8

    const-string v2, ""

    :goto_3
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 778
    const-string v4, ""

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 779
    invoke-static {v4}, Lcom/android/internal/telephony/gsm/SIMRecords;->convertImsi2Op(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 780
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "convertImsi2Op (simIdx="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", opStr="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", numeric="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->b(Ljava/lang/String;)V

    .line 782
    :cond_3
    invoke-static {v3, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 783
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "set sim op property (simIdx="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", opStr="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", propName="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->b(Ljava/lang/String;)V

    .line 767
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 754
    :cond_5
    const-string v0, "Wait for other SIM"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->b(Ljava/lang/String;)V

    .line 756
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->H:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 757
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->H:Ljava/lang/Runnable;

    const-wide/16 v1, 0x2710

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 818
    :goto_4
    return-void

    .line 771
    :cond_6
    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->j:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->D:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    goto/16 :goto_1

    .line 774
    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2

    .line 777
    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "."

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_3

    .line 787
    :cond_9
    iget-boolean v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->q:Z

    if-eqz v0, :cond_a

    .line 788
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->p:I

    const/16 v2, -0x63

    if-ne v0, v2, :cond_c

    .line 789
    const-string v0, "Initialize telephony framework and finish 3G Switch [target radio mode invalid]"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->b(Ljava/lang/String;)V

    .line 796
    :cond_a
    :goto_5
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "airplane_mode_on"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 797
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->c:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, v1

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-static {}, Lcom/android/internal/telephony/PhoneProxy;->is3GSwitchEnable()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isFlightModePowerOffMD()Z

    move-result v0

    if-eqz v0, :cond_b

    if-nez v2, :cond_10

    .line 798
    :cond_b
    invoke-virtual {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->get3GCapabilitySIM()I

    move-result v2

    .line 799
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->h()I

    move-result v3

    .line 800
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->c:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, v1

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->isBspPackage()Z

    move-result v0

    if-nez v0, :cond_f

    if-ltz v3, :cond_f

    sget v0, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v3, v0, :cond_f

    if-eq v2, v3, :cond_f

    .line 801
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->set3GCapabilitySIM(I)Z

    move-result v0

    .line 802
    if-eqz v0, :cond_d

    .line 803
    const-string v0, "To re-register SIM inserted status notification just after doing 3G switch"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->b(Ljava/lang/String;)V

    move v0, v1

    .line 804
    :goto_6
    sget v2, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v0, v2, :cond_e

    .line 805
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)V

    .line 804
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 791
    :cond_c
    const-string v0, "Initialize telephony framework and finish 3G Switch"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->b(Ljava/lang/String;)V

    .line 792
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->i()V

    goto :goto_5

    .line 808
    :cond_d
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->e()V

    .line 817
    :cond_e
    :goto_7
    iput-boolean v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->v:Z

    goto/16 :goto_4

    .line 811
    :cond_f
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->c(I)V

    .line 812
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->e()V

    goto :goto_7

    .line 815
    :cond_10
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->e()V

    goto :goto_7
.end method

.method private d(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 939
    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[GeminiPhone] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 940
    return-void
.end method

.method static synthetic d(Lcom/android/internal/telephony/gemini/GeminiPhone;)[Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->j:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/android/internal/telephony/gemini/GeminiPhone;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->e:Landroid/content/Context;

    return-object v0
.end method

.method private e()V
    .locals 2

    .prologue
    .line 829
    iget-boolean v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->w:Z

    if-eqz v0, :cond_0

    .line 830
    const-string v0, "Need to initialize framework again, abort update SIMInfo"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->b(Ljava/lang/String;)V

    .line 831
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->w:Z

    .line 832
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->c()V

    .line 856
    :goto_0
    return-void

    .line 836
    :cond_0
    const-string/jumbo v0, "start update SIM information"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->b(Ljava/lang/String;)V

    .line 837
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->a:Lcom/mediatek/common/telephony/ISimInfoUpdate;

    iget v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->f:I

    invoke-interface {v0, v1}, Lcom/mediatek/common/telephony/ISimInfoUpdate;->broadcastSimInsertedStatusAdp(I)V

    .line 838
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->b()V

    .line 840
    const-string/jumbo v0, "vold.decrypt"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 841
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "trigger_restart_framework"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 842
    :cond_1
    new-instance v0, Lcom/android/internal/telephony/gemini/GeminiPhone$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/gemini/GeminiPhone$1;-><init>(Lcom/android/internal/telephony/gemini/GeminiPhone;)V

    invoke-virtual {v0}, Lcom/android/internal/telephony/gemini/GeminiPhone$1;->start()V

    .line 855
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->f()V

    goto :goto_0
.end method

.method private f()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 859
    iget-boolean v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->w:Z

    if-eqz v1, :cond_0

    .line 860
    const-string v1, "Need to initialize framework again, abort initialize radio power"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->b(Ljava/lang/String;)V

    .line 861
    iput-boolean v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->w:Z

    .line 862
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->c()V

    .line 882
    :goto_0
    return-void

    .line 866
    :cond_0
    const-string/jumbo v1, "start initializing radio power"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->b(Ljava/lang/String;)V

    .line 868
    iget-boolean v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->x:Z

    if-eqz v1, :cond_1

    .line 869
    const-string/jumbo v1, "query SIM Missing status for gemini card"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->b(Ljava/lang/String;)V

    .line 870
    iput-boolean v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->x:Z

    .line 871
    :goto_1
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v0, v1, :cond_1

    .line 872
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->c:[Lcom/android/internal/telephony/Phone;

    aget-object v1, v1, v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->isSimInsert(I)Z

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/Phone;->notifySimMissingStatus(Z)V

    .line 871
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 876
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->j:[Ljava/lang/String;

    sget v1, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gemini/GeminiRadioStatusUtil;->finishRadioStatusInitialization([Ljava/lang/String;I)V

    .line 877
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->r:Z

    .line 879
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->f:I

    invoke-static {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiNetworkSubUtil;->a(Lcom/android/internal/telephony/gemini/GeminiPhone;I)V

    .line 880
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->e:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lcom/android/internal/telephony/gemini/GeminiPhone;->EVENT_INITIALIZATION_FRAMEWORK_DONE:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 881
    const-string v0, "broadcast GeminiPhone.EVENT_INITIALIZATION_FRAMEWORK_DONE"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic f(Lcom/android/internal/telephony/gemini/GeminiPhone;)[Lcom/android/internal/telephony/Phone;
    .locals 1
    .parameter

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->c:[Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method private g()I
    .locals 2

    .prologue
    .line 3133
    const-string/jumbo v0, "ro.gemini.smart_3g_switch"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method static synthetic g(Lcom/android/internal/telephony/gemini/GeminiPhone;)I
    .locals 1
    .parameter

    .prologue
    .line 143
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->f:I

    return v0
.end method

.method public static get3GSimId()I
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 3221
    invoke-static {}, Lcom/android/internal/telephony/PhoneProxy;->is3GSwitchEnable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3222
    const-string v1, "gsm.3gswitch"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 3223
    if-lez v1, :cond_1

    sget v2, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-gt v1, v2, :cond_1

    .line 3224
    add-int/lit8 v0, v1, -0x1

    .line 3230
    :cond_0
    :goto_0
    return v0

    .line 3226
    :cond_1
    const-string v2, "PHONE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get3GSimId() got invalid property value:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private h()I
    .locals 13

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v1, 0x0

    .line 3392
    const/4 v12, -0x1

    .line 3393
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->e:Landroid/content/Context;

    const-string v2, "com.mtk.3G_SWITCH"

    invoke-virtual {v0, v2, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 3394
    const-string v2, "3G_SIM_ICCID"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3395
    invoke-virtual {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->get3GCapabilitySIM()I

    move-result v3

    .line 3396
    const-string v0, "PHONE"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Check if need to do bootup 3G Switch ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->q:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v8

    .line 3398
    :goto_0
    sget v4, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v0, v4, :cond_0

    .line 3399
    const-string v4, "PHONE"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mSimInsertedStatus="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->f:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",mIccId["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->j:[Ljava/lang/String;

    aget-object v6, v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3398
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3403
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->q:Z

    if-nez v0, :cond_2

    if-ltz v3, :cond_2

    sget v0, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v3, v0, :cond_2

    .line 3404
    const/4 v0, -0x1

    .line 3405
    iget-object v4, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->n:Lcom/mediatek/common/telephony/ISwitch3GPolicy;

    if-eqz v4, :cond_6

    .line 3408
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-lt v0, v9, :cond_a

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/gemini/GeminiPhone;->isSimInsert(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->j:[Ljava/lang/String;

    aget-object v0, v0, v8

    :goto_1
    move-object v4, v0

    .line 3409
    :goto_2
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-lt v0, v10, :cond_9

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/gemini/GeminiPhone;->isSimInsert(I)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->j:[Ljava/lang/String;

    aget-object v0, v0, v9

    :goto_3
    move-object v5, v0

    .line 3410
    :goto_4
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-lt v0, v11, :cond_8

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/gemini/GeminiPhone;->isSimInsert(I)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->j:[Ljava/lang/String;

    aget-object v0, v0, v10

    :goto_5
    move-object v6, v0

    .line 3411
    :goto_6
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    const/4 v7, 0x4

    if-lt v0, v7, :cond_7

    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/gemini/GeminiPhone;->isSimInsert(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->j:[Ljava/lang/String;

    aget-object v1, v0, v11

    :cond_1
    move-object v7, v1

    .line 3413
    :goto_7
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->n:Lcom/mediatek/common/telephony/ISwitch3GPolicy;

    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->e:Landroid/content/Context;

    invoke-interface/range {v0 .. v7}, Lcom/mediatek/common/telephony/ISwitch3GPolicy;->select3GCapability(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 3420
    :goto_8
    sparse-switch v0, :sswitch_data_0

    move v8, v12

    .line 3446
    :goto_9
    :sswitch_0
    const-string v1, "PHONE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "target3GSIM simIdx="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", selected3G="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v12, v8

    .line 3449
    :cond_2
    return v12

    :cond_3
    move-object v0, v1

    .line 3408
    goto :goto_1

    :cond_4
    move-object v0, v1

    .line 3409
    goto :goto_3

    :cond_5
    move-object v0, v1

    .line 3410
    goto :goto_5

    .line 3417
    :cond_6
    const-string v1, "PHONE"

    const-string/jumbo v2, "no 3g switch policy instance. (mSwitch3GPolicy null)"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    :sswitch_1
    move v8, v9

    .line 3427
    goto :goto_9

    :sswitch_2
    move v8, v10

    .line 3431
    goto :goto_9

    :sswitch_3
    move v8, v11

    .line 3435
    goto :goto_9

    .line 3438
    :sswitch_4
    const/4 v8, -0x1

    .line 3439
    goto :goto_9

    :cond_7
    move-object v7, v1

    goto :goto_7

    :cond_8
    move-object v6, v1

    goto :goto_6

    :cond_9
    move-object v5, v1

    goto :goto_4

    :cond_a
    move-object v4, v1

    goto :goto_2

    .line 3420
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x15 -> :sswitch_4
    .end sparse-switch
.end method

.method static synthetic h(Lcom/android/internal/telephony/gemini/GeminiPhone;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .parameter

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic i(Lcom/android/internal/telephony/gemini/GeminiPhone;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .parameter

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->u:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method private i()V
    .locals 2

    .prologue
    .line 3481
    const-string v0, "PHONE"

    const-string v1, "broadcast3GSwitchDoneEvent"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3482
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->q:Z

    .line 3483
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->J:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3484
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->J:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 3485
    return-void
.end method

.method static synthetic j(Lcom/android/internal/telephony/gemini/GeminiPhone;)I
    .locals 1
    .parameter

    .prologue
    .line 143
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->p:I

    return v0
.end method

.method private j()Z
    .locals 1

    .prologue
    new-instance v0, Lcom/mediatek/common/jpe/a;

    invoke-direct {v0}, Lcom/mediatek/common/jpe/a;-><init>()V

    invoke-virtual {v0}, Lcom/mediatek/common/jpe/a;->a()V

    .line 3600
    const/4 v0, 0x1

    return v0
.end method

.method static synthetic k(Lcom/android/internal/telephony/gemini/GeminiPhone;)Ljava/lang/Runnable;
    .locals 1
    .parameter

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->J:Ljava/lang/Runnable;

    return-object v0
.end method

.method private k()V
    .locals 7

    .prologue
    const/4 v1, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 3836
    const-string v0, "createInternationalRoamingController"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->b(Ljava/lang/String;)V

    .line 3837
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getExternalModemSlot()I

    move-result v0

    if-nez v0, :cond_0

    .line 3838
    const-class v0, Lcom/mediatek/common/telephony/internationalroaming/IInternationalRoamingController;

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->e:Landroid/content/Context;

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->c:[Lcom/android/internal/telephony/Phone;

    aget-object v2, v2, v3

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->c:[Lcom/android/internal/telephony/Phone;

    aget-object v2, v2, v4

    aput-object v2, v1, v5

    aput-object p0, v1, v6

    invoke-static {v0, v1}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/common/telephony/internationalroaming/IInternationalRoamingController;

    check-cast v0, Lcom/mediatek/common/telephony/internationalroaming/IInternationalRoamingController;

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->F:Lcom/mediatek/common/telephony/internationalroaming/IInternationalRoamingController;

    .line 3844
    :goto_0
    return-void

    .line 3841
    :cond_0
    const-class v0, Lcom/mediatek/common/telephony/internationalroaming/IInternationalRoamingController;

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->e:Landroid/content/Context;

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->c:[Lcom/android/internal/telephony/Phone;

    aget-object v2, v2, v4

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->c:[Lcom/android/internal/telephony/Phone;

    aget-object v2, v2, v3

    aput-object v2, v1, v5

    aput-object p0, v1, v6

    invoke-static {v0, v1}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/common/telephony/internationalroaming/IInternationalRoamingController;

    check-cast v0, Lcom/mediatek/common/telephony/internationalroaming/IInternationalRoamingController;

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->F:Lcom/mediatek/common/telephony/internationalroaming/IInternationalRoamingController;

    goto :goto_0
.end method

.method private l()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 3851
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getExternalModemSlot()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    .line 3852
    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->getPhoneType()I

    move-result v3

    .line 3853
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getExternalModemSlot()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->j:[Ljava/lang/String;

    aget-object v0, v0, v2

    .line 3855
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[IRC] needSwitchPhone phoneType = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " iccid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->b(Ljava/lang/String;)V

    .line 3856
    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->F:Lcom/mediatek/common/telephony/internationalroaming/IInternationalRoamingController;

    invoke-interface {v4, v0}, Lcom/mediatek/common/telephony/internationalroaming/IInternationalRoamingController;->needToBootOnGsm(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    if-ne v3, v1, :cond_3

    iget-object v3, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->F:Lcom/mediatek/common/telephony/internationalroaming/IInternationalRoamingController;

    invoke-interface {v3, v0}, Lcom/mediatek/common/telephony/internationalroaming/IInternationalRoamingController;->needToBootOnCDMA(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    move v0, v1

    .line 3862
    :goto_1
    return v0

    .line 3853
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->j:[Ljava/lang/String;

    aget-object v0, v0, v1

    goto :goto_0

    :cond_3
    move v0, v2

    .line 3862
    goto :goto_1
.end method

.method private m()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3869
    const-string v0, "[IRC] doSwitchPhone"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->b(Ljava/lang/String;)V

    .line 3870
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->F:Lcom/mediatek/common/telephony/internationalroaming/IInternationalRoamingController;

    const/4 v1, 0x2

    invoke-interface {v0, v1, v2}, Lcom/mediatek/common/telephony/internationalroaming/IInternationalRoamingController;->switchPhone(IZ)I

    .line 3871
    iput-boolean v3, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->E:Z

    .line 3872
    iput-boolean v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->v:Z

    .line 3873
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)V

    .line 3874
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)V

    .line 3875
    return-void
.end method


# virtual methods
.method public acceptCall()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 2334
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->acceptCall()V

    .line 2335
    return-void
.end method

.method public acceptCallGemini(I)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1336
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->acceptCall()V

    .line 1337
    return-void
.end method

.method public activateCellBroadcastSms(ILandroid/os/Message;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2753
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->activateCellBroadcastSms(ILandroid/os/Message;)V

    .line 2754
    return-void
.end method

.method public activateCellBroadcastSmsGemini(ILandroid/os/Message;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1784
    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->activateCellBroadcastSms(ILandroid/os/Message;)V

    .line 1785
    return-void
.end method

.method public canConference()Z
    .locals 1

    .prologue
    .line 2346
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->canConference()Z

    move-result v0

    return v0
.end method

.method public canConferenceGemini(I)Z
    .locals 1
    .parameter

    .prologue
    .line 1348
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->canConference()Z

    move-result v0

    return v0
.end method

.method public canTransfer()Z
    .locals 1

    .prologue
    .line 2362
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->canTransfer()Z

    move-result v0

    return v0
.end method

.method public canTransferGemini(I)Z
    .locals 1
    .parameter

    .prologue
    .line 1364
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->canTransfer()Z

    move-result v0

    return v0
.end method

.method public changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2902
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/Phone;->changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 2903
    return-void
.end method

.method public changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2906
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/Phone;->changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 2907
    return-void
.end method

.method public changeBarringPasswordGemini(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1930
    invoke-virtual {p0, p5}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/Phone;->changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 1931
    return-void
.end method

.method public changeBarringPasswordGemini(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;I)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1934
    invoke-virtual {p0, p6}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/Phone;->changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 1935
    return-void
.end method

.method public cleanupApnTypeGemini(Ljava/lang/String;I)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1697
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->d:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->disableApnTypeGemini(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public clearDisconnected()V
    .locals 1

    .prologue
    .line 2370
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->clearDisconnected()V

    .line 2371
    return-void
.end method

.method public clearDisconnectedGemini(I)V
    .locals 1
    .parameter

    .prologue
    .line 1372
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->clearDisconnected()V

    .line 1373
    return-void
.end method

.method public conference()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 2350
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->conference()V

    .line 2351
    return-void
.end method

.method public conferenceGemini(I)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1352
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->conference()V

    .line 1353
    return-void
.end method

.method public dial(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 2386
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->dial(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    return-object v0
.end method

.method public dial(Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;)Lcom/android/internal/telephony/Connection;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 2390
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->dial(Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    return-object v0
.end method

.method public dialGemini(Ljava/lang/String;I)Lcom/android/internal/telephony/Connection;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1392
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->dial(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    return-object v0
.end method

.method public dialGemini(Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;I)Lcom/android/internal/telephony/Connection;
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1396
    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->dial(Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    return-object v0
.end method

.method public disableApnType(Ljava/lang/String;)I
    .locals 1
    .parameter

    .prologue
    .line 2670
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->d:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->disableApnType(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public disableApnTypeGemini(Ljava/lang/String;I)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1691
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->d:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->disableApnTypeGemini(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public disableDataConnectivity()Z
    .locals 1

    .prologue
    .line 2660
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->d:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->disableDataConnectivity()Z

    move-result v0

    return v0
.end method

.method public disableDataConnectivityGemini(I)I
    .locals 1
    .parameter

    .prologue
    .line 1679
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->d:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->disableDataConnectivityGemini(I)I

    move-result v0

    return v0
.end method

.method public disableDnsCheck(Z)V
    .locals 1
    .parameter

    .prologue
    .line 2137
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->d:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->disableDnsCheck(Z)V

    .line 2138
    return-void
.end method

.method public disableDnsCheckGemini(ZI)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1139
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->d:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->disableDnsCheckGemini(ZI)V

    .line 1140
    return-void
.end method

.method public disableLocationUpdates()V
    .locals 1

    .prologue
    .line 2612
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->disableLocationUpdates()V

    .line 2613
    return-void
.end method

.method public disableLocationUpdatesGemini(I)V
    .locals 1
    .parameter

    .prologue
    .line 1627
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->disableLocationUpdates()V

    .line 1628
    return-void
.end method

.method public dispose()V
    .locals 2

    .prologue
    .line 468
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->a:Lcom/mediatek/common/telephony/ISimInfoUpdate;

    invoke-interface {v0}, Lcom/mediatek/common/telephony/ISimInfoUpdate;->disposeReceiverAdp()V

    .line 470
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isWorldPhone()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 471
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->mWorldPhone:Lcom/mediatek/common/telephony/IWorldPhone;

    invoke-interface {v0}, Lcom/mediatek/common/telephony/IWorldPhone;->disposeWorldPhone()V

    .line 473
    :cond_0
    const/4 v0, 0x0

    :goto_0
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v0, v1, :cond_1

    .line 474
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->c:[Lcom/android/internal/telephony/Phone;

    aget-object v1, v1, v0

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->dispose()V

    .line 473
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 476
    :cond_1
    return-void
.end method

.method public doSimAuthentication(Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 3119
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->doSimAuthentication(Ljava/lang/String;Landroid/os/Message;)V

    .line 3120
    return-void
.end method

.method public doSimAuthenticationGemini(Ljava/lang/String;Landroid/os/Message;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2098
    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/PhoneProxy;->doSimAuthentication(Ljava/lang/String;Landroid/os/Message;)V

    .line 2099
    return-void
.end method

.method public doUSimAuthentication(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3123
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->doUSimAuthentication(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 3124
    return-void
.end method

.method public doUSimAuthenticationGemini(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2102
    invoke-virtual {p0, p4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/PhoneProxy;->doUSimAuthentication(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 2103
    return-void
.end method

.method public enableApnType(Ljava/lang/String;)I
    .locals 1
    .parameter

    .prologue
    .line 2665
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->j()Z

    .line 2666
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->d:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->enableApnType(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public enableApnTypeGemini(Ljava/lang/String;I)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1684
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->j()Z

    .line 1686
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->d:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->enableApnTypeGemini(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public enableDataConnectivity()Z
    .locals 1

    .prologue
    .line 2656
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->d:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->enableDataConnectivity()Z

    move-result v0

    return v0
.end method

.method public enableDataConnectivityGemini(I)I
    .locals 1
    .parameter

    .prologue
    .line 1674
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->d:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->enableDataConnectivityGemini(I)I

    move-result v0

    return v0
.end method

.method public enableEnhancedVoicePrivacy(ZLandroid/os/Message;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2354
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->enableEnhancedVoicePrivacy(ZLandroid/os/Message;)V

    .line 2355
    return-void
.end method

.method public enableEnhancedVoicePrivacyGemini(ZLandroid/os/Message;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1356
    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->enableEnhancedVoicePrivacy(ZLandroid/os/Message;)V

    .line 1357
    return-void
.end method

.method public enableGPRSAlwaysAttachIfNecessary(I)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 3535
    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableGPRSAlwaysAttachIfNecessary( "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3536
    if-gtz p1, :cond_1

    .line 3570
    :cond_0
    :goto_0
    return-void

    .line 3540
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->e:Landroid/content/Context;

    const-string v1, "com.mtk.GPRS"

    invoke-virtual {v0, v1, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 3541
    const-string v1, "ATTACH_MODE"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 3542
    const-string v2, "ATTACH_MODE_SIM"

    invoke-interface {v0, v2, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 3543
    const-string v2, "PHONE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "set to GPRS mode ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3545
    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 3561
    :pswitch_0
    const-class v0, Lcom/mediatek/common/telephony/IGsmDCTExt;

    new-array v1, v5, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->e:Landroid/content/Context;

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/common/telephony/IGsmDCTExt;

    .line 3562
    invoke-interface {v0}, Lcom/mediatek/common/telephony/IGsmDCTExt;->getPsAttachSimWhenRadioOn()I

    move-result v0

    .line 3563
    if-ltz v0, :cond_0

    shl-int v1, v5, v0

    and-int/2addr v1, p1

    if-lez v1, :cond_0

    .line 3564
    invoke-virtual {p0, v5, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->setGprsConnType(II)V

    .line 3565
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->d:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->setGeminiDataConnStateToActingState(I)V

    goto :goto_0

    .line 3547
    :pswitch_1
    if-ltz v0, :cond_0

    shl-int v1, v5, v0

    and-int/2addr v1, p1

    if-lez v1, :cond_0

    .line 3548
    invoke-virtual {p0, v5, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->setGprsConnType(II)V

    .line 3549
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->d:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->setGeminiDataConnStateToActingState(I)V

    goto :goto_0

    .line 3554
    :pswitch_2
    if-ltz v0, :cond_0

    shl-int v1, v5, v0

    and-int/2addr v1, p1

    if-lez v1, :cond_0

    .line 3555
    invoke-virtual {p0, v6, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->setGprsConnType(II)V

    goto :goto_0

    .line 3545
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public enableLocationUpdates()V
    .locals 1

    .prologue
    .line 2608
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->enableLocationUpdates()V

    .line 2609
    return-void
.end method

.method public enableLocationUpdatesGemini(I)V
    .locals 1
    .parameter

    .prologue
    .line 1623
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->enableLocationUpdates()V

    .line 1624
    return-void
.end method

.method public exitEmergencyCallbackMode()V
    .locals 1

    .prologue
    .line 2806
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->exitEmergencyCallbackMode()V

    .line 2807
    return-void
.end method

.method public exitEmergencyCallbackModeGemini(I)V
    .locals 1
    .parameter

    .prologue
    .line 1834
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->exitEmergencyCallbackMode()V

    .line 1835
    return-void
.end method

.method public explicitCallTransfer()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 2366
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->explicitCallTransfer()V

    .line 2367
    return-void
.end method

.method public explicitCallTransferGemini(I)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1368
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->explicitCallTransfer()V

    .line 1369
    return-void
.end method

.method public get3GCapabilitySIM()I
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 3243
    const/4 v0, 0x0

    :goto_0
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v0, v1, :cond_2

    .line 3244
    const-string v1, "gsm.baseband.capability"

    .line 3246
    if-lez v0, :cond_0

    .line 3247
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3250
    :cond_0
    invoke-static {v1, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 3252
    if-le v1, v3, :cond_1

    .line 3253
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->get3GCapabilitySIM()I

    move-result v0

    .line 3257
    :goto_1
    return v0

    .line 3243
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3256
    :cond_2
    const-string v0, "PHONE"

    const-string v1, "GeminiPhone get3GCapabilitySIM return -1"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3257
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public get3GSwitchAllowed3GSlots()I
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 3191
    .line 3193
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->g()I

    move-result v2

    if-lez v2, :cond_1

    .line 3195
    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->n:Lcom/mediatek/common/telephony/ISwitch3GPolicy;

    if-eqz v2, :cond_5

    .line 3198
    sget v2, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-lt v2, v3, :cond_9

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->isSimInsert(I)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->j:[Ljava/lang/String;

    aget-object v0, v2, v0

    :goto_0
    move-object v2, v0

    .line 3199
    :goto_1
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-lt v0, v4, :cond_8

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->isSimInsert(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->j:[Ljava/lang/String;

    aget-object v0, v0, v3

    :goto_2
    move-object v3, v0

    .line 3200
    :goto_3
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-lt v0, v6, :cond_7

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->isSimInsert(I)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->j:[Ljava/lang/String;

    aget-object v0, v0, v4

    :goto_4
    move-object v4, v0

    .line 3201
    :goto_5
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    const/4 v5, 0x4

    if-lt v0, v5, :cond_6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gemini/GeminiPhone;->isSimInsert(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->j:[Ljava/lang/String;

    aget-object v1, v0, v6

    :cond_0
    move-object v5, v1

    .line 3203
    :goto_6
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->n:Lcom/mediatek/common/telephony/ISwitch3GPolicy;

    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->e:Landroid/content/Context;

    invoke-interface/range {v0 .. v5}, Lcom/mediatek/common/telephony/ISwitch3GPolicy;->getAllowedSwitch3GSlots(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 3214
    :cond_1
    :goto_7
    return v0

    :cond_2
    move-object v0, v1

    .line 3198
    goto :goto_0

    :cond_3
    move-object v0, v1

    .line 3199
    goto :goto_2

    :cond_4
    move-object v0, v1

    .line 3200
    goto :goto_4

    .line 3208
    :cond_5
    const-string v1, "PHONE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[get3GSwitchAllowed3GSlots] no 3g switch policy instance, return "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". (mSwitch3GPolicy null)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :cond_6
    move-object v5, v1

    goto :goto_6

    :cond_7
    move-object v4, v1

    goto :goto_5

    :cond_8
    move-object v3, v1

    goto :goto_3

    :cond_9
    move-object v2, v1

    goto :goto_1
.end method

.method public getAccumulatedCallMeter(Landroid/os/Message;)V
    .locals 1
    .parameter

    .prologue
    .line 2926
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getAccumulatedCallMeter(Landroid/os/Message;)V

    .line 2927
    return-void
.end method

.method public getAccumulatedCallMeterGemini(Landroid/os/Message;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1954
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getAccumulatedCallMeter(Landroid/os/Message;)V

    .line 1955
    return-void
.end method

.method public getAccumulatedCallMeterMaximum(Landroid/os/Message;)V
    .locals 1
    .parameter

    .prologue
    .line 2930
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getAccumulatedCallMeterMaximum(Landroid/os/Message;)V

    .line 2931
    return-void
.end method

.method public getAccumulatedCallMeterMaximumGemini(Landroid/os/Message;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1958
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getAccumulatedCallMeterMaximum(Landroid/os/Message;)V

    .line 1959
    return-void
.end method

.method public getActiveApn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2168
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->d:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->getActiveApn()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getActiveApnGemini(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 1171
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->d:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->getActiveApnGemini(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getActiveApnHost(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 3669
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getActiveApnHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getActiveApnType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2164
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->d:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->getActiveApnType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getActiveApnTypeGemini(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 1166
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->d:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->getActiveApnTypeGemini(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getActiveApnTypes()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 2158
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->d:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->getActiveApnTypes()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getActiveApnTypesGemini(I)[Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 1161
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->d:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->getActiveApnTypesGemini(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAllCellInfo()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/CellInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3806
    const/4 v0, 0x0

    return-object v0
.end method

.method public getApnForType(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 2174
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->d:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->getApnForType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getApnForTypeGemini(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1176
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->d:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->getApnForTypeGemini(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAvailableNetworks(Landroid/os/Message;)V
    .locals 1
    .parameter

    .prologue
    .line 2510
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getMySimId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getAvailableNetworksGemini(Landroid/os/Message;I)V

    .line 2511
    return-void
.end method

.method public getAvailableNetworksGemini(Landroid/os/Message;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v1, -0x1

    .line 1515
    .line 1516
    const/4 v0, 0x0

    :goto_0
    sget v2, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v0, v2, :cond_3

    .line 1517
    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->d:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->isGprsDetached(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1522
    :goto_1
    if-eq v0, v1, :cond_0

    if-eq v0, p2, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isDualTalkMode()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1524
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getAvailableNetworks(Landroid/os/Message;)V

    .line 1532
    :goto_2
    return-void

    .line 1516
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1526
    :cond_2
    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1527
    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 1528
    iput p2, v1, Landroid/os/Message;->arg2:I

    .line 1529
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1530
    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->d:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    const/4 v3, 0x7

    invoke-virtual {v2, v0, p0, v3, v1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->registerForDetached(ILandroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_2

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method public getAvoidSYSList(Landroid/os/Message;)V
    .locals 0
    .parameter

    .prologue
    .line 3817
    return-void
.end method

.method public getBackgroundCalGeminil(I)Lcom/android/internal/telephony/Call;
    .locals 1
    .parameter

    .prologue
    .line 1380
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    return-object v0
.end method

.method public getBackgroundCall()Lcom/android/internal/telephony/Call;
    .locals 1

    .prologue
    .line 2378
    invoke-static {p0}, Lcom/android/internal/telephony/gemini/GeminiCallSubUtil;->c(Lcom/android/internal/telephony/gemini/GeminiPhone;)Lcom/android/internal/telephony/Call;

    move-result-object v0

    return-object v0
.end method

.method public getBackgroundCallGemini(I)Lcom/android/internal/telephony/Call;
    .locals 1
    .parameter

    .prologue
    .line 1384
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    return-object v0
.end method

.method public getBtConnectedSimId()I
    .locals 1

    .prologue
    .line 500
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->h:I

    return v0
.end method

.method public getCallForwardingIndicator()Z
    .locals 1

    .prologue
    .line 2432
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getCallForwardingIndicator()Z

    move-result v0

    return v0
.end method

.method public getCallForwardingIndicatorGemini(I)Z
    .locals 1
    .parameter

    .prologue
    .line 1438
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getCallForwardingIndicator()Z

    move-result v0

    return v0
.end method

.method public getCallForwardingOption(ILandroid/os/Message;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2479
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->getCallForwardingOption(ILandroid/os/Message;)V

    .line 2481
    return-void
.end method

.method public getCallForwardingOptionGemini(ILandroid/os/Message;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1485
    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->getCallForwardingOption(ILandroid/os/Message;)V

    .line 1487
    return-void
.end method

.method public getCallWaiting(Landroid/os/Message;)V
    .locals 1
    .parameter

    .prologue
    .line 2501
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getCallWaiting(Landroid/os/Message;)V

    .line 2502
    return-void
.end method

.method public getCallWaitingGemini(Landroid/os/Message;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1507
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getCallWaiting(Landroid/os/Message;)V

    .line 1508
    return-void
.end method

.method public getCdmaEriIconIndex()I
    .locals 1

    .prologue
    .line 2790
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getCdmaEriIconIndex()I

    move-result v0

    return v0
.end method

.method public getCdmaEriIconIndexGemini(I)I
    .locals 1
    .parameter

    .prologue
    .line 1818
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getCdmaEriIconIndex()I

    move-result v0

    return v0
.end method

.method public getCdmaEriIconMode()I
    .locals 1

    .prologue
    .line 2798
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getCdmaEriIconMode()I

    move-result v0

    return v0
.end method

.method public getCdmaEriIconModeGemini(I)I
    .locals 1
    .parameter

    .prologue
    .line 1826
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getCdmaEriIconMode()I

    move-result v0

    return v0
.end method

.method public getCdmaEriText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2794
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getCdmaEriText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCdmaEriTextGemini(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 1822
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getCdmaEriText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCdmaMin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2440
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getCdmaMin()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCdmaMinGemini(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 1446
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getCdmaMin()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCdmaPrlVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2448
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getCdmaPrlVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCdmaPrlVersionGemini(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 1454
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getCdmaPrlVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCellBroadcastSmsConfig(Landroid/os/Message;)V
    .locals 1
    .parameter

    .prologue
    .line 2757
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getCellBroadcastSmsConfig(Landroid/os/Message;)V

    .line 2758
    return-void
.end method

.method public getCellBroadcastSmsConfigGemini(Landroid/os/Message;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1788
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getCellBroadcastSmsConfig(Landroid/os/Message;)V

    .line 1789
    return-void
.end method

.method public getCellLocation()Landroid/telephony/CellLocation;
    .locals 1

    .prologue
    .line 2115
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    return-object v0
.end method

.method public getCellLocationGemini(I)Landroid/telephony/CellLocation;
    .locals 1
    .parameter

    .prologue
    .line 1114
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 2133
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getContextGemini(I)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 1134
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentCallMeter(Landroid/os/Message;)V
    .locals 1
    .parameter

    .prologue
    .line 2922
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getCurrentCallMeter(Landroid/os/Message;)V

    .line 2923
    return-void
.end method

.method public getCurrentCallMeterGemini(Landroid/os/Message;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1950
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getCurrentCallMeter(Landroid/os/Message;)V

    .line 1951
    return-void
.end method

.method public getCurrentDataConnectionList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/DataConnection;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2600
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->d:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->getCurrentDataConnectionList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentDataConnectionListGemini(I)Ljava/util/List;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/DataConnection;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1615
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->d:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->getCurrentDataConnectionListGemini(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDataActivityState()Lcom/android/internal/telephony/Phone$DataActivityState;
    .locals 1

    .prologue
    .line 2129
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->d:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->getDataActivityState()Lcom/android/internal/telephony/Phone$DataActivityState;

    move-result-object v0

    return-object v0
.end method

.method public getDataActivityStateGemini(I)Lcom/android/internal/telephony/Phone$DataActivityState;
    .locals 1
    .parameter

    .prologue
    .line 1130
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->d:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->getDataActivityStateGemini(I)Lcom/android/internal/telephony/Phone$DataActivityState;

    move-result-object v0

    return-object v0
.end method

.method public getDataCallList(Landroid/os/Message;)V
    .locals 1
    .parameter

    .prologue
    .line 2596
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->d:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->getDataCallList(Landroid/os/Message;)V

    .line 2597
    return-void
.end method

.method public getDataCallListGemini(Landroid/os/Message;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1610
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->d:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->getDataCallListGemini(Landroid/os/Message;I)V

    .line 1611
    return-void
.end method

.method public getDataConnectionState()Lcom/android/internal/telephony/PhoneConstants$DataState;
    .locals 1

    .prologue
    .line 2119
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->d:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->getDataConnectionState()Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v0

    return-object v0
.end method

.method public getDataConnectionState(Ljava/lang/String;)Lcom/android/internal/telephony/PhoneConstants$DataState;
    .locals 1
    .parameter

    .prologue
    .line 2125
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->d:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->getDataConnectionState(Ljava/lang/String;)Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v0

    return-object v0
.end method

.method public getDataConnectionStateGemini(I)Lcom/android/internal/telephony/PhoneConstants$DataState;
    .locals 1
    .parameter

    .prologue
    .line 1119
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->d:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->getDataConnectionStateGemini(I)Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v0

    return-object v0
.end method

.method public getDataConnectionStateGemini(Ljava/lang/String;I)Lcom/android/internal/telephony/PhoneConstants$DataState;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1125
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->d:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->getDataConnectionStateGemini(Ljava/lang/String;I)Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v0

    return-object v0
.end method

.method public getDataRoamingEnabled()Z
    .locals 1

    .prologue
    .line 2632
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->d:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->getDataRoamingEnabled()Z

    move-result v0

    return v0
.end method

.method public getDataRoamingEnabledGemini(I)Z
    .locals 1
    .parameter

    .prologue
    .line 1648
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->d:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->getDataRoamingEnabledGemini(I)Z

    move-result v0

    return v0
.end method

.method public getDefaultPhone()Lcom/android/internal/telephony/Phone;
    .locals 1

    .prologue
    .line 496
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2705
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceIdGemini(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 1736
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceSvn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2713
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getDeviceSvn()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceSvnGemini(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 1740
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getDeviceSvn()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDnsServers(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 2701
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->d:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->getDnsServers(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDnsServersGemini(Ljava/lang/String;I)[Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1732
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->d:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->getDnsServersGemini(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDualSimMode()I
    .locals 1

    .prologue
    .line 1007
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->g:I

    return v0
.end method

.method public getEfRatBalancing()I
    .locals 1

    .prologue
    .line 3637
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getMySimId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getEfRatBalancing(I)I

    move-result v0

    return v0
.end method

.method public getEfRatBalancing(I)I
    .locals 1
    .parameter

    .prologue
    .line 3641
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->getEfRatBalancing()I

    move-result v0

    return v0
.end method

.method public getEnhancedVoicePrivacy(Landroid/os/Message;)V
    .locals 1
    .parameter

    .prologue
    .line 2358
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getEnhancedVoicePrivacy(Landroid/os/Message;)V

    .line 2359
    return-void
.end method

.method public getEnhancedVoicePrivacyGemini(Landroid/os/Message;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1360
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getEnhancedVoicePrivacy(Landroid/os/Message;)V

    .line 1361
    return-void
.end method

.method public getEsn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2725
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getEsn()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEsnGemini(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 1752
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getEsn()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFDTimerValue()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 3797
    const/4 v0, 0x0

    .line 3798
    invoke-static {}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3799
    invoke-static {}, Lcom/android/internal/telephony/gemini/GeminiPhone;->get3GSimId()I

    move-result v0

    .line 3801
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->getFDTimerValue()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFacilityLock(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2894
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->getFacilityLock(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 2895
    return-void
.end method

.method public getFacilityLockGemini(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1922
    invoke-virtual {p0, p4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->getFacilityLock(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 1923
    return-void
.end method

.method public getFirstFullNameInEfPnn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3755
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getMySimId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getFirstFullNameInEfPnn(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFirstFullNameInEfPnn(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 3759
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->getFirstFullNameInEfPnn()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getForegroundCall()Lcom/android/internal/telephony/Call;
    .locals 1

    .prologue
    .line 2374
    invoke-static {p0}, Lcom/android/internal/telephony/gemini/GeminiCallSubUtil;->b(Lcom/android/internal/telephony/gemini/GeminiPhone;)Lcom/android/internal/telephony/Call;

    move-result-object v0

    return-object v0
.end method

.method public getForegroundCallGemini(I)Lcom/android/internal/telephony/Call;
    .locals 1
    .parameter

    .prologue
    .line 1376
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    return-object v0
.end method

.method public getGateway(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 2697
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->d:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->getGateway(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGatewayGemini(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1727
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->d:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->getGatewayGeminin(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGeminiDataSubUtil()Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;
    .locals 1

    .prologue
    .line 3679
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->d:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    return-object v0
.end method

.method public getIccCard()Lcom/android/internal/telephony/IccCard;
    .locals 1

    .prologue
    .line 2330
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    return-object v0
.end method

.method public getIccCardGemini(I)Lcom/android/internal/telephony/IccCard;
    .locals 1
    .parameter

    .prologue
    .line 1332
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    return-object v0
.end method

.method public getIccFileHandlerGemini(I)Lcom/android/internal/telephony/IccFileHandler;
    .locals 1
    .parameter

    .prologue
    .line 2078
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    return-object v0
.end method

.method public getIccPhoneBookInterfaceManager()Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;
    .locals 1

    .prologue
    .line 2741
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccPhoneBookInterfaceManager()Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    move-result-object v0

    return-object v0
.end method

.method public getIccPhoneBookInterfaceManagerGemini(I)Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;
    .locals 1
    .parameter

    .prologue
    .line 1768
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccPhoneBookInterfaceManager()Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    move-result-object v0

    return-object v0
.end method

.method public getIccRecordsLoaded()Z
    .locals 1

    .prologue
    .line 2326
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccRecordsLoaded()Z

    move-result v0

    return v0
.end method

.method public getIccRecordsLoadedGemini(I)Z
    .locals 1
    .parameter

    .prologue
    .line 1328
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccRecordsLoaded()Z

    move-result v0

    return v0
.end method

.method public getIccSerialNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2721
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccSerialNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIccSerialNumberGemini(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 1748
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccSerialNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIccServiceStatus(Lcom/android/internal/telephony/Phone$IccService;)Lcom/android/internal/telephony/Phone$IccServiceStatus;
    .locals 1
    .parameter

    .prologue
    .line 2107
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getIccServiceStatus(Lcom/android/internal/telephony/Phone$IccService;)Lcom/android/internal/telephony/Phone$IccServiceStatus;

    move-result-object v0

    return-object v0
.end method

.method public getIccServiceStatusGemini(Lcom/android/internal/telephony/Phone$IccService;I)Lcom/android/internal/telephony/Phone$IccServiceStatus;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2082
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getIccServiceStatus(Lcom/android/internal/telephony/Phone$IccService;)Lcom/android/internal/telephony/Phone$IccServiceStatus;

    move-result-object v0

    return-object v0
.end method

.method public getIccSmsInterfaceManager()Lcom/android/internal/telephony/IccSmsInterfaceManager;
    .locals 1

    .prologue
    .line 2737
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccSmsInterfaceManager()Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v0

    return-object v0
.end method

.method public getIccSmsInterfaceManagerGemini(I)Lcom/android/internal/telephony/IccSmsInterfaceManager;
    .locals 1
    .parameter

    .prologue
    .line 1764
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccSmsInterfaceManager()Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v0

    return-object v0
.end method

.method public getImei()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3653
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getImei()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInterfaceName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 2689
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->d:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->getInterfaceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInterfaceNameGemini(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1717
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->d:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->getInterfaceNameGemini(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIpAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 2693
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->d:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->getIpAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIpAddressGemini(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1722
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->d:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->getIpAddressGemini(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIsimRecords()Lcom/android/internal/telephony/ims/IsimRecords;
    .locals 1

    .prologue
    .line 3622
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIsimRecords()Lcom/android/internal/telephony/ims/IsimRecords;

    move-result-object v0

    return-object v0
.end method

.method public getLastCallFailCause()I
    .locals 1

    .prologue
    .line 2950
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getLastCallFailCause()I

    move-result v0

    return v0
.end method

.method public getLastCallFailCauseGemini(I)I
    .locals 1
    .parameter

    .prologue
    .line 1978
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getLastCallFailCause()I

    move-result v0

    return v0
.end method

.method public getLine1AlphaTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2452
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getLine1AlphaTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLine1AlphaTagGemini(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 1458
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getLine1AlphaTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLine1Number()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2436
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLine1NumberGemini(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 1442
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLinkCapabilities(Ljava/lang/String;)Landroid/net/LinkCapabilities;
    .locals 1
    .parameter

    .prologue
    .line 3661
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getLinkCapabilities(Ljava/lang/String;)Landroid/net/LinkCapabilities;

    move-result-object v0

    return-object v0
.end method

.method public getLinkProperties(Ljava/lang/String;)Landroid/net/LinkProperties;
    .locals 1
    .parameter

    .prologue
    .line 3665
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getLinkProperties(Ljava/lang/String;)Landroid/net/LinkProperties;

    move-result-object v0

    return-object v0
.end method

.method public getLteOnCdmaMode()I
    .locals 1

    .prologue
    .line 3645
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getLteOnCdmaMode()I

    move-result v0

    return v0
.end method

.method public getMeid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2729
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getMeid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMeidGemini(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 1756
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getMeid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMessageWaitingIndicator()Z
    .locals 1

    .prologue
    .line 2428
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getMessageWaitingIndicator()Z

    move-result v0

    return v0
.end method

.method public getMessageWaitingIndicatorGemini(I)Z
    .locals 1
    .parameter

    .prologue
    .line 1434
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getMessageWaitingIndicator()Z

    move-result v0

    return v0
.end method

.method public getMobileRevisionAndIMEI(ILandroid/os/Message;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2782
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->getMobileRevisionAndIMEI(ILandroid/os/Message;)V

    .line 2783
    return-void
.end method

.method public getMsisdn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3657
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getMsisdn()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMute()Z
    .locals 1

    .prologue
    .line 2577
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getMute()Z

    move-result v0

    return v0
.end method

.method public getMuteGemini(I)Z
    .locals 1
    .parameter

    .prologue
    .line 1589
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getMute()Z

    move-result v0

    return v0
.end method

.method public getMySimId()I
    .locals 1

    .prologue
    .line 2970
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getMySimId()I

    move-result v0

    return v0
.end method

.method public getNeighboringCids(Landroid/os/Message;)V
    .locals 1
    .parameter

    .prologue
    .line 2565
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getNeighboringCids(Landroid/os/Message;)V

    .line 2566
    return-void
.end method

.method public getNeighboringCidsGemini(Landroid/os/Message;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1577
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getNeighboringCids(Landroid/os/Message;)V

    .line 1578
    return-void
.end method

.method public getOutgoingCallerIdDisplay(Landroid/os/Message;)V
    .locals 1
    .parameter

    .prologue
    .line 2491
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getOutgoingCallerIdDisplay(Landroid/os/Message;)V

    .line 2492
    return-void
.end method

.method public getOutgoingCallerIdDisplayGemini(Landroid/os/Message;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1497
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getOutgoingCallerIdDisplay(Landroid/os/Message;)V

    .line 1498
    return-void
.end method

.method public getPOLCapability(Landroid/os/Message;)V
    .locals 1
    .parameter

    .prologue
    .line 3573
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getPOLCapability(Landroid/os/Message;)V

    .line 3574
    return-void
.end method

.method public getPOLCapabilityGemini(ILandroid/os/Message;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 3586
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/PhoneProxy;->getPOLCapability(Landroid/os/Message;)V

    .line 3587
    return-void
.end method

.method public getPdpContextList(Landroid/os/Message;)V
    .locals 1
    .parameter

    .prologue
    .line 2592
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->d:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->getPdpContextList(Landroid/os/Message;)V

    .line 2593
    return-void
.end method

.method public getPdpContextListGemini(Landroid/os/Message;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1605
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->d:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->getPdpContextListGemini(Landroid/os/Message;I)V

    .line 1606
    return-void
.end method

.method public getPendingMmiCodes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/android/internal/telephony/MmiCode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2238
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPendingMmiCodes()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPendingMmiCodesGemini(I)Ljava/util/List;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<+",
            "Lcom/android/internal/telephony/MmiCode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1240
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPendingMmiCodes()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2150
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneNameGemini(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 1152
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneSubInfo()Lcom/android/internal/telephony/PhoneSubInfo;
    .locals 1

    .prologue
    .line 2733
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneSubInfo()Lcom/android/internal/telephony/PhoneSubInfo;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneSubInfoGemini(I)Lcom/android/internal/telephony/PhoneSubInfo;
    .locals 1
    .parameter

    .prologue
    .line 1760
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneSubInfo()Lcom/android/internal/telephony/PhoneSubInfo;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneType()I
    .locals 1

    .prologue
    .line 2154
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    return v0
.end method

.method public getPhoneTypeGemini(I)I
    .locals 1
    .parameter

    .prologue
    .line 1156
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    return v0
.end method

.method public getPhonebyId(I)Lcom/android/internal/telephony/Phone;
    .locals 1
    .parameter

    .prologue
    .line 1106
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->c:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getPpuAndCurrency(Landroid/os/Message;)V
    .locals 1
    .parameter

    .prologue
    .line 2934
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getPpuAndCurrency(Landroid/os/Message;)V

    .line 2935
    return-void
.end method

.method public getPpuAndCurrencyGemini(Landroid/os/Message;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1962
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getPpuAndCurrency(Landroid/os/Message;)V

    .line 1963
    return-void
.end method

.method public getPreferedOperatorList(Landroid/os/Message;)V
    .locals 1
    .parameter

    .prologue
    .line 3577
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getPreferedOperatorList(Landroid/os/Message;)V

    .line 3578
    return-void
.end method

.method public getPreferedOperatorListGemini(ILandroid/os/Message;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 3590
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/PhoneProxy;->getPreferedOperatorList(Landroid/os/Message;)V

    .line 3591
    return-void
.end method

.method public getPreferredNetworkType(Landroid/os/Message;)V
    .locals 2
    .parameter

    .prologue
    .line 2555
    invoke-static {}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2556
    invoke-static {}, Lcom/android/internal/telephony/gemini/GeminiPhone;->get3GSimId()I

    move-result v0

    .line 2557
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->c:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v1, v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getPreferredNetworkType(Landroid/os/Message;)V

    .line 2562
    :goto_0
    return-void

    .line 2560
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->c:[Lcom/android/internal/telephony/Phone;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getPreferredNetworkType(Landroid/os/Message;)V

    goto :goto_0
.end method

.method public getPreferredNetworkTypeGemini(Landroid/os/Message;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1573
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getPreferredNetworkType(Landroid/os/Message;)V

    .line 1574
    return-void
.end method

.method public getRingingCall()Lcom/android/internal/telephony/Call;
    .locals 1

    .prologue
    .line 2382
    invoke-static {p0}, Lcom/android/internal/telephony/gemini/GeminiCallSubUtil;->d(Lcom/android/internal/telephony/gemini/GeminiPhone;)Lcom/android/internal/telephony/Call;

    move-result-object v0

    return-object v0
.end method

.method public getRingingCallGemini(I)Lcom/android/internal/telephony/Call;
    .locals 1
    .parameter

    .prologue
    .line 1388
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    return-object v0
.end method

.method public getSN()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2710
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getSN()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getServiceState()Landroid/telephony/ServiceState;
    .locals 1

    .prologue
    .line 2111
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    return-object v0
.end method

.method public getServiceStateGemini(I)Landroid/telephony/ServiceState;
    .locals 1
    .parameter

    .prologue
    .line 1110
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    return-object v0
.end method

.method public getSignalStrength()Landroid/telephony/SignalStrength;
    .locals 1

    .prologue
    .line 2178
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getSignalStrength()Landroid/telephony/SignalStrength;

    move-result-object v0

    return-object v0
.end method

.method public getSignalStrengthGemini(I)Landroid/telephony/SignalStrength;
    .locals 1
    .parameter

    .prologue
    .line 1180
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getSignalStrength()Landroid/telephony/SignalStrength;

    move-result-object v0

    return-object v0
.end method

.method public getSimIndicateState()I
    .locals 1

    .prologue
    .line 1101
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getSimIndicateState()I

    move-result v0

    return v0
.end method

.method public getSimIndicateStateGemini(I)I
    .locals 1
    .parameter

    .prologue
    .line 2094
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getSimIndicateState()I

    move-result v0

    return v0
.end method

.method public getSimulatedRadioControl()Lcom/android/internal/telephony/test/SimulatedRadioControl;
    .locals 1

    .prologue
    .line 2652
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getSimulatedRadioControl()Lcom/android/internal/telephony/test/SimulatedRadioControl;

    move-result-object v0

    return-object v0
.end method

.method public getSimulatedRadioControlGemini(I)Lcom/android/internal/telephony/test/SimulatedRadioControl;
    .locals 1
    .parameter

    .prologue
    .line 1669
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getSimulatedRadioControl()Lcom/android/internal/telephony/test/SimulatedRadioControl;

    move-result-object v0

    return-object v0
.end method

.method public getSmsDefaultSim()I
    .locals 7

    .prologue
    const-wide/16 v5, -0x5

    .line 3092
    .line 3093
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "sms_sim_setting"

    invoke-static {v0, v1, v5, v6}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    .line 3096
    const-string v2, "PHONE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SMS default SIM index in db is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3098
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    cmp-long v2, v0, v5

    if-eqz v2, :cond_0

    const-wide/16 v2, -0x3

    cmp-long v2, v0, v2

    if-nez v2, :cond_2

    .line 3101
    :cond_0
    const-string v0, "gsm.sim.inserted"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 3102
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 3103
    const/4 v0, 0x1

    .line 3111
    :goto_0
    const-string v1, "PHONE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "final SMS default SIM is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3112
    return v0

    .line 3105
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 3108
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->e:Landroid/content/Context;

    invoke-static {v2, v0, v1}, Landroid/provider/Telephony$SIMInfo;->getSlotById(Landroid/content/Context;J)I

    move-result v0

    goto :goto_0
.end method

.method public getSmscAddress(Landroid/os/Message;)V
    .locals 1
    .parameter

    .prologue
    .line 2778
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getSmscAddress(Landroid/os/Message;)V

    .line 2779
    return-void
.end method

.method public getSmscAddressGemini(Landroid/os/Message;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1810
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getSmscAddress(Landroid/os/Message;)V

    .line 1811
    return-void
.end method

.method public getSpNameInEfSpn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3739
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getMySimId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getSpNameInEfSpn(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSpNameInEfSpn(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 3743
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->getSpNameInEfSpn()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getState()Lcom/android/internal/telephony/PhoneConstants$State;
    .locals 1

    .prologue
    .line 2146
    invoke-static {p0}, Lcom/android/internal/telephony/gemini/GeminiCallSubUtil;->a(Lcom/android/internal/telephony/gemini/GeminiPhone;)Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    return-object v0
.end method

.method public getStateGemini(I)Lcom/android/internal/telephony/PhoneConstants$State;
    .locals 1
    .parameter

    .prologue
    .line 1148
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    return-object v0
.end method

.method public getSubscriberId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2717
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSubscriberIdGemini(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 1744
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUnitTestMode()Z
    .locals 1

    .prologue
    .line 2620
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getUnitTestMode()Z

    move-result v0

    return v0
.end method

.method public getUnitTestModeGemini(I)Z
    .locals 1
    .parameter

    .prologue
    .line 1635
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getUnitTestMode()Z

    move-result v0

    return v0
.end method

.method public getUsimServiceTable()Lcom/android/internal/telephony/gsm/UsimServiceTable;
    .locals 1

    .prologue
    .line 3606
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3607
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/IccRecords;

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccRecords;->getUsimServiceTable()Lcom/android/internal/telephony/gsm/UsimServiceTable;

    move-result-object v0

    .line 3609
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getVoiceMailAlphaTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2469
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getVoiceMailAlphaTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVoiceMailAlphaTagGemini(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 1475
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getVoiceMailAlphaTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVoiceMailNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2460
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVoiceMailNumberGemini(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 1466
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVoiceMessageCount()I
    .locals 1

    .prologue
    .line 2465
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getVoiceMessageCount()I

    move-result v0

    return v0
.end method

.method public getVoiceMessageCountGemini(I)I
    .locals 1
    .parameter

    .prologue
    .line 1471
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getVoiceMessageCount()I

    move-result v0

    return v0
.end method

.method public getVtCallForwardingOption(ILandroid/os/Message;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 3025
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->getVtCallForwardingOption(ILandroid/os/Message;)V

    .line 3027
    return-void
.end method

.method public getVtCallForwardingOptionGemini(ILandroid/os/Message;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2048
    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->getVtCallForwardingOption(ILandroid/os/Message;)V

    .line 2050
    return-void
.end method

.method public getVtCallWaiting(Landroid/os/Message;)V
    .locals 1
    .parameter

    .prologue
    .line 3037
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getVtCallWaiting(Landroid/os/Message;)V

    .line 3038
    return-void
.end method

.method public getVtCallWaitingGemini(Landroid/os/Message;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2060
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getVtCallWaiting(Landroid/os/Message;)V

    .line 2061
    return-void
.end method

.method public getVtFacilityLock(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3045
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->getVtFacilityLock(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 3046
    return-void
.end method

.method public getVtFacilityLockGemini(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2068
    invoke-virtual {p0, p4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->getVtFacilityLock(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 2069
    return-void
.end method

.method public handleInCallMmiCommands(Ljava/lang/String;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 2412
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->handleInCallMmiCommands(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public handleInCallMmiCommandsGemini(Ljava/lang/String;I)Z
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1418
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->handleInCallMmiCommands(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter

    .prologue
    const/16 v2, 0x8

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 541
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 543
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 631
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 633
    :cond_0
    :goto_0
    return-void

    .line 545
    :sswitch_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->c:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, v1

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/PhoneProxy;->unregisterForAvailable(Landroid/os/Handler;)V

    .line 546
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->c:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, v1

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/PhoneProxy;->unregisterForSimInsertedStatus(Landroid/os/Handler;)V

    .line 547
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->c:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, v3

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/PhoneProxy;->unregisterForAvailable(Landroid/os/Handler;)V

    .line 548
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->c:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, v3

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/PhoneProxy;->unregisterForSimInsertedStatus(Landroid/os/Handler;)V

    goto :goto_0

    .line 552
    :sswitch_1
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)V

    .line 553
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)V

    goto :goto_0

    .line 558
    :sswitch_2
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v2, :cond_2

    .line 559
    iget-boolean v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->E:Z

    if-eqz v0, :cond_1

    .line 560
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->removeMessages(I)V

    .line 561
    iput-boolean v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->E:Z

    goto :goto_0

    .line 564
    :cond_1
    const-string/jumbo v0, "receive EVENT_RADIO_AVAILABLE to start framework initialization"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->b(Ljava/lang/String;)V

    .line 569
    :goto_1
    iput-boolean v3, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->x:Z

    .line 570
    iget-boolean v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->v:Z

    if-eqz v0, :cond_3

    .line 571
    iput-boolean v3, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->w:Z

    .line 574
    :goto_2
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->c:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, v1

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-static {}, Lcom/android/internal/telephony/PhoneProxy;->is3GSwitchEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->q:Z

    if-eqz v0, :cond_0

    .line 575
    const-string v0, "broadcast 3G switch done event"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->b(Ljava/lang/String;)V

    .line 576
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->i()V

    goto :goto_0

    .line 567
    :cond_2
    const-string/jumbo v0, "receive EVENT_SIM_INSERTED_STATUS to start framework initialization"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->b(Ljava/lang/String;)V

    goto :goto_1

    .line 573
    :cond_3
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->c()V

    goto :goto_2

    .line 581
    :sswitch_3
    const-string v0, "Receive EVENT_GET_NETWORK_SELECTION_MODE"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->b(Ljava/lang/String;)V

    .line 582
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 583
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_0

    .line 585
    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [I

    check-cast v0, [I

    .line 586
    aget v0, v0, v1

    if-ne v0, v3, :cond_0

    .line 587
    const-string v0, "Start manual selection mode reminder service in GeminiPhone"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->b(Ljava/lang/String;)V

    .line 588
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 589
    const-string v1, "com.android.phone"

    const-string v2, "com.mediatek.settings.NoNetworkPopUpService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 590
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->e:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0

    .line 595
    :sswitch_4
    iget-boolean v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->r:Z

    if-nez v0, :cond_4

    .line 596
    const-string v0, "Not boot up but want to do dual sim switch done, skip"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 600
    :cond_4
    const-string v0, "To re-register SIM inserted status notification."

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->b(Ljava/lang/String;)V

    move v0, v1

    .line 601
    :goto_3
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v0, v1, :cond_5

    .line 602
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)V

    .line 601
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 604
    :cond_5
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->m:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    goto/16 :goto_0

    .line 607
    :sswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 608
    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_6

    .line 609
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->i()V

    .line 610
    iput-boolean v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->q:Z

    .line 611
    const-string v0, "3G switch done (set preferred network mode)"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 613
    :cond_6
    const-string v0, "Set preferred network mode failed, to use +ES3G and reset modem"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(Ljava/lang/String;)V

    .line 614
    invoke-virtual {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->get3GCapabilitySIM()I

    move-result v0

    .line 615
    const/16 v1, 0x63

    invoke-static {v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->set3GSim(I)V

    .line 616
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->b(I)Z

    goto/16 :goto_0

    .line 620
    :sswitch_6
    const-string v0, "Query ICCID for SIM Hot Swap done"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(Ljava/lang/String;)V

    .line 621
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->d()V

    goto/16 :goto_0

    .line 624
    :sswitch_7
    const-string v0, "GPRS detached then query available NW."

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(Ljava/lang/String;)V

    .line 625
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 626
    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Message;

    .line 627
    iget v1, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Message;

    invoke-interface {v2, v1}, Lcom/android/internal/telephony/Phone;->getAvailableNetworks(Landroid/os/Message;)V

    .line 628
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->d:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    iget v0, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v0, p0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->unregisterForDetached(ILandroid/os/Handler;)V

    goto/16 :goto_0

    .line 543
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_4
        0x2 -> :sswitch_2
        0x3 -> :sswitch_5
        0x4 -> :sswitch_3
        0x5 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_2
        0x3e8 -> :sswitch_0
        0x3e9 -> :sswitch_1
    .end sparse-switch
.end method

.method public handlePinMmi(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 2408
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->handlePinMmi(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public handlePinMmiGemini(Ljava/lang/String;I)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1414
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->handlePinMmi(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hangupActiveCall()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 2918
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->hangupActiveCall()V

    .line 2919
    return-void
.end method

.method public hangupActiveCallGemini(I)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1946
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->hangupActiveCall()V

    .line 1947
    return-void
.end method

.method public hangupAll()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 2910
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->hangupAll()V

    .line 2911
    return-void
.end method

.method public hangupAllEx()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 2914
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->hangupAllEx()V

    .line 2915
    return-void
.end method

.method public hangupAllExGemini(I)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1942
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->hangupAllEx()V

    .line 1943
    return-void
.end method

.method public hangupAllGemini(I)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1938
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->hangupAll()V

    .line 1939
    return-void
.end method

.method public internationalModeForceSimSwitch(I)I
    .locals 3
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 3824
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "internationalModeForceSimSwitch simId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->b(Ljava/lang/String;)V

    .line 3825
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isInternationalRoamingEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 3832
    :cond_0
    :goto_0
    return v0

    .line 3829
    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getExternalModemSlot()I

    move-result v1

    if-ne p1, v1, :cond_0

    .line 3832
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->F:Lcom/mediatek/common/telephony/internationalroaming/IInternationalRoamingController;

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/mediatek/common/telephony/internationalroaming/IInternationalRoamingController;->switchPhone(IZ)I

    move-result v0

    goto :goto_0
.end method

.method public invokeOemRilRequestRaw([BLandroid/os/Message;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2581
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 2582
    return-void
.end method

.method public invokeOemRilRequestRawGemini([BLandroid/os/Message;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1593
    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 1594
    return-void
.end method

.method public invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2585
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V

    .line 2586
    return-void
.end method

.method public invokeOemRilRequestStringsGemini([Ljava/lang/String;Landroid/os/Message;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1597
    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V

    .line 1598
    return-void
.end method

.method public is3GSwitchManualChange3GAllowed()Z
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v4, 0x2

    const/4 v0, 0x0

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 3164
    .line 3166
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->g()I

    move-result v2

    if-lez v2, :cond_5

    .line 3168
    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->n:Lcom/mediatek/common/telephony/ISwitch3GPolicy;

    if-eqz v2, :cond_4

    .line 3171
    sget v2, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-lt v2, v3, :cond_9

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->isSimInsert(I)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->j:[Ljava/lang/String;

    aget-object v0, v2, v0

    :goto_0
    move-object v2, v0

    .line 3172
    :goto_1
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-lt v0, v4, :cond_8

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->isSimInsert(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->j:[Ljava/lang/String;

    aget-object v0, v0, v3

    :goto_2
    move-object v3, v0

    .line 3173
    :goto_3
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-lt v0, v6, :cond_7

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->isSimInsert(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->j:[Ljava/lang/String;

    aget-object v0, v0, v4

    :goto_4
    move-object v4, v0

    .line 3174
    :goto_5
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    const/4 v5, 0x4

    if-lt v0, v5, :cond_6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gemini/GeminiPhone;->isSimInsert(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->j:[Ljava/lang/String;

    aget-object v1, v0, v6

    :cond_0
    move-object v5, v1

    .line 3176
    :goto_6
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->n:Lcom/mediatek/common/telephony/ISwitch3GPolicy;

    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->e:Landroid/content/Context;

    invoke-interface/range {v0 .. v5}, Lcom/mediatek/common/telephony/ISwitch3GPolicy;->isManualModeChange3GAllowed(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 3187
    :goto_7
    return v0

    :cond_1
    move-object v0, v1

    .line 3171
    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 3172
    goto :goto_2

    :cond_3
    move-object v0, v1

    .line 3173
    goto :goto_4

    .line 3181
    :cond_4
    const-string v1, "PHONE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[is3GSwitchManualChange3GAllowed] no 3g switch policy instance, return "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". (mSwitch3GPolicy null)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :cond_5
    move v0, v3

    .line 3185
    goto :goto_7

    :cond_6
    move-object v5, v1

    goto :goto_6

    :cond_7
    move-object v4, v1

    goto :goto_5

    :cond_8
    move-object v3, v1

    goto :goto_3

    :cond_9
    move-object v2, v1

    goto :goto_1
.end method

.method public is3GSwitchManualEnabled()Z
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v4, 0x2

    const/4 v0, 0x0

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 3137
    .line 3139
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->g()I

    move-result v2

    if-lez v2, :cond_5

    .line 3141
    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->n:Lcom/mediatek/common/telephony/ISwitch3GPolicy;

    if-eqz v2, :cond_4

    .line 3144
    sget v2, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-lt v2, v3, :cond_9

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->isSimInsert(I)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->j:[Ljava/lang/String;

    aget-object v0, v2, v0

    :goto_0
    move-object v2, v0

    .line 3145
    :goto_1
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-lt v0, v4, :cond_8

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->isSimInsert(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->j:[Ljava/lang/String;

    aget-object v0, v0, v3

    :goto_2
    move-object v3, v0

    .line 3146
    :goto_3
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-lt v0, v6, :cond_7

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->isSimInsert(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->j:[Ljava/lang/String;

    aget-object v0, v0, v4

    :goto_4
    move-object v4, v0

    .line 3147
    :goto_5
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    const/4 v5, 0x4

    if-lt v0, v5, :cond_6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gemini/GeminiPhone;->isSimInsert(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->j:[Ljava/lang/String;

    aget-object v1, v0, v6

    :cond_0
    move-object v5, v1

    .line 3149
    :goto_6
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->n:Lcom/mediatek/common/telephony/ISwitch3GPolicy;

    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->e:Landroid/content/Context;

    invoke-interface/range {v0 .. v5}, Lcom/mediatek/common/telephony/ISwitch3GPolicy;->isManualModeEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 3160
    :goto_7
    return v0

    :cond_1
    move-object v0, v1

    .line 3144
    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 3145
    goto :goto_2

    :cond_3
    move-object v0, v1

    .line 3146
    goto :goto_4

    .line 3154
    :cond_4
    const-string v1, "PHONE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[is3GSwitchManualEnabled] no 3g switch policy instance, return "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". (mSwitch3GPolicy null)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :cond_5
    move v0, v3

    .line 3158
    goto :goto_7

    :cond_6
    move-object v5, v1

    goto :goto_6

    :cond_7
    move-object v4, v1

    goto :goto_5

    :cond_8
    move-object v3, v1

    goto :goto_3

    :cond_9
    move-object v2, v1

    goto :goto_1
.end method

.method public isCspPlmnEnabled()Z
    .locals 1

    .prologue
    .line 3627
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getMySimId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->isCspPlmnEnabled(I)Z

    move-result v0

    return v0
.end method

.method public isCspPlmnEnabled(I)Z
    .locals 1
    .parameter

    .prologue
    .line 3632
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->isCspPlmnEnabled()Z

    move-result v0

    return v0
.end method

.method public isDataConnectivityEnabled()Z
    .locals 1

    .prologue
    .line 2674
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->d:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->isDataConnectivityEnabled()Z

    move-result v0

    return v0
.end method

.method public isDataConnectivityEnabledGemini(I)Z
    .locals 1
    .parameter

    .prologue
    .line 1702
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->d:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->isDataConnectivityEnabledGemini(I)Z

    move-result v0

    return v0
.end method

.method public isDataConnectivityPossible()Z
    .locals 1

    .prologue
    .line 2678
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->d:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->isDataConnectivityPossible()Z

    move-result v0

    return v0
.end method

.method public isDataConnectivityPossible(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 2684
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->d:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->isDataConnectivityPossible(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isDataConnectivityPossibleGemini(I)Z
    .locals 1
    .parameter

    .prologue
    .line 1707
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->d:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->isDataConnectivityPossibleGemini(I)Z

    move-result v0

    return v0
.end method

.method public isDataConnectivityPossibleGemini(Ljava/lang/String;I)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1712
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->d:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->isDataConnectivityPossibleGemini(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public isDnsCheckDisabled()Z
    .locals 1

    .prologue
    .line 2141
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->d:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->isDnsCheckDisabled()Z

    move-result v0

    return v0
.end method

.method public isDnsCheckDisabledGemini(I)Z
    .locals 1
    .parameter

    .prologue
    .line 1144
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->d:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->isDnsCheckDisabledGemini(I)Z

    move-result v0

    return v0
.end method

.method public isGprsDetachingOrDetached(I)Z
    .locals 1
    .parameter

    .prologue
    .line 3780
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->d:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->isGprsDetachingOrDetached(I)Z

    move-result v0

    return v0
.end method

.method public isIccCardProviderAsMvno()Z
    .locals 1

    .prologue
    .line 3771
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getMySimId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->isIccCardProviderAsMvno(I)Z

    move-result v0

    return v0
.end method

.method public isIccCardProviderAsMvno(I)Z
    .locals 1
    .parameter

    .prologue
    .line 3775
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->isIccCardProviderAsMvno()Z

    move-result v0

    return v0
.end method

.method public isMinInfoReady()Z
    .locals 1

    .prologue
    .line 2444
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->isMinInfoReady()Z

    move-result v0

    return v0
.end method

.method public isMinInfoReadyGemini(I)Z
    .locals 1
    .parameter

    .prologue
    .line 1450
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->isMinInfoReady()Z

    move-result v0

    return v0
.end method

.method public isOperatorMvnoForEfPnn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3763
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getMySimId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->isOperatorMvnoForEfPnn(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isOperatorMvnoForEfPnn(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 3767
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->isOperatorMvnoForEfPnn()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isOperatorMvnoForImsi()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3747
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getMySimId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->isOperatorMvnoForImsi(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isOperatorMvnoForImsi(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 3751
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->isOperatorMvnoForImsi()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isOtaSpNumber(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 2810
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->isOtaSpNumber(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isOtaSpNumberGemini(Ljava/lang/String;I)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1838
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->isOtaSpNumber(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isRadioOnGemini(I)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 973
    iget v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->g:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    move v0, v1

    .line 987
    :cond_0
    :goto_0
    return v0

    .line 977
    :cond_1
    if-nez p1, :cond_2

    .line 978
    iget v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->g:I

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 979
    :cond_2
    if-ne p1, v0, :cond_3

    .line 980
    iget v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->g:I

    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 981
    :cond_3
    const/4 v2, 0x2

    if-ne p1, v2, :cond_4

    .line 982
    iget v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->g:I

    and-int/lit8 v2, v2, 0x4

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 983
    :cond_4
    const/4 v2, 0x3

    if-ne p1, v2, :cond_5

    .line 984
    iget v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->g:I

    and-int/lit8 v2, v2, 0x8

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 986
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isRadioOnGemini() got invalid simId:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->d(Ljava/lang/String;)V

    move v0, v1

    .line 987
    goto :goto_0
.end method

.method public isSimInsert()Z
    .locals 1

    .prologue
    .line 952
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getMySimId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->isSimInsert(I)Z

    move-result v0

    return v0
.end method

.method public isSimInsert(I)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 955
    .line 956
    if-nez p1, :cond_2

    .line 957
    iget v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->f:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    .line 967
    :cond_0
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSimInsert["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->b(Ljava/lang/String;)V

    .line 968
    return v0

    :cond_1
    move v0, v1

    .line 957
    goto :goto_0

    .line 958
    :cond_2
    if-ne p1, v0, :cond_3

    .line 959
    iget v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->f:I

    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 960
    :cond_3
    const/4 v2, 0x2

    if-ne p1, v2, :cond_4

    .line 961
    iget v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->f:I

    and-int/lit8 v2, v2, 0x4

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 962
    :cond_4
    const/4 v2, 0x3

    if-ne p1, v2, :cond_5

    .line 963
    iget v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->f:I

    and-int/lit8 v2, v2, 0x8

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 965
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSimInsert() got invalid simId:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->d(Ljava/lang/String;)V

    move v0, v1

    goto :goto_0
.end method

.method public needsOtaServiceProvisioning()Z
    .locals 1

    .prologue
    .line 3649
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->needsOtaServiceProvisioning()Z

    move-result v0

    return v0
.end method

.method public notifyDataActivity()V
    .locals 1

    .prologue
    .line 2774
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->d:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->notifyDataActivity()V

    .line 2775
    return-void
.end method

.method public notifyDataActivityGemini(I)V
    .locals 1
    .parameter

    .prologue
    .line 1806
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->d:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->notifyDataActivityGemini(I)V

    .line 1807
    return-void
.end method

.method public notifySimMissingStatus(Z)V
    .locals 0
    .parameter

    .prologue
    .line 3689
    return-void
.end method

.method public onSimHotSwap(IZ)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 3693
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onSimHotSwap ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(Ljava/lang/String;)V

    .line 3696
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isSupportCommonSlot()Z

    move-result v0

    if-ne v0, v2, :cond_0

    .line 3697
    iput-boolean v2, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->y:Z

    .line 3700
    :cond_0
    if-eqz p2, :cond_2

    .line 3701
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->f:I

    shl-int v1, v2, p1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->f:I

    .line 3702
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isSupportCommonSlot()Z

    move-result v0

    if-ne v0, v2, :cond_1

    .line 3703
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->A:I

    shl-int v1, v2, p1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->A:I

    .line 3705
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->c:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, p1

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->queryIccId(Landroid/os/Message;)V

    .line 3714
    :goto_0
    return-void

    .line 3709
    :cond_2
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isSupportCommonSlot()Z

    move-result v0

    if-ne v0, v2, :cond_3

    .line 3710
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->A:I

    shl-int v1, v2, p1

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->A:I

    .line 3712
    :cond_3
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->d()V

    goto :goto_0
.end method

.method public plugInNoSimSlot(I)V
    .locals 3
    .parameter

    .prologue
    .line 3721
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->z:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->z:I

    .line 3722
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->A:I

    const/4 v1, 0x1

    shl-int/2addr v1, p1

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->A:I

    .line 3723
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "plugInNoSimSlot: SIM Count = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->z:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDualSimHotPlugStatus = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->A:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->b(Ljava/lang/String;)V

    .line 3725
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->z:I

    sget v1, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-lt v0, v1, :cond_0

    .line 3726
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->y:Z

    .line 3727
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->H:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3728
    invoke-direct {p0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->d()V

    .line 3735
    :goto_0
    return-void

    .line 3730
    :cond_0
    const-string/jumbo v0, "plugInNoSimSlot: Wait for other SIM"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->b(Ljava/lang/String;)V

    .line 3732
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->H:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3733
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->H:Ljava/lang/Runnable;

    const-wide/16 v1, 0x2710

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public queryAvailableBandMode(Landroid/os/Message;)V
    .locals 1
    .parameter

    .prologue
    .line 2628
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->queryAvailableBandMode(Landroid/os/Message;)V

    .line 2629
    return-void
.end method

.method public queryAvailableBandModeGemini(Landroid/os/Message;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1643
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->queryAvailableBandMode(Landroid/os/Message;)V

    .line 1644
    return-void
.end method

.method public queryCDMANetworkInfo(Landroid/os/Message;)V
    .locals 0
    .parameter

    .prologue
    .line 3820
    return-void
.end method

.method public queryCdmaRoamingPreference(Landroid/os/Message;)V
    .locals 1
    .parameter

    .prologue
    .line 2640
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->queryCdmaRoamingPreference(Landroid/os/Message;)V

    .line 2641
    return-void
.end method

.method public queryCdmaRoamingPreferenceGemini(Landroid/os/Message;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1657
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->queryCdmaRoamingPreference(Landroid/os/Message;)V

    .line 1658
    return-void
.end method

.method public queryCellBroadcastSmsActivation(Landroid/os/Message;)V
    .locals 1
    .parameter

    .prologue
    .line 2770
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->queryCellBroadcastSmsActivation(Landroid/os/Message;)V

    .line 2771
    return-void
.end method

.method public queryCellBroadcastSmsActivationGemini(Landroid/os/Message;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1801
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->queryCellBroadcastSmsActivation(Landroid/os/Message;)V

    .line 1802
    return-void
.end method

.method public queryTTYMode(Landroid/os/Message;)V
    .locals 1
    .parameter

    .prologue
    .line 2749
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->queryTTYMode(Landroid/os/Message;)V

    .line 2750
    return-void
.end method

.method public queryTTYModeGemini(Landroid/os/Message;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1780
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->queryTTYMode(Landroid/os/Message;)V

    .line 1781
    return-void
.end method

.method public refreshSpnDisplay()V
    .locals 2

    .prologue
    .line 1091
    const/4 v0, 0x0

    :goto_0
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v0, v1, :cond_0

    .line 1092
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->c:[Lcom/android/internal/telephony/Phone;

    aget-object v1, v1, v0

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->refreshSpnDisplay()V

    .line 1091
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1094
    :cond_0
    return-void
.end method

.method public registerFoT53ClirlInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2862
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerFoT53ClirlInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2863
    return-void
.end method

.method public registerFoT53ClirlInfoGemini(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1890
    invoke-virtual {p0, p4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerFoT53ClirlInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1891
    return-void
.end method

.method public registerForCallWaiting(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2814
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForCallWaiting(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2815
    return-void
.end method

.method public registerForCallWaitingGemini(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1842
    invoke-virtual {p0, p4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForCallWaiting(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1843
    return-void
.end method

.method public registerForCdmaOtaStatusChange(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2294
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForCdmaOtaStatusChange(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2295
    return-void
.end method

.method public registerForCdmaOtaStatusChangeGemini(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1296
    invoke-virtual {p0, p4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForCdmaOtaStatusChange(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1297
    return-void
.end method

.method public registerForCipherIndication(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3016
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForCipherIndication(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3017
    return-void
.end method

.method public registerForCipherIndicationGemini(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2039
    invoke-virtual {p0, p4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForCipherIndication(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2040
    return-void
.end method

.method public registerForCrssSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2262
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForCrssSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2263
    return-void
.end method

.method public registerForCrssSuppServiceNotificationGemini(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1264
    invoke-virtual {p0, p4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForCrssSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1265
    return-void
.end method

.method public registerForDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2214
    invoke-static {p1, p2, p3, p0}, Lcom/android/internal/telephony/gemini/GeminiCallSubUtil;->d(Landroid/os/Handler;ILjava/lang/Object;Lcom/android/internal/telephony/gemini/GeminiPhone;)V

    .line 2215
    return-void
.end method

.method public registerForDisconnectGemini(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1216
    invoke-virtual {p0, p4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1217
    return-void
.end method

.method public registerForDisplayInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2830
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForDisplayInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2831
    return-void
.end method

.method public registerForDisplayInfoGemini(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1858
    invoke-virtual {p0, p4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForDisplayInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1859
    return-void
.end method

.method public registerForEcmTimerReset(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2310
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForEcmTimerReset(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2311
    return-void
.end method

.method public registerForEcmTimerResetGemini(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1312
    invoke-virtual {p0, p4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForEcmTimerReset(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1313
    return-void
.end method

.method public registerForInCallVoicePrivacyOff(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2286
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForInCallVoicePrivacyOff(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2287
    return-void
.end method

.method public registerForInCallVoicePrivacyOffGemini(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1288
    invoke-virtual {p0, p4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForInCallVoicePrivacyOff(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1289
    return-void
.end method

.method public registerForInCallVoicePrivacyOn(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2278
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForInCallVoicePrivacyOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2279
    return-void
.end method

.method public registerForInCallVoicePrivacyOnGemini(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1280
    invoke-virtual {p0, p4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForInCallVoicePrivacyOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1281
    return-void
.end method

.method public registerForIncomingRing(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2206
    invoke-static {p1, p2, p3, p0}, Lcom/android/internal/telephony/gemini/GeminiCallSubUtil;->a(Landroid/os/Handler;ILjava/lang/Object;Lcom/android/internal/telephony/gemini/GeminiPhone;)V

    .line 2207
    return-void
.end method

.method public registerForIncomingRingGemini(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1208
    invoke-virtual {p0, p4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForIncomingRing(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1209
    return-void
.end method

.method public registerForLineControlInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2854
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForLineControlInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2855
    return-void
.end method

.method public registerForLineControlInfoGemini(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1882
    invoke-virtual {p0, p4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForLineControlInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1883
    return-void
.end method

.method public registerForMmiComplete(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2230
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForMmiComplete(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2231
    return-void
.end method

.method public registerForMmiCompleteGemini(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1232
    invoke-virtual {p0, p4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForMmiComplete(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1233
    return-void
.end method

.method public registerForMmiInitiate(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2222
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForMmiInitiate(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2223
    return-void
.end method

.method public registerForMmiInitiateGemini(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1224
    invoke-virtual {p0, p4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForMmiInitiate(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1225
    return-void
.end method

.method public registerForNeighboringInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2954
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForNeighboringInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2955
    return-void
.end method

.method public registerForNeighboringInfoGemini(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1982
    invoke-virtual {p0, p4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForNeighboringInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1983
    return-void
.end method

.method public registerForNetworkInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2962
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForNetworkInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2963
    return-void
.end method

.method public registerForNetworkInfoGemini(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1990
    invoke-virtual {p0, p4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForNetworkInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1991
    return-void
.end method

.method public registerForNewRingingConnection(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2198
    invoke-static {p1, p2, p3, p0}, Lcom/android/internal/telephony/gemini/GeminiCallSubUtil;->c(Landroid/os/Handler;ILjava/lang/Object;Lcom/android/internal/telephony/gemini/GeminiPhone;)V

    .line 2199
    return-void
.end method

.method public registerForNewRingingConnectionGemini(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1200
    invoke-virtual {p0, p4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForNewRingingConnection(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1201
    return-void
.end method

.method public registerForNumberInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2838
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForNumberInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2839
    return-void
.end method

.method public registerForNumberInfoGemini(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1866
    invoke-virtual {p0, p4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForNumberInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1867
    return-void
.end method

.method public registerForPreciseCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2190
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForPreciseCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2191
    return-void
.end method

.method public registerForPreciseCallStateChangedGemini(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1192
    invoke-virtual {p0, p4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForPreciseCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1193
    return-void
.end method

.method public registerForRadioOffOrNotAvailableNotification(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2878
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForRadioOffOrNotAvailableNotification(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2879
    return-void
.end method

.method public registerForRadioOffOrNotAvailableNotificationGemini(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1906
    invoke-virtual {p0, p4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForRadioOffOrNotAvailableNotification(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1907
    return-void
.end method

.method public registerForRedirectedNumberInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2846
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForRedirectedNumberInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2847
    return-void
.end method

.method public registerForRedirectedNumberInfoGemini(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1874
    invoke-virtual {p0, p4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForRedirectedNumberInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1875
    return-void
.end method

.method public registerForResendIncallMute(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3054
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForResendIncallMute(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3055
    return-void
.end method

.method public registerForRingbackTone(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2318
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForRingbackTone(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2319
    return-void
.end method

.method public registerForRingbackToneGemini(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1320
    invoke-virtual {p0, p4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForRingbackTone(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1321
    return-void
.end method

.method public registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2246
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2247
    return-void
.end method

.method public registerForServiceStateChangedGemini(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1248
    invoke-virtual {p0, p4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1249
    return-void
.end method

.method public registerForSignalInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2822
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForSignalInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2823
    return-void
.end method

.method public registerForSignalInfoGemini(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1850
    invoke-virtual {p0, p4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForSignalInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1851
    return-void
.end method

.method public registerForSimModeChange(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 943
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 944
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->m:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 945
    return-void
.end method

.method public registerForSpeechInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2974
    invoke-static {p1, p2, p3, p0}, Lcom/android/internal/telephony/gemini/GeminiCallSubUtil;->e(Landroid/os/Handler;ILjava/lang/Object;Lcom/android/internal/telephony/gemini/GeminiPhone;)V

    .line 2975
    return-void
.end method

.method public registerForSpeechInfoGemini(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1998
    invoke-virtual {p0, p4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForSpeechInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1999
    return-void
.end method

.method public registerForSubscriptionInfoReady(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2302
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForSubscriptionInfoReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2303
    return-void
.end method

.method public registerForSubscriptionInfoReadyGemini(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1304
    invoke-virtual {p0, p4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForSubscriptionInfoReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1305
    return-void
.end method

.method public registerForSuppServiceFailed(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2270
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForSuppServiceFailed(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2271
    return-void
.end method

.method public registerForSuppServiceFailedGemini(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1272
    invoke-virtual {p0, p4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForSuppServiceFailed(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1273
    return-void
.end method

.method public registerForSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2254
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2255
    return-void
.end method

.method public registerForSuppServiceNotificationGemini(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1256
    invoke-virtual {p0, p4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1257
    return-void
.end method

.method public registerForT53AudioControlInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2870
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForT53AudioControlInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2871
    return-void
.end method

.method public registerForT53AudioControlInfoGemini(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1898
    invoke-virtual {p0, p4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForT53AudioControlInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1899
    return-void
.end method

.method public registerForUnknownConnection(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2182
    invoke-static {p1, p2, p3, p0}, Lcom/android/internal/telephony/gemini/GeminiCallSubUtil;->b(Landroid/os/Handler;ILjava/lang/Object;Lcom/android/internal/telephony/gemini/GeminiPhone;)V

    .line 2183
    return-void
.end method

.method public registerForUnknownConnectionGemini(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1184
    invoke-virtual {p0, p4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForUnknownConnection(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1185
    return-void
.end method

.method public registerForVoiceCallIncomingIndication(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3008
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForVoiceCallIncomingIndication(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3009
    return-void
.end method

.method public registerForVoiceCallIncomingIndicationGemini(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2031
    invoke-virtual {p0, p4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForVoiceCallIncomingIndication(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2032
    return-void
.end method

.method public registerForVtReplaceDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2999
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForVtReplaceDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3000
    return-void
.end method

.method public registerForVtReplaceDisconnectGemini(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2023
    invoke-virtual {p0, p4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForVtReplaceDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2024
    return-void
.end method

.method public registerForVtRingInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2991
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForVtRingInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2992
    return-void
.end method

.method public registerForVtRingInfoGemini(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2015
    invoke-virtual {p0, p4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForVtRingInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2016
    return-void
.end method

.method public registerForVtStatusInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2983
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForVtStatusInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2984
    return-void
.end method

.method public registerForVtStatusInfoGemini(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2007
    invoke-virtual {p0, p4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForVtStatusInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2008
    return-void
.end method

.method public rejectCall()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 2338
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->rejectCall()V

    .line 2339
    return-void
.end method

.method public rejectCallGemini(I)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1340
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->rejectCall()V

    .line 1341
    return-void
.end method

.method public removeReferences()V
    .locals 2

    .prologue
    .line 480
    const/4 v0, 0x0

    :goto_0
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v0, v1, :cond_0

    .line 481
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->c:[Lcom/android/internal/telephony/Phone;

    aget-object v1, v1, v0

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->removeReferences()V

    .line 480
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 483
    :cond_0
    return-void
.end method

.method public requestIsimAuthentication(Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 3618
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->requestIsimAuthentication(Ljava/lang/String;Landroid/os/Message;)V

    .line 3619
    return-void
.end method

.method public requestSwitchHPF(ZLandroid/os/Message;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 3811
    return-void
.end method

.method public resetAccumulatedCallMeter(Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2942
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->resetAccumulatedCallMeter(Ljava/lang/String;Landroid/os/Message;)V

    .line 2943
    return-void
.end method

.method public resetAccumulatedCallMeterGemini(Ljava/lang/String;Landroid/os/Message;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1970
    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->resetAccumulatedCallMeter(Ljava/lang/String;Landroid/os/Message;)V

    .line 1971
    return-void
.end method

.method public selectNetworkManually(Lcom/android/internal/telephony/OperatorInfo;Landroid/os/Message;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2518
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->selectNetworkManually(Lcom/android/internal/telephony/OperatorInfo;Landroid/os/Message;)V

    .line 2519
    return-void
.end method

.method public selectNetworkManuallyGemini(Lcom/android/internal/telephony/OperatorInfo;Landroid/os/Message;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1539
    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->selectNetworkManually(Lcom/android/internal/telephony/OperatorInfo;Landroid/os/Message;)V

    .line 1540
    return-void
.end method

.method public sendBTSIMProfile(IILjava/lang/String;Landroid/os/Message;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3066
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/Phone;->sendBTSIMProfile(IILjava/lang/String;Landroid/os/Message;)V

    .line 3067
    return-void
.end method

.method public sendBTSIMProfileGemini(IILjava/lang/String;Landroid/os/Message;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2086
    invoke-virtual {p0, p5}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/Phone;->sendBTSIMProfile(IILjava/lang/String;Landroid/os/Message;)V

    .line 2087
    return-void
.end method

.method public sendBurstDtmf(Ljava/lang/String;IILandroid/os/Message;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2802
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/Phone;->sendBurstDtmf(Ljava/lang/String;IILandroid/os/Message;)V

    .line 2803
    return-void
.end method

.method public sendBurstDtmfGemini(Ljava/lang/String;IILandroid/os/Message;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1830
    invoke-virtual {p0, p5}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/Phone;->sendBurstDtmf(Ljava/lang/String;IILandroid/os/Message;)V

    .line 1831
    return-void
.end method

.method public sendDtmf(C)V
    .locals 1
    .parameter

    .prologue
    .line 2416
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->sendDtmf(C)V

    .line 2417
    return-void
.end method

.method public sendDtmfGemini(CI)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1422
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->sendDtmf(C)V

    .line 1423
    return-void
.end method

.method public sendUssdResponse(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 2242
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->sendUssdResponse(Ljava/lang/String;)V

    .line 2243
    return-void
.end method

.method public sendUssdResponseGemini(Ljava/lang/String;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1244
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->sendUssdResponse(Ljava/lang/String;)V

    .line 1245
    return-void
.end method

.method public set3GCapabilitySIM(I)Z
    .locals 9
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v8, 0x1

    const/4 v5, 0x0

    .line 3312
    .line 3313
    iget-boolean v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->q:Z

    if-eqz v0, :cond_0

    .line 3314
    const-string v0, "PHONE"

    const-string v1, "Switch 3G capability now, not to do it repeatedly"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3358
    :goto_0
    return v5

    :cond_0
    move v1, v5

    .line 3317
    :goto_1
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v1, v0, :cond_8

    .line 3318
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->c:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, v1

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->isGSMRadioAvailable()Z

    move-result v0

    if-nez v0, :cond_6

    move v0, v5

    .line 3324
    :goto_2
    if-eqz v0, :cond_7

    .line 3325
    const-string v0, "PHONE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GeminiPhone set3GCapabilitySIM ["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3326
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->e:Landroid/content/Context;

    const-string v1, "com.mtk.3G_SWITCH"

    invoke-virtual {v0, v1, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 3327
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3328
    const-string v1, "3G_SIM_ID"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 3329
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3330
    iput-boolean v8, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->q:Z

    .line 3332
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->u:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_1

    .line 3333
    const-string v0, "PHONE"

    const-string v1, "Create 3G Switch wakelock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3334
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->e:Landroid/content/Context;

    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 3335
    const-string v1, "3G_SWITCH"

    invoke-virtual {v0, v8, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->u:Landroid/os/PowerManager$WakeLock;

    .line 3336
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->u:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v5}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 3338
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->u:Landroid/os/PowerManager$WakeLock;

    monitor-enter v1

    .line 3339
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->u:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3340
    const-string v0, "PHONE"

    const-string v3, "Acquire 3G Switch wakelock"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3341
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->u:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 3343
    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3345
    new-instance v1, Landroid/content/Intent;

    sget-object v0, Lcom/android/internal/telephony/gemini/GeminiPhone;->EVENT_PRE_3G_SWITCH:Ljava/lang/String;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3347
    if-ltz p1, :cond_3

    sget v0, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-lt p1, v0, :cond_4

    :cond_3
    const/4 v0, -0x1

    if-ne v0, p1, :cond_5

    .line 3348
    :cond_4
    sget-object v0, Lcom/android/internal/telephony/gemini/GeminiPhone;->EXTRA_3G_SIM:Ljava/lang/String;

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3350
    :cond_5
    const-string v0, "PHONE"

    const-string v3, "GeminiPhone is sending ordered pre 3G switch event"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3351
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->I:Lcom/android/internal/telephony/gemini/GeminiPhone$a;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone$a;->a(I)V

    .line 3352
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->e:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->I:Lcom/android/internal/telephony/gemini/GeminiPhone$a;

    move-object v4, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    move v5, v8

    .line 3354
    goto/16 :goto_0

    .line 3317
    :cond_6
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_1

    .line 3343
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 3355
    :cond_7
    const-string v0, "PHONE"

    const-string v1, "Radio unavailable and cannot do 3G Switch"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_8
    move v0, v8

    goto/16 :goto_2
.end method

.method public setAccumulatedCallMeterMaximum(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2938
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->setAccumulatedCallMeterMaximum(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 2939
    return-void
.end method

.method public setAccumulatedCallMeterMaximumGemini(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1966
    invoke-virtual {p0, p4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->setAccumulatedCallMeterMaximum(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 1967
    return-void
.end method

.method public setAvoidSYS(ZLandroid/os/Message;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 3814
    return-void
.end method

.method public setBandMode(ILandroid/os/Message;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2624
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setBandMode(ILandroid/os/Message;)V

    .line 2625
    return-void
.end method

.method public setBandModeGemini(ILandroid/os/Message;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1639
    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setBandMode(ILandroid/os/Message;)V

    .line 1640
    return-void
.end method

.method public setBtConnectedSimId(I)V
    .locals 0
    .parameter

    .prologue
    .line 504
    iput p1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->h:I

    .line 505
    return-void
.end method

.method public setCRO(ILandroid/os/Message;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 3683
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/PhoneProxy;->setCRO(ILandroid/os/Message;)V

    .line 3684
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/PhoneProxy;->setCRO(ILandroid/os/Message;)V

    .line 3685
    return-void
.end method

.method public setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2486
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/Phone;->setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V

    .line 2488
    return-void
.end method

.method public setCallForwardingOptionGemini(IILjava/lang/String;ILandroid/os/Message;I)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1492
    invoke-virtual {p0, p6}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/Phone;->setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V

    .line 1494
    return-void
.end method

.method public setCallWaiting(ZLandroid/os/Message;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2505
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setCallWaiting(ZLandroid/os/Message;)V

    .line 2506
    return-void
.end method

.method public setCallWaitingGemini(ZLandroid/os/Message;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1511
    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setCallWaiting(ZLandroid/os/Message;)V

    .line 1512
    return-void
.end method

.method public setCdmaRoamingPreference(ILandroid/os/Message;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2644
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setCdmaRoamingPreference(ILandroid/os/Message;)V

    .line 2645
    return-void
.end method

.method public setCdmaRoamingPreferenceGemini(ILandroid/os/Message;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1661
    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setCdmaRoamingPreference(ILandroid/os/Message;)V

    .line 1662
    return-void
.end method

.method public setCdmaSubscription(ILandroid/os/Message;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2648
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setCdmaSubscription(ILandroid/os/Message;)V

    .line 2649
    return-void
.end method

.method public setCdmaSubscriptionGemini(ILandroid/os/Message;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1665
    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setCdmaSubscription(ILandroid/os/Message;)V

    .line 1666
    return-void
.end method

.method public setCellBroadcastSmsConfig([ILandroid/os/Message;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2761
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setCellBroadcastSmsConfig([ILandroid/os/Message;)V

    .line 2762
    return-void
.end method

.method public setCellBroadcastSmsConfig([Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;Landroid/os/Message;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2766
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->setCellBroadcastSmsConfig([Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;Landroid/os/Message;)V

    .line 2767
    return-void
.end method

.method public setCellBroadcastSmsConfigGemini([ILandroid/os/Message;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1792
    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setCellBroadcastSmsConfig([ILandroid/os/Message;)V

    .line 1793
    return-void
.end method

.method public setCellBroadcastSmsConfigGemini([Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;Landroid/os/Message;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1797
    invoke-virtual {p0, p4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->setCellBroadcastSmsConfig([Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;[Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;Landroid/os/Message;)V

    .line 1798
    return-void
.end method

.method public setCurrentPreferredNetworkType()V
    .locals 0

    .prologue
    .line 3676
    return-void
.end method

.method public setDataRoamingEnabled(Z)V
    .locals 1
    .parameter

    .prologue
    .line 2636
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->d:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->setDataRoamingEnabled(Z)V

    .line 2637
    return-void
.end method

.method public setDataRoamingEnabledGemini(ZI)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1653
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->d:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->setDataRoamingEnabledGemini(ZI)V

    .line 1654
    return-void
.end method

.method public setDefaultPhone(I)V
    .locals 1
    .parameter

    .prologue
    .line 492
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->c:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, p1

    iput-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    .line 493
    return-void
.end method

.method public setDefaultPhone(Lcom/android/internal/telephony/Phone;)V
    .locals 0
    .parameter

    .prologue
    .line 487
    iput-object p1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    .line 488
    return-void
.end method

.method public setDualSimMode(I)V
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 992
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDualSimMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(Ljava/lang/String;)V

    .line 993
    iput p1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->g:I

    .line 995
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isFlightModePowerOffMD()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 996
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->e:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 997
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 998
    const-string v1, "Is in flight mode, to re-register inserted status after dual SIM mode changed"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(Ljava/lang/String;)V

    .line 999
    :goto_0
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v0, v1, :cond_0

    .line 1000
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(I)V

    .line 999
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1004
    :cond_0
    return-void
.end method

.method public setEchoSuppressionEnabled(Z)V
    .locals 1
    .parameter

    .prologue
    .line 3062
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setEchoSuppressionEnabled(Z)V

    .line 3063
    return-void
.end method

.method public setFDTimerValue([Ljava/lang/String;Landroid/os/Message;)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 3787
    const/4 v0, 0x0

    .line 3788
    invoke-static {}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3789
    invoke-static {}, Lcom/android/internal/telephony/gemini/GeminiPhone;->get3GSimId()I

    move-result v0

    .line 3791
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/PhoneProxy;->setFDTimerValue([Ljava/lang/String;Landroid/os/Message;)I

    move-result v0

    return v0
.end method

.method public setFacilityLock(Ljava/lang/String;ZLjava/lang/String;Landroid/os/Message;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2898
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/Phone;->setFacilityLock(Ljava/lang/String;ZLjava/lang/String;Landroid/os/Message;)V

    .line 2899
    return-void
.end method

.method public setFacilityLockGemini(Ljava/lang/String;ZLjava/lang/String;Landroid/os/Message;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1926
    invoke-virtual {p0, p5}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/Phone;->setFacilityLock(Ljava/lang/String;ZLjava/lang/String;Landroid/os/Message;)V

    .line 1927
    return-void
.end method

.method public setGprsConnType(II)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1079
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/PhoneProxy;->setGprsConnType(I)V

    .line 1080
    return-void
.end method

.method public setGprsTransferType(ILandroid/os/Message;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1083
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setGprsTransferType(ILandroid/os/Message;)V

    .line 1084
    return-void
.end method

.method public setGprsTransferTypeGemini(ILandroid/os/Message;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1087
    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setGprsTransferType(ILandroid/os/Message;)V

    .line 1088
    return-void
.end method

.method public setLine1Number(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2456
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->setLine1Number(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 2457
    return-void
.end method

.method public setLine1NumberGemini(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1462
    invoke-virtual {p0, p4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->setLine1Number(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 1463
    return-void
.end method

.method public setMute(Z)V
    .locals 1
    .parameter

    .prologue
    .line 2573
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setMute(Z)V

    .line 2574
    return-void
.end method

.method public setMuteGemini(ZI)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1585
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setMute(Z)V

    .line 1586
    return-void
.end method

.method public setNetworkSelectionModeAutomatic(Landroid/os/Message;)V
    .locals 1
    .parameter

    .prologue
    .line 2514
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setNetworkSelectionModeAutomatic(Landroid/os/Message;)V

    .line 2515
    return-void
.end method

.method public setNetworkSelectionModeAutomaticGemini(Landroid/os/Message;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1535
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setNetworkSelectionModeAutomatic(Landroid/os/Message;)V

    .line 1536
    return-void
.end method

.method public setOnEcbModeExitResponse(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2886
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->setOnEcbModeExitResponse(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2887
    return-void
.end method

.method public setOnEcbModeExitResponseGemini(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1914
    invoke-virtual {p0, p4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->setOnEcbModeExitResponse(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1915
    return-void
.end method

.method public setOnPostDialCharacter(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2569
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->setOnPostDialCharacter(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2570
    return-void
.end method

.method public setOnPostDialCharacterGemini(Landroid/os/Handler;ILjava/lang/Object;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1581
    invoke-virtual {p0, p4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->setOnPostDialCharacter(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1582
    return-void
.end method

.method public setOutgoingCallerIdDisplay(ILandroid/os/Message;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2496
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setOutgoingCallerIdDisplay(ILandroid/os/Message;)V

    .line 2498
    return-void
.end method

.method public setOutgoingCallerIdDisplayGemini(ILandroid/os/Message;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1502
    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setOutgoingCallerIdDisplay(ILandroid/os/Message;)V

    .line 1504
    return-void
.end method

.method public setPOLEntry(Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;Landroid/os/Message;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 3581
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setPOLEntry(Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;Landroid/os/Message;)V

    .line 3582
    return-void
.end method

.method public setPOLEntryGemini(ILcom/android/internal/telephony/gsm/NetworkInfoWithAcT;Landroid/os/Message;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3594
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0, p2, p3}, Lcom/android/internal/telephony/PhoneProxy;->setPOLEntry(Lcom/android/internal/telephony/gsm/NetworkInfoWithAcT;Landroid/os/Message;)V

    .line 3595
    return-void
.end method

.method public setPpuAndCurrency(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2946
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/Phone;->setPpuAndCurrency(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 2947
    return-void
.end method

.method public setPpuAndCurrencyGemini(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1974
    invoke-virtual {p0, p5}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/Phone;->setPpuAndCurrency(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 1975
    return-void
.end method

.method public setPreferredNetworkType(ILandroid/os/Message;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/16 v6, 0xff

    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 2522
    const-string v0, "PHONE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GeminiPhone:setPreferredNetworkType networkType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " default phone="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getMySimId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2524
    invoke-static {}, Lcom/android/internal/telephony/gemini/GeminiPhone;->get3GSimId()I

    move-result v2

    .line 2525
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->e:Landroid/content/Context;

    const-string v3, "RATMode"

    invoke-virtual {v0, v3, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/gemini/GeminiPhone;->s:Landroid/content/SharedPreferences;

    .line 2526
    sget-object v0, Lcom/android/internal/telephony/gemini/GeminiPhone;->s:Landroid/content/SharedPreferences;

    const-string v3, "ModeType"

    invoke-interface {v0, v3, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->t:I

    .line 2527
    const-string v0, "PHONE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setPreferredNetworkType() mEmNetworkMode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->t:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2528
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getMySimId()I

    move-result v0

    if-nez v0, :cond_2

    .line 2529
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "preferred_network_mode"

    invoke-static {v0, v3, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2534
    :goto_0
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->t:I

    if-eq v0, v6, :cond_0

    .line 2535
    iget p1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->t:I

    .line 2536
    const-string v0, "PHONE"

    const-string v3, "Notice, the network mode is set from Engineering Mode, using EM settings "

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2538
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isDualTalkMode()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2539
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 2552
    :cond_1
    :goto_1
    return-void

    .line 2531
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "preferred_network_mode_2"

    invoke-static {v0, v3, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 2541
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->c:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, v1

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->isWCDMAPrefered()Z

    move-result v0

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->t:I

    if-ne v0, v5, :cond_5

    move v0, v1

    .line 2542
    :goto_2
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v0, v1, :cond_1

    .line 2543
    if-ne v0, v2, :cond_4

    .line 2544
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 2542
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2546
    :cond_4
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    const/4 v3, 0x0

    invoke-interface {v1, v5, v3}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto :goto_3

    .line 2549
    :cond_5
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto :goto_1
.end method

.method public setPreferredNetworkTypeGemini(ILandroid/os/Message;I)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 1543
    invoke-static {}, Lcom/android/internal/telephony/gemini/GeminiPhone;->get3GSimId()I

    move-result v2

    .line 1544
    const-string v0, "PHONE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GeminiPhone:setPreferredNetworkTypeGemini networkType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",simId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1545
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->e:Landroid/content/Context;

    const-string v3, "RATMode"

    invoke-virtual {v0, v3, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/gemini/GeminiPhone;->s:Landroid/content/SharedPreferences;

    .line 1546
    sget-object v0, Lcom/android/internal/telephony/gemini/GeminiPhone;->s:Landroid/content/SharedPreferences;

    const-string v3, "ModeType"

    const/16 v4, 0xff

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->t:I

    .line 1547
    const-string v0, "PHONE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mEmNetworkMode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->t:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1549
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isDualTalkMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1550
    if-nez p3, :cond_1

    .line 1551
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "preferred_network_mode"

    invoke-static {v0, v2, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1552
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->c:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, v1

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 1570
    :cond_0
    :goto_0
    return-void

    .line 1554
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "preferred_network_mode_2"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1555
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->c:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, v5

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto :goto_0

    .line 1558
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "preferred_network_mode"

    invoke-static {v0, v3, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1559
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->c:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, v1

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->isWCDMAPrefered()Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->t:I

    if-ne v0, v5, :cond_4

    move v0, v1

    .line 1560
    :goto_1
    sget v1, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v0, v1, :cond_0

    .line 1561
    if-ne v0, v2, :cond_3

    .line 1562
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 1560
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1564
    :cond_3
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    const/4 v3, 0x0

    invoke-interface {v1, v5, v3}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto :goto_2

    .line 1567
    :cond_4
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto :goto_0
.end method

.method public setPreferredNetworkTypeRIL(I)V
    .locals 0
    .parameter

    .prologue
    .line 3673
    return-void
.end method

.method public setRadioMode(I)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1020
    invoke-static {}, Lcom/android/internal/telephony/gemini/GeminiRadioStatusUtil;->isRadioStatusInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1021
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->e:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/internal/telephony/gemini/GeminiRadioStatusUtil;->setRadioSIMMode(Landroid/content/Context;I)V

    .line 1023
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->q:Z

    if-eqz v0, :cond_2

    .line 1025
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "3G switch now, setRadioMode later ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->c(Ljava/lang/String;)V

    .line 1026
    iput p1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->p:I

    .line 1047
    :cond_1
    :goto_0
    return-void

    .line 1028
    :cond_2
    const/16 v0, -0x63

    iput v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->p:I

    .line 1029
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->d:Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gemini/GeminiDataSubUtil;->resetAsRadioOff(I)V

    .line 1030
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->f:I

    invoke-static {p0, p1, v0, v4}, Lcom/android/internal/telephony/gemini/GeminiNetworkSubUtil;->a(Lcom/android/internal/telephony/gemini/GeminiPhone;IIZ)V

    .line 1032
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->e:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->e:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1033
    if-eqz v0, :cond_5

    .line 1034
    iget-object v1, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->o:Lcom/mediatek/common/telephony/ITelephonyExt;

    invoke-interface {v1}, Lcom/mediatek/common/telephony/ITelephonyExt;->isAutoSwitchDataToEnabledSim()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1035
    if-eq p1, v3, :cond_3

    if-ne p1, v5, :cond_1

    .line 1036
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Need to auto switch to current enabled SIM ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->b(Ljava/lang/String;)V

    .line 1037
    if-ne p1, v3, :cond_4

    .line 1038
    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->setMobileDataEnabledGemini(I)Z

    goto :goto_0

    .line 1039
    :cond_4
    if-ne p1, v5, :cond_1

    .line 1040
    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->setMobileDataEnabledGemini(I)Z

    goto :goto_0

    .line 1044
    :cond_5
    const-string v0, "Cannot get ConnectivityManager"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setRadioPower(Z)V
    .locals 1
    .parameter

    .prologue
    .line 1050
    if-eqz p1, :cond_0

    const/4 v0, 0x3

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->setRadioMode(I)V

    .line 1051
    return-void

    .line 1050
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setRadioPower(ZZ)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1054
    if-eqz p2, :cond_0

    .line 1055
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->setRadioMode(I)V

    .line 1059
    :goto_0
    return-void

    .line 1057
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->setRadioPower(Z)V

    goto :goto_0
.end method

.method public setRadioPowerOn()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1063
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isDualTalkMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1064
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->setRadioPowerOn()V

    .line 1065
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->setRadioPowerOn()V

    .line 1075
    :goto_0
    return-void

    .line 1067
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a()Z

    move-result v0

    .line 1068
    if-eqz v0, :cond_1

    .line 1069
    invoke-static {}, Lcom/android/internal/telephony/gemini/GeminiPhone;->get3GSimId()I

    move-result v0

    .line 1070
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->setRadioPowerOn()V

    goto :goto_0

    .line 1073
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->setRadioPowerOn()V

    goto :goto_0
.end method

.method public setSimInsertedState(IZ)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 1011
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setSimInsertedState["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gemini/GeminiPhone;->a(Ljava/lang/String;)V

    .line 1012
    if-eqz p2, :cond_0

    .line 1013
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->f:I

    shl-int v1, v2, p1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->f:I

    .line 1017
    :goto_0
    return-void

    .line 1015
    :cond_0
    iget v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->f:I

    shl-int v1, v2, p1

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->f:I

    goto :goto_0
.end method

.method public setSmscAddress(Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2786
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setSmscAddress(Ljava/lang/String;Landroid/os/Message;)V

    .line 2787
    return-void
.end method

.method public setSmscAddressGemini(Ljava/lang/String;Landroid/os/Message;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1814
    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setSmscAddress(Ljava/lang/String;Landroid/os/Message;)V

    .line 1815
    return-void
.end method

.method public setTTYMode(ILandroid/os/Message;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 2745
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->c:[Lcom/android/internal/telephony/Phone;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setTTYMode(ILandroid/os/Message;)V

    .line 2746
    return-void
.end method

.method public setTTYModeGemini(ILandroid/os/Message;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1776
    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setTTYMode(ILandroid/os/Message;)V

    .line 1777
    return-void
.end method

.method public setUnitTestMode(Z)V
    .locals 1
    .parameter

    .prologue
    .line 2616
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setUnitTestMode(Z)V

    .line 2617
    return-void
.end method

.method public setUnitTestModeGemini(ZI)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1631
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setUnitTestMode(Z)V

    .line 1632
    return-void
.end method

.method public setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2474
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 2475
    return-void
.end method

.method public setVoiceMailNumberGemini(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1480
    invoke-virtual {p0, p4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 1481
    return-void
.end method

.method public setVoiceMessageWaiting(II)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 3614
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setVoiceMessageWaiting(II)V

    .line 3615
    return-void
.end method

.method public setVtCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3032
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/Phone;->setVtCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V

    .line 3034
    return-void
.end method

.method public setVtCallForwardingOptionGemini(IILjava/lang/String;ILandroid/os/Message;I)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2055
    invoke-virtual {p0, p6}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/Phone;->setVtCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V

    .line 2057
    return-void
.end method

.method public setVtCallWaiting(ZLandroid/os/Message;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 3041
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setVtCallWaiting(ZLandroid/os/Message;)V

    .line 3042
    return-void
.end method

.method public setVtCallWaitingGemini(ZLandroid/os/Message;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2064
    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setVtCallWaiting(ZLandroid/os/Message;)V

    .line 2065
    return-void
.end method

.method public setVtFacilityLock(Ljava/lang/String;ZLjava/lang/String;Landroid/os/Message;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3049
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/Phone;->setVtFacilityLock(Ljava/lang/String;ZLjava/lang/String;Landroid/os/Message;)V

    .line 3050
    return-void
.end method

.method public setVtFacilityLockGemini(Ljava/lang/String;ZLjava/lang/String;Landroid/os/Message;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2072
    invoke-virtual {p0, p5}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/Phone;->setVtFacilityLock(Ljava/lang/String;ZLjava/lang/String;Landroid/os/Message;)V

    .line 2073
    return-void
.end method

.method public startDtmf(C)V
    .locals 1
    .parameter

    .prologue
    .line 2420
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->startDtmf(C)V

    .line 2421
    return-void
.end method

.method public startDtmfGemini(CI)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1426
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->startDtmf(C)V

    .line 1427
    return-void
.end method

.method public stopDtmf()V
    .locals 1

    .prologue
    .line 2424
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->stopDtmf()V

    .line 2425
    return-void
.end method

.method public stopDtmfGemini(I)V
    .locals 1
    .parameter

    .prologue
    .line 1430
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->stopDtmf()V

    .line 1431
    return-void
.end method

.method public switchHoldingAndActive()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 2342
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->switchHoldingAndActive()V

    .line 2343
    return-void
.end method

.method public switchHoldingAndActiveGemini(I)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1344
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->switchHoldingAndActive()V

    .line 1345
    return-void
.end method

.method public unregisterForCallWaiting(Landroid/os/Handler;)V
    .locals 1
    .parameter

    .prologue
    .line 2818
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForCallWaiting(Landroid/os/Handler;)V

    .line 2819
    return-void
.end method

.method public unregisterForCallWaitingGemini(Landroid/os/Handler;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1846
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForCallWaiting(Landroid/os/Handler;)V

    .line 1847
    return-void
.end method

.method public unregisterForCdmaOtaStatusChange(Landroid/os/Handler;)V
    .locals 1
    .parameter

    .prologue
    .line 2298
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForCdmaOtaStatusChange(Landroid/os/Handler;)V

    .line 2299
    return-void
.end method

.method public unregisterForCdmaOtaStatusChangeGemini(Landroid/os/Handler;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1300
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForCdmaOtaStatusChange(Landroid/os/Handler;)V

    .line 1301
    return-void
.end method

.method public unregisterForCipherIndication(Landroid/os/Handler;)V
    .locals 1
    .parameter

    .prologue
    .line 3020
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForCipherIndication(Landroid/os/Handler;)V

    .line 3021
    return-void
.end method

.method public unregisterForCipherIndicationGemini(Landroid/os/Handler;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2043
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForCipherIndication(Landroid/os/Handler;)V

    .line 2044
    return-void
.end method

.method public unregisterForCrssSuppServiceNotification(Landroid/os/Handler;)V
    .locals 1
    .parameter

    .prologue
    .line 2266
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForCrssSuppServiceNotification(Landroid/os/Handler;)V

    .line 2267
    return-void
.end method

.method public unregisterForCrssSuppServiceNotificationGemini(Landroid/os/Handler;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1268
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForCrssSuppServiceNotification(Landroid/os/Handler;)V

    .line 1269
    return-void
.end method

.method public unregisterForDisconnect(Landroid/os/Handler;)V
    .locals 0
    .parameter

    .prologue
    .line 2218
    invoke-static {p1, p0}, Lcom/android/internal/telephony/gemini/GeminiCallSubUtil;->d(Landroid/os/Handler;Lcom/android/internal/telephony/gemini/GeminiPhone;)V

    .line 2219
    return-void
.end method

.method public unregisterForDisconnectGemini(Landroid/os/Handler;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1220
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForDisconnect(Landroid/os/Handler;)V

    .line 1221
    return-void
.end method

.method public unregisterForDisplayInfo(Landroid/os/Handler;)V
    .locals 1
    .parameter

    .prologue
    .line 2834
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForDisplayInfo(Landroid/os/Handler;)V

    .line 2835
    return-void
.end method

.method public unregisterForDisplayInfoGemini(Landroid/os/Handler;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1862
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForDisplayInfo(Landroid/os/Handler;)V

    .line 1863
    return-void
.end method

.method public unregisterForEcmTimerReset(Landroid/os/Handler;)V
    .locals 1
    .parameter

    .prologue
    .line 2314
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForEcmTimerReset(Landroid/os/Handler;)V

    .line 2315
    return-void
.end method

.method public unregisterForEcmTimerResetGemini(Landroid/os/Handler;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1316
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForEcmTimerReset(Landroid/os/Handler;)V

    .line 1317
    return-void
.end method

.method public unregisterForInCallVoicePrivacyOff(Landroid/os/Handler;)V
    .locals 1
    .parameter

    .prologue
    .line 2290
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForInCallVoicePrivacyOff(Landroid/os/Handler;)V

    .line 2291
    return-void
.end method

.method public unregisterForInCallVoicePrivacyOffGemini(Landroid/os/Handler;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1292
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForInCallVoicePrivacyOff(Landroid/os/Handler;)V

    .line 1293
    return-void
.end method

.method public unregisterForInCallVoicePrivacyOn(Landroid/os/Handler;)V
    .locals 1
    .parameter

    .prologue
    .line 2282
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForInCallVoicePrivacyOn(Landroid/os/Handler;)V

    .line 2283
    return-void
.end method

.method public unregisterForInCallVoicePrivacyOnGemini(Landroid/os/Handler;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1284
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForInCallVoicePrivacyOn(Landroid/os/Handler;)V

    .line 1285
    return-void
.end method

.method public unregisterForIncomingRing(Landroid/os/Handler;)V
    .locals 0
    .parameter

    .prologue
    .line 2210
    invoke-static {p1, p0}, Lcom/android/internal/telephony/gemini/GeminiCallSubUtil;->a(Landroid/os/Handler;Lcom/android/internal/telephony/gemini/GeminiPhone;)V

    .line 2211
    return-void
.end method

.method public unregisterForIncomingRingGemini(Landroid/os/Handler;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1212
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForIncomingRing(Landroid/os/Handler;)V

    .line 1213
    return-void
.end method

.method public unregisterForLineControlInfo(Landroid/os/Handler;)V
    .locals 1
    .parameter

    .prologue
    .line 2858
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForLineControlInfo(Landroid/os/Handler;)V

    .line 2859
    return-void
.end method

.method public unregisterForLineControlInfoGemini(Landroid/os/Handler;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1886
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForLineControlInfo(Landroid/os/Handler;)V

    .line 1887
    return-void
.end method

.method public unregisterForMmiComplete(Landroid/os/Handler;)V
    .locals 1
    .parameter

    .prologue
    .line 2234
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForMmiComplete(Landroid/os/Handler;)V

    .line 2235
    return-void
.end method

.method public unregisterForMmiCompleteGemini(Landroid/os/Handler;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1236
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForMmiComplete(Landroid/os/Handler;)V

    .line 1237
    return-void
.end method

.method public unregisterForMmiInitiate(Landroid/os/Handler;)V
    .locals 1
    .parameter

    .prologue
    .line 2226
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForMmiInitiate(Landroid/os/Handler;)V

    .line 2227
    return-void
.end method

.method public unregisterForMmiInitiateGemini(Landroid/os/Handler;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1228
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForMmiInitiate(Landroid/os/Handler;)V

    .line 1229
    return-void
.end method

.method public unregisterForNeighboringInfo(Landroid/os/Handler;)V
    .locals 1
    .parameter

    .prologue
    .line 2958
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForNeighboringInfo(Landroid/os/Handler;)V

    .line 2959
    return-void
.end method

.method public unregisterForNeighboringInfoGemini(Landroid/os/Handler;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1986
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForNeighboringInfo(Landroid/os/Handler;)V

    .line 1987
    return-void
.end method

.method public unregisterForNetworkInfo(Landroid/os/Handler;)V
    .locals 1
    .parameter

    .prologue
    .line 2966
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForNetworkInfo(Landroid/os/Handler;)V

    .line 2967
    return-void
.end method

.method public unregisterForNetworkInfoGemini(Landroid/os/Handler;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1994
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForNetworkInfo(Landroid/os/Handler;)V

    .line 1995
    return-void
.end method

.method public unregisterForNewRingingConnection(Landroid/os/Handler;)V
    .locals 0
    .parameter

    .prologue
    .line 2202
    invoke-static {p1, p0}, Lcom/android/internal/telephony/gemini/GeminiCallSubUtil;->c(Landroid/os/Handler;Lcom/android/internal/telephony/gemini/GeminiPhone;)V

    .line 2203
    return-void
.end method

.method public unregisterForNewRingingConnectionGemini(Landroid/os/Handler;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1204
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForNewRingingConnection(Landroid/os/Handler;)V

    .line 1205
    return-void
.end method

.method public unregisterForNumberInfo(Landroid/os/Handler;)V
    .locals 1
    .parameter

    .prologue
    .line 2842
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForNumberInfo(Landroid/os/Handler;)V

    .line 2843
    return-void
.end method

.method public unregisterForNumberInfoGemini(Landroid/os/Handler;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1870
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForNumberInfo(Landroid/os/Handler;)V

    .line 1871
    return-void
.end method

.method public unregisterForPreciseCallStateChanged(Landroid/os/Handler;)V
    .locals 1
    .parameter

    .prologue
    .line 2194
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForPreciseCallStateChanged(Landroid/os/Handler;)V

    .line 2195
    return-void
.end method

.method public unregisterForPreciseCallStateChangedGemini(Landroid/os/Handler;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1196
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForPreciseCallStateChanged(Landroid/os/Handler;)V

    .line 1197
    return-void
.end method

.method public unregisterForRadioOffOrNotAvailableNotification(Landroid/os/Handler;)V
    .locals 1
    .parameter

    .prologue
    .line 2882
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForRadioOffOrNotAvailableNotification(Landroid/os/Handler;)V

    .line 2883
    return-void
.end method

.method public unregisterForRadioOffOrNotAvailableNotificationGemini(Landroid/os/Handler;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1910
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForRadioOffOrNotAvailableNotification(Landroid/os/Handler;)V

    .line 1911
    return-void
.end method

.method public unregisterForRedirectedNumberInfo(Landroid/os/Handler;)V
    .locals 1
    .parameter

    .prologue
    .line 2850
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForRedirectedNumberInfo(Landroid/os/Handler;)V

    .line 2851
    return-void
.end method

.method public unregisterForRedirectedNumberInfoGemini(Landroid/os/Handler;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1878
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForRedirectedNumberInfo(Landroid/os/Handler;)V

    .line 1879
    return-void
.end method

.method public unregisterForResendIncallMute(Landroid/os/Handler;)V
    .locals 1
    .parameter

    .prologue
    .line 3058
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForResendIncallMute(Landroid/os/Handler;)V

    .line 3059
    return-void
.end method

.method public unregisterForRingbackTone(Landroid/os/Handler;)V
    .locals 1
    .parameter

    .prologue
    .line 2322
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForRingbackTone(Landroid/os/Handler;)V

    .line 2323
    return-void
.end method

.method public unregisterForRingbackToneGemini(Landroid/os/Handler;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1324
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForRingbackTone(Landroid/os/Handler;)V

    .line 1325
    return-void
.end method

.method public unregisterForServiceStateChanged(Landroid/os/Handler;)V
    .locals 1
    .parameter

    .prologue
    .line 2250
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForServiceStateChanged(Landroid/os/Handler;)V

    .line 2251
    return-void
.end method

.method public unregisterForServiceStateChangedGemini(Landroid/os/Handler;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1252
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForServiceStateChanged(Landroid/os/Handler;)V

    .line 1253
    return-void
.end method

.method public unregisterForSignalInfo(Landroid/os/Handler;)V
    .locals 1
    .parameter

    .prologue
    .line 2826
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForSignalInfo(Landroid/os/Handler;)V

    .line 2827
    return-void
.end method

.method public unregisterForSignalInfoGemini(Landroid/os/Handler;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1854
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForSignalInfo(Landroid/os/Handler;)V

    .line 1855
    return-void
.end method

.method public unregisterForSimModeChange(Landroid/os/Handler;)V
    .locals 1
    .parameter

    .prologue
    .line 948
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->m:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 949
    return-void
.end method

.method public unregisterForSpeechInfo(Landroid/os/Handler;)V
    .locals 0
    .parameter

    .prologue
    .line 2978
    invoke-static {p1, p0}, Lcom/android/internal/telephony/gemini/GeminiCallSubUtil;->e(Landroid/os/Handler;Lcom/android/internal/telephony/gemini/GeminiPhone;)V

    .line 2979
    return-void
.end method

.method public unregisterForSpeechInfoGemini(Landroid/os/Handler;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2002
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForSpeechInfo(Landroid/os/Handler;)V

    .line 2003
    return-void
.end method

.method public unregisterForSubscriptionInfoReady(Landroid/os/Handler;)V
    .locals 1
    .parameter

    .prologue
    .line 2306
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForSubscriptionInfoReady(Landroid/os/Handler;)V

    .line 2307
    return-void
.end method

.method public unregisterForSubscriptionInfoReadyGemini(Landroid/os/Handler;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1308
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForSubscriptionInfoReady(Landroid/os/Handler;)V

    .line 1309
    return-void
.end method

.method public unregisterForSuppServiceFailed(Landroid/os/Handler;)V
    .locals 1
    .parameter

    .prologue
    .line 2274
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForSuppServiceFailed(Landroid/os/Handler;)V

    .line 2275
    return-void
.end method

.method public unregisterForSuppServiceFailedGemini(Landroid/os/Handler;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1276
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForSuppServiceFailed(Landroid/os/Handler;)V

    .line 1277
    return-void
.end method

.method public unregisterForSuppServiceNotification(Landroid/os/Handler;)V
    .locals 1
    .parameter

    .prologue
    .line 2258
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForSuppServiceNotification(Landroid/os/Handler;)V

    .line 2259
    return-void
.end method

.method public unregisterForSuppServiceNotificationGemini(Landroid/os/Handler;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1260
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForSuppServiceNotification(Landroid/os/Handler;)V

    .line 1261
    return-void
.end method

.method public unregisterForT53AudioControlInfo(Landroid/os/Handler;)V
    .locals 1
    .parameter

    .prologue
    .line 2874
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForT53AudioControlInfo(Landroid/os/Handler;)V

    .line 2875
    return-void
.end method

.method public unregisterForT53AudioControlInfoGemini(Landroid/os/Handler;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1902
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForT53AudioControlInfo(Landroid/os/Handler;)V

    .line 1903
    return-void
.end method

.method public unregisterForT53ClirInfo(Landroid/os/Handler;)V
    .locals 1
    .parameter

    .prologue
    .line 2866
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForT53ClirInfo(Landroid/os/Handler;)V

    .line 2867
    return-void
.end method

.method public unregisterForT53ClirInfoGemini(Landroid/os/Handler;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1894
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForT53ClirInfo(Landroid/os/Handler;)V

    .line 1895
    return-void
.end method

.method public unregisterForUnknownConnection(Landroid/os/Handler;)V
    .locals 0
    .parameter

    .prologue
    .line 2186
    invoke-static {p1, p0}, Lcom/android/internal/telephony/gemini/GeminiCallSubUtil;->b(Landroid/os/Handler;Lcom/android/internal/telephony/gemini/GeminiPhone;)V

    .line 2187
    return-void
.end method

.method public unregisterForUnknownConnectionGemini(Landroid/os/Handler;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1188
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForUnknownConnection(Landroid/os/Handler;)V

    .line 1189
    return-void
.end method

.method public unregisterForVoiceCallIncomingIndication(Landroid/os/Handler;)V
    .locals 1
    .parameter

    .prologue
    .line 3012
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForVoiceCallIncomingIndication(Landroid/os/Handler;)V

    .line 3013
    return-void
.end method

.method public unregisterForVoiceCallIncomingIndicationGemini(Landroid/os/Handler;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2035
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForVoiceCallIncomingIndication(Landroid/os/Handler;)V

    .line 2036
    return-void
.end method

.method public unregisterForVtReplaceDisconnect(Landroid/os/Handler;)V
    .locals 1
    .parameter

    .prologue
    .line 3003
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForVtReplaceDisconnect(Landroid/os/Handler;)V

    .line 3004
    return-void
.end method

.method public unregisterForVtReplaceDisconnectGemini(Landroid/os/Handler;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2027
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForVtReplaceDisconnect(Landroid/os/Handler;)V

    .line 2028
    return-void
.end method

.method public unregisterForVtRingInfo(Landroid/os/Handler;)V
    .locals 1
    .parameter

    .prologue
    .line 2995
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForVtRingInfo(Landroid/os/Handler;)V

    .line 2996
    return-void
.end method

.method public unregisterForVtRingInfoGemini(Landroid/os/Handler;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2019
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForVtRingInfo(Landroid/os/Handler;)V

    .line 2020
    return-void
.end method

.method public unregisterForVtStatusInfo(Landroid/os/Handler;)V
    .locals 1
    .parameter

    .prologue
    .line 2987
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForVtStatusInfo(Landroid/os/Handler;)V

    .line 2988
    return-void
.end method

.method public unregisterForVtStatusInfoGemini(Landroid/os/Handler;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2011
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForVtStatusInfo(Landroid/os/Handler;)V

    .line 2012
    return-void
.end method

.method public unsetOnEcbModeExitResponse(Landroid/os/Handler;)V
    .locals 1
    .parameter

    .prologue
    .line 2890
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unsetOnEcbModeExitResponse(Landroid/os/Handler;)V

    .line 2891
    return-void
.end method

.method public unsetOnEcbModeExitResponseGemini(Landroid/os/Handler;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1918
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unsetOnEcbModeExitResponse(Landroid/os/Handler;)V

    .line 1919
    return-void
.end method

.method public updateMobileData(I)V
    .locals 2
    .parameter

    .prologue
    .line 3074
    packed-switch p1, :pswitch_data_0

    .line 3082
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    if-ge v1, v0, :cond_0

    .line 3083
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->c:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, v1

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->updateMobileData()V

    .line 3082
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 3079
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->c:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, p1

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->updateMobileData()V

    .line 3087
    :cond_0
    return-void

    .line 3074
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public updateServiceLocation()V
    .locals 1

    .prologue
    .line 2604
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->updateServiceLocation()V

    .line 2605
    return-void
.end method

.method public updateServiceLocationGemini(I)V
    .locals 1
    .parameter

    .prologue
    .line 1619
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->updateServiceLocation()V

    .line 1620
    return-void
.end method

.method public updateSimIndicateState()V
    .locals 1

    .prologue
    .line 1097
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->updateSimIndicateState()V

    .line 1098
    return-void
.end method

.method public updateSimIndicateStateGemini(I)V
    .locals 1
    .parameter

    .prologue
    .line 2090
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->updateSimIndicateState()V

    .line 2091
    return-void
.end method

.method public voiceAccept()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 2403
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->voiceAccept()V

    .line 2404
    return-void
.end method

.method public voiceAcceptGemini(I)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1409
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->voiceAccept()V

    .line 1410
    return-void
.end method

.method public vtDial(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 2395
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->vtDial(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    return-object v0
.end method

.method public vtDial(Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;)Lcom/android/internal/telephony/Connection;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 2399
    iget-object v0, p0, Lcom/android/internal/telephony/gemini/GeminiPhone;->b:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->vtDial(Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    return-object v0
.end method

.method public vtDialGemini(Ljava/lang/String;I)Lcom/android/internal/telephony/Connection;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1401
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->vtDial(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    return-object v0
.end method

.method public vtDialGemini(Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;I)Lcom/android/internal/telephony/Connection;
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1405
    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->getPhonebyId(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->vtDial(Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    return-object v0
.end method
