.class Lcom/android/server/am/AppNotRespondingSendReportDialog;
.super Lcom/android/server/am/BaseErrorDialog;
.source "AppNotRespondingSendReportDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/AppNotRespondingSendReportDialog$GlobalScreenshot;
    }
.end annotation


# static fields
.field static final FORCE_CLOSE:I = 0x1

.field static final SEND_REPORT_TO_USERCARD:I = 0x4

.field private static final TAG:Ljava/lang/String; = "AppNotRespondingDialog"

.field static final WAIT:I = 0x2

.field static final WAIT_AND_REPORT:I = 0x3


# instance fields
.field private anrInfo:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mLogTime:Ljava/lang/String;

.field private final mProc:Lcom/android/server/am/ProcessRecord;

.field private final mService:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;Z)V
    .locals 9
    .parameter "service"
    .parameter "context"
    .parameter "app"
    .parameter "activity"
    .parameter "logtime"
    .parameter "aboveSystem"

    .prologue
    .line 131
    invoke-direct {p0, p2}, Lcom/android/server/am/BaseErrorDialog;-><init>(Landroid/content/Context;)V

    .line 124
    const-string v5, ""

    iput-object v5, p0, Lcom/android/server/am/AppNotRespondingSendReportDialog;->anrInfo:Ljava/lang/String;

    .line 127
    const-string v5, ""

    iput-object v5, p0, Lcom/android/server/am/AppNotRespondingSendReportDialog;->mLogTime:Ljava/lang/String;

    .line 393
    new-instance v5, Lcom/android/server/am/AppNotRespondingSendReportDialog$2;

    invoke-direct {v5, p0}, Lcom/android/server/am/AppNotRespondingSendReportDialog$2;-><init>(Lcom/android/server/am/AppNotRespondingSendReportDialog;)V

    iput-object v5, p0, Lcom/android/server/am/AppNotRespondingSendReportDialog;->mHandler:Landroid/os/Handler;

    .line 132
    iput-object p2, p0, Lcom/android/server/am/AppNotRespondingSendReportDialog;->mContext:Landroid/content/Context;

    .line 146
    iput-object p1, p0, Lcom/android/server/am/AppNotRespondingSendReportDialog;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 147
    iput-object p3, p0, Lcom/android/server/am/AppNotRespondingSendReportDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    .line 151
    iput-object p5, p0, Lcom/android/server/am/AppNotRespondingSendReportDialog;->mLogTime:Ljava/lang/String;

    .line 154
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 156
    .local v3, res:Landroid/content/res/Resources;
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/android/server/am/AppNotRespondingSendReportDialog;->setCancelable(Z)V

    .line 159
    if-eqz p4, :cond_2

    iget-object v5, p4, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 162
    .local v1, name1:Ljava/lang/CharSequence;
    :goto_0
    const/4 v2, 0x0

    .line 163
    .local v2, name2:Ljava/lang/CharSequence;
    iget-object v5, p3, Lcom/android/server/am/ProcessRecord;->pkgList:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_4

    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    iget-object v6, p3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 165
    if-eqz v1, :cond_3

    .line 166
    const v4, 0x10403d9

    .line 182
    .local v4, resid:I
    :goto_1
    if-eqz v2, :cond_6

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    :goto_2
    invoke-virtual {p0, v5}, Lcom/android/server/am/AppNotRespondingSendReportDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 186
    const/4 v5, -0x1

    const v6, 0x10403dd

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/am/AppNotRespondingSendReportDialog;->mHandler:Landroid/os/Handler;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {p0, v5, v6, v7}, Lcom/android/server/am/AppNotRespondingSendReportDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    .line 189
    const/4 v5, -0x3

    const v6, 0x10403de

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/am/AppNotRespondingSendReportDialog;->mHandler:Landroid/os/Handler;

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {p0, v5, v6, v7}, Lcom/android/server/am/AppNotRespondingSendReportDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    .line 193
    const/4 v5, -0x2

    const v6, 0x10403df

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/am/AppNotRespondingSendReportDialog;->mHandler:Landroid/os/Handler;

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {p0, v5, v6, v7}, Lcom/android/server/am/AppNotRespondingSendReportDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    .line 198
    iget-object v5, p3, Lcom/android/server/am/ProcessRecord;->errorReportReceiver:Landroid/content/ComponentName;

    if-eqz v5, :cond_0

    .line 199
    const/4 v5, -0x3

    const v6, 0x10403de

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/am/AppNotRespondingSendReportDialog;->mHandler:Landroid/os/Handler;

    const/4 v8, 0x3

    invoke-virtual {v7, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {p0, v5, v6, v7}, Lcom/android/server/am/AppNotRespondingSendReportDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    .line 204
    :cond_0
    const v5, 0x10403d8

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/server/am/AppNotRespondingSendReportDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 206
    if-eqz p6, :cond_1

    .line 207
    invoke-virtual {p0}, Lcom/android/server/am/AppNotRespondingSendReportDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/16 v6, 0x7da

    invoke-virtual {v5, v6}, Landroid/view/Window;->setType(I)V

    .line 210
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/am/AppNotRespondingSendReportDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/high16 v6, 0x4000

    invoke-virtual {v5, v6}, Landroid/view/Window;->addFlags(I)V

    .line 212
    invoke-virtual {p0}, Lcom/android/server/am/AppNotRespondingSendReportDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 213
    .local v0, attrs:Landroid/view/WindowManager$LayoutParams;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Application Not Responding: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 214
    const/16 v5, 0x10

    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 215
    invoke-virtual {p0}, Lcom/android/server/am/AppNotRespondingSendReportDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 218
    return-void

    .line 159
    .end local v0           #attrs:Landroid/view/WindowManager$LayoutParams;
    .end local v1           #name1:Ljava/lang/CharSequence;
    .end local v2           #name2:Ljava/lang/CharSequence;
    .end local v4           #resid:I
    :cond_2
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 168
    .restart local v1       #name1:Ljava/lang/CharSequence;
    .restart local v2       #name2:Ljava/lang/CharSequence;
    :cond_3
    move-object v1, v2

    .line 169
    iget-object v2, p3, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 170
    const v4, 0x10403db

    .restart local v4       #resid:I
    goto/16 :goto_1

    .line 173
    .end local v4           #resid:I
    :cond_4
    if-eqz v1, :cond_5

    .line 174
    iget-object v2, p3, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 175
    const v4, 0x10403da

    .restart local v4       #resid:I
    goto/16 :goto_1

    .line 177
    .end local v4           #resid:I
    :cond_5
    iget-object v1, p3, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 178
    const v4, 0x10403dc

    .restart local v4       #resid:I
    goto/16 :goto_1

    .line 182
    :cond_6
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_2
.end method

.method static synthetic access$000(Lcom/android/server/am/AppNotRespondingSendReportDialog;)Lcom/android/server/am/ProcessRecord;
    .locals 1
    .parameter "x0"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/server/am/AppNotRespondingSendReportDialog;->mProc:Lcom/android/server/am/ProcessRecord;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/am/AppNotRespondingSendReportDialog;)Lcom/android/server/am/ActivityManagerService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/server/am/AppNotRespondingSendReportDialog;->mService:Lcom/android/server/am/ActivityManagerService;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/am/AppNotRespondingSendReportDialog;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/server/am/AppNotRespondingSendReportDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/am/AppNotRespondingSendReportDialog;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/server/am/AppNotRespondingSendReportDialog;->mLogTime:Ljava/lang/String;

    return-object v0
