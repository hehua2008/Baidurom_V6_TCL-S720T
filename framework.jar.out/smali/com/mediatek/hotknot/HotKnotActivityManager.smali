.class public final Lcom/mediatek/hotknot/HotKnotActivityManager;
.super Lcom/mediatek/hotknot/IHotKnotCallback$Stub;
.source "HotKnotActivityManager.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;,
        Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotApplicationState;
    }
.end annotation


# static fields
.field static final DBG:Ljava/lang/Boolean; = null

.field static final TAG:Ljava/lang/String; = "HotKnot"


# instance fields
.field final mActivities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;",
            ">;"
        }
    .end annotation
.end field

.field final mAdapter:Lcom/mediatek/hotknot/HotKnotAdapter;

.field final mApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotApplicationState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/mediatek/hotknot/HotKnotActivityManager;->DBG:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>(Lcom/mediatek/hotknot/HotKnotAdapter;)V
    .locals 2
    .parameter "adapter"

    .prologue
    .line 187
    invoke-direct {p0}, Lcom/mediatek/hotknot/IHotKnotCallback$Stub;-><init>()V

    .line 188
    iput-object p1, p0, Lcom/mediatek/hotknot/HotKnotActivityManager;->mAdapter:Lcom/mediatek/hotknot/HotKnotAdapter;

    .line 189
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/hotknot/HotKnotActivityManager;->mActivities:Ljava/util/List;

    .line 190
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/mediatek/hotknot/HotKnotActivityManager;->mApps:Ljava/util/List;

    .line 191
    return-void
.end method


