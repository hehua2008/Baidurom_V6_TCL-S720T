.class Lcom/mediatek/mom/p;
.super Lcom/mediatek/mom/MobileManagerControllerBase;
.source "SourceFile"

# interfaces
.implements Lcom/mediatek/mom/IPermissionController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/mom/p$1;,
        Lcom/mediatek/mom/p$a;
    }
.end annotation


# static fields
.field private static b:Z

.field private static i:Lcom/mediatek/mom/MobileManagerControllerBase;


# instance fields
.field a:Landroid/content/IntentFilter;

.field private c:Landroid/app/IActivityManager;

.field private d:Landroid/content/pm/IPackageManager;

.field private e:Landroid/content/Context;

.field private f:Lcom/mediatek/mom/a;

.field private g:Lcom/mediatek/mom/n;

.field private h:I

.field private j:Z

.field private k:Z

.field private l:Lcom/mediatek/mom/f;

.field private m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/mom/r;",
            ">;"
        }
    .end annotation
.end field

.field private n:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/common/mom/PermissionRecord;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x0

    sput-boolean v0, Lcom/mediatek/mom/p;->b:Z

    .line 108
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/mom/p;->i:Lcom/mediatek/mom/MobileManagerControllerBase;

    return-void
.end method

.method private constructor <init>(Lcom/mediatek/mom/f;)V
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 121
    invoke-direct {p0}, Lcom/mediatek/mom/MobileManagerControllerBase;-><init>()V

    .line 102
    iput-object v1, p0, Lcom/mediatek/mom/p;->c:Landroid/app/IActivityManager;

    .line 103
    iput-object v1, p0, Lcom/mediatek/mom/p;->d:Landroid/content/pm/IPackageManager;

    .line 104
    iput-object v1, p0, Lcom/mediatek/mom/p;->e:Landroid/content/Context;

    .line 105
    iput-object v1, p0, Lcom/mediatek/mom/p;->f:Lcom/mediatek/mom/a;

    .line 106
    iput-object v1, p0, Lcom/mediatek/mom/p;->g:Lcom/mediatek/mom/n;

    .line 107
    iput v0, p0, Lcom/mediatek/mom/p;->h:I

    .line 109
    iput-boolean v0, p0, Lcom/mediatek/mom/p;->j:Z

    .line 110
    iput-boolean v0, p0, Lcom/mediatek/mom/p;->k:Z

    .line 111
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/mediatek/mom/p;->a:Landroid/content/IntentFilter;

    .line 112
    iput-object v1, p0, Lcom/mediatek/mom/p;->l:Lcom/mediatek/mom/f;

    .line 115
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/mom/p;->m:Ljava/util/List;

    .line 118
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mediatek/mom/p;->n:Ljava/util/Map;

    .line 122
    invoke-static {}, Lcom/mediatek/mom/a;->a()Lcom/mediatek/mom/a;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/mom/p;->f:Lcom/mediatek/mom/a;

    .line 123
    invoke-static {}, Lcom/mediatek/mom/n;->a()Lcom/mediatek/mom/n;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/mom/p;->g:Lcom/mediatek/mom/n;

    .line 124
    invoke-static {}, Lcom/mediatek/mom/p;->getPackageManagerService()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/mom/p;->d:Landroid/content/pm/IPackageManager;

    .line 125
    invoke-static {}, Lcom/mediatek/mom/p;->getActivityManagerService()Landroid/app/IActivityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/mom/p;->c:Landroid/app/IActivityManager;

    .line 126
    iput-object p1, p0, Lcom/mediatek/mom/p;->l:Lcom/mediatek/mom/f;

    .line 127
    return-void
.end method

