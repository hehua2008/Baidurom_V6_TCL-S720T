.class Landroid/app/DownloadManager$CursorTranslator;
.super Landroid/database/CursorWrapper;
.source "DownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/DownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CursorTranslator"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mBaseUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1326
    const-class v0, Landroid/app/DownloadManager;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Landroid/app/DownloadManager$CursorTranslator;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/database/Cursor;Landroid/net/Uri;)V
    .locals 0
    .parameter "cursor"
    .parameter "baseUri"

    .prologue
    .line 1330
    invoke-direct {p0, p1}, Landroid/database/CursorWrapper;-><init>(Landroid/database/Cursor;)V

    .line 1331
    iput-object p2, p0, Landroid/app/DownloadManager$CursorTranslator;->mBaseUri:Landroid/net/Uri;

    .line 1332
    return-void
.end method

.method private getErrorCode(I)J
    .locals 2
    .parameter "status"

    .prologue
    .line 1407
    const/16 v0, 0x190

    if-gt v0, p1, :cond_0

    const/16 v0, 0x1e8

    if-lt p1, v0, :cond_1

    :cond_0
    const/16 v0, 0x1f4

    if-gt v0, p1, :cond_2

    const/16 v0, 0x258

    if-ge p1, v0, :cond_2

    .line 1410
    :cond_1
    int-to-long v0, p1

    .line 1443
    :goto_0
    return-wide v0

    .line 1413
    :cond_2
    sparse-switch p1, :sswitch_data_0

    .line 1443
    const-wide/16 v0, 0x3e8

    goto :goto_0

    .line 1415
    :sswitch_0
    const-wide/16 v0, 0x3e9

    goto :goto_0

    .line 1419
    :sswitch_1
    const-wide/16 v0, 0x3ea

    goto :goto_0

    .line 1422
    :sswitch_2
    const-wide/16 v0, 0x3ec

    goto :goto_0

    .line 1425
    :sswitch_3
    const-wide/16 v0, 0x3ed

    goto :goto_0

    .line 1428
    :sswitch_4
    const-wide/16 v0, 0x3ee

    goto :goto_0

    .line 1431
    :sswitch_5
    const-wide/16 v0, 0x3ef

    goto :goto_0

    .line 1434
    :sswitch_6
    const-wide/16 v0, 0x3f0

    goto :goto_0

    .line 1437
    :sswitch_7
    const-wide/16 v0, 0x3f1

    goto :goto_0

    .line 1440
    :sswitch_8
    const-wide/16 v0, 0x3f2

    goto :goto_0

    .line 1413
    nop

    :sswitch_data_0
    .sparse-switch
        0xc6 -> :sswitch_4
        0xc7 -> :sswitch_5
        0x1e8 -> :sswitch_7
        0x1e9 -> :sswitch_6
        0x1ec -> :sswitch_0
        0x1ed -> :sswitch_1
        0x1ee -> :sswitch_1
        0x1ef -> :sswitch_2
        0x1f1 -> :sswitch_3
        0x1f2 -> :sswitch_8
    .end sparse-switch
.end method

