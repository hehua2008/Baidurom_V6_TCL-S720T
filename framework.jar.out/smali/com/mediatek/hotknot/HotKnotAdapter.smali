.class public final Lcom/mediatek/hotknot/HotKnotAdapter;
.super Ljava/lang/Object;
.source "HotKnotAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/hotknot/HotKnotAdapter$CreateHotKnotBeamUrisCallback;,
        Lcom/mediatek/hotknot/HotKnotAdapter$CreateHotKnotMessageCallback;,
        Lcom/mediatek/hotknot/HotKnotAdapter$OnHotKnotCompleteCallback;
    }
.end annotation


# static fields
.field public static final ACTION_ADAPTER_STATE_CHANGED:Ljava/lang/String; = "com.mediatek.hotknot.action.ADAPTER_STATE_CHANGED"

.field public static final ACTION_HOTKNOT_SETTINGS:Ljava/lang/String; = "mediatek.settings.HOTKNOT_SETTINGS"

.field public static final ACTION_MESSAGE_DISCOVERED:Ljava/lang/String; = "com.mediatek.hotknot.action.MESSAGE_DISCOVERED"

.field public static final ERROR_DATA_TOO_LARGE:I = 0x1

.field public static final ERROR_SUCCESS:I = 0x0

.field public static final EXTRA_ADAPTER_STATE:Ljava/lang/String; = "com.mediatek.hotknot.extra.ADAPTER_STATE"

.field public static final EXTRA_DATA:Ljava/lang/String; = "com.mediatek.hotknot.extra.DATA"

.field public static final FEATURE_NFC:Ljava/lang/String; = "android.hardware.nfc"

.field static final HOTKNOT_SERVICE:Ljava/lang/String; = "hotknot_service"

.field public static final STATE_DISABLED:I = 0x1

.field public static final STATE_ENABLED:I = 0x2

.field static final TAG:Ljava/lang/String; = "HotKnot"

.field private static mHotKnotAdapter:Lcom/mediatek/hotknot/HotKnotAdapter;

.field static mService:Lcom/mediatek/hotknot/IHotKnotAdapter;


# instance fields
.field final mContext:Landroid/content/Context;

.field final mHotKnotActivityManager:Lcom/mediatek/hotknot/HotKnotActivityManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 111
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/hotknot/HotKnotAdapter;->mHotKnotAdapter:Lcom/mediatek/hotknot/HotKnotAdapter;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 203
    iput-object p1, p0, Lcom/mediatek/hotknot/HotKnotAdapter;->mContext:Landroid/content/Context;

    .line 204
    new-instance v0, Lcom/mediatek/hotknot/HotKnotActivityManager;

    invoke-direct {v0, p0}, Lcom/mediatek/hotknot/HotKnotActivityManager;-><init>(Lcom/mediatek/hotknot/HotKnotAdapter;)V

    iput-object v0, p0, Lcom/mediatek/hotknot/HotKnotAdapter;->mHotKnotActivityManager:Lcom/mediatek/hotknot/HotKnotActivityManager;

    .line 205
    return-void
.end method

