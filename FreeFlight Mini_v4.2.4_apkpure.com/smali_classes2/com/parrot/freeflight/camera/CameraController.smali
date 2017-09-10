.class public Lcom/parrot/freeflight/camera/CameraController;
.super Ljava/lang/Object;
.source "CameraController.java"


# static fields
.field public static final INVALID_VIEW_ANGLE:F = -1.0f

.field private static final TAG:Ljava/lang/String; = "CameraController"


# instance fields
.field private mCamera:Landroid/hardware/Camera;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mMediaRecorder:Landroid/media/MediaRecorder;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mOrientationEventListener:Landroid/view/OrientationEventListener;

.field private mScreenRotation:I

.field private mVideoDate:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mVideoFile:Ljava/io/File;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "screenRotation"    # I

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/parrot/freeflight/camera/CameraController;->mContext:Landroid/content/Context;

    .line 55
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/parrot/freeflight/camera/CameraController;->mWindowManager:Landroid/view/WindowManager;

    .line 56
    iput p2, p0, Lcom/parrot/freeflight/camera/CameraController;->mScreenRotation:I

    .line 57
    new-instance v0, Lcom/parrot/freeflight/camera/CameraController$1;

    iget-object v1, p0, Lcom/parrot/freeflight/camera/CameraController;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/parrot/freeflight/camera/CameraController$1;-><init>(Lcom/parrot/freeflight/camera/CameraController;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/parrot/freeflight/camera/CameraController;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    .line 69
    return-void
.end method

.method static synthetic access$000(Lcom/parrot/freeflight/camera/CameraController;)Landroid/view/WindowManager;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/camera/CameraController;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/parrot/freeflight/camera/CameraController;->mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/parrot/freeflight/camera/CameraController;)I
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/camera/CameraController;

    .prologue
    .line 27
    iget v0, p0, Lcom/parrot/freeflight/camera/CameraController;->mScreenRotation:I

    return v0
.end method

.method static synthetic access$102(Lcom/parrot/freeflight/camera/CameraController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/camera/CameraController;
    .param p1, "x1"    # I

    .prologue
    .line 27
    iput p1, p0, Lcom/parrot/freeflight/camera/CameraController;->mScreenRotation:I

    return p1
.end method

.method static synthetic access$200(Lcom/parrot/freeflight/camera/CameraController;)Landroid/hardware/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/parrot/freeflight/camera/CameraController;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/parrot/freeflight/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    return-object v0
.end method

.method static synthetic access$300(Lcom/parrot/freeflight/camera/CameraController;Landroid/hardware/Camera;II)V
    .locals 0
    .param p0, "x0"    # Lcom/parrot/freeflight/camera/CameraController;
    .param p1, "x1"    # Landroid/hardware/Camera;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3}, Lcom/parrot/freeflight/camera/CameraController;->setCameraDisplayOrientation(Landroid/hardware/Camera;II)V

    return-void
.end method

.method private getOptimalSize(Ljava/util/List;II)Landroid/hardware/Camera$Size;
    .locals 16
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "width"    # I
    .param p3, "height"    # I
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;II)",
            "Landroid/hardware/Camera$Size;"
        }
    .end annotation

    .prologue
    .line 309
    .local p1, "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    const-wide v2, 0x3fc999999999999aL    # 0.2

    .line 310
    .local v2, "ASPECT_TOLERANCE":D
    move/from16 v0, p2

    int-to-double v12, v0

    move/from16 v0, p3

    int-to-double v14, v0

    div-double v10, v12, v14

    .line 312
    .local v10, "targetRatio":D
    const/4 v5, 0x0

    .line 316
    .local v5, "optimalSize":Landroid/hardware/Camera$Size;
    const v4, 0x7fffffff

    .line 321
    .local v4, "minDiff":I
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/hardware/Camera$Size;

    .line 322
    .local v8, "size":Landroid/hardware/Camera$Size;
    iget v12, v8, Landroid/hardware/Camera$Size;->width:I

    int-to-double v12, v12

    iget v14, v8, Landroid/hardware/Camera$Size;->height:I

    int-to-double v14, v14

    div-double v6, v12, v14

    .line 323
    .local v6, "ratio":D
    sub-double v12, v6, v10

    invoke-static {v12, v13}, Ljava/lang/Math;->abs(D)D

    move-result-wide v12

    const-wide v14, 0x3fc999999999999aL    # 0.2

    cmpl-double v12, v12, v14

    if-gtz v12, :cond_0

    .line 324
    iget v12, v8, Landroid/hardware/Camera$Size;->height:I

    sub-int v12, v12, p3

    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v12

    if-gt v12, v4, :cond_0

    iget v12, v8, Landroid/hardware/Camera$Size;->width:I

    const/16 v13, 0x500

    if-gt v12, v13, :cond_0

    .line 325
    move-object v5, v8

    .line 326
    iget v12, v8, Landroid/hardware/Camera$Size;->height:I

    sub-int v12, v12, p3

    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v4

    goto :goto_0

    .line 331
    .end local v6    # "ratio":D
    .end local v8    # "size":Landroid/hardware/Camera$Size;
    :cond_1
    if-nez v5, :cond_3

    .line 332
    const v4, 0x7fffffff

    .line 333
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_2
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/hardware/Camera$Size;

    .line 334
    .restart local v8    # "size":Landroid/hardware/Camera$Size;
    iget v12, v8, Landroid/hardware/Camera$Size;->height:I

    sub-int v12, v12, p3

    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v12

    if-gt v12, v4, :cond_2

    .line 335
    move-object v5, v8

    .line 336
    iget v12, v8, Landroid/hardware/Camera$Size;->height:I

    sub-int v12, v12, p3

    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v4

    goto :goto_1

    .line 340
    .end local v8    # "size":Landroid/hardware/Camera$Size;
    :cond_3
    return-object v5