.method private getLocalUri()Ljava/lang/String;
    .locals 7

    .prologue
    .line 1357
    const-string v5, "destination"

    invoke-virtual {p0, v5}, Landroid/database/CursorWrapper;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p0, v5}, Landroid/app/DownloadManager$CursorTranslator;->getLong(I)J

    move-result-wide v0

    .line 1358
    .local v0, destinationType:J
    const-wide/16 v5, 0x4

    cmp-long v5, v0, v5

    if-eqz v5, :cond_0

    const-wide/16 v5, 0x0

    cmp-long v5, v0, v5

    if-eqz v5, :cond_0

    const-wide/16 v5, 0x6

    cmp-long v5, v0, v5

    if-nez v5, :cond_2

    .line 1361
    :cond_0
    const-string v5, "local_filename"

    invoke-virtual {p0, v5}, Landroid/database/CursorWrapper;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p0, v5}, Landroid/app/DownloadManager$CursorTranslator;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1362
    .local v4, localPath:Ljava/lang/String;
    if-nez v4, :cond_1

    .line 1363
    const/4 v5, 0x0

    .line 1370
    .end local v4           #localPath:Ljava/lang/String;
    :goto_0
    return-object v5

    .line 1365
    .restart local v4       #localPath:Ljava/lang/String;
    :cond_1
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 1369
    .end local v4           #localPath:Ljava/lang/String;
    :cond_2
    const-string v5, "_id"

    invoke-virtual {p0, v5}, Landroid/database/CursorWrapper;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p0, v5}, Landroid/app/DownloadManager$CursorTranslator;->getLong(I)J

    move-result-wide v2

    .line 1370
    .local v2, downloadId:J
    iget-object v5, p0, Landroid/app/DownloadManager$CursorTranslator;->mBaseUri:Landroid/net/Uri;

    invoke-static {v5, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method private getPausedReason(I)J
    .locals 2
    .parameter "status"

    .prologue
    .line 1387
    packed-switch p1, :pswitch_data_0

    .line 1402
    const-wide/16 v0, 0x4

    :goto_0
    return-wide v0

    .line 1389
    :pswitch_0
    const-wide/16 v0, 0x1

    goto :goto_0

    .line 1392
    :pswitch_1
    const-wide/16 v0, 0x2

    goto :goto_0

    .line 1395
    :pswitch_2
    const-wide/16 v0, 0x3

    goto :goto_0

    .line 1399
    :pswitch_3
    const-wide/16 v0, 0x5

    goto :goto_0

    .line 1387
    :pswitch_data_0
    .packed-switch 0xc1
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getReason(I)J
    .locals 2
    .parameter "status"

    .prologue
    .line 1374
    invoke-direct {p0, p1}, Landroid/app/DownloadManager$CursorTranslator;->translateStatus(I)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 1382
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    .line 1376
    :sswitch_0
    invoke-direct {p0, p1}, Landroid/app/DownloadManager$CursorTranslator;->getErrorCode(I)J

    move-result-wide v0

    goto :goto_0

    .line 1379
    :sswitch_1
    invoke-direct {p0, p1}, Landroid/app/DownloadManager$CursorTranslator;->getPausedReason(I)J

    move-result-wide v0

    goto :goto_0

    .line 1374
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x10 -> :sswitch_0
    .end sparse-switch
.end method

.method private translateStatus(I)I
    .locals 1
    .parameter "status"

    .prologue
    .line 1448
    packed-switch p1, :pswitch_data_0

    .line 1465
    :pswitch_0
    sget-boolean v0, Landroid/app/DownloadManager$CursorTranslator;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/provider/Downloads$Impl;->isStatusError(I)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1450
    :pswitch_1
    const/4 v0, 0x1

    .line 1466
    :goto_0
    return v0

    .line 1453
    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 1459
    :pswitch_3
    const/4 v0, 0x4

    goto :goto_0

    .line 1462
    :pswitch_4
    const/16 v0, 0x8

    goto :goto_0

    .line 1466
    :cond_0
    const/16 v0, 0x10

    goto :goto_0

    .line 1448
    nop

    :pswitch_data_0
    .packed-switch 0xbe
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public getInt(I)I
    .locals 2
    .parameter "columnIndex"

    .prologue
    .line 1336
    invoke-virtual {p0, p1}, Landroid/app/DownloadManager$CursorTranslator;->getLong(I)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public getLong(I)J
    .locals 2
    .parameter "columnIndex"

    .prologue
    .line 1341
    invoke-virtual {p0, p1}, Landroid/database/CursorWrapper;->getColumnName(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "reason"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1342
    const-string v0, "status"

    invoke-virtual {p0, v0}, Landroid/database/CursorWrapper;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-super {p0, v0}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v0

    invoke-direct {p0, v0}, Landroid/app/DownloadManager$CursorTranslator;->getReason(I)J

    move-result-wide v0

    .line 1346
    :goto_0
    return-wide v0

    .line 1343
    :cond_0
    invoke-virtual {p0, p1}, Landroid/database/CursorWrapper;->getColumnName(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "status"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1344
    const-string v0, "status"

    invoke-virtual {p0, v0}, Landroid/database/CursorWrapper;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-super {p0, v0}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v0

    invoke-direct {p0, v0}, Landroid/app/DownloadManager$CursorTranslator;->translateStatus(I)I

    move-result v0

    int-to-long v0, v0

    goto :goto_0

    .line 1346
    :cond_1
    invoke-super {p0, p1}, Landroid/database/CursorWrapper;->getLong(I)J

    move-result-wide v0

    goto :goto_0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 2
    .parameter "columnIndex"

    .prologue
    .line 1352
    invoke-virtual {p0, p1}, Landroid/database/CursorWrapper;->getColumnName(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "local_uri"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/app/DownloadManager$CursorTranslator;->getLocalUri()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