.method public static getDefaultAdapter(Landroid/content/Context;)Lcom/mediatek/hotknot/HotKnotAdapter;
    .locals 4
    .parameter "context"

    .prologue
    .line 177
    if-nez p0, :cond_0

    .line 178
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "context cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 181
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 182
    if-nez p0, :cond_1

    .line 183
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "context not associated with any application (using a mock context?)"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 188
    :cond_1
    :try_start_0
    const-string v2, "hotknot_service"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 189
    .local v0, b:Landroid/os/IBinder;
    if-nez v0, :cond_2

    .line 190
    const-string v2, "debug"

    const-string v3, "The binder is null"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    const/4 v2, 0x0

    .line 199
    .end local v0           #b:Landroid/os/IBinder;
    :goto_0
    return-object v2

    .line 193
    .restart local v0       #b:Landroid/os/IBinder;
    :cond_2
    invoke-static {v0}, Lcom/mediatek/hotknot/IHotKnotAdapter$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/hotknot/IHotKnotAdapter;

    move-result-object v2

    sput-object v2, Lcom/mediatek/hotknot/HotKnotAdapter;->mService:Lcom/mediatek/hotknot/IHotKnotAdapter;

    .line 194
    new-instance v2, Lcom/mediatek/hotknot/HotKnotAdapter;

    invoke-direct {v2, p0}, Lcom/mediatek/hotknot/HotKnotAdapter;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/mediatek/hotknot/HotKnotAdapter;->mHotKnotAdapter:Lcom/mediatek/hotknot/HotKnotAdapter;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    .end local v0           #b:Landroid/os/IBinder;
    :goto_1
    sget-object v2, Lcom/mediatek/hotknot/HotKnotAdapter;->mHotKnotAdapter:Lcom/mediatek/hotknot/HotKnotAdapter;

    goto :goto_0

    .line 195
    :catch_0
    move-exception v1

    .line 196
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public disable()Z
    .locals 3

    .prologue
    .line 270
    :try_start_0
    sget-object v1, Lcom/mediatek/hotknot/HotKnotAdapter;->mService:Lcom/mediatek/hotknot/IHotKnotAdapter;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/mediatek/hotknot/IHotKnotAdapter;->disable(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 272
    :goto_0
    return v1

    .line 271
    :catch_0
    move-exception v0

    .line 272
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public enable()Z
    .locals 2

    .prologue
    .line 244
    :try_start_0
    sget-object v1, Lcom/mediatek/hotknot/HotKnotAdapter;->mService:Lcom/mediatek/hotknot/IHotKnotAdapter;

    invoke-interface {v1}, Lcom/mediatek/hotknot/IHotKnotAdapter;->enable()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 246
    :goto_0
    return v1

    .line 245
    :catch_0
    move-exception v0

    .line 246
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isEnabled()Z
    .locals 2

    .prologue
    .line 221
    :try_start_0
    sget-object v1, Lcom/mediatek/hotknot/HotKnotAdapter;->mService:Lcom/mediatek/hotknot/IHotKnotAdapter;

    invoke-interface {v1}, Lcom/mediatek/hotknot/IHotKnotAdapter;->isEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 223
    :goto_0
    return v1

    .line 222
    :catch_0
    move-exception v0

    .line 223
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setHotKnotBeamUris([Landroid/net/Uri;Landroid/app/Activity;)V
    .locals 7
    .parameter "uris"
    .parameter "activity"

    .prologue
    .line 540
    if-nez p2, :cond_0

    .line 541
    new-instance v5, Ljava/lang/NullPointerException;

    const-string v6, "activity cannot be null"

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 543
    :cond_0
    if-eqz p1, :cond_4

    .line 544
    move-object v0, p1

    .local v0, arr$:[Landroid/net/Uri;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_4

    aget-object v4, v0, v1

    .line 545
    .local v4, uri:Landroid/net/Uri;
    if-nez v4, :cond_1

    new-instance v5, Ljava/lang/NullPointerException;

    const-string v6, "Uri not allowed to be null"

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 547
    :cond_1
    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    .line 548
    .local v3, scheme:Ljava/lang/String;
    if-eqz v3, :cond_2

    const-string v5, "file"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "content"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 550
    :cond_2
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "URI needs to have either scheme file or scheme content"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 544
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 555
    .end local v0           #arr$:[Landroid/net/Uri;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v3           #scheme:Ljava/lang/String;
    .end local v4           #uri:Landroid/net/Uri;
    :cond_4
    iget-object v5, p0, Lcom/mediatek/hotknot/HotKnotAdapter;->mHotKnotActivityManager:Lcom/mediatek/hotknot/HotKnotActivityManager;

    invoke-virtual {v5, p2, p1}, Lcom/mediatek/hotknot/HotKnotActivityManager;->setHotKnotContent(Landroid/app/Activity;[Landroid/net/Uri;)V

    .line 556
    return-void
.end method

.method public setHotKnotBeamUrisCallback(Lcom/mediatek/hotknot/HotKnotAdapter$CreateHotKnotBeamUrisCallback;Landroid/app/Activity;)V
    .locals 2
    .parameter "callback"
    .parameter "activity"

    .prologue
    .line 612
    if-nez p2, :cond_0

    .line 613
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "activity cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 615
    :cond_0
    iget-object v0, p0, Lcom/mediatek/hotknot/HotKnotAdapter;->mHotKnotActivityManager:Lcom/mediatek/hotknot/HotKnotActivityManager;

    invoke-virtual {v0, p2, p1}, Lcom/mediatek/hotknot/HotKnotActivityManager;->setHotKnotContentCallback(Landroid/app/Activity;Lcom/mediatek/hotknot/HotKnotAdapter$CreateHotKnotBeamUrisCallback;)V

    .line 616
    return-void
.end method

.method public setHotKnotMessage(Lcom/mediatek/hotknot/HotKnotMessage;Landroid/app/Activity;I)V
    .locals 2
    .parameter "message"
    .parameter "activity"
    .parameter "flags"

    .prologue
    .line 348
    if-nez p2, :cond_0

    .line 349
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "activity cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 351
    :cond_0
    iget-object v0, p0, Lcom/mediatek/hotknot/HotKnotAdapter;->mHotKnotActivityManager:Lcom/mediatek/hotknot/HotKnotActivityManager;

    invoke-virtual {v0, p2, p1, p3}, Lcom/mediatek/hotknot/HotKnotActivityManager;->setHotKnotMessage(Landroid/app/Activity;Lcom/mediatek/hotknot/HotKnotMessage;I)V

    .line 352
    return-void
.end method

.method public varargs setHotKnotMessage(Lcom/mediatek/hotknot/HotKnotMessage;Landroid/app/Activity;[Landroid/app/Activity;)V
    .locals 7
    .parameter "message"
    .parameter "activity"
    .parameter "activities"

    .prologue
    .line 328
    if-nez p2, :cond_0

    .line 329
    :try_start_0
    new-instance v5, Ljava/lang/NullPointerException;

    const-string v6, "activity cannot be null"

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 338
    :catch_0
    move-exception v2

    .line 340
    .local v2, e:Ljava/lang/IllegalStateException;
    throw v2

    .line 331
    .end local v2           #e:Ljava/lang/IllegalStateException;
    :cond_0
    :try_start_1
    iget-object v5, p0, Lcom/mediatek/hotknot/HotKnotAdapter;->mHotKnotActivityManager:Lcom/mediatek/hotknot/HotKnotActivityManager;

    const/4 v6, 0x0

    invoke-virtual {v5, p2, p1, v6}, Lcom/mediatek/hotknot/HotKnotActivityManager;->setHotKnotMessage(Landroid/app/Activity;Lcom/mediatek/hotknot/HotKnotMessage;I)V

    .line 332
    move-object v1, p3

    .local v1, arr$:[Landroid/app/Activity;
    array-length v4, v1

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v0, v1, v3

    .line 333
    .local v0, a:Landroid/app/Activity;
    if-nez v0, :cond_1

    .line 334
    new-instance v5, Ljava/lang/NullPointerException;

    const-string v6, "activities cannot contain null"

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 336
    :cond_1
    iget-object v5, p0, Lcom/mediatek/hotknot/HotKnotAdapter;->mHotKnotActivityManager:Lcom/mediatek/hotknot/HotKnotActivityManager;

    const/4 v6, 0x0

    invoke-virtual {v5, v0, p1, v6}, Lcom/mediatek/hotknot/HotKnotActivityManager;->setHotKnotMessage(Landroid/app/Activity;Lcom/mediatek/hotknot/HotKnotMessage;I)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    .line 332
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 342
    .end local v0           #a:Landroid/app/Activity;
    :cond_2
    return-void
.end method

.method public setHotKnotMessageCallback(Lcom/mediatek/hotknot/HotKnotAdapter$CreateHotKnotMessageCallback;Landroid/app/Activity;I)V
    .locals 2
    .parameter "callback"
    .parameter "activity"
    .parameter "flags"

    .prologue
    .line 423
    if-nez p2, :cond_0

    .line 424
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "activity cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 426
    :cond_0
    iget-object v0, p0, Lcom/mediatek/hotknot/HotKnotAdapter;->mHotKnotActivityManager:Lcom/mediatek/hotknot/HotKnotActivityManager;

    invoke-virtual {v0, p2, p1, p3}, Lcom/mediatek/hotknot/HotKnotActivityManager;->setHotKnotMessageCallback(Landroid/app/Activity;Lcom/mediatek/hotknot/HotKnotAdapter$CreateHotKnotMessageCallback;I)V

    .line 427
    return-void
.end method

.method public varargs setHotKnotMessageCallback(Lcom/mediatek/hotknot/HotKnotAdapter$CreateHotKnotMessageCallback;Landroid/app/Activity;[Landroid/app/Activity;)V
    .locals 7
    .parameter "callback"
    .parameter "activity"
    .parameter "activities"

    .prologue
    .line 402
    if-nez p2, :cond_0

    .line 403
    :try_start_0
    new-instance v5, Ljava/lang/NullPointerException;

    const-string v6, "activity cannot be null"

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 412
    :catch_0
    move-exception v2

    .line 414
    .local v2, e:Ljava/lang/IllegalStateException;
    throw v2

    .line 405
    .end local v2           #e:Ljava/lang/IllegalStateException;
    :cond_0
    :try_start_1
    iget-object v5, p0, Lcom/mediatek/hotknot/HotKnotAdapter;->mHotKnotActivityManager:Lcom/mediatek/hotknot/HotKnotActivityManager;

    const/4 v6, 0x0

    invoke-virtual {v5, p2, p1, v6}, Lcom/mediatek/hotknot/HotKnotActivityManager;->setHotKnotMessageCallback(Landroid/app/Activity;Lcom/mediatek/hotknot/HotKnotAdapter$CreateHotKnotMessageCallback;I)V

    .line 406
    move-object v1, p3

    .local v1, arr$:[Landroid/app/Activity;
    array-length v4, v1

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v0, v1, v3

    .line 407
    .local v0, a:Landroid/app/Activity;
    if-nez v0, :cond_1

    .line 408
    new-instance v5, Ljava/lang/NullPointerException;

    const-string v6, "activities cannot contain null"

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 410
    :cond_1
    iget-object v5, p0, Lcom/mediatek/hotknot/HotKnotAdapter;->mHotKnotActivityManager:Lcom/mediatek/hotknot/HotKnotActivityManager;

    const/4 v6, 0x0

    invoke-virtual {v5, v0, p1, v6}, Lcom/mediatek/hotknot/HotKnotActivityManager;->setHotKnotMessageCallback(Landroid/app/Activity;Lcom/mediatek/hotknot/HotKnotAdapter$CreateHotKnotMessageCallback;I)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    .line 406
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 416
    .end local v0           #a:Landroid/app/Activity;
    :cond_2
    return-void
.end method

.method public varargs setOnHotKnotCompleteCallback(Lcom/mediatek/hotknot/HotKnotAdapter$OnHotKnotCompleteCallback;Landroid/app/Activity;[Landroid/app/Activity;)V
    .locals 7
    .parameter "callback"
    .parameter "activity"
    .parameter "activities"

    .prologue
    .line 468
    if-nez p2, :cond_0

    .line 469
    :try_start_0
    new-instance v5, Ljava/lang/NullPointerException;

    const-string v6, "activity cannot be null"

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 478
    :catch_0
    move-exception v2

    .line 480
    .local v2, e:Ljava/lang/IllegalStateException;
    throw v2

    .line 471
    .end local v2           #e:Ljava/lang/IllegalStateException;
    :cond_0
    :try_start_1
    iget-object v5, p0, Lcom/mediatek/hotknot/HotKnotAdapter;->mHotKnotActivityManager:Lcom/mediatek/hotknot/HotKnotActivityManager;

    invoke-virtual {v5, p2, p1}, Lcom/mediatek/hotknot/HotKnotActivityManager;->setOnHotKnotCompleteCallback(Landroid/app/Activity;Lcom/mediatek/hotknot/HotKnotAdapter$OnHotKnotCompleteCallback;)V

    .line 472
    move-object v1, p3

    .local v1, arr$:[Landroid/app/Activity;
    array-length v4, v1

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v0, v1, v3

    .line 473
    .local v0, a:Landroid/app/Activity;
    if-nez v0, :cond_1

    .line 474
    new-instance v5, Ljava/lang/NullPointerException;

    const-string v6, "activities cannot contain null"

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 476
    :cond_1
    iget-object v5, p0, Lcom/mediatek/hotknot/HotKnotAdapter;->mHotKnotActivityManager:Lcom/mediatek/hotknot/HotKnotActivityManager;

    invoke-virtual {v5, v0, p1}, Lcom/mediatek/hotknot/HotKnotActivityManager;->setOnHotKnotCompleteCallback(Landroid/app/Activity;Lcom/mediatek/hotknot/HotKnotAdapter$OnHotKnotCompleteCallback;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    .line 472
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 482
    .end local v0           #a:Landroid/app/Activity;
    :cond_2
    return-void
.end method