.end method

.method private setCameraDisplayOrientation(Landroid/hardware/Camera;II)V
    .locals 6
    .param p1, "camera"    # Landroid/hardware/Camera;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "cameraId"    # I
    .param p3, "screenRotation"    # I

    .prologue
    .line 214
    new-instance v2, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v2}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 215
    .local v2, "info":Landroid/hardware/Camera$CameraInfo;
    invoke-static {p2, v2}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 216
    const/4 v0, 0x0

    .line 217
    .local v0, "degrees":I
    packed-switch p3, :pswitch_data_0

    .line 233
    :goto_0
    iget v4, v2, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 234
    iget v4, v2, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int/2addr v4, v0

    rem-int/lit16 v3, v4, 0x168

    .line 235
    .local v3, "result":I
    rsub-int v4, v3, 0x168

    rem-int/lit16 v3, v4, 0x168

    .line 241
    :goto_1
    :try_start_0
    invoke-virtual {p1, v3}, Landroid/hardware/Camera;->setDisplayOrientation(I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 245
    :goto_2
    return-void

    .line 219
    .end local v3    # "result":I
    :pswitch_0
    const/4 v0, 0x0

    .line 220
    goto :goto_0

    .line 222
    :pswitch_1
    const/16 v0, 0x5a

    .line 223
    goto :goto_0

    .line 225
    :pswitch_2
    const/16 v0, 0xb4

    .line 226
    goto :goto_0

    .line 228
    :pswitch_3
    const/16 v0, 0x10e

    goto :goto_0

    .line 237
    :cond_0
    iget v4, v2, Landroid/hardware/Camera$CameraInfo;->orientation:I

    sub-int/2addr v4, v0

    add-int/lit16 v4, v4, 0x168

    rem-int/lit16 v3, v4, 0x168

    .restart local v3    # "result":I
    goto :goto_1

    .line 242
    :catch_0
    move-exception v1

    .line 243
    .local v1, "e":Ljava/lang/RuntimeException;
    const-string v4, "CameraController"

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 217
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private writePvat()V
    .locals 4

    .prologue
    .line 171
    iget-object v0, p0, Lcom/parrot/freeflight/camera/CameraController;->mVideoFile:Ljava/io/File;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/camera/CameraController;->mVideoFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/parrot/freeflight/camera/CameraController;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    iget-object v3, p0, Lcom/parrot/freeflight/camera/CameraController;->mVideoFile:Ljava/io/File;

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 173
    iget-object v0, p0, Lcom/parrot/freeflight/camera/CameraController;->mVideoFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ARDISCOVERY_PRODUCT_MINIDRONE:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    iget-object v2, p0, Lcom/parrot/freeflight/camera/CameraController;->mVideoDate:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/parrot/arsdk/armedia/ARMediaVideoAtoms;->writePvat(Ljava/lang/String;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;Ljava/lang/String;)V

    .line 174
    iget-object v0, p0, Lcom/parrot/freeflight/camera/CameraController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/parrot/arsdk/armedia/ARMediaManager;->getInstance(Landroid/content/Context;)Lcom/parrot/arsdk/armedia/ARMediaManager;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/camera/CameraController;->mVideoFile:Ljava/io/File;

    invoke-virtual {v0, v1}, Lcom/parrot/arsdk/armedia/ARMediaManager;->addMedia(Ljava/io/File;)Z

    .line 176
    :cond_0
    return-void
.end method


# virtual methods
.method public getHorizontalViewAngle()F
    .locals 1

    .prologue
    .line 349
    iget-object v0, p0, Lcom/parrot/freeflight/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getHorizontalViewAngle()F

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/high16 v0, -0x40800000    # -1.0f

    goto :goto_0
.end method

.method public getPreviewSize()Landroid/hardware/Camera$Size;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 345
    iget-object v0, p0, Lcom/parrot/freeflight/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getVerticalViewAngle()F
    .locals 1

    .prologue
    .line 353
    iget-object v0, p0, Lcom/parrot/freeflight/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getVerticalViewAngle()F

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/high16 v0, -0x40800000    # -1.0f

    goto :goto_0
.end method

.method public initCamera(II)V
    .locals 9
    .param p1, "destinationViewWidth"    # I
    .param p2, "destinationViewHeight"    # I

    .prologue
    .line 179
    iget-object v6, p0, Lcom/parrot/freeflight/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    if-nez v6, :cond_0

    .line 181
    :try_start_0
    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v6

    iput-object v6, p0, Lcom/parrot/freeflight/camera/CameraController;->mCamera:Landroid/hardware/Camera;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    :goto_0
    iget-object v6, p0, Lcom/parrot/freeflight/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    if-eqz v6, :cond_0

    .line 186
    iget-object v6, p0, Lcom/parrot/freeflight/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    const/4 v7, 0x0

    iget v8, p0, Lcom/parrot/freeflight/camera/CameraController;->mScreenRotation:I

    invoke-direct {p0, v6, v7, v8}, Lcom/parrot/freeflight/camera/CameraController;->setCameraDisplayOrientation(Landroid/hardware/Camera;II)V

    .line 189
    :cond_0
    iget-object v6, p0, Lcom/parrot/freeflight/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    if-eqz v6, :cond_2

    .line 193
    iget-object v6, p0, Lcom/parrot/freeflight/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v6}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    .line 194
    .local v3, "parameters":Landroid/hardware/Camera$Parameters;
    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v1

    .line 195
    .local v1, "mSupportedPreviewSizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    invoke-direct {p0, v1, p1, p2}, Lcom/parrot/freeflight/camera/CameraController;->getOptimalSize(Ljava/util/List;II)Landroid/hardware/Camera$Size;

    move-result-object v2

    .line 198
    .local v2, "optimalSize":Landroid/hardware/Camera$Size;
    const/16 v6, 0x3e9

    invoke-static {v6}, Landroid/media/CamcorderProfile;->get(I)Landroid/media/CamcorderProfile;

    move-result-object v4

    .line 199
    .local v4, "profile":Landroid/media/CamcorderProfile;
    iget v6, v2, Landroid/hardware/Camera$Size;->width:I

    iput v6, v4, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    .line 200
    iget v6, v2, Landroid/hardware/Camera$Size;->height:I

    iput v6, v4, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    .line 203
    iget v6, v4, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iget v7, v4, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-virtual {v3, v6, v7}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 205
    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v5

    .line 206
    .local v5, "supportedFocusModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v5, :cond_1

    const-string v6, "continuous-video"

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 207
    const-string v6, "continuous-video"

    invoke-virtual {v3, v6}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 209
    :cond_1
    iget-object v6, p0, Lcom/parrot/freeflight/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v6, v3}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 211
    .end local v1    # "mSupportedPreviewSizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    .end local v2    # "optimalSize":Landroid/hardware/Camera$Size;
    .end local v3    # "parameters":Landroid/hardware/Camera$Parameters;
    .end local v4    # "profile":Landroid/media/CamcorderProfile;
    .end local v5    # "supportedFocusModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    return-void

    .line 182
    :catch_0
    move-exception v0

    .line 183
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_0
.end method

