.class Lcom/mediatek/mom/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/mediatek/mom/a;


# instance fields
.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/common/mom/Permission;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/common/mom/Permission;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/mom/a;->a:Lcom/mediatek/mom/a;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/mom/a;->b:Ljava/util/List;

    .line 76
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mediatek/mom/a;->c:Ljava/util/Map;

    return-void
.end method

.method private static a(Ljava/lang/String;II)Lcom/mediatek/common/mom/Permission;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 656
    or-int/lit8 v0, p2, 0x2

    .line 657
    const/4 v1, 0x0

    invoke-static {p0, v1, p1, v0}, Lcom/mediatek/mom/a;->a(Ljava/lang/String;Ljava/util/List;II)Lcom/mediatek/common/mom/Permission;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/util/List;)Lcom/mediatek/common/mom/Permission;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/common/mom/Permission;",
            ">;)",
            "Lcom/mediatek/common/mom/Permission;"
        }
    .end annotation

    .prologue
    .line 367
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 368
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "permissionName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "permissionList :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 371
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 372
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 373
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/common/mom/Permission;

    .line 375
    iget-object v2, v0, Lcom/mediatek/common/mom/Permission;->mPermissionName:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 384
    :goto_0
    return-object v0

    .line 377
    :cond_3
    iget-object v2, v0, Lcom/mediatek/common/mom/Permission;->mSubPermissions:Ljava/util/List;

    if-eqz v2, :cond_2

    .line 378
    iget-object v0, v0, Lcom/mediatek/common/mom/Permission;->mSubPermissions:Ljava/util/List;

    invoke-static {p0, v0}, Lcom/mediatek/mom/a;->a(Ljava/lang/String;Ljava/util/List;)Lcom/mediatek/common/mom/Permission;

    move-result-object v0

    .line 379
    if-eqz v0, :cond_2

    goto :goto_0

    .line 384
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;Ljava/util/List;II)Lcom/mediatek/common/mom/Permission;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/common/mom/Permission;",
            ">;II)",
            "Lcom/mediatek/common/mom/Permission;"
        }
    .end annotation

    .prologue
    .line 652
    new-instance v0, Lcom/mediatek/common/mom/Permission;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/mediatek/common/mom/Permission;-><init>(Ljava/lang/String;Ljava/util/List;II)V

    return-object v0
.end method

.method public static a()Lcom/mediatek/mom/a;
    .locals 1

    .prologue
    .line 80
    sget-object v0, Lcom/mediatek/mom/a;->a:Lcom/mediatek/mom/a;

    if-nez v0, :cond_0

    .line 81
    new-instance v0, Lcom/mediatek/mom/a;

    invoke-direct {v0}, Lcom/mediatek/mom/a;-><init>()V

    sput-object v0, Lcom/mediatek/mom/a;->a:Lcom/mediatek/mom/a;

    .line 83
    :cond_0
    sget-object v0, Lcom/mediatek/mom/a;->a:Lcom/mediatek/mom/a;

    return-object v0
.end method

