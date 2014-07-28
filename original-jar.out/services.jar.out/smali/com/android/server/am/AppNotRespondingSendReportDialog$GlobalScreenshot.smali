.class Lcom/android/server/am/AppNotRespondingSendReportDialog$GlobalScreenshot;
.super Ljava/lang/Object;
.source "AppNotRespondingSendReportDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/AppNotRespondingSendReportDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GlobalScreenshot"
.end annotation


# instance fields
.field private mDisplay:Landroid/view/Display;

.field private mDisplayMatrix:Landroid/graphics/Matrix;

.field private mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mScreenBitmap:Landroid/graphics/Bitmap;

.field private mWindowManager:Landroid/view/WindowManager;

.field final synthetic this$0:Lcom/android/server/am/AppNotRespondingSendReportDialog;


# direct methods
.method constructor <init>(Lcom/android/server/am/AppNotRespondingSendReportDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 243
    iput-object p1, p0, Lcom/android/server/am/AppNotRespondingSendReportDialog$GlobalScreenshot;->this$0:Lcom/android/server/am/AppNotRespondingSendReportDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getDegreesForRotation(I)F
    .locals 1
    .parameter "value"

    .prologue
    .line 316
    packed-switch p1, :pswitch_data_0

    .line 324
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 318
    :pswitch_0
    const/high16 v0, 0x4387

    goto :goto_0

    .line 320
    :pswitch_1
    const/high16 v0, 0x4334

    goto :goto_0

    .line 322
    :pswitch_2
    const/high16 v0, 0x42b4

    goto :goto_0

    .line 316
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public saveBitmap(Landroid/graphics/Bitmap;)Ljava/lang/String;
    .locals 10
    .parameter "bitmap"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, -0x1

    .line 328
    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string v6, "yyyy-MM-dd-HH-mm-ss"

    invoke-direct {v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v6, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-direct {v6, v7, v8}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v5, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 330
    .local v3, imageDate:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    const-string v5, "/data/data"

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 331
    .local v1, f:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 332
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 334
    :cond_0
    new-instance v2, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".jpg"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v1, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 335
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    .line 336
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 340
    :cond_1
    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 341
    .local v4, out:Ljava/io/FileOutputStream;
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x46

    invoke-virtual {p1, v5, v6, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 342
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V

    .line 343
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 350
    .end local v4           #out:Ljava/io/FileOutputStream;
    :cond_2
    :goto_0
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x1b6

    invoke-static {v5, v6, v9, v9}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 351
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 345
    :catch_0
    move-exception v0

    .line 346
    .local v0, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 347
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 348
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public takeScreenshot(Landroid/content/Context;)Ljava/lang/String;
    .locals 14
    .parameter "context"

    .prologue
    .line 254
    const-string v6, ""

    .line 256
    .local v6, path:Ljava/lang/String;
    const-string v10, "window"

    invoke-virtual {p1, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/WindowManager;

    iput-object v10, p0, Lcom/android/server/am/AppNotRespondingSendReportDialog$GlobalScreenshot;->mWindowManager:Landroid/view/WindowManager;

    .line 257
    iget-object v10, p0, Lcom/android/server/am/AppNotRespondingSendReportDialog$GlobalScreenshot;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v10}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v10

    iput-object v10, p0, Lcom/android/server/am/AppNotRespondingSendReportDialog$GlobalScreenshot;->mDisplay:Landroid/view/Display;

    .line 258
    new-instance v10, Landroid/util/DisplayMetrics;

    invoke-direct {v10}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v10, p0, Lcom/android/server/am/AppNotRespondingSendReportDialog$GlobalScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 259
    iget-object v10, p0, Lcom/android/server/am/AppNotRespondingSendReportDialog$GlobalScreenshot;->mDisplay:Landroid/view/Display;

    iget-object v11, p0, Lcom/android/server/am/AppNotRespondingSendReportDialog$GlobalScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v10, v11}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 261
    new-instance v10, Landroid/graphics/Matrix;

    invoke-direct {v10}, Landroid/graphics/Matrix;-><init>()V

    iput-object v10, p0, Lcom/android/server/am/AppNotRespondingSendReportDialog$GlobalScreenshot;->mDisplayMatrix:Landroid/graphics/Matrix;

    .line 262
    const/4 v10, 0x2

    new-array v2, v10, [F

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/android/server/am/AppNotRespondingSendReportDialog$GlobalScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v11, v11, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v11, v11

    aput v11, v2, v10

    const/4 v10, 0x1

    iget-object v11, p0, Lcom/android/server/am/AppNotRespondingSendReportDialog$GlobalScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v11, v11, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v11, v11

    aput v11, v2, v10

    .line 264
    .local v2, dims:[F
    iget-object v10, p0, Lcom/android/server/am/AppNotRespondingSendReportDialog$GlobalScreenshot;->mDisplay:Landroid/view/Display;

    invoke-virtual {v10}, Landroid/view/Display;->getRotation()I

    move-result v9

    .line 265
    .local v9, value:I
    const-string v10, "ro.sf.hwrotation"

    const-string v11, "0"

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 266
    .local v4, hwRotation:Ljava/lang/String;
    const-string v10, "270"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    const-string v10, "90"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 267
    :cond_0
    add-int/lit8 v10, v9, 0x3

    rem-int/lit8 v9, v10, 0x4

    .line 269
    :cond_1
    invoke-direct {p0, v9}, Lcom/android/server/am/AppNotRespondingSendReportDialog$GlobalScreenshot;->getDegreesForRotation(I)F

    move-result v1

    .line 270
    .local v1, degrees:F
    const/4 v10, 0x0

    cmpl-float v10, v1, v10

    if-lez v10, :cond_4

    const/4 v7, 0x1

    .line 271
    .local v7, requiresRotation:Z
    :goto_0
    if-eqz v7, :cond_2

    .line 273
    iget-object v10, p0, Lcom/android/server/am/AppNotRespondingSendReportDialog$GlobalScreenshot;->mDisplayMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v10}, Landroid/graphics/Matrix;->reset()V

    .line 274
    iget-object v10, p0, Lcom/android/server/am/AppNotRespondingSendReportDialog$GlobalScreenshot;->mDisplayMatrix:Landroid/graphics/Matrix;

    neg-float v11, v1

    invoke-virtual {v10, v11}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 275
    iget-object v10, p0, Lcom/android/server/am/AppNotRespondingSendReportDialog$GlobalScreenshot;->mDisplayMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v10, v2}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 277
    const/4 v10, 0x0

    const/4 v11, 0x0

    aget v11, v2, v11

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    aput v11, v2, v10

    .line 278
    const/4 v10, 0x1

    const/4 v11, 0x1

    aget v11, v2, v11

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    aput v11, v2, v10

    .line 281
    :cond_2
    const/4 v10, 0x0

    aget v10, v2, v10

    float-to-int v10, v10

    const/4 v11, 0x1

    aget v11, v2, v11

    float-to-int v11, v11

    invoke-static {v10, v11}, Landroid/view/Surface;->screenshot(II)Landroid/graphics/Bitmap;

    move-result-object v10

    iput-object v10, p0, Lcom/android/server/am/AppNotRespondingSendReportDialog$GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    .line 283
    iget-object v10, p0, Lcom/android/server/am/AppNotRespondingSendReportDialog$GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v5

    .line 286
    .local v5, i:I
    if-eqz v7, :cond_3

    .line 288
    iget-object v10, p0, Lcom/android/server/am/AppNotRespondingSendReportDialog$GlobalScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v10, v10, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v11, p0, Lcom/android/server/am/AppNotRespondingSendReportDialog$GlobalScreenshot;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v11, v11, Landroid/util/DisplayMetrics;->heightPixels:I

    sget-object v12, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v10, v11, v12}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 290
    .local v8, ss:Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 291
    .local v0, c:Landroid/graphics/Canvas;
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    div-int/lit8 v11, v11, 0x2

    int-to-float v11, v11

    invoke-virtual {v0, v10, v11}, Landroid/graphics/Canvas;->translate(FF)V

    .line 292
    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->rotate(F)V

    .line 293
    const/4 v10, 0x0

    aget v10, v2, v10

    neg-float v10, v10

    const/high16 v11, 0x4000

    div-float/2addr v10, v11

    const/4 v11, 0x1

    aget v11, v2, v11

    neg-float v11, v11

    const/high16 v12, 0x4000

    div-float/2addr v11, v12

    invoke-virtual {v0, v10, v11}, Landroid/graphics/Canvas;->translate(FF)V

    .line 294
    iget-object v10, p0, Lcom/android/server/am/AppNotRespondingSendReportDialog$GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v0, v10, v11, v12, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 295
    const/4 v10, 0x0

    invoke-virtual {v0, v10}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 296
    iput-object v8, p0, Lcom/android/server/am/AppNotRespondingSendReportDialog$GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    .line 300
    .end local v0           #c:Landroid/graphics/Canvas;
    .end local v8           #ss:Landroid/graphics/Bitmap;
    :cond_3
    iget-object v10, p0, Lcom/android/server/am/AppNotRespondingSendReportDialog$GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    if-nez v10, :cond_5

    .line 301
    const-string v10, ""

    .line 313
    :goto_1
    return-object v10

    .line 270
    .end local v5           #i:I
    .end local v7           #requiresRotation:Z
    :cond_4
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 305
    .restart local v5       #i:I
    .restart local v7       #requiresRotation:Z
    :cond_5
    iget-object v10, p0, Lcom/android/server/am/AppNotRespondingSendReportDialog$GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 306
    iget-object v10, p0, Lcom/android/server/am/AppNotRespondingSendReportDialog$GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->prepareToDraw()V

    .line 309
    :try_start_0
    iget-object v10, p0, Lcom/android/server/am/AppNotRespondingSendReportDialog$GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v10}, Lcom/android/server/am/AppNotRespondingSendReportDialog$GlobalScreenshot;->saveBitmap(Landroid/graphics/Bitmap;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    :goto_2
    move-object v10, v6

    .line 313
    goto :goto_1

    .line 310
    :catch_0
    move-exception v3

    .line 311
    .local v3, e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method