.method public initVideoRecord(Landroid/graphics/SurfaceTexture;Ljava/io/File;Ljava/lang/String;II)Z
    .locals 9
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "destinationVideoFile"    # Ljava/io/File;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "destinationFileDate"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "videoRecordWith"    # I
    .param p5, "videoRecordHeight"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 72
    iget-object v7, p0, Lcom/parrot/freeflight/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    if-nez v7, :cond_0

    .line 73
    invoke-virtual {p0, p4, p5}, Lcom/parrot/freeflight/camera/CameraController;->initCamera(II)V

    .line 76
    :try_start_0
    iget-object v7, p0, Lcom/parrot/freeflight/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v7, p1}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    :cond_0
    iget-object v7, p0, Lcom/parrot/freeflight/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    if-eqz v7, :cond_2

    .line 85
    iget-object v7, p0, Lcom/parrot/freeflight/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v7}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    .line 87
    .local v2, "parameters":Landroid/hardware/Camera$Parameters;
    new-instance v7, Landroid/media/MediaRecorder;

    invoke-direct {v7}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v7, p0, Lcom/parrot/freeflight/camera/CameraController;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 90
    iget-object v7, p0, Lcom/parrot/freeflight/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v7}, Landroid/hardware/Camera;->unlock()V

    .line 91
    iget-object v7, p0, Lcom/parrot/freeflight/camera/CameraController;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v8, p0, Lcom/parrot/freeflight/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v7, v8}, Landroid/media/MediaRecorder;->setCamera(Landroid/hardware/Camera;)V

    .line 94
    iget v7, p0, Lcom/parrot/freeflight/camera/CameraController;->mScreenRotation:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_1

    .line 95
    iget-object v7, p0, Lcom/parrot/freeflight/camera/CameraController;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/16 v8, 0xb4

    invoke-virtual {v7, v8}, Landroid/media/MediaRecorder;->setOrientationHint(I)V

    .line 98
    :cond_1
    iget-object v7, p0, Lcom/parrot/freeflight/camera/CameraController;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v7, v6}, Landroid/media/MediaRecorder;->setVideoSource(I)V

    .line 101
    const/16 v7, 0x3e9

    invoke-static {v7}, Landroid/media/CamcorderProfile;->get(I)Landroid/media/CamcorderProfile;

    move-result-object v3

    .line 103
    .local v3, "profile":Landroid/media/CamcorderProfile;
    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getSupportedVideoSizes()Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_3

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getSupportedVideoSizes()Ljava/util/List;

    move-result-object v4

    .line 104
    .local v4, "supportSizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    :goto_0
    invoke-direct {p0, v4, p4, p5}, Lcom/parrot/freeflight/camera/CameraController;->getOptimalSize(Ljava/util/List;II)Landroid/hardware/Camera$Size;

    move-result-object v1

    .line 105
    .local v1, "optimalRecordSize":Landroid/hardware/Camera$Size;
    iget v7, v1, Landroid/hardware/Camera$Size;->width:I

    iput v7, v3, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    .line 106
    iget v7, v1, Landroid/hardware/Camera$Size;->height:I

    iput v7, v3, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    .line 107
    iget-object v7, p0, Lcom/parrot/freeflight/camera/CameraController;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v7, v3}, Landroid/media/MediaRecorder;->setProfile(Landroid/media/CamcorderProfile;)V

    .line 110
    iput-object p2, p0, Lcom/parrot/freeflight/camera/CameraController;->mVideoFile:Ljava/io/File;

    .line 111
    iput-object p3, p0, Lcom/parrot/freeflight/camera/CameraController;->mVideoDate:Ljava/lang/String;

    .line 112
    iget-object v7, p0, Lcom/parrot/freeflight/camera/CameraController;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v8, p0, Lcom/parrot/freeflight/camera/CameraController;->mVideoFile:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    .line 116
    :try_start_1
    iget-object v7, p0, Lcom/parrot/freeflight/camera/CameraController;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v7}, Landroid/media/MediaRecorder;->prepare()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move v5, v6

    .line 123
    .end local v1    # "optimalRecordSize":Landroid/hardware/Camera$Size;
    .end local v2    # "parameters":Landroid/hardware/Camera$Parameters;
    .end local v3    # "profile":Landroid/media/CamcorderProfile;
    .end local v4    # "supportSizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    :cond_2
    :goto_1
    return v5

    .line 77
    :catch_0
    move-exception v0

    .line 78
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 79
    invoke-virtual {p0}, Lcom/parrot/freeflight/camera/CameraController;->releaseCamera()V

    goto :goto_1

    .line 103
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v2    # "parameters":Landroid/hardware/Camera$Parameters;
    .restart local v3    # "profile":Landroid/media/CamcorderProfile;
    :cond_3
    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v4

    goto :goto_0

    .line 118
    .restart local v1    # "optimalRecordSize":Landroid/hardware/Camera$Size;
    .restart local v4    # "supportSizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    :catch_1
    move-exception v0

    .line 119
    .local v0, "e":Ljava/lang/Exception;
    :goto_2
    const-string v6, "CameraController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception preparing MediaRecorder: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    invoke-virtual {p0}, Lcom/parrot/freeflight/camera/CameraController;->releaseRecord()V

    goto :goto_1

    .line 118
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v0

    goto :goto_2