.method private a(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;Lcom/mediatek/common/mom/IRequestedPermissionCallback;)I
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x2

    .line 609
    .line 610
    iget-object v0, p0, Lcom/mediatek/mom/p;->f:Lcom/mediatek/mom/a;

    invoke-virtual {v0, p1, p3}, Lcom/mediatek/mom/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/mediatek/common/mom/Permission;

    move-result-object v3

    .line 611
    new-instance v2, Lcom/mediatek/common/mom/PermissionRecord;

    invoke-direct {v2, p1, p3, v1}, Lcom/mediatek/common/mom/PermissionRecord;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 613
    if-eqz v3, :cond_3

    .line 614
    invoke-virtual {v3}, Lcom/mediatek/common/mom/Permission;->getStatus()I

    move-result v0

    .line 616
    iget-object v4, p0, Lcom/mediatek/mom/p;->f:Lcom/mediatek/mom/a;

    invoke-virtual {v3}, Lcom/mediatek/common/mom/Permission;->getFlag()I

    move-result v4

    invoke-static {v4}, Lcom/mediatek/mom/a;->a(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 617
    invoke-virtual {v3, v6}, Lcom/mediatek/common/mom/Permission;->setStatus(I)V

    move v0, v6

    .line 622
    :cond_0
    invoke-virtual {v2, v0}, Lcom/mediatek/common/mom/PermissionRecord;->setStatus(I)V

    .line 624
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkPermission "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Lcom/mediatek/mom/p;->d(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " with packageName: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p2, p3, v4}, Lcom/mediatek/mom/p;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 627
    packed-switch v0, :pswitch_data_0

    .line 657
    const-string v0, "PermissionController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown permission status: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v3}, Lcom/mediatek/common/mom/Permission;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    move v6, v1

    .line 665
    :goto_1
    return v6

    .line 630
    :pswitch_0
    invoke-direct {p0, p5, p3, p2, v1}, Lcom/mediatek/mom/p;->a(Lcom/mediatek/common/mom/IRequestedPermissionCallback;Ljava/lang/String;II)V

    move v6, v1

    .line 631
    goto :goto_1

    .line 634
    :pswitch_1
    invoke-virtual {v3}, Lcom/mediatek/common/mom/Permission;->getFlag()I

    move-result v3

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/mom/p;->a(Ljava/lang/String;Lcom/mediatek/common/mom/PermissionRecord;IILandroid/os/Bundle;)I

    .line 636
    invoke-direct {p0, p5, p3, p2, v6}, Lcom/mediatek/mom/p;->a(Lcom/mediatek/common/mom/IRequestedPermissionCallback;Ljava/lang/String;II)V

    goto :goto_1

    .line 639
    :pswitch_2
    invoke-virtual {v2, v6}, Lcom/mediatek/common/mom/PermissionRecord;->setStatus(I)V

    .line 640
    iget-object v1, p0, Lcom/mediatek/mom/p;->g:Lcom/mediatek/mom/n;

    invoke-virtual {v1, p1, p3}, Lcom/mediatek/mom/n;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 641
    const-string v0, "checkPermission DENIED because checking is still ongoing"

    invoke-static {p2, p3, v0}, Lcom/mediatek/mom/p;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 643
    invoke-direct {p0, p5, p3, p2, v6}, Lcom/mediatek/mom/p;->a(Lcom/mediatek/common/mom/IRequestedPermissionCallback;Ljava/lang/String;II)V

    goto :goto_1

    .line 646
    :cond_1
    iget-object v1, p0, Lcom/mediatek/mom/p;->g:Lcom/mediatek/mom/n;

    invoke-virtual {v1, p1, p3, v0}, Lcom/mediatek/mom/n;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 648
    if-eqz p5, :cond_2

    .line 649
    invoke-virtual {v3}, Lcom/mediatek/common/mom/Permission;->getFlag()I

    move-result v3

    invoke-interface {p5}, Lcom/mediatek/common/mom/IRequestedPermissionCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/mediatek/mom/p;->a(Ljava/lang/String;Lcom/mediatek/common/mom/PermissionRecord;IILandroid/os/Bundle;Landroid/os/IBinder;)V

    .line 650
    const/4 v6, 0x1

    goto :goto_1

    .line 653
    :cond_2
    invoke-virtual {v3}, Lcom/mediatek/common/mom/Permission;->getFlag()I

    move-result v3

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/mom/p;->a(Ljava/lang/String;Lcom/mediatek/common/mom/PermissionRecord;IILandroid/os/Bundle;)I

    move-result v6

    goto :goto_1

    .line 662
    :cond_3
    const-string v0, "checkPermission UNMONITORED"

    invoke-static {p2, p3, v0}, Lcom/mediatek/mom/p;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 663
    invoke-direct {p0, p5, p3, p2, v1}, Lcom/mediatek/mom/p;->a(Lcom/mediatek/common/mom/IRequestedPermissionCallback;Ljava/lang/String;II)V

    goto :goto_0

    .line 627
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private a(Ljava/lang/String;Lcom/mediatek/common/mom/PermissionRecord;IILandroid/os/Bundle;)I
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 684
    .line 686
    invoke-direct/range {p0 .. p5}, Lcom/mediatek/mom/p;->b(Ljava/lang/String;Lcom/mediatek/common/mom/PermissionRecord;IILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 687
    invoke-static {}, Lcom/mediatek/mom/t;->a()Lcom/mediatek/mom/t;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/mediatek/mom/p;->getManagerApListener()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v1, v2, v0, v3}, Lcom/mediatek/mom/t;->a(ILandroid/os/IBinder;Landroid/os/Bundle;I)I

    move-result v0

    .line 690
    return v0
.end method

.method public static final a(Lcom/mediatek/mom/f;)Lcom/mediatek/mom/MobileManagerControllerBase;
    .locals 2
    .parameter

    .prologue
    .line 131
    sget-object v0, Lcom/mediatek/mom/p;->i:Lcom/mediatek/mom/MobileManagerControllerBase;

    if-nez v0, :cond_0

    .line 132
    new-instance v0, Lcom/mediatek/mom/p;

    invoke-direct {v0, p0}, Lcom/mediatek/mom/p;-><init>(Lcom/mediatek/mom/f;)V

    sput-object v0, Lcom/mediatek/mom/p;->i:Lcom/mediatek/mom/MobileManagerControllerBase;

    .line 133
    const-string v0, "PermissionController"

    const-string v1, "Create MobileManagerController: PermissionController"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    :cond_0
    sget-object v0, Lcom/mediatek/mom/p;->i:Lcom/mediatek/mom/MobileManagerControllerBase;

    return-object v0
.end method