.end method

.method private saveLog(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .parameter "logcontent"

    .prologue
    const/4 v10, -0x1

    .line 356
    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string v7, "yyyy-MM-dd-HH-mm-ss"

    invoke-direct {v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v7, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-direct {v7, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v6, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 358
    .local v3, log:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    const-string v6, "/data/data"

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 359
    .local v1, f:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    .line 360
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 362
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

    .line 363
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_1

    .line 365
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 371
    :cond_1
    :goto_0
    const/4 v4, 0x0

    .line 374
    .local v4, out:Ljava/io/FileWriter;
    :try_start_1
    new-instance v5, Ljava/io/FileWriter;

    invoke-direct {v5, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 375
    .end local v4           #out:Ljava/io/FileWriter;
    .local v5, out:Ljava/io/FileWriter;
    :try_start_2
    invoke-virtual {v5, p1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7

    .line 381
    if-eqz v5, :cond_4

    .line 383
    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    move-object v4, v5

    .line 389
    .end local v5           #out:Ljava/io/FileWriter;
    .restart local v4       #out:Ljava/io/FileWriter;
    :cond_2
    :goto_1
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x1b6

    invoke-static {v6, v7, v10, v10}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 390
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 366
    .end local v4           #out:Ljava/io/FileWriter;
    :catch_0
    move-exception v0

    .line 367
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 384
    .end local v0           #e:Ljava/io/IOException;
    .restart local v5       #out:Ljava/io/FileWriter;
    :catch_1
    move-exception v0

    .line 385
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v4, v5

    .line 386
    .end local v5           #out:Ljava/io/FileWriter;
    .restart local v4       #out:Ljava/io/FileWriter;
    goto :goto_1

    .line 376
    .end local v0           #e:Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 377
    .local v0, e:Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 381
    if-eqz v4, :cond_2

    .line 383
    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_1

    .line 384
    :catch_3
    move-exception v0

    .line 385
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 378
    .end local v0           #e:Ljava/io/IOException;
    :catch_4
    move-exception v0

    .line 379
    .restart local v0       #e:Ljava/io/IOException;
    :goto_3
    :try_start_6
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 381
    if-eqz v4, :cond_2

    .line 383
    :try_start_7
    invoke-virtual {v4}, Ljava/io/FileWriter;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_1

    .line 384
    :catch_5
    move-exception v0

    .line 385
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 381
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v6

    :goto_4
    if-eqz v4, :cond_3

    .line 383
    :try_start_8
    invoke-virtual {v4}, Ljava/io/FileWriter;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 386
    :cond_3
    :goto_5
    throw v6

    .line 384
    :catch_6
    move-exception v0

    .line 385
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 381
    .end local v0           #e:Ljava/io/IOException;
    .end local v4           #out:Ljava/io/FileWriter;
    .restart local v5       #out:Ljava/io/FileWriter;
    :catchall_1
    move-exception v6

    move-object v4, v5

    .end local v5           #out:Ljava/io/FileWriter;
    .restart local v4       #out:Ljava/io/FileWriter;
    goto :goto_4

    .line 378
    .end local v4           #out:Ljava/io/FileWriter;
    .restart local v5       #out:Ljava/io/FileWriter;
    :catch_7
    move-exception v0

    move-object v4, v5

    .end local v5           #out:Ljava/io/FileWriter;
    .restart local v4       #out:Ljava/io/FileWriter;
    goto :goto_3

    .line 376
    .end local v4           #out:Ljava/io/FileWriter;
    .restart local v5       #out:Ljava/io/FileWriter;
    :catch_8
    move-exception v0

    move-object v4, v5

    .end local v5           #out:Ljava/io/FileWriter;
    .restart local v4       #out:Ljava/io/FileWriter;
    goto :goto_2

    .end local v4           #out:Ljava/io/FileWriter;
    .restart local v5       #out:Ljava/io/FileWriter;
    :cond_4
    move-object v4, v5

    .end local v5           #out:Ljava/io/FileWriter;
    .restart local v4       #out:Ljava/io/FileWriter;
    goto :goto_1
.end method

.method private takeScreenshot()V
    .locals 5

    .prologue
    .line 226
    new-instance v0, Landroid/content/ComponentName;

    const-string v3, "com.android.systemui"

    const-string v4, "com.android.systemui.screenshot.TakeScreenshotService"

    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    .local v0, cn:Landroid/content/ComponentName;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 229
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 230
    new-instance v1, Lcom/android/server/am/AppNotRespondingSendReportDialog$1;

    invoke-direct {v1, p0}, Lcom/android/server/am/AppNotRespondingSendReportDialog$1;-><init>(Lcom/android/server/am/AppNotRespondingSendReportDialog;)V

    .line 239
    .local v1, conn:Landroid/content/ServiceConnection;
    iget-object v3, p0, Lcom/android/server/am/AppNotRespondingSendReportDialog;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    invoke-virtual {v3, v2, v1, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 240
    return-void
.end method


# virtual methods
.method public onStop()V
    .locals 0

    .prologue
    .line 221
    return-void
.end method