.end method

.method public isCameraReady()Z
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/parrot/freeflight/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public releaseCamera()V
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/parrot/freeflight/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/parrot/freeflight/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 282
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parrot/freeflight/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    .line 284
    :cond_0
    return-void
.end method

.method public releaseRecord()V
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lcom/parrot/freeflight/camera/CameraController;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/parrot/freeflight/camera/CameraController;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->reset()V

    .line 291
    iget-object v0, p0, Lcom/parrot/freeflight/camera/CameraController;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    .line 292
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parrot/freeflight/camera/CameraController;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 294
    :cond_0
    return-void
.end method

.method public startPreview(Landroid/graphics/SurfaceTexture;)Z
    .locals 4
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 252
    iget-object v1, p0, Lcom/parrot/freeflight/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    if-eqz v1, :cond_0

    .line 254
    :try_start_0
    iget-object v1, p0, Lcom/parrot/freeflight/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->stopPreview()V

    .line 258
    iget-object v1, p0, Lcom/parrot/freeflight/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1, p1}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V

    .line 259
    iget-object v1, p0, Lcom/parrot/freeflight/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->startPreview()V

    .line 260
    iget-object v1, p0, Lcom/parrot/freeflight/camera/CameraController;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v1}, Landroid/view/OrientationEventListener;->enable()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 261
    const/4 v1, 0x1

    .line 267
    :goto_0
    return v1

    .line 262
    :catch_0
    move-exception v0

    .line 263
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "CameraController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Surface texture is unavailable or unsuitable"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    invoke-virtual {p0}, Lcom/parrot/freeflight/camera/CameraController;->releaseCamera()V

    .line 267
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public startVideoRecord()V
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/parrot/freeflight/camera/CameraController;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/parrot/freeflight/camera/CameraController;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->start()V

    .line 134
    :cond_0
    return-void