.method private a(IZ)Lcom/mediatek/mom/r;
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 370
    const/4 v1, 0x0

    .line 371
    iget-object v2, p0, Lcom/mediatek/mom/p;->m:Ljava/util/List;

    monitor-enter v2

    .line 372
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/mom/p;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 373
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 374
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/mom/r;

    .line 375
    invoke-virtual {v0}, Lcom/mediatek/mom/r;->b()I

    move-result v4

    if-ne v4, p1, :cond_0

    invoke-virtual {v0}, Lcom/mediatek/mom/r;->a()Z

    move-result v4

    if-ne v4, p2, :cond_0

    .line 380
    :goto_0
    monitor-exit v2

    .line 381
    return-object v0

    .line 380
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public static a(IILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 719
    sget-boolean v0, Lcom/mediatek/mom/p;->b:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 720
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 721
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 724
    const-string v1, "PermissionController"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    :cond_0
    return-void
.end method

.method public static a(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 715
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {p0, v0, p1, p2}, Lcom/mediatek/mom/p;->a(IILjava/lang/String;Ljava/lang/String;)V

    .line 716
    return-void
.end method

.method private a(Lcom/mediatek/common/mom/IRequestedPermissionCallback;Ljava/lang/String;II)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 670
    if-eqz p1, :cond_0

    .line 671
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkPermission MoMS >> Caller with result:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, p2, v0}, Lcom/mediatek/mom/p;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 673
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 674
    invoke-interface {p1, p2, p3, p4}, Lcom/mediatek/common/mom/IRequestedPermissionCallback;->onPermissionCheckResult(Ljava/lang/String;II)V

    .line 675
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 679
    :goto_0
    const-string v0, "checkPermission MoMS << Caller"

    invoke-static {p3, p2, v0}, Lcom/mediatek/mom/p;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 681
    :cond_0
    return-void

    .line 676
    :catch_0
    move-exception v0

    .line 677
    const-string v1, "PermissionController"

    const-string v2, "onPermissionCheckResult() failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static synthetic a(Lcom/mediatek/mom/p;)V
    .locals 0
    .parameter

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/mediatek/mom/p;->c()V

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/mediatek/common/mom/PermissionRecord;IILandroid/os/Bundle;Landroid/os/IBinder;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 694
    .line 696
    invoke-direct/range {p0 .. p5}, Lcom/mediatek/mom/p;->b(Ljava/lang/String;Lcom/mediatek/common/mom/PermissionRecord;IILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 697
    invoke-static {}, Lcom/mediatek/mom/t;->a()Lcom/mediatek/mom/t;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/mediatek/mom/p;->getManagerApListener()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v1, v2, v0, v3, p6}, Lcom/mediatek/mom/t;->a(ILandroid/os/IBinder;Landroid/os/Bundle;ILandroid/os/IBinder;)V

    .line 699
    return-void
.end method

.method private b(Ljava/lang/String;ILandroid/os/Bundle;Lcom/mediatek/common/mom/IRequestedPermissionCallback;)I
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 573
    const/4 v0, 0x0

    .line 576
    :try_start_0
    invoke-virtual {p0}, Lcom/mediatek/mom/p;->getManagerApListener()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_0

    .line 577
    const-string v1, "checkPermission GRANTED because listener from MOMA is null"

    invoke-static {p2, p1, v1}, Lcom/mediatek/mom/p;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 578
    invoke-direct {p0, p4, p1, p2, v0}, Lcom/mediatek/mom/p;->a(Lcom/mediatek/common/mom/IRequestedPermissionCallback;Ljava/lang/String;II)V

    .line 605
    :goto_0
    return v6

    .line 582
    :cond_0
    iget-object v1, p0, Lcom/mediatek/mom/p;->d:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, p2}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    .line 583
    if-nez v1, :cond_1

    .line 584
    const-string v1, "checkPermission UNMONITORED"

    invoke-static {p2, p1, v1}, Lcom/mediatek/mom/p;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 585
    invoke-direct {p0, p4, p1, p2, v0}, Lcom/mediatek/mom/p;->a(Lcom/mediatek/common/mom/IRequestedPermissionCallback;Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 601
    :catch_0
    move-exception v0

    .line 602
    const-string v0, "getPackagesForUid() faild!"

    invoke-static {p2, p1, v0}, Lcom/mediatek/mom/p;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 603
    invoke-direct {p0, p4, p1, p2, v6}, Lcom/mediatek/mom/p;->a(Lcom/mediatek/common/mom/IRequestedPermissionCallback;Ljava/lang/String;II)V

    :goto_1
    move v0, v6

    :goto_2
    move v6, v0

    .line 605
    goto :goto_0

    .line 588
    :cond_1
    :try_start_1
    array-length v0, v1

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    .line 589
    const/4 v0, 0x0

    aget-object v1, v1, v0

    move-object v0, p0

    move v2, p2

    move-object v3, p1

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/mom/p;->a(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;Lcom/mediatek/common/mom/IRequestedPermissionCallback;)I

    move-result v0

    goto :goto_2

    .line 592
    :cond_2
    iget-object v0, p0, Lcom/mediatek/mom/p;->f:Lcom/mediatek/mom/a;

    invoke-virtual {v0, p1, v1}, Lcom/mediatek/mom/a;->a(Ljava/lang/String;[Ljava/lang/String;)Lcom/mediatek/common/mom/PermissionRecord;

    move-result-object v0

    .line 593
    if-eqz v0, :cond_3

    .line 594
    iget-object v1, v0, Lcom/mediatek/common/mom/PermissionRecord;->mPackageName:Ljava/lang/String;

    move-object v0, p0

    move v2, p2

    move-object v3, p1

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/mom/p;->a(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;Lcom/mediatek/common/mom/IRequestedPermissionCallback;)I

    move-result v0

    goto :goto_2

    .line 596
    :cond_3
    const-string v0, "checkPermission UNMONITORED"

    invoke-static {p2, p1, v0}, Lcom/mediatek/mom/p;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 597
    const/4 v0, 0x0

    .line 598
    invoke-direct {p0, p4, p1, p2, v0}, Lcom/mediatek/mom/p;->a(Lcom/mediatek/common/mom/IRequestedPermissionCallback;Ljava/lang/String;II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private b(Ljava/lang/String;Lcom/mediatek/common/mom/PermissionRecord;IILandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 702
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 703
    const-string v1, "param_package"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 704
    const-string v1, "param_permission_record"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 705
    const-string v1, "param_flag"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 706
    const-string v1, "param_uid"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 707
    const-string v1, "param_data"

    invoke-virtual {v0, v1, p5}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 708
    return-object v0
.end method

.method private b(IZ)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x1

    .line 412
    iget-object v1, p0, Lcom/mediatek/mom/p;->m:Ljava/util/List;

    monitor-enter v1

    .line 413
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/mom/p;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 414
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 415
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/mom/r;

    .line 416
    invoke-virtual {v0}, Lcom/mediatek/mom/r;->b()I

    move-result v3

    if-eq v3, p1, :cond_0

    invoke-virtual {v0}, Lcom/mediatek/mom/r;->a()Z

    move-result v3

    if-ne v3, v7, :cond_0

    .line 418
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/mediatek/mom/r;->a(Z)V

    .line 420
    if-ne p2, v7, :cond_0

    .line 421
    invoke-virtual {v0}, Lcom/mediatek/mom/r;->d()Lcom/mediatek/common/mom/IMobileConnectionCallback;

    move-result-object v3

    .line 422
    if-nez v3, :cond_1

    .line 423
    const-string v3, "PermissionController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "uid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/mediatek/mom/r;->b()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " should handle connection ended to MoMS"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 436
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 427
    :cond_1
    :try_start_1
    const-string v4, "PermissionController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[MoMS >> MoMA] onConnectionEnded() start with uid: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/mediatek/mom/r;->b()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " identity: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/mediatek/mom/r;->c()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    invoke-interface {v3}, Lcom/mediatek/common/mom/IMobileConnectionCallback;->onConnectionEnded()V

    .line 429
    const-string v3, "PermissionController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[MoMS << MoMA] onConnectionEnded() end with uid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/mediatek/mom/r;->b()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " identity: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/mediatek/mom/r;->c()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 430
    :catch_0
    move-exception v0

    .line 431
    :try_start_2
    const-string v3, "PermissionController"

    const-string v4, "onConnectionEnded() faild"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 436
    :cond_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 437
    return-void
.end method

.method public static c(I)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    .line 749
    .line 750
    packed-switch p0, :pswitch_data_0

    .line 761
    :pswitch_0
    const-string v0, "UNKNOWN"

    .line 762
    const-string v1, "PermissionController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mapResult2String() with unknown result code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    :goto_0
    return-object v0

    .line 752
    :pswitch_1
    const-string v0, "GRANTED"

    goto :goto_0

    .line 755
    :pswitch_2
    const-string v0, "DENIED"

    goto :goto_0

    .line 758
    :pswitch_3
    const-string v0, "USER-DENIED"

    goto :goto_0

    .line 750
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private c()V
    .locals 2

    .prologue
    .line 158
    const-string v0, "com.tencent.tcuser"

    const-string v1, "com.tencent.tcuser.ztool.service.PermissionService"

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/mom/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    const-string v0, "com.mediatek.security"

    const-string v1, "com.mediatek.security.service.PermControlService"

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/mom/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 219
    invoke-direct {p0, p1}, Lcom/mediatek/mom/p;->d(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 220
    if-eqz v0, :cond_1

    .line 221
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v1}, Lcom/mediatek/mom/f;->a(Landroid/content/pm/ApplicationInfo;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 222
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 223
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 224
    iget-object v0, p0, Lcom/mediatek/mom/p;->f:Lcom/mediatek/mom/a;

    invoke-virtual {v0, p1}, Lcom/mediatek/mom/a;->d(Ljava/lang/String;)V

    .line 225
    iget-object v0, p0, Lcom/mediatek/mom/p;->f:Lcom/mediatek/mom/a;

    invoke-virtual {v0, v1}, Lcom/mediatek/mom/a;->b(Ljava/util/List;)V

    .line 232
    :goto_0
    return-void

    .line 227
    :cond_0
    const-string v0, "PermissionController"

    const-string v1, "Ignore system application"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 230
    :cond_1
    const-string v0, "PermissionController"

    const-string v1, "null pkgInfo when package added"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private d(Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .locals 4
    .parameter

    .prologue
    .line 235
    const/4 v0, 0x0

    .line 237
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/mom/p;->c:Landroid/app/IActivityManager;

    invoke-interface {v1}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 238
    iget-object v2, p0, Lcom/mediatek/mom/p;->d:Landroid/content/pm/IPackageManager;

    const/16 v3, 0x1000

    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-interface {v2, p1, v3, v1}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 243
    :goto_0
    return-object v0

    .line 240
    :catch_0
    move-exception v1

    .line 241
    const-string v2, "PermissionController"

    const-string v3, "Get package info failed! "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static d(I)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    .line 769
    .line 770
    packed-switch p0, :pswitch_data_0

    .line 781
    const-string v0, "UNKNOWN"

    .line 782
    const-string v1, "PermissionController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mapResult2String() with unknown status code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    :goto_0
    return-object v0

    .line 772
    :pswitch_0
    const-string v0, "GRANTED"

    goto :goto_0

    .line 775
    :pswitch_1
    const-string v0, "DENIED"

    goto :goto_0

    .line 778
    :pswitch_2
    const-string v0, "CHECKING"

    goto :goto_0

    .line 770
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private e(I)V
    .locals 7
    .parameter

    .prologue
    .line 440
    iget-object v1, p0, Lcom/mediatek/mom/p;->m:Ljava/util/List;

    monitor-enter v1

    .line 441
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/mom/p;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 442
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 443
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/mom/r;

    .line 444
    invoke-virtual {v0}, Lcom/mediatek/mom/r;->b()I

    move-result v3

    if-eq v3, p1, :cond_0

    invoke-virtual {v0}, Lcom/mediatek/mom/r;->a()Z

    move-result v3

    if-nez v3, :cond_0

    .line 446
    invoke-virtual {v0}, Lcom/mediatek/mom/r;->d()Lcom/mediatek/common/mom/IMobileConnectionCallback;

    move-result-object v3

    .line 447
    if-nez v3, :cond_1

    .line 448
    const-string v3, "PermissionController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "uid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/mediatek/mom/r;->b()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " should handle connection resume  MoMS"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 460
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 452
    :cond_1
    :try_start_1
    const-string v4, "PermissionController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[MoMS >> MoMA] onConnectionResume() start with uid: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/mediatek/mom/r;->b()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " identity: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/mediatek/mom/r;->c()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    invoke-interface {v3}, Lcom/mediatek/common/mom/IMobileConnectionCallback;->onConnectionResume()V

    .line 454
    const-string v3, "PermissionController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[MoMS << MoMA] onConnectionResume() end with uid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/mediatek/mom/r;->b()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " identity: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/mediatek/mom/r;->c()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 455
    :catch_0
    move-exception v0

    .line 456
    :try_start_2
    const-string v3, "PermissionController"

    const-string v4, "onConnectionEnded() faild"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 460
    :cond_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 461
    return-void
.end method


# virtual methods
.method public a()I
    .locals 2

    .prologue
    .line 386
    const/4 v0, 0x0

    .line 387
    invoke-virtual {p0}, Lcom/mediatek/mom/p;->b()Lcom/mediatek/mom/r;

    move-result-object v1

    .line 388
    if-eqz v1, :cond_0

    .line 389
    invoke-virtual {v1}, Lcom/mediatek/mom/r;->c()I

    move-result v0

    .line 391
    :cond_0
    return v0
.end method

.method public a(Ljava/lang/String;ILandroid/os/Bundle;)I
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 535
    const/4 v0, 0x0

    .line 537
    const-string v1, "checkPermission START"

    invoke-static {p2, p1, v1}, Lcom/mediatek/mom/p;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 539
    invoke-virtual {p0}, Lcom/mediatek/mom/p;->isControllerEnabled()Z

    move-result v1

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/mediatek/mom/p;->j:Z

    if-ne v1, v2, :cond_0

    .line 541
    const/16 v1, 0x3e8

    if-le p2, v1, :cond_1

    .line 542
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/mediatek/mom/p;->b(Ljava/lang/String;ILandroid/os/Bundle;Lcom/mediatek/common/mom/IRequestedPermissionCallback;)I

    move-result v0

    .line 547
    :cond_0
    :goto_0
    return v0

    .line 544
    :cond_1
    const-string v1, "checkPermision GRANTED with system uid"

    invoke-static {p2, p1, v1}, Lcom/mediatek/mom/p;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(J)J
    .locals 2
    .parameter

    .prologue
    .line 280
    iget-object v0, p0, Lcom/mediatek/mom/p;->g:Lcom/mediatek/mom/n;

    invoke-virtual {v0, p1, p2}, Lcom/mediatek/mom/n;->a(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public a(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/common/mom/Permission;",
            ">;"
        }
    .end annotation

    .prologue
    .line 471
    const/4 v0, 0x0

    .line 472
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 473
    iget-object v0, p0, Lcom/mediatek/mom/p;->f:Lcom/mediatek/mom/a;

    invoke-virtual {v0, p1}, Lcom/mediatek/mom/a;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 477
    :goto_0
    return-object v0

    .line 475
    :cond_0
    const-string v1, "PermissionController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid packageName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public a(I)V
    .locals 5
    .parameter

    .prologue
    .line 343
    iget-object v1, p0, Lcom/mediatek/mom/p;->m:Ljava/util/List;

    monitor-enter v1

    .line 344
    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, p1, v0}, Lcom/mediatek/mom/p;->a(IZ)Lcom/mediatek/mom/r;

    move-result-object v0

    .line 345
    if-eqz v0, :cond_0

    .line 346
    const-string v2, "PermissionController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "detach control token from uid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " with identity: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/mediatek/mom/r;->c()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    iget-object v2, p0, Lcom/mediatek/mom/p;->m:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 350
    invoke-direct {p0, p1}, Lcom/mediatek/mom/p;->e(I)V

    .line 352
    :cond_0
    monitor-exit v1

    .line 353
    return-void

    .line 352
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Lcom/mediatek/common/mom/PermissionRecord;)V
    .locals 4
    .parameter

    .prologue
    .line 481
    if-eqz p1, :cond_4

    .line 482
    iget-object v0, p0, Lcom/mediatek/mom/p;->f:Lcom/mediatek/mom/a;

    iget-object v1, p1, Lcom/mediatek/common/mom/PermissionRecord;->mPackageName:Ljava/lang/String;

    iget-object v2, p1, Lcom/mediatek/common/mom/PermissionRecord;->mPermissionName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/mom/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/mediatek/common/mom/Permission;

    move-result-object v0

    .line 483
    if-eqz v0, :cond_1

    .line 484
    invoke-virtual {v0}, Lcom/mediatek/common/mom/Permission;->getFlag()I

    move-result v1

    and-int/lit8 v1, v1, 0x4

    if-nez v1, :cond_0

    .line 485
    invoke-virtual {p1}, Lcom/mediatek/common/mom/PermissionRecord;->getStatus()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mediatek/common/mom/Permission;->setStatus(I)V

    .line 486
    const-string v0, "PermissionController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set permission record:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/mediatek/common/mom/PermissionRecord;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    :goto_0
    return-void

    .line 488
    :cond_0
    const-string v0, "PermissionController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignore setting user-confirm permission record:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/mediatek/common/mom/PermissionRecord;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 490
    :cond_1
    iget-object v0, p0, Lcom/mediatek/mom/p;->l:Lcom/mediatek/mom/f;

    iget-object v1, p1, Lcom/mediatek/common/mom/PermissionRecord;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mediatek/mom/f;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 492
    const-string v0, "PermissionController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set pending permission record:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/mediatek/common/mom/PermissionRecord;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    iget-object v1, p0, Lcom/mediatek/mom/p;->n:Ljava/util/Map;

    monitor-enter v1

    .line 495
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/mom/p;->n:Ljava/util/Map;

    iget-object v2, p1, Lcom/mediatek/common/mom/PermissionRecord;->mPackageName:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 496
    iget-object v0, p0, Lcom/mediatek/mom/p;->n:Ljava/util/Map;

    iget-object v2, p1, Lcom/mediatek/common/mom/PermissionRecord;->mPackageName:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 497
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 503
    :goto_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 499
    :cond_2
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 500
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 501
    iget-object v2, p0, Lcom/mediatek/mom/p;->n:Ljava/util/Map;

    iget-object v3, p1, Lcom/mediatek/common/mom/PermissionRecord;->mPackageName:Ljava/lang/String;

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 505
    :cond_3
    const-string v0, "PermissionController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown permission setting: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/mediatek/common/mom/PermissionRecord;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 508
    :cond_4
    const-string v0, "PermissionController"

    const-string v1, "setPermissionRecord() with null record!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public a(Ljava/lang/String;ILandroid/os/Bundle;Lcom/mediatek/common/mom/IRequestedPermissionCallback;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 551
    const/4 v0, 0x0

    .line 553
    const-string v1, "checkPermissionAsync START"

    invoke-static {p2, p1, v1}, Lcom/mediatek/mom/p;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 555
    if-nez p4, :cond_0

    .line 556
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Async check with null callback"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 559
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/mom/p;->isControllerEnabled()Z

    move-result v1

    if-ne v1, v2, :cond_2

    iget-boolean v1, p0, Lcom/mediatek/mom/p;->j:Z

    if-ne v1, v2, :cond_2

    .line 561
    const/16 v1, 0x3e8

    if-le p2, v1, :cond_1

    .line 562
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/mediatek/mom/p;->b(Ljava/lang/String;ILandroid/os/Bundle;Lcom/mediatek/common/mom/IRequestedPermissionCallback;)I

    .line 570
    :goto_0
    return-void

    .line 564
    :cond_1
    const-string v1, "checkPermisionAsync GRANTED with system uid"

    invoke-static {p2, p1, v1}, Lcom/mediatek/mom/p;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 565
    invoke-direct {p0, p4, p1, p2, v0}, Lcom/mediatek/mom/p;->a(Lcom/mediatek/common/mom/IRequestedPermissionCallback;Ljava/lang/String;II)V

    goto :goto_0

    .line 568
    :cond_2
    invoke-direct {p0, p4, p1, p2, v0}, Lcom/mediatek/mom/p;->a(Lcom/mediatek/common/mom/IRequestedPermissionCallback;Ljava/lang/String;II)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 163
    iget-object v0, p0, Lcom/mediatek/mom/p;->e:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 164
    invoke-direct {p0, p1}, Lcom/mediatek/mom/p;->d(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 165
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 166
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 167
    const-string v1, "start_service_by_moms"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 168
    iget-object v1, p0, Lcom/mediatek/mom/p;->e:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 169
    const-string v0, "PermissionController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Create initMobileManagerAp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    :goto_0
    return-void

    .line 171
    :cond_0
    const-string v0, "PermissionController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initMobileManagerAp() failed due to null packageInfo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 174
    :cond_1
    const-string v0, "PermissionController"

    const-string v1, "initMobileManagerAp() failed due to null context"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public a(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    new-instance v0, Lcom/mediatek/common/jpe/a;

    invoke-direct {v0}, Lcom/mediatek/common/jpe/a;-><init>()V

    invoke-virtual {v0}, Lcom/mediatek/common/jpe/a;->a()V

    .line 467
    iget-object v0, p0, Lcom/mediatek/mom/p;->f:Lcom/mediatek/mom/a;

    invoke-virtual {v0, p1}, Lcom/mediatek/mom/a;->a(Ljava/util/List;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/mom/p;->j:Z

    .line 468
    return-void
.end method

.method public a(Lcom/mediatek/common/mom/IMobileConnectionCallback;III)Z
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 287
    .line 288
    const/16 v2, 0x64

    if-lt p4, v2, :cond_6

    .line 289
    iget-object v3, p0, Lcom/mediatek/mom/p;->m:Ljava/util/List;

    monitor-enter v3

    .line 290
    const/4 v2, 0x1

    :try_start_0
    invoke-direct {p0, p2, v2}, Lcom/mediatek/mom/p;->a(IZ)Lcom/mediatek/mom/r;

    move-result-object v2

    .line 291
    if-eqz v2, :cond_0

    .line 292
    const-string v0, "PermissionController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Already attached from uid: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    monitor-exit v3

    move v0, v1

    .line 339
    :goto_0
    return v0

    .line 296
    :cond_0
    if-le p4, p3, :cond_2

    .line 297
    const/4 v0, 0x1

    invoke-direct {p0, p2, v0}, Lcom/mediatek/mom/p;->b(IZ)V

    .line 298
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/mediatek/mom/p;->a(IZ)Lcom/mediatek/mom/r;

    move-result-object v0

    .line 299
    if-eqz v0, :cond_1

    .line 300
    const-string v2, "PermissionController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Attach an exist manager control token from uid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " with identity: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    invoke-virtual {v0, p1}, Lcom/mediatek/mom/r;->a(Lcom/mediatek/common/mom/IMobileConnectionCallback;)V

    .line 310
    :goto_1
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/mediatek/mom/r;->a(Z)V

    move v0, v1

    .line 335
    :goto_2
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 305
    :cond_1
    :try_start_1
    const-string v0, "PermissionController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attach a new manager control token from uid: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " with identity: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    new-instance v0, Lcom/mediatek/mom/r;

    invoke-direct {v0, p2, p4, p1}, Lcom/mediatek/mom/r;-><init>(IILcom/mediatek/common/mom/IMobileConnectionCallback;)V

    .line 308
    iget-object v2, p0, Lcom/mediatek/mom/p;->m:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 312
    :cond_2
    if-ne p4, p3, :cond_4

    .line 313
    if-eqz v2, :cond_3

    .line 314
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Lcom/mediatek/mom/r;->a(Z)V

    .line 315
    invoke-virtual {v2, p1}, Lcom/mediatek/mom/r;->a(Lcom/mediatek/common/mom/IMobileConnectionCallback;)V

    move-object v0, v2

    .line 322
    :goto_3
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/mediatek/mom/r;->a(Z)V

    move v0, v1

    .line 323
    goto :goto_2

    .line 317
    :cond_3
    const-string v0, "PermissionController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attach new uid "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " with existing identity: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    new-instance v0, Lcom/mediatek/mom/r;

    invoke-direct {v0, p2, p4, p1}, Lcom/mediatek/mom/r;-><init>(IILcom/mediatek/common/mom/IMobileConnectionCallback;)V

    .line 320
    iget-object v2, p0, Lcom/mediatek/mom/p;->m:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 325
    :cond_4
    const-string v1, "PermissionController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attach failed due to minor identity: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    const/4 v1, 0x0

    invoke-direct {p0, p2, v1}, Lcom/mediatek/mom/p;->a(IZ)Lcom/mediatek/mom/r;

    move-result-object v1

    .line 328
    if-eqz v1, :cond_5

    .line 329
    iget-object v2, p0, Lcom/mediatek/mom/p;->m:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 331
    :cond_5
    new-instance v1, Lcom/mediatek/mom/r;

    invoke-direct {v1, p2, p4, p1}, Lcom/mediatek/mom/r;-><init>(IILcom/mediatek/common/mom/IMobileConnectionCallback;)V

    .line 332
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/mediatek/mom/r;->a(Z)V

    .line 333
    iget-object v2, p0, Lcom/mediatek/mom/p;->m:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_2

    .line 337
    :cond_6
    const-string v1, "PermissionController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attach failed with invalid uid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " identity: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public b()Lcom/mediatek/mom/r;
    .locals 6

    .prologue
    .line 395
    const/4 v1, 0x0

    .line 396
    iget-object v2, p0, Lcom/mediatek/mom/p;->m:Ljava/util/List;

    monitor-enter v2

    .line 397
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/mom/p;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 398
    iget-object v0, p0, Lcom/mediatek/mom/p;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 399
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 400
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/mom/r;

    .line 401
    invoke-virtual {v0}, Lcom/mediatek/mom/r;->a()Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 407
    :goto_0
    monitor-exit v2

    .line 408
    return-object v0

    .line 407
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 525
    iget-object v0, p0, Lcom/mediatek/mom/p;->f:Lcom/mediatek/mom/a;

    invoke-virtual {v0, p1}, Lcom/mediatek/mom/a;->a(Ljava/lang/String;)Lcom/mediatek/common/mom/Permission;

    move-result-object v0

    .line 526
    if-eqz v0, :cond_0

    .line 527
    iget-object v0, v0, Lcom/mediatek/common/mom/Permission;->mPermissionName:Ljava/lang/String;

    .line 529
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Ljava/util/List;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/common/mom/PermissionRecord;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 513
    if-eqz p1, :cond_0

    .line 514
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 515
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 516
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/common/mom/PermissionRecord;

    .line 517
    invoke-virtual {p0, v0}, Lcom/mediatek/mom/p;->a(Lcom/mediatek/common/mom/PermissionRecord;)V

    goto :goto_0

    .line 520
    :cond_0
    const-string v0, "PermissionController"

    const-string v1, "setPermissionCache() with record setting!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    :cond_1
    return-void
.end method

.method public b(I)Z
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 356
    const/4 v1, 0x0

    .line 358
    iget-object v2, p0, Lcom/mediatek/mom/p;->m:Ljava/util/List;

    monitor-enter v2

    .line 359
    const/4 v3, 0x1

    :try_start_0
    invoke-direct {p0, p1, v3}, Lcom/mediatek/mom/p;->a(IZ)Lcom/mediatek/mom/r;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 360
    const-string v1, "PermissionController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkAttachment() pass with uid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    :goto_0
    monitor-exit v2

    .line 366
    return v0

    .line 363
    :cond_0
    const-string v0, "PermissionController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkAttachment() failed with uid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto :goto_0

    .line 365
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public clearCache()Z
    .locals 2

    .prologue
    .line 274
    const-string v0, "PermissionController"

    const-string v1, "clearPermissionCache()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    iget-object v0, p0, Lcom/mediatek/mom/p;->f:Lcom/mediatek/mom/a;

    invoke-virtual {v0}, Lcom/mediatek/mom/a;->b()V

    .line 276
    const/4 v0, 0x1

    return v0
.end method

.method public clearPackageCache(Ljava/lang/String;)Z
    .locals 3
    .parameter

    .prologue
    .line 267
    const-string v0, "PermissionController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clearPermissionCache() packageName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    iget-object v0, p0, Lcom/mediatek/mom/p;->f:Lcom/mediatek/mom/a;

    invoke-virtual {v0, p1}, Lcom/mediatek/mom/a;->c(Ljava/lang/String;)V

    .line 269
    const/4 v0, 0x1

    return v0
.end method

.method public declared-synchronized enableController(Z)V
    .locals 3
    .parameter

    .prologue
    .line 253
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lcom/mediatek/mom/MobileManagerControllerBase;->enableController(Z)V

    .line 254
    const-string v0, "PermissionController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableController() enable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    invoke-virtual {p0}, Lcom/mediatek/mom/p;->getManagerApListener()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 257
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Enable permission controller without register listener!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 253
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 259
    :cond_0
    :try_start_1
    sput-boolean p1, Lcom/mediatek/mom/p;->b:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 260
    monitor-exit p0

    return-void
.end method

.method public onPackageStatusChange(Ljava/lang/String;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 180
    iget-boolean v0, p0, Lcom/mediatek/mom/p;->j:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 181
    const-string v0, "PermissionController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPackageStatusChange() packageName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    packed-switch p2, :pswitch_data_0

    .line 216
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 186
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/mediatek/mom/p;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 189
    :pswitch_2
    iget-object v0, p0, Lcom/mediatek/mom/p;->f:Lcom/mediatek/mom/a;

    invoke-virtual {v0, p1}, Lcom/mediatek/mom/a;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 192
    :pswitch_3
    iget-object v0, p0, Lcom/mediatek/mom/p;->f:Lcom/mediatek/mom/a;

    invoke-virtual {v0, p1}, Lcom/mediatek/mom/a;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 193
    invoke-direct {p0, p1}, Lcom/mediatek/mom/p;->c(Ljava/lang/String;)V

    .line 195
    iget-object v1, p0, Lcom/mediatek/mom/p;->n:Ljava/util/Map;

    monitor-enter v1

    .line 196
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/mom/p;->n:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 197
    const-string v0, "PermissionController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Set pending settings for package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    iget-object v0, p0, Lcom/mediatek/mom/p;->n:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 199
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 200
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 201
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/common/mom/PermissionRecord;

    .line 202
    invoke-virtual {p0, v0}, Lcom/mediatek/mom/p;->a(Lcom/mediatek/common/mom/PermissionRecord;)V

    goto :goto_1

    .line 206
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 204
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/mediatek/mom/p;->n:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    :cond_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 207
    iget-object v0, p0, Lcom/mediatek/mom/p;->l:Lcom/mediatek/mom/f;

    invoke-virtual {v0, p1}, Lcom/mediatek/mom/f;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 183
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method public systemReady(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 149
    iput-object p1, p0, Lcom/mediatek/mom/p;->e:Landroid/content/Context;

    .line 150
    invoke-direct {p0}, Lcom/mediatek/mom/p;->c()V

    .line 151
    iget-object v0, p0, Lcom/mediatek/mom/p;->a:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.ACTION_PREBOOT_IPO"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 152
    new-instance v0, Lcom/mediatek/mom/p$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mediatek/mom/p$a;-><init>(Lcom/mediatek/mom/p;Lcom/mediatek/mom/p$1;)V

    iget-object v1, p0, Lcom/mediatek/mom/p;->a:Landroid/content/IntentFilter;

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 153
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/mom/p;->k:Z

    .line 154
    return-void
.end method