# virtual methods
.method public createMessage()Lcom/mediatek/hotknot/HotKnotMessage;
    .locals 4

    .prologue
    .line 294
    monitor-enter p0

    .line 295
    :try_start_0
    invoke-virtual {p0}, Lcom/mediatek/hotknot/HotKnotActivityManager;->findResumedActivityState()Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;

    move-result-object v2

    .line 296
    .local v2, state:Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;
    if-nez v2, :cond_1

    const/4 v1, 0x0

    monitor-exit p0

    .line 306
    :cond_0
    :goto_0
    return-object v1

    .line 298
    :cond_1
    iget-object v0, v2, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;->hotKnotMessageCallback:Lcom/mediatek/hotknot/HotKnotAdapter$CreateHotKnotMessageCallback;

    .line 299
    .local v0, hotKnotCallback:Lcom/mediatek/hotknot/HotKnotAdapter$CreateHotKnotMessageCallback;
    iget-object v1, v2, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;->hotKnotMessage:Lcom/mediatek/hotknot/HotKnotMessage;

    .line 300
    .local v1, message:Lcom/mediatek/hotknot/HotKnotMessage;
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 302
    if-eqz v0, :cond_0

    .line 303
    invoke-interface {v0}, Lcom/mediatek/hotknot/HotKnotAdapter$CreateHotKnotMessageCallback;->createHotKnotMessage()Lcom/mediatek/hotknot/HotKnotMessage;

    move-result-object v1

    goto :goto_0

    .line 300
    .end local v0           #hotKnotCallback:Lcom/mediatek/hotknot/HotKnotAdapter$CreateHotKnotMessageCallback;
    .end local v1           #message:Lcom/mediatek/hotknot/HotKnotMessage;
    .end local v2           #state:Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method declared-synchronized destroyActivityState(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 180
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/mediatek/hotknot/HotKnotActivityManager;->findActivityState(Landroid/app/Activity;)Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;

    move-result-object v0

    .line 181
    .local v0, activityState:Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;
    if-eqz v0, :cond_0

    .line 182
    invoke-virtual {v0}, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;->destroy()V

    .line 183
    iget-object v1, p0, Lcom/mediatek/hotknot/HotKnotActivityManager;->mActivities:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 185
    :cond_0
    monitor-exit p0

    return-void

    .line 180
    .end local v0           #activityState:Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized findActivityState(Landroid/app/Activity;)Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;
    .locals 3
    .parameter "activity"

    .prologue
    .line 143
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/mediatek/hotknot/HotKnotActivityManager;->mActivities:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;

    .line 144
    .local v1, state:Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;
    iget-object v2, v1, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;->activity:Landroid/app/Activity;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v2, p1, :cond_0

    .line 148
    .end local v1           #state:Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;
    :goto_0
    monitor-exit p0

    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 143
    .end local v0           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method declared-synchronized findActivityStateByClientId(I)Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;
    .locals 3
    .parameter "clientId"

    .prologue
    .line 171
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/mediatek/hotknot/HotKnotActivityManager;->mActivities:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;

    .line 172
    .local v1, state:Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;
    iget v2, v1, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;->clientId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v2, p1, :cond_0

    .line 176
    .end local v1           #state:Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;
    :goto_0
    monitor-exit p0

    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 171
    .end local v0           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method findAppState(Landroid/app/Application;)Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotApplicationState;
    .locals 3
    .parameter "app"

    .prologue
    .line 60
    iget-object v2, p0, Lcom/mediatek/hotknot/HotKnotActivityManager;->mApps:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotApplicationState;

    .line 61
    .local v0, appState:Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotApplicationState;
    iget-object v2, v0, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotApplicationState;->app:Landroid/app/Application;

    if-ne v2, p1, :cond_0

    .line 65
    .end local v0           #appState:Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotApplicationState;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method declared-synchronized findResumedActivityState()Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;
    .locals 3

    .prologue
    .line 162
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/mediatek/hotknot/HotKnotActivityManager;->mActivities:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;

    .line 163
    .local v1, state:Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;
    iget-boolean v2, v1, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;->resumed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 167
    .end local v1           #state:Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;
    :goto_0
    monitor-exit p0

    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 162
    .end local v0           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method declared-synchronized getActivityState(Landroid/app/Activity;)Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;
    .locals 2
    .parameter "activity"

    .prologue
    .line 153
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/mediatek/hotknot/HotKnotActivityManager;->findActivityState(Landroid/app/Activity;)Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;

    move-result-object v0

    .line 154
    .local v0, state:Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;
    if-nez v0, :cond_0

    .line 155
    new-instance v0, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;

    .end local v0           #state:Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;
    invoke-direct {v0, p0, p1}, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;-><init>(Lcom/mediatek/hotknot/HotKnotActivityManager;Landroid/app/Activity;)V

    .line 156
    .restart local v0       #state:Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;
    iget-object v1, p0, Lcom/mediatek/hotknot/HotKnotActivityManager;->mActivities:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    :cond_0
    monitor-exit p0

    return-object v0

    .line 153
    .end local v0           #state:Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getClientId()I
    .locals 3

    .prologue
    .line 375
    const/4 v0, -0x1

    .line 376
    .local v0, clientId:I
    monitor-enter p0

    .line 377
    :try_start_0
    invoke-virtual {p0}, Lcom/mediatek/hotknot/HotKnotActivityManager;->findResumedActivityState()Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;

    move-result-object v1

    .line 378
    .local v1, state:Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;
    if-eqz v1, :cond_0

    .line 379
    iget v0, v1, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;->clientId:I

    .line 381
    :cond_0
    monitor-exit p0

    .line 382
    return v0

    .line 381
    .end local v1           #state:Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getUris()[Landroid/net/Uri;
    .locals 12

    .prologue
    const/4 v8, 0x0

    .line 333
    monitor-enter p0

    .line 334
    :try_start_0
    invoke-virtual {p0}, Lcom/mediatek/hotknot/HotKnotActivityManager;->findResumedActivityState()Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;

    move-result-object v5

    .line 335
    .local v5, state:Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;
    if-nez v5, :cond_1

    monitor-exit p0

    move-object v7, v8

    .line 368
    :cond_0
    :goto_0
    return-object v7

    .line 336
    :cond_1
    iget-object v7, v5, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;->uris:[Landroid/net/Uri;

    .line 337
    .local v7, uris:[Landroid/net/Uri;
    iget-object v1, v5, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;->uriCallback:Lcom/mediatek/hotknot/HotKnotAdapter$CreateHotKnotBeamUrisCallback;

    .line 338
    .local v1, callback:Lcom/mediatek/hotknot/HotKnotAdapter$CreateHotKnotBeamUrisCallback;
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 341
    if-eqz v7, :cond_2

    .line 342
    move-object v0, v7

    .local v0, arr$:[Landroid/net/Uri;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v3, :cond_2

    aget-object v6, v0, v2

    .line 343
    .local v6, uri:Landroid/net/Uri;
    const-string v9, "HotKnot"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  uri.toString: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 338
    .end local v0           #arr$:[Landroid/net/Uri;
    .end local v1           #callback:Lcom/mediatek/hotknot/HotKnotAdapter$CreateHotKnotBeamUrisCallback;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v5           #state:Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;
    .end local v6           #uri:Landroid/net/Uri;
    .end local v7           #uris:[Landroid/net/Uri;
    :catchall_0
    move-exception v8

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v8

    .line 346
    .restart local v1       #callback:Lcom/mediatek/hotknot/HotKnotAdapter$CreateHotKnotBeamUrisCallback;
    .restart local v5       #state:Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;
    .restart local v7       #uris:[Landroid/net/Uri;
    :cond_2
    const-string v9, "HotKnot"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "state.uriCallback:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    if-eqz v1, :cond_0

    .line 349
    invoke-interface {v1}, Lcom/mediatek/hotknot/HotKnotAdapter$CreateHotKnotBeamUrisCallback;->createHotKnotBeamUris()[Landroid/net/Uri;

    move-result-object v7

    .line 350
    if-eqz v7, :cond_0

    .line 351
    move-object v0, v7

    .restart local v0       #arr$:[Landroid/net/Uri;
    array-length v3, v0

    .restart local v3       #len$:I
    const/4 v2, 0x0

    .restart local v2       #i$:I
    :goto_2
    if-ge v2, v3, :cond_0

    aget-object v6, v0, v2

    .line 352
    .restart local v6       #uri:Landroid/net/Uri;
    if-nez v6, :cond_3

    .line 353
    const-string v9, "HotKnot"

    const-string v10, "Uri not allowed to be null."

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v7, v8

    .line 354
    goto :goto_0

    .line 356
    :cond_3
    invoke-virtual {v6}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    .line 357
    .local v4, scheme:Ljava/lang/String;
    if-eqz v4, :cond_4

    const-string v9, "file"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_5

    const-string v9, "content"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 359
    :cond_4
    const-string v9, "HotKnot"

    const-string v10, "Uri needs to have either scheme file or scheme content"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v7, v8

    .line 361
    goto/16 :goto_0

    .line 351
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method isHotKnotRequired(Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;)Z
    .locals 1
    .parameter "state"

    .prologue
    .line 285
    iget-object v0, p1, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;->hotKnotMessage:Lcom/mediatek/hotknot/HotKnotMessage;

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;->hotKnotMessageCallback:Lcom/mediatek/hotknot/HotKnotAdapter$CreateHotKnotMessageCallback;

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;->uriCallback:Lcom/mediatek/hotknot/HotKnotAdapter$CreateHotKnotBeamUrisCallback;

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;->uris:[Landroid/net/Uri;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .parameter "activity"
    .parameter "savedInstanceState"

    .prologue
    .line 390
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 4
    .parameter "activity"

    .prologue
    .line 443
    monitor-enter p0

    .line 444
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/mediatek/hotknot/HotKnotActivityManager;->findActivityState(Landroid/app/Activity;)Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;

    move-result-object v0

    .line 445
    .local v0, state:Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;
    sget-object v1, Lcom/mediatek/hotknot/HotKnotActivityManager;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "HotKnot"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onDestroy() for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    :cond_0
    if-eqz v0, :cond_1

    .line 448
    invoke-virtual {p0, p1}, Lcom/mediatek/hotknot/HotKnotActivityManager;->destroyActivityState(Landroid/app/Activity;)V

    .line 450
    :cond_1
    monitor-exit p0

    .line 451
    return-void

    .line 450
    .end local v0           #state:Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 5
    .parameter "activity"

    .prologue
    .line 418
    monitor-enter p0

    .line 419
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/mediatek/hotknot/HotKnotActivityManager;->findActivityState(Landroid/app/Activity;)Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;

    move-result-object v0

    .line 420
    .local v0, state:Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;
    sget-object v2, Lcom/mediatek/hotknot/HotKnotActivityManager;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "HotKnot"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onPause() for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    :cond_0
    if-nez v0, :cond_1

    monitor-exit p0

    .line 426
    :goto_0
    return-void

    .line 422
    :cond_1
    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;->resumed:Z

    .line 423
    iget-object v1, v0, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;->token:Landroid/os/Binder;

    .line 424
    .local v1, token:Landroid/os/Binder;
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/mediatek/hotknot/HotKnotActivityManager;->requestHotKnotServiceCallback(Z)V

    .line 425
    monitor-exit p0

    goto :goto_0

    .end local v0           #state:Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;
    .end local v1           #token:Landroid/os/Binder;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 6
    .parameter "activity"

    .prologue
    .line 403
    monitor-enter p0

    .line 404
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/mediatek/hotknot/HotKnotActivityManager;->findActivityState(Landroid/app/Activity;)Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;

    move-result-object v1

    .line 405
    .local v1, state:Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;
    sget-object v3, Lcom/mediatek/hotknot/HotKnotActivityManager;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "HotKnot"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onResume() for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    :cond_0
    if-nez v1, :cond_1

    monitor-exit p0

    .line 412
    :goto_0
    return-void

    .line 407
    :cond_1
    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;->resumed:Z

    .line 408
    iget-object v2, v1, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;->token:Landroid/os/Binder;

    .line 409
    .local v2, token:Landroid/os/Binder;
    invoke-virtual {p0, v1}, Lcom/mediatek/hotknot/HotKnotActivityManager;->isHotKnotRequired(Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;)Z

    move-result v0

    .line 410
    .local v0, isRequest:Z
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 411
    invoke-virtual {p0, v0}, Lcom/mediatek/hotknot/HotKnotActivityManager;->requestHotKnotServiceCallback(Z)V

    goto :goto_0

    .line 410
    .end local v0           #isRequest:Z
    .end local v1           #state:Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;
    .end local v2           #token:Landroid/os/Binder;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .parameter "activity"
    .parameter "outState"

    .prologue
    .line 438
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 396
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 432
    return-void
.end method

.method public onHotKnotComplete(II)V
    .locals 5
    .parameter "clientId"
    .parameter "reason"

    .prologue
    .line 314
    monitor-enter p0

    .line 315
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/mediatek/hotknot/HotKnotActivityManager;->findActivityStateByClientId(I)Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;

    move-result-object v1

    .line 316
    .local v1, state:Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;
    if-nez v1, :cond_1

    monitor-exit p0

    .line 326
    :cond_0
    :goto_0
    return-void

    .line 318
    :cond_1
    iget-object v0, v1, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;->onHotKnotCompleteCallback:Lcom/mediatek/hotknot/HotKnotAdapter$OnHotKnotCompleteCallback;

    .line 319
    .local v0, callback:Lcom/mediatek/hotknot/HotKnotAdapter$OnHotKnotCompleteCallback;
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 321
    const-string v2, "HotKnot"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onHotKnotComplete:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    if-eqz v0, :cond_0

    .line 324
    invoke-interface {v0, p2}, Lcom/mediatek/hotknot/HotKnotAdapter$OnHotKnotCompleteCallback;->onHotKnotComplete(I)V

    goto :goto_0

    .line 319
    .end local v0           #callback:Lcom/mediatek/hotknot/HotKnotAdapter$OnHotKnotCompleteCallback;
    .end local v1           #state:Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method registerApplication(Landroid/app/Application;)V
    .locals 2
    .parameter "app"

    .prologue
    .line 69
    invoke-virtual {p0, p1}, Lcom/mediatek/hotknot/HotKnotActivityManager;->findAppState(Landroid/app/Application;)Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotApplicationState;

    move-result-object v0

    .line 70
    .local v0, appState:Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotApplicationState;
    if-nez v0, :cond_0

    .line 71
    new-instance v0, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotApplicationState;

    .end local v0           #appState:Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotApplicationState;
    invoke-direct {v0, p0, p1}, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotApplicationState;-><init>(Lcom/mediatek/hotknot/HotKnotActivityManager;Landroid/app/Application;)V

    .line 72
    .restart local v0       #appState:Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotApplicationState;
    iget-object v1, p0, Lcom/mediatek/hotknot/HotKnotActivityManager;->mApps:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    :cond_0
    invoke-virtual {v0}, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotApplicationState;->register()V

    .line 75
    return-void
.end method

.method requestHotKnotServiceCallback(Z)V
    .locals 1
    .parameter "request"

    .prologue
    .line 278
    :try_start_0
    sget-object v0, Lcom/mediatek/hotknot/HotKnotAdapter;->mService:Lcom/mediatek/hotknot/IHotKnotAdapter;

    if-eqz p1, :cond_0

    .end local p0
    :goto_0
    invoke-interface {v0, p0}, Lcom/mediatek/hotknot/IHotKnotAdapter;->setHotKnotCallback(Lcom/mediatek/hotknot/IHotKnotCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 282
    :goto_1
    return-void

    .line 278
    .restart local p0
    :cond_0
    const/4 p0, 0x0

    goto :goto_0

    .line 279
    .end local p0
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public setHotKnotContent(Landroid/app/Activity;[Landroid/net/Uri;)V
    .locals 6
    .parameter "activity"
    .parameter "uris"

    .prologue
    .line 245
    monitor-enter p0

    .line 246
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/mediatek/hotknot/HotKnotActivityManager;->getActivityState(Landroid/app/Activity;)Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;

    move-result-object v2

    .line 247
    .local v2, state:Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;
    iput-object p2, v2, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;->uris:[Landroid/net/Uri;

    .line 248
    iget-boolean v1, v2, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;->resumed:Z

    .line 249
    .local v1, isResumed:Z
    invoke-virtual {p0, v2}, Lcom/mediatek/hotknot/HotKnotActivityManager;->isHotKnotRequired(Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;)Z

    move-result v0

    .line 250
    .local v0, isRequest:Z
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 251
    const-string v4, "HotKnot"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setHotKnotContent:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz p2, :cond_1

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    if-eqz v1, :cond_0

    .line 253
    invoke-virtual {p0, v0}, Lcom/mediatek/hotknot/HotKnotActivityManager;->requestHotKnotServiceCallback(Z)V

    .line 255
    :cond_0
    return-void

    .line 250
    .end local v0           #isRequest:Z
    .end local v1           #isResumed:Z
    .end local v2           #state:Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 251
    .restart local v0       #isRequest:Z
    .restart local v1       #isResumed:Z
    .restart local v2       #state:Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public setHotKnotContentCallback(Landroid/app/Activity;Lcom/mediatek/hotknot/HotKnotAdapter$CreateHotKnotBeamUrisCallback;)V
    .locals 6
    .parameter "activity"
    .parameter "callback"

    .prologue
    .line 260
    monitor-enter p0

    .line 261
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/mediatek/hotknot/HotKnotActivityManager;->getActivityState(Landroid/app/Activity;)Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;

    move-result-object v2

    .line 262
    .local v2, state:Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;
    iput-object p2, v2, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;->uriCallback:Lcom/mediatek/hotknot/HotKnotAdapter$CreateHotKnotBeamUrisCallback;

    .line 263
    iget-boolean v1, v2, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;->resumed:Z

    .line 264
    .local v1, isResumed:Z
    invoke-virtual {p0, v2}, Lcom/mediatek/hotknot/HotKnotActivityManager;->isHotKnotRequired(Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;)Z

    move-result v0

    .line 265
    .local v0, isRequest:Z
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 266
    const-string v4, "HotKnot"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setHotKnotContentCallback:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz p2, :cond_1

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    if-eqz v1, :cond_0

    .line 268
    invoke-virtual {p0, v0}, Lcom/mediatek/hotknot/HotKnotActivityManager;->requestHotKnotServiceCallback(Z)V

    .line 270
    :cond_0
    return-void

    .line 265
    .end local v0           #isRequest:Z
    .end local v1           #isResumed:Z
    .end local v2           #state:Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 266
    .restart local v0       #isRequest:Z
    .restart local v1       #isResumed:Z
    .restart local v2       #state:Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public setHotKnotMessage(Landroid/app/Activity;Lcom/mediatek/hotknot/HotKnotMessage;I)V
    .locals 6
    .parameter "activity"
    .parameter "message"
    .parameter "flags"

    .prologue
    .line 195
    monitor-enter p0

    .line 196
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/mediatek/hotknot/HotKnotActivityManager;->getActivityState(Landroid/app/Activity;)Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;

    move-result-object v2

    .line 197
    .local v2, state:Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;
    iput-object p2, v2, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;->hotKnotMessage:Lcom/mediatek/hotknot/HotKnotMessage;

    .line 198
    iput p3, v2, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;->flags:I

    .line 199
    iget-boolean v1, v2, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;->resumed:Z

    .line 200
    .local v1, isResumed:Z
    invoke-virtual {p0, v2}, Lcom/mediatek/hotknot/HotKnotActivityManager;->isHotKnotRequired(Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;)Z

    move-result v0

    .line 201
    .local v0, isRequest:Z
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 203
    const-string v4, "HotKnot"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setHotKnotMessage:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz p2, :cond_1

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    if-eqz v1, :cond_0

    .line 206
    invoke-virtual {p0, v0}, Lcom/mediatek/hotknot/HotKnotActivityManager;->requestHotKnotServiceCallback(Z)V

    .line 208
    :cond_0
    return-void

    .line 201
    .end local v0           #isRequest:Z
    .end local v1           #isResumed:Z
    .end local v2           #state:Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 203
    .restart local v0       #isRequest:Z
    .restart local v1       #isResumed:Z
    .restart local v2       #state:Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public setHotKnotMessageCallback(Landroid/app/Activity;Lcom/mediatek/hotknot/HotKnotAdapter$CreateHotKnotMessageCallback;I)V
    .locals 6
    .parameter "activity"
    .parameter "callback"
    .parameter "flags"

    .prologue
    .line 213
    monitor-enter p0

    .line 214
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/mediatek/hotknot/HotKnotActivityManager;->getActivityState(Landroid/app/Activity;)Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;

    move-result-object v2

    .line 215
    .local v2, state:Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;
    iput-object p2, v2, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;->hotKnotMessageCallback:Lcom/mediatek/hotknot/HotKnotAdapter$CreateHotKnotMessageCallback;

    .line 216
    iput p3, v2, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;->flags:I

    .line 217
    iget-boolean v1, v2, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;->resumed:Z

    .line 218
    .local v1, isResumed:Z
    invoke-virtual {p0, v2}, Lcom/mediatek/hotknot/HotKnotActivityManager;->isHotKnotRequired(Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;)Z

    move-result v0

    .line 219
    .local v0, isRequest:Z
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 220
    const-string v4, "HotKnot"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setHotKnotMessageCallback:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz p2, :cond_1

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    if-eqz v1, :cond_0

    .line 222
    invoke-virtual {p0, v0}, Lcom/mediatek/hotknot/HotKnotActivityManager;->requestHotKnotServiceCallback(Z)V

    .line 224
    :cond_0
    return-void

    .line 219
    .end local v0           #isRequest:Z
    .end local v1           #isResumed:Z
    .end local v2           #state:Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 220
    .restart local v0       #isRequest:Z
    .restart local v1       #isResumed:Z
    .restart local v2       #state:Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public setOnHotKnotCompleteCallback(Landroid/app/Activity;Lcom/mediatek/hotknot/HotKnotAdapter$OnHotKnotCompleteCallback;)V
    .locals 6
    .parameter "activity"
    .parameter "callback"

    .prologue
    .line 229
    monitor-enter p0

    .line 230
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/mediatek/hotknot/HotKnotActivityManager;->getActivityState(Landroid/app/Activity;)Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;

    move-result-object v2

    .line 231
    .local v2, state:Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;
    iput-object p2, v2, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;->onHotKnotCompleteCallback:Lcom/mediatek/hotknot/HotKnotAdapter$OnHotKnotCompleteCallback;

    .line 232
    iget-boolean v1, v2, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;->resumed:Z

    .line 233
    .local v1, isResumed:Z
    invoke-virtual {p0, v2}, Lcom/mediatek/hotknot/HotKnotActivityManager;->isHotKnotRequired(Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;)Z

    move-result v0

    .line 234
    .local v0, isRequest:Z
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 235
    const-string v4, "HotKnot"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setOnHotKnotCompleteCallback:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz p2, :cond_1

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    if-eqz v1, :cond_0

    .line 238
    invoke-virtual {p0, v0}, Lcom/mediatek/hotknot/HotKnotActivityManager;->requestHotKnotServiceCallback(Z)V

    .line 241
    :cond_0
    return-void

    .line 234
    .end local v0           #isRequest:Z
    .end local v1           #isResumed:Z
    .end local v2           #state:Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 235
    .restart local v0       #isRequest:Z
    .restart local v1       #isResumed:Z
    .restart local v2       #state:Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotActivityState;
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method unregisterApplication(Landroid/app/Application;)V
    .locals 4
    .parameter "app"

    .prologue
    .line 78
    invoke-virtual {p0, p1}, Lcom/mediatek/hotknot/HotKnotActivityManager;->findAppState(Landroid/app/Application;)Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotApplicationState;

    move-result-object v0

    .line 79
    .local v0, appState:Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotApplicationState;
    if-nez v0, :cond_0

    .line 80
    const-string v1, "HotKnot"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "app was not registered "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :goto_0
    return-void

    .line 83
    :cond_0
    invoke-virtual {v0}, Lcom/mediatek/hotknot/HotKnotActivityManager$HotKnotApplicationState;->unregister()V

    goto :goto_0
.end method