.end method

.method public stopPreview()V
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcom/parrot/freeflight/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/parrot/freeflight/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 274
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/camera/CameraController;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    .line 275
    invoke-virtual {p0}, Lcom/parrot/freeflight/camera/CameraController;->releaseCamera()V

    .line 276
    return-void
.end method

.method public stopVideoRecord()V
    .locals 5

    .prologue
    .line 137
    iget-object v2, p0, Lcom/parrot/freeflight/camera/CameraController;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v2, :cond_1

    .line 140
    :try_start_0
    iget-object v2, p0, Lcom/parrot/freeflight/camera/CameraController;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->stop()V

    .line 141
    invoke-direct {p0}, Lcom/parrot/freeflight/camera/CameraController;->writePvat()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 160
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/parrot/freeflight/camera/CameraController;->releaseRecord()V

    .line 163
    :try_start_1
    iget-object v2, p0, Lcom/parrot/freeflight/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/parrot/freeflight/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->reconnect()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 168
    :cond_1
    :goto_1
    return-void

    .line 142
    :catch_0
    move-exception v1

    .line 143
    .local v1, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    .line 144
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v1

    .line 155
    .local v1, "e":Ljava/lang/RuntimeException;
    iget-object v2, p0, Lcom/parrot/freeflight/camera/CameraController;->mVideoFile:Ljava/io/File;

    if-eqz v2, :cond_0

    .line 156
    iget-object v2, p0, Lcom/parrot/freeflight/camera/CameraController;->mVideoFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v0

    .line 157
    .local v0, "deleteOK":Z
    const-string v2, "CameraController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Stop record video called too soon, file deleted="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 164
    .end local v0    # "deleteOK":Z
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :catch_2
    move-exception v1

    .line 165
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public videoRecordReady()Z
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/parrot/freeflight/camera/CameraController;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
