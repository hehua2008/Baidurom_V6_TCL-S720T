.class public Lcom/android/server/am/AppErrorSendReportDialog;
.super Lcom/android/server/am/AppErrorDialog;
.source "AppErrorSendReportDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/AppErrorSendReportDialog$GlobalScreenshot;
    }
.end annotation


# static fields
.field static final DISMISS_TIMEOUT:J = 0x493e0L

.field static final FORCE_QUIT:I = 0x0

.field static final FORCE_QUIT_AND_REPORT:I = 0x1

.field static final SEND_REPORT_TO_USERCARD:I = 0x2

.field private static final TAG:Ljava/lang/String; = "AppErrorSendReportDialog"


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mLogFilePath:Ljava/lang/String;

.field private final mProc:Lcom/android/server/am/ProcessRecord;

.field private final mResult:Lcom/android/server/am/AppErrorResult;

.field private final mService:Lcom/android/server/am/ActivityManagerService;

.field private mStackTrace:Ljava/lang/String;

.field private mTargetProcess:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/AppErrorResult;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V
    .locals 12
    .parameter "context"
    .parameter "service"
    .parameter "result"
    .parameter "app"
    .parameter "stackTrace"

    .prologue
    .line 114
    invoke-direct/range {p0 .. p4}, Lcom/android/server/am/AppErrorDialog;-><init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/AppErrorResult;Lcom/android/server/am/ProcessRecord;)V

    .line 99
    const-string v8, ""

    iput-object v8, p0, Lcom/android/server/am/AppErrorSendReportDialog;->mStackTrace:Ljava/lang/String;

    .line 100
    const-string v8, ""

    iput-object v8, p0, Lcom/android/server/am/AppErrorSendReportDialog;->mLogFilePath:Ljava/lang/String;

    .line 111
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/server/am/AppErrorSendReportDialog;->mTargetProcess:Z

    .line 390
    new-instance v8, Lcom/android/server/am/AppErrorSendReportDialog$1;

    invoke-direct {v8, p0}, Lcom/android/server/am/AppErrorSendReportDialog$1;-><init>(Lcom/android/server/am/AppErrorSendReportDialog;)V

    iput-object v8, p0, Lcom/android/server/am/AppErrorSendReportDialog;->mHandler:Landroid/os/Handler;

    .line 115
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 117
    .local v7, res:Landroid/content/res/Resources;
    iput-object p1, p0, Lcom/android/server/am/AppErrorSendReportDialog;->mContext:Landroid/content/Context;

    .line 118
    iput-object p2, p0, Lcom/android/server/am/AppErrorSendReportDialog;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 119
    move-object/from16 v0, p4

    iput-object v0, p0, Lcom/android/server/am/AppErrorSendReportDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    .line 120
    iput-object p3, p0, Lcom/android/server/am/AppErrorSendReportDialog;->mResult:Lcom/android/server/am/AppErrorResult;

    .line 121
    move-object/from16 v0, p5

    iput-object v0, p0, Lcom/android/server/am/AppErrorSendReportDialog;->mStackTrace:Ljava/lang/String;

    .line 128
    const/4 v2, 0x0

    .line 130
    .local v2, criticalLow:Z
    :try_start_0
    const-string v8, "devicestoragemonitor"

    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    check-cast v3, Lcom/android/server/DeviceStorageMonitorService;

    .line 132
    .local v3, dsm:Lcom/android/server/DeviceStorageMonitorService;
    invoke-virtual {v3}, Lcom/android/server/DeviceStorageMonitorService;->isMemoryCriticalLow()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 137
    .end local v3           #dsm:Lcom/android/server/DeviceStorageMonitorService;
    :goto_0
    move-object/from16 v0, p4

    iget-object v8, v0, Lcom/android/server/am/ProcessRecord;->pkgList:Ljava/util/HashSet;

    invoke-virtual {v8}, Ljava/util/HashSet;->size()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_4

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    move-object/from16 v0, p4

    iget-object v9, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v8, v9}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v6

    .local v6, name:Ljava/lang/CharSequence;
    if-eqz v6, :cond_4

    .line 139
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/server/am/AppErrorSendReportDialog;->mTargetProcess:Z

    .line 140
    const/4 v8, 0x1

    if-ne v2, v8, :cond_3

    .line 141
    const v8, 0x2050045

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    move-object/from16 v0, p4

    iget-object v11, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    aput-object v11, v9, v10

    invoke-virtual {v7, v8, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 150
    .local v5, message:Ljava/lang/CharSequence;
    :goto_1
    invoke-virtual {p0, v5}, Lcom/android/server/am/AppErrorSendReportDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 174
    :goto_2
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/android/server/am/AppErrorSendReportDialog;->setCancelable(Z)V

    .line 176
    const/4 v8, -0x1

    const v9, 0x10403de

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/am/AppErrorSendReportDialog;->mHandler:Landroid/os/Handler;

    const/4 v11, 0x2

    invoke-virtual {v10, v11}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v10

    invoke-virtual {p0, v8, v9, v10}, Lcom/android/server/am/AppErrorSendReportDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    .line 181
    const/4 v8, -0x3

    const v9, 0x10403dd

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/am/AppErrorSendReportDialog;->mHandler:Landroid/os/Handler;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v10

    invoke-virtual {p0, v8, v9, v10}, Lcom/android/server/am/AppErrorSendReportDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    .line 185
    move-object/from16 v0, p4

    iget-object v8, v0, Lcom/android/server/am/ProcessRecord;->errorReportReceiver:Landroid/content/ComponentName;

    if-eqz v8, :cond_0

    .line 186
    const/4 v8, -0x2

    const v9, 0x10403de

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/am/AppErrorSendReportDialog;->mHandler:Landroid/os/Handler;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v10

    invoke-virtual {p0, v8, v9, v10}, Lcom/android/server/am/AppErrorSendReportDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    .line 191
    :cond_0
    const/4 v4, 0x0

    .line 193
    .local v4, lsh:Lcom/mediatek/common/lowstorage/ILowStorageHandle;
    :try_start_1
    const-class v8, Lcom/mediatek/common/lowstorage/ILowStorageHandle;

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object p0, v9, v10

    invoke-static {v8, v9}, Lcom/mediatek/common/MediatekClassFactory;->createInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Lcom/mediatek/common/lowstorage/ILowStorageHandle;

    move-object v4, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 197
    :goto_3
    if-eqz v4, :cond_8

    .line 198
    invoke-interface {v4}, Lcom/mediatek/common/lowstorage/ILowStorageHandle;->GetCurrentFlag()Z

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_1

    .line 199
    const/4 v8, -0x3

    const v9, 0x2050047

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/am/AppErrorSendReportDialog;->mHandler:Landroid/os/Handler;

    invoke-interface {v4}, Lcom/mediatek/common/lowstorage/ILowStorageHandle;->getLowStorageFlag()I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v10

    invoke-virtual {p0, v8, v9, v10}, Lcom/android/server/am/AppErrorSendReportDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    .line 207
    :cond_1
    :goto_4
    const v8, 0x10403d5

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/server/am/AppErrorSendReportDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 208
    invoke-virtual {p0}, Lcom/android/server/am/AppErrorSendReportDialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    const/high16 v9, 0x4000

    invoke-virtual {v8, v9}, Landroid/view/Window;->addFlags(I)V

    .line 210
    invoke-virtual {p0}, Lcom/android/server/am/AppErrorSendReportDialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 211
    .local v1, attrs:Landroid/view/WindowManager$LayoutParams;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Application Error: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p4

    iget-object v9, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 212
    iget v8, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v8, v8, 0x10

    iput v8, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 213
    invoke-virtual {p0}, Lcom/android/server/am/AppErrorSendReportDialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    invoke-virtual {v8, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 216
    move-object/from16 v0, p4

    iget-boolean v8, v0, Lcom/android/server/am/ProcessRecord;->persistent:Z

    if-eqz v8, :cond_2

    .line 217
    invoke-virtual {p0}, Lcom/android/server/am/AppErrorSendReportDialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    const/16 v9, 0x7da

    invoke-virtual {v8, v9}, Landroid/view/Window;->setType(I)V

    .line 221
    :cond_2
    const/4 v8, 0x1

    if-ne v2, v8, :cond_9

    iget-boolean v8, p0, Lcom/android/server/am/AppErrorSendReportDialog;->mTargetProcess:Z

    if-eqz v8, :cond_9

    .line 222
    const-string v8, "AppErrorSendReportDialog"

    const-string v9, "do not show the error dialog!"

    invoke-static {v8, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    iget-object v8, p0, Lcom/android/server/am/AppErrorSendReportDialog;->mHandler:Landroid/os/Handler;

    iget-object v9, p0, Lcom/android/server/am/AppErrorSendReportDialog;->mHandler:Landroid/os/Handler;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    const-wide/16 v10, 0x0

    invoke-virtual {v8, v9, v10, v11}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 234
    :goto_5
    return-void

    .line 146
    .end local v1           #attrs:Landroid/view/WindowManager$LayoutParams;
    .end local v4           #lsh:Lcom/mediatek/common/lowstorage/ILowStorageHandle;
    .end local v5           #message:Ljava/lang/CharSequence;
    :cond_3
    const v8, 0x10403d6

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    move-object/from16 v0, p4

    iget-object v11, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    aput-object v11, v9, v10

    invoke-virtual {v7, v8, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .restart local v5       #message:Ljava/lang/CharSequence;
    goto/16 :goto_1

    .line 152
    .end local v5           #message:Ljava/lang/CharSequence;
    .end local v6           #name:Ljava/lang/CharSequence;
    :cond_4
    move-object/from16 v0, p4

    iget-object v6, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 154
    .restart local v6       #name:Ljava/lang/CharSequence;
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "com.mediatek.bluetooth"

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_5

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "android.process.acore"

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_6

    .line 156
    :cond_5
    const-string v8, "AppErrorSendReportDialog"

    const-string v9, "got target error process"

    invoke-static {v8, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/server/am/AppErrorSendReportDialog;->mTargetProcess:Z

    .line 162
    :goto_6
    const/4 v8, 0x1

    if-ne v2, v8, :cond_7

    .line 163
    const v8, 0x2050046

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v7, v8, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 171
    .restart local v5       #message:Ljava/lang/CharSequence;
    :goto_7
    invoke-virtual {p0, v5}, Lcom/android/server/am/AppErrorSendReportDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 159
    .end local v5           #message:Ljava/lang/CharSequence;
    :cond_6
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/server/am/AppErrorSendReportDialog;->mTargetProcess:Z

    goto :goto_6

    .line 167
    :cond_7
    const v8, 0x10403d7

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v7, v8, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .restart local v5       #message:Ljava/lang/CharSequence;
    goto :goto_7

    .line 204
    .restart local v4       #lsh:Lcom/mediatek/common/lowstorage/ILowStorageHandle;
    :cond_8
    const-string v8, "AppErrorSendReportDialog"

    const-string v9, "Failed to get ILowStorageHandle instance"

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 228
    .restart local v1       #attrs:Landroid/view/WindowManager$LayoutParams;
    :cond_9
    iget-object v8, p0, Lcom/android/server/am/AppErrorSendReportDialog;->mHandler:Landroid/os/Handler;

    iget-object v9, p0, Lcom/android/server/am/AppErrorSendReportDialog;->mHandler:Landroid/os/Handler;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    const-wide/32 v10, 0x493e0

    invoke-virtual {v8, v9, v10, v11}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_5

    .line 194
    .end local v1           #attrs:Landroid/view/WindowManager$LayoutParams;
    :catch_0
    move-exception v8

    goto/16 :goto_3

    .line 133
    .end local v4           #lsh:Lcom/mediatek/common/lowstorage/ILowStorageHandle;
    .end local v5           #message:Ljava/lang/CharSequence;
    .end local v6           #name:Ljava/lang/CharSequence;
    :catch_1
    move-exception v8

    goto/16 :goto_0
.end method

.method static synthetic access$000(Lcom/android/server/am/AppErrorSendReportDialog;)Lcom/android/server/am/ActivityManagerService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/server/am/AppErrorSendReportDialog;->mService:Lcom/android/server/am/ActivityManagerService;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/am/AppErrorSendReportDialog;)Lcom/android/server/am/ProcessRecord;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/server/am/AppErrorSendReportDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/am/AppErrorSendReportDialog;)Lcom/android/server/am/AppErrorResult;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/server/am/AppErrorSendReportDialog;->mResult:Lcom/android/server/am/AppErrorResult;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/am/AppErrorSendReportDialog;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/server/am/AppErrorSendReportDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/am/AppErrorSendReportDialog;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/server/am/AppErrorSendReportDialog;->mStackTrace:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/am/AppErrorSendReportDialog;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/android/server/am/AppErrorSendReportDialog;->saveLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private saveLog(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .parameter "logcontent"

    .prologue
    const/4 v10, -0x1

    .line 352
    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string v7, "yyyy-MM-dd-HH-mm-ss"

    invoke-direct {v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v7, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-direct {v7, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v6, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 355
    .local v3, log:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    const-string v6, "/data/data"

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 356
    .local v1, f:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    .line 357
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 360
    :cond_0
    new-instance v2, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".log"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v1, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 361
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_1

    .line 363
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 369
    :cond_1
    :goto_0
    const/4 v4, 0x0

    .line 372
    .local v4, out:Ljava/io/FileWriter;
    :try_start_1
    new-instance v5, Ljava/io/FileWriter;

    invoke-direct {v5, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 373
    .end local v4           #out:Ljava/io/FileWriter;
    .local v5, out:Ljava/io/FileWriter;
    :try_start_2
    invoke-virtual {v5, p1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7

    .line 379
    if-eqz v5, :cond_2

    .line 381
    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6

    :cond_2
    :goto_1
    move-object v4, v5

    .line 387
    .end local v5           #out:Ljava/io/FileWriter;
    .restart local v4       #out:Ljava/io/FileWriter;
    :cond_3
    :goto_2
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x1b6

    invoke-static {v6, v7, v10, v10}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 388
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 364
    .end local v4           #out:Ljava/io/FileWriter;
    :catch_0
    move-exception v0

    .line 365
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 374
    .end local v0           #e:Ljava/io/IOException;
    .restart local v4       #out:Ljava/io/FileWriter;
    :catch_1
    move-exception v0

    .line 375
    .local v0, e:Ljava/io/FileNotFoundException;
    :goto_3
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 379
    if-eqz v4, :cond_3

    .line 381
    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_2

    .line 382
    :catch_2
    move-exception v0

    .line 383
    .local v0, e:Ljava/io/IOException;
    :goto_4
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 376
    .end local v0           #e:Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 377
    .restart local v0       #e:Ljava/io/IOException;
    :goto_5
    :try_start_6
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 379
    if-eqz v4, :cond_3

    .line 381
    :try_start_7
    invoke-virtual {v4}, Ljava/io/FileWriter;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_2

    .line 382
    :catch_4
    move-exception v0

    goto :goto_4

    .line 379
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v6

    :goto_6
    if-eqz v4, :cond_4

    .line 381
    :try_start_8
    invoke-virtual {v4}, Ljava/io/FileWriter;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 379
    :cond_4
    :goto_7
    throw v6

    .line 382
    :catch_5
    move-exception v0

    .line 383
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 382
    .end local v0           #e:Ljava/io/IOException;
    .end local v4           #out:Ljava/io/FileWriter;
    .restart local v5       #out:Ljava/io/FileWriter;
    :catch_6
    move-exception v0

    .line 383
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 379
    .end local v0           #e:Ljava/io/IOException;
    :catchall_1
    move-exception v6

    move-object v4, v5

    .end local v5           #out:Ljava/io/FileWriter;
    .restart local v4       #out:Ljava/io/FileWriter;
    goto :goto_6

    .line 376
    .end local v4           #out:Ljava/io/FileWriter;
    .restart local v5       #out:Ljava/io/FileWriter;
    :catch_7
    move-exception v0

    move-object v4, v5

    .end local v5           #out:Ljava/io/FileWriter;
    .restart local v4       #out:Ljava/io/FileWriter;
    goto :goto_5

    .line 374
    .end local v4           #out:Ljava/io/FileWriter;
    .restart local v5       #out:Ljava/io/FileWriter;
    :catch_8
    move-exception v0

    move-object v4, v5

    .end local v5           #out:Ljava/io/FileWriter;
    .restart local v4       #out:Ljava/io/FileWriter;
    goto :goto_3
.end method


# virtual methods
.method public bridge synthetic dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    invoke-super {p0, p1}, Lcom/android/server/am/AppErrorDialog;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic onStart()V
    .locals 0

    .prologue
    .line 93
    invoke-super {p0}, Lcom/android/server/am/AppErrorDialog;->onStart()V

    return-void
.end method