.method public static a(I)Z
    .locals 1
    .parameter

    .prologue
    .line 414
    and-int/lit8 v0, p0, 0x4

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;Ljava/util/List;)Lcom/mediatek/common/mom/Permission;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/common/mom/Permission;",
            ">;)",
            "Lcom/mediatek/common/mom/Permission;"
        }
    .end annotation

    .prologue
    .line 391
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 392
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "subPermissionName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "permissionList :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 395
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 396
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 397
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/common/mom/Permission;

    .line 399
    iget-object v2, v0, Lcom/mediatek/common/mom/Permission;->mSubPermissions:Ljava/util/List;

    if-eqz v2, :cond_2

    .line 400
    iget-object v2, v0, Lcom/mediatek/common/mom/Permission;->mSubPermissions:Ljava/util/List;

    invoke-static {p0, v2}, Lcom/mediatek/mom/a;->a(Ljava/lang/String;Ljava/util/List;)Lcom/mediatek/common/mom/Permission;

    move-result-object v2

    .line 401
    if-eqz v2, :cond_2

    .line 407
    :goto_0
    return-object v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 515
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 516
    const-string v1, "sub-permission.SEND_SMS"

    invoke-static {v1, v4, v5}, Lcom/mediatek/mom/a;->a(Ljava/lang/String;II)Lcom/mediatek/common/mom/Permission;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 519
    iget-object v1, p0, Lcom/mediatek/mom/a;->b:Ljava/util/List;

    new-instance v2, Lcom/mediatek/common/mom/Permission;

    const-string v3, "android.permission.SEND_SMS"

    invoke-direct {v2, v3, v0, v4, v6}, Lcom/mediatek/common/mom/Permission;-><init>(Ljava/lang/String;Ljava/util/List;II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 525
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 526
    const-string v1, "sub-permission.SEND_MMS"

    invoke-static {v1, v4, v5}, Lcom/mediatek/mom/a;->a(Ljava/lang/String;II)Lcom/mediatek/common/mom/Permission;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 529
    iget-object v1, p0, Lcom/mediatek/mom/a;->b:Ljava/util/List;

    new-instance v2, Lcom/mediatek/common/mom/Permission;

    const-string v3, "android.permission.INTERNET"

    invoke-direct {v2, v3, v0, v4, v6}, Lcom/mediatek/common/mom/Permission;-><init>(Ljava/lang/String;Ljava/util/List;II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 535
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 536
    const-string v1, "sub-permission.QUERY_SMS"

    invoke-static {v1, v4, v5}, Lcom/mediatek/mom/a;->a(Ljava/lang/String;II)Lcom/mediatek/common/mom/Permission;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 539
    const-string v1, "sub-permission.QUERY_MMS"

    invoke-static {v1, v4, v5}, Lcom/mediatek/mom/a;->a(Ljava/lang/String;II)Lcom/mediatek/common/mom/Permission;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 542
    iget-object v1, p0, Lcom/mediatek/mom/a;->b:Ljava/util/List;

    new-instance v2, Lcom/mediatek/common/mom/Permission;

    const-string v3, "android.permission.READ_SMS"

    invoke-direct {v2, v3, v0, v4, v6}, Lcom/mediatek/common/mom/Permission;-><init>(Ljava/lang/String;Ljava/util/List;II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 548
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 549
    const-string v1, "sub-permission.QUERY_CONTACTS"

    invoke-static {v1, v4, v5}, Lcom/mediatek/mom/a;->a(Ljava/lang/String;II)Lcom/mediatek/common/mom/Permission;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 552
    iget-object v1, p0, Lcom/mediatek/mom/a;->b:Ljava/util/List;

    new-instance v2, Lcom/mediatek/common/mom/Permission;

    const-string v3, "android.permission.READ_CONTACTS"

    invoke-direct {v2, v3, v0, v4, v6}, Lcom/mediatek/common/mom/Permission;-><init>(Ljava/lang/String;Ljava/util/List;II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 558
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 559
    const-string v1, "sub-permission.QUERY_CALL_LOG"

    invoke-static {v1, v4, v5}, Lcom/mediatek/mom/a;->a(Ljava/lang/String;II)Lcom/mediatek/common/mom/Permission;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 562
    iget-object v1, p0, Lcom/mediatek/mom/a;->b:Ljava/util/List;

    new-instance v2, Lcom/mediatek/common/mom/Permission;

    const-string v3, "android.permission.READ_CALL_LOG"

    invoke-direct {v2, v3, v0, v4, v6}, Lcom/mediatek/common/mom/Permission;-><init>(Ljava/lang/String;Ljava/util/List;II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 568
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 569
    const-string v1, "sub-permission.ACCESS_LOCATION"

    invoke-static {v1, v4, v5}, Lcom/mediatek/mom/a;->a(Ljava/lang/String;II)Lcom/mediatek/common/mom/Permission;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 572
    iget-object v1, p0, Lcom/mediatek/mom/a;->b:Ljava/util/List;

    new-instance v2, Lcom/mediatek/common/mom/Permission;

    const-string v3, "android.permission.ACCESS_FINE_LOCATION"

    invoke-direct {v2, v3, v0, v4, v6}, Lcom/mediatek/common/mom/Permission;-><init>(Ljava/lang/String;Ljava/util/List;II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 578
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 579
    const-string v1, "sub-permission.RECORD_MIC"

    invoke-static {v1, v4, v5}, Lcom/mediatek/mom/a;->a(Ljava/lang/String;II)Lcom/mediatek/common/mom/Permission;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 582
    iget-object v1, p0, Lcom/mediatek/mom/a;->b:Ljava/util/List;

    new-instance v2, Lcom/mediatek/common/mom/Permission;

    const-string v3, "android.permission.RECORD_AUDIO"

    invoke-direct {v2, v3, v0, v4, v6}, Lcom/mediatek/common/mom/Permission;-><init>(Ljava/lang/String;Ljava/util/List;II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 588
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 589
    const-string v1, "sub-permission.OPEN_CAMERA"

    invoke-static {v1, v4, v5}, Lcom/mediatek/mom/a;->a(Ljava/lang/String;II)Lcom/mediatek/common/mom/Permission;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 592
    iget-object v1, p0, Lcom/mediatek/mom/a;->b:Ljava/util/List;

    new-instance v2, Lcom/mediatek/common/mom/Permission;

    const-string v3, "android.permission.CAMERA"

    invoke-direct {v2, v3, v0, v4, v6}, Lcom/mediatek/common/mom/Permission;-><init>(Ljava/lang/String;Ljava/util/List;II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 598
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 599
    const-string v1, "sub-permission.MAKE_CALL"

    invoke-static {v1, v4, v5}, Lcom/mediatek/mom/a;->a(Ljava/lang/String;II)Lcom/mediatek/common/mom/Permission;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 602
    iget-object v1, p0, Lcom/mediatek/mom/a;->b:Ljava/util/List;

    new-instance v2, Lcom/mediatek/common/mom/Permission;

    const-string v3, "android.permission.CALL_PHONE"

    invoke-direct {v2, v3, v0, v4, v6}, Lcom/mediatek/common/mom/Permission;-><init>(Ljava/lang/String;Ljava/util/List;II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 608
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 609
    const-string v1, "sub-permission.READ_PHONE_IMEI"

    invoke-static {v1, v4, v5}, Lcom/mediatek/mom/a;->a(Ljava/lang/String;II)Lcom/mediatek/common/mom/Permission;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 612
    iget-object v1, p0, Lcom/mediatek/mom/a;->b:Ljava/util/List;

    new-instance v2, Lcom/mediatek/common/mom/Permission;

    const-string v3, "android.permission.READ_PHONE_STATE"

    invoke-direct {v2, v3, v0, v4, v6}, Lcom/mediatek/common/mom/Permission;-><init>(Ljava/lang/String;Ljava/util/List;II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 618
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 619
    const-string v1, "sub-permission.CHANGE_NETWORK_STATE_ON"

    invoke-static {v1, v4, v5}, Lcom/mediatek/mom/a;->a(Ljava/lang/String;II)Lcom/mediatek/common/mom/Permission;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 622
    iget-object v1, p0, Lcom/mediatek/mom/a;->b:Ljava/util/List;

    new-instance v2, Lcom/mediatek/common/mom/Permission;

    const-string v3, "android.permission.CHANGE_NETWORK_STATE"

    invoke-direct {v2, v3, v0, v4, v6}, Lcom/mediatek/common/mom/Permission;-><init>(Ljava/lang/String;Ljava/util/List;II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 628
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 629
    const-string v1, "sub-permission.CHANGE_WIFI_STATE_ON"

    invoke-static {v1, v4, v5}, Lcom/mediatek/mom/a;->a(Ljava/lang/String;II)Lcom/mediatek/common/mom/Permission;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 632
    iget-object v1, p0, Lcom/mediatek/mom/a;->b:Ljava/util/List;

    new-instance v2, Lcom/mediatek/common/mom/Permission;

    const-string v3, "android.permission.CHANGE_WIFI_STATE"

    invoke-direct {v2, v3, v0, v4, v6}, Lcom/mediatek/common/mom/Permission;-><init>(Ljava/lang/String;Ljava/util/List;II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 638
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 639
    const-string v1, "sub-permission.CHANGE_BT_STATE_ON"

    invoke-static {v1, v4, v5}, Lcom/mediatek/mom/a;->a(Ljava/lang/String;II)Lcom/mediatek/common/mom/Permission;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 642
    iget-object v1, p0, Lcom/mediatek/mom/a;->b:Ljava/util/List;

    new-instance v2, Lcom/mediatek/common/mom/Permission;

    const-string v3, "android.permission.BLUETOOTH_ADMIN"

    invoke-direct {v2, v3, v0, v4, v6}, Lcom/mediatek/common/mom/Permission;-><init>(Ljava/lang/String;Ljava/util/List;II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 647
    return-void
.end method

.method private c(Ljava/util/List;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/common/mom/Permission;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 487
    if-eqz p1, :cond_1

    .line 488
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 489
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 490
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/common/mom/Permission;

    .line 491
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/mediatek/common/mom/Permission;->setStatus(I)V

    .line 492
    iget-object v2, v0, Lcom/mediatek/common/mom/Permission;->mSubPermissions:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 493
    iget-object v0, v0, Lcom/mediatek/common/mom/Permission;->mSubPermissions:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/mediatek/mom/a;->c(Ljava/util/List;)V

    goto :goto_0

    .line 497
    :cond_1
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/mediatek/common/mom/Permission;
    .locals 1
    .parameter

    .prologue
    .line 350
    iget-object v0, p0, Lcom/mediatek/mom/a;->b:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/mediatek/mom/a;->b(Ljava/lang/String;Ljava/util/List;)Lcom/mediatek/common/mom/Permission;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Lcom/mediatek/common/mom/Permission;
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 430
    const/4 v1, 0x0

    .line 431
    iget-object v2, p0, Lcom/mediatek/mom/a;->c:Ljava/util/Map;

    monitor-enter v2

    .line 432
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/mom/a;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 433
    if-eqz v0, :cond_0

    .line 434
    invoke-static {p2, v0}, Lcom/mediatek/mom/a;->a(Ljava/lang/String;Ljava/util/List;)Lcom/mediatek/common/mom/Permission;

    move-result-object v0

    .line 439
    :goto_0
    monitor-exit v2

    .line 440
    return-object v0

    .line 436
    :cond_0
    const-string v0, "PermissionRecordHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not monitored packageName: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " permissionName: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    goto :goto_0

    .line 439
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Ljava/lang/String;[Ljava/lang/String;)Lcom/mediatek/common/mom/PermissionRecord;
    .locals 11
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v9, 0x1

    const/4 v0, 0x0

    .line 309
    .line 313
    const-string v1, "PermissionRecordHelper"

    const-string v2, "getStrictPermissionForUid()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    array-length v5, p2

    move v4, v0

    move v2, v0

    move-object v0, v3

    :goto_0
    if-ge v4, v5, :cond_2

    aget-object v1, p2, v4

    .line 316
    invoke-virtual {p0, v1, p1}, Lcom/mediatek/mom/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/mediatek/common/mom/Permission;

    move-result-object v6

    .line 317
    if-eqz v6, :cond_0

    .line 318
    packed-switch v2, :pswitch_data_0

    :cond_0
    :pswitch_0
    move v1, v2

    .line 315
    :goto_1
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move v2, v1

    goto :goto_0

    .line 320
    :pswitch_1
    invoke-virtual {v6}, Lcom/mediatek/common/mom/Permission;->getStatus()I

    move-result v7

    if-eq v7, v9, :cond_1

    invoke-virtual {v6}, Lcom/mediatek/common/mom/Permission;->getStatus()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_0

    .line 322
    :cond_1
    invoke-virtual {v6}, Lcom/mediatek/common/mom/Permission;->getStatus()I

    move-result v0

    .line 324
    const-string v2, "PermissionRecordHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getStrictPermissionForUid() found package: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v10, v1

    move v1, v0

    move-object v0, v10

    goto :goto_1

    .line 328
    :pswitch_2
    invoke-virtual {v6}, Lcom/mediatek/common/mom/Permission;->getStatus()I

    move-result v7

    if-ne v7, v9, :cond_0

    .line 329
    invoke-virtual {v6}, Lcom/mediatek/common/mom/Permission;->getStatus()I

    move-result v0

    .line 331
    const-string v2, "PermissionRecordHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getStrictPermissionForUid() found package: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v10, v1

    move v1, v0

    move-object v0, v10

    goto :goto_1

    .line 339
    :cond_2
    if-eqz v0, :cond_3

    .line 340
    new-instance v1, Lcom/mediatek/common/mom/PermissionRecord;

    invoke-direct {v1, v0, p1, v2}, Lcom/mediatek/common/mom/PermissionRecord;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    move-object v0, v1

    .line 342
    :goto_2
    return-object v0

    :cond_3
    move-object v0, v3

    goto :goto_2

    .line 318
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public a(Ljava/util/List;)Z
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 93
    iget-object v0, p0, Lcom/mediatek/mom/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 94
    invoke-direct {p0}, Lcom/mediatek/mom/a;->c()V

    .line 96
    :cond_0
    invoke-virtual {p0, p1}, Lcom/mediatek/mom/a;->b(Ljava/util/List;)V

    .line 97
    const-string v0, "PermissionRecordHelper"

    const-string v1, "initPkgPermissionCache() Done"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    const/4 v0, 0x1

    return v0
.end method

.method public b(Ljava/lang/String;)Ljava/util/List;
    .locals 2
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
    .line 357
    iget-object v1, p0, Lcom/mediatek/mom/a;->c:Ljava/util/Map;

    monitor-enter v1

    .line 358
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/mom/a;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    monitor-exit v1

    return-object v0

    .line 359
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b()V
    .locals 4

    .prologue
    .line 469
    iget-object v1, p0, Lcom/mediatek/mom/a;->c:Ljava/util/Map;

    monitor-enter v1

    .line 470
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/mom/a;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 471
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 472
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 473
    iget-object v3, p0, Lcom/mediatek/mom/a;->c:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 474
    invoke-direct {p0, v0}, Lcom/mediatek/mom/a;->c(Ljava/util/List;)V

    goto :goto_0

    .line 476
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 477
    return-void
.end method

.method public b(Ljava/util/List;)V
    .locals 14
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
    .line 103
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 105
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 106
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    .line 108
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 110
    if-nez v0, :cond_0

    .line 111
    const-string v0, "PermissionRecordHelper"

    const-string v1, "Null package info"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 114
    :cond_0
    iget-object v6, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 115
    const-string v1, "PermissionRecordHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PackageName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iget-object v7, p0, Lcom/mediatek/mom/a;->c:Ljava/util/Map;

    monitor-enter v7

    .line 118
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/mom/a;->c:Ljava/util/Map;

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 119
    const-string v1, "PermissionRecordHelper"

    const-string v2, "Clear exist package data"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/mediatek/mom/a;->d(Ljava/lang/String;)V

    .line 123
    :cond_1
    if-nez v6, :cond_2

    .line 124
    const-string v0, "PermissionRecordHelper"

    const-string v1, " -No requested permissions"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    monitor-exit v7

    goto :goto_0

    .line 161
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 128
    :cond_2
    const/4 v1, 0x0

    move v3, v1

    :goto_1
    :try_start_1
    array-length v1, v6

    if-ge v3, v1, :cond_6

    .line 129
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    aget v1, v1, v3

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_3

    .line 130
    const-string v1, "PermissionRecordHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " -"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v8, v6, v3

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    :goto_2
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_1

    .line 133
    :cond_3
    const-string v1, "PermissionRecordHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " +"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v8, v6, v3

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    const/4 v1, 0x0

    .line 137
    aget-object v2, v6, v3

    iget-object v8, p0, Lcom/mediatek/mom/a;->b:Ljava/util/List;

    invoke-static {v2, v8}, Lcom/mediatek/mom/a;->a(Ljava/lang/String;Ljava/util/List;)Lcom/mediatek/common/mom/Permission;

    move-result-object v8

    .line 139
    if-eqz v8, :cond_5

    .line 141
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 142
    iget-object v1, v8, Lcom/mediatek/common/mom/Permission;->mSubPermissions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 145
    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 146
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/common/mom/Permission;

    .line 147
    new-instance v9, Lcom/mediatek/common/mom/Permission;

    iget-object v10, v1, Lcom/mediatek/common/mom/Permission;->mPermissionName:Ljava/lang/String;

    const/4 v11, 0x0

    invoke-virtual {v1}, Lcom/mediatek/common/mom/Permission;->getStatus()I

    move-result v12

    invoke-virtual {v1}, Lcom/mediatek/common/mom/Permission;->getFlag()I

    move-result v13

    invoke-direct {v9, v10, v11, v12, v13}, Lcom/mediatek/common/mom/Permission;-><init>(Ljava/lang/String;Ljava/util/List;II)V

    .line 148
    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    const-string v9, "PermissionRecordHelper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "     +"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v1, v1, Lcom/mediatek/common/mom/Permission;->mPermissionName:Ljava/lang/String;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_4
    move-object v1, v2

    .line 154
    :cond_5
    new-instance v2, Lcom/mediatek/common/mom/Permission;

    aget-object v8, v6, v3

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-direct {v2, v8, v1, v9, v10}, Lcom/mediatek/common/mom/Permission;-><init>(Ljava/lang/String;Ljava/util/List;II)V

    .line 158
    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 160
    :cond_6
    iget-object v1, p0, Lcom/mediatek/mom/a;->c:Ljava/util/Map;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v1, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 163
    :cond_7
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 480
    iget-object v1, p0, Lcom/mediatek/mom/a;->c:Ljava/util/Map;

    monitor-enter v1

    .line 481
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/mom/a;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 482
    invoke-direct {p0, v0}, Lcom/mediatek/mom/a;->c(Ljava/util/List;)V

    .line 483
    monitor-exit v1

    .line 484
    return-void

    .line 483
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 500
    iget-object v1, p0, Lcom/mediatek/mom/a;->c:Ljava/util/Map;

    monitor-enter v1

    .line 501
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/mom/a;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 502
    monitor-exit v1

    .line 503
    return-void

    .line 502
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
