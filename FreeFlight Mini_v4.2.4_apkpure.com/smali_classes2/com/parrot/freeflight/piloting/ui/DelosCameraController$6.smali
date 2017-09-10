.class Lcom/parrot/freeflight/piloting/ui/DelosCameraController$6;
.super Ljava/lang/Object;
.source "DelosCameraController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/piloting/ui/DelosCameraController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/piloting/ui/DelosCameraController;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/piloting/ui/DelosCameraController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/piloting/ui/DelosCameraController;

    .prologue
    .line 390
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/DelosCameraController$6;->this$0:Lcom/parrot/freeflight/piloting/ui/DelosCameraController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 393
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosCameraController$6;->this$0:Lcom/parrot/freeflight/piloting/ui/DelosCameraController;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/DelosCameraController;->access$100(Lcom/parrot/freeflight/piloting/ui/DelosCameraController;)Lcom/parrot/freeflight/piloting/ui/DelosCameraController$CameraStatus;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/DelosCameraController$6;->this$0:Lcom/parrot/freeflight/piloting/ui/DelosCameraController;

    invoke-static {v1}, Lcom/parrot/freeflight/piloting/ui/DelosCameraController;->access$900(Lcom/parrot/freeflight/piloting/ui/DelosCameraController;)Lcom/parrot/freeflight/piloting/ui/DelosCameraController$CameraStatus;

    move-result-object v1

    if-eq v0, v1, :cond_6

    .line 395
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosCameraController$6;->this$0:Lcom/parrot/freeflight/piloting/ui/DelosCameraController;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/DelosCameraController;->access$900(Lcom/parrot/freeflight/piloting/ui/DelosCameraController;)Lcom/parrot/freeflight/piloting/ui/DelosCameraController$CameraStatus;

    move-result-object v7

    .line 396
    .local v7, "currentExpectedState":Lcom/parrot/freeflight/piloting/ui/DelosCameraController$CameraStatus;
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosCameraController$6;->this$0:Lcom/parrot/freeflight/piloting/ui/DelosCameraController;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/DelosCameraController;->access$1000(Lcom/parrot/freeflight/piloting/ui/DelosCameraController;)Z

    move-result v6

    .line 398
    .local v6, "currentExpectedFlag":Z
    sget-object v0, Lcom/parrot/freeflight/piloting/ui/DelosCameraController$7;->$SwitchMap$com$parrot$freeflight$piloting$ui$DelosCameraController$CameraStatus:[I

    invoke-virtual {v7}, Lcom/parrot/freeflight/piloting/ui/DelosCameraController$CameraStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 468
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosCameraController$6;->this$0:Lcom/parrot/freeflight/piloting/ui/DelosCameraController;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/DelosCameraController;->access$900(Lcom/parrot/freeflight/piloting/ui/DelosCameraController;)Lcom/parrot/freeflight/piloting/ui/DelosCameraController$CameraStatus;

    move-result-object v0

    if-eq v7, v0, :cond_1

    .line 469
    const-string v0, "DelosCameraController"

    const-string v1, "expected state is changed during the update of current state"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosCameraController$6;->this$0:Lcom/parrot/freeflight/piloting/ui/DelosCameraController;

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/DelosCameraController$6;->this$0:Lcom/parrot/freeflight/piloting/ui/DelosCameraController;

    invoke-static {v1}, Lcom/parrot/freeflight/piloting/ui/DelosCameraController;->access$900(Lcom/parrot/freeflight/piloting/ui/DelosCameraController;)Lcom/parrot/freeflight/piloting/ui/DelosCameraController$CameraStatus;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/DelosCameraController$6;->this$0:Lcom/parrot/freeflight/piloting/ui/DelosCameraController;

    invoke-static {v2}, Lcom/parrot/freeflight/piloting/ui/DelosCameraController;->access$1000(Lcom/parrot/freeflight/piloting/ui/DelosCameraController;)Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/parrot/freeflight/piloting/ui/DelosCameraController;->access$1700(Lcom/parrot/freeflight/piloting/ui/DelosCameraController;Lcom/parrot/freeflight/piloting/ui/DelosCameraController$CameraStatus;Z)V

    .line 475
    .end local v6    # "currentExpectedFlag":Z
    .end local v7    # "currentExpectedState":Lcom/parrot/freeflight/piloting/ui/DelosCameraController$CameraStatus;
    :cond_1
    :goto_1
    return-void

    .line 401
    .restart local v6    # "currentExpectedFlag":Z
    .restart local v7    # "currentExpectedState":Lcom/parrot/freeflight/piloting/ui/DelosCameraController$CameraStatus;
    :pswitch_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosCameraController$6;->this$0:Lcom/parrot/freeflight/piloting/ui/DelosCameraController;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/DelosCameraController;->access$100(Lcom/parrot/freeflight/piloting/ui/DelosCameraController;)Lcom/parrot/freeflight/piloting/ui/DelosCameraController$CameraStatus;

    move-result-object v0

    sget-object v1, Lcom/parrot/freeflight/piloting/ui/DelosCameraController$CameraStatus;->RECORDING:Lcom/parrot/freeflight/piloting/ui/DelosCameraController$CameraStatus;

    if-ne v0, v1, :cond_2

    .line 402
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosCameraController$6;->this$0:Lcom/parrot/freeflight/piloting/ui/DelosCameraController;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/DelosCameraController;->access$800(Lcom/parrot/freeflight/piloting/ui/DelosCameraController;)Lcom/parrot/freeflight/camera/CameraController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/camera/CameraController;->stopVideoRecord()V

    .line 403
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosCameraController$6;->this$0:Lcom/parrot/freeflight/piloting/ui/DelosCameraController;

    invoke-static {v0, v10}, Lcom/parrot/freeflight/piloting/ui/DelosCameraController;->access$1100(Lcom/parrot/freeflight/piloting/ui/DelosCameraController;Z)V

    .line 404
    const/4 v9, 0x1

    .line 413
    .local v9, "success":Z
    :goto_2
    if-eqz v9, :cond_4

    .line 414
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosCameraController$6;->this$0:Lcom/parrot/freeflight/piloting/ui/DelosCameraController;

    invoke-static {v0, v10}, Lcom/parrot/freeflight/piloting/ui/DelosCameraController;->access$1200(Lcom/parrot/freeflight/piloting/ui/DelosCameraController;I)V

    .line 415
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosCameraController$6;->this$0:Lcom/parrot/freeflight/piloting/ui/DelosCameraController;

    invoke-static {v0, v6}, Lcom/parrot/freeflight/piloting/ui/DelosCameraController;->access$1302(Lcom/parrot/freeflight/piloting/ui/DelosCameraController;Z)Z

    .line 416
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosCameraController$6;->this$0:Lcom/parrot/freeflight/piloting/ui/DelosCameraController;

    invoke-static {v0, v7}, Lcom/parrot/freeflight/piloting/ui/DelosCameraController;->access$1400(Lcom/parrot/freeflight/piloting/ui/DelosCameraController;Lcom/parrot/freeflight/piloting/ui/DelosCameraController$CameraStatus;)V

    goto :goto_0

    .line 405
    .end local v9    # "success":Z
    :cond_2
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosCameraController$6;->this$0:Lcom/parrot/freeflight/piloting/ui/DelosCameraController;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/DelosCameraController;->access$200(Lcom/parrot/freeflight/piloting/ui/DelosCameraController;)Landroid/view/TextureView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/TextureView;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 406
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosCameraController$6;->this$0:Lcom/parrot/freeflight/piloting/ui/DelosCameraController;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/DelosCameraController;->access$800(Lcom/parrot/freeflight/piloting/ui/DelosCameraController;)Lcom/parrot/freeflight/camera/CameraController;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/DelosCameraController$6;->this$0:Lcom/parrot/freeflight/piloting/ui/DelosCameraController;

    invoke-static {v1}, Lcom/parrot/freeflight/piloting/ui/DelosCameraController;->access$200(Lcom/parrot/freeflight/piloting/ui/DelosCameraController;)Landroid/view/TextureView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/TextureView;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/DelosCameraController$6;->this$0:Lcom/parrot/freeflight/piloting/ui/DelosCameraController;

    invoke-static {v2}, Lcom/parrot/freeflight/piloting/ui/DelosCameraController;->access$200(Lcom/parrot/freeflight/piloting/ui/DelosCameraController;)Landroid/view/TextureView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/TextureView;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/parrot/freeflight/camera/CameraController;->initCamera(II)V

    .line 407
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosCameraController$6;->this$0:Lcom/parrot/freeflight/piloting/ui/DelosCameraController;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/DelosCameraController;->access$800(Lcom/parrot/freeflight/piloting/ui/DelosCameraController;)Lcom/parrot/freeflight/camera/CameraController;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/DelosCameraController$6;->this$0:Lcom/parrot/freeflight/piloting/ui/DelosCameraController;

    invoke-static {v1}, Lcom/parrot/freeflight/piloting/ui/DelosCameraController;->access$200(Lcom/parrot/freeflight/piloting/ui/DelosCameraController;)Landroid/view/TextureView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/camera/CameraController;->startPreview(Landroid/graphics/SurfaceTexture;)Z

    move-result v9

    .restart local v9    # "success":Z
    goto :goto_2

    .line 409
    .end local v9    # "success":Z
    :cond_3
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosCameraController$6;->this$0:Lcom/parrot/freeflight/piloting/ui/DelosCameraController;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/DelosCameraController;->access$200(Lcom/parrot/freeflight/piloting/ui/DelosCameraController;)Landroid/view/TextureView;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/view/TextureView;->setVisibility(I)V

    goto/16 :goto_0

    .line 418
    .restart local v9    # "success":Z
    :cond_4
    const-string v0, "DelosCameraController"

    const-string v1, "Failed to prepare Camera"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosCameraController$6;->this$0:Lcom/parrot/freeflight/piloting/ui/DelosCameraController;

    invoke-static {v0, v10}, Lcom/parrot/freeflight/piloting/ui/DelosCameraController;->access$1200(Lcom/parrot/freeflight/piloting/ui/DelosCameraController;I)V

    .line 422
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosCameraController$6;->this$0:Lcom/parrot/freeflight/piloting/ui/DelosCameraController;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/DelosCameraController;->access$800(Lcom/parrot/freeflight/piloting/ui/DelosCameraController;)Lcom/parrot/freeflight/camera/CameraController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/camera/CameraController;->releaseCamera()V

    .line 423
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosCameraController$6;->this$0:Lcom/parrot/freeflight/piloting/ui/DelosCameraController;

    sget-object v1, Lcom/parrot/freeflight/piloting/ui/DelosCameraController$CameraStatus;->RELEASE:Lcom/parrot/freeflight/piloting/ui/DelosCameraController$CameraStatus;

    invoke-static {v0, v1}, Lcom/parrot/freeflight/piloting/ui/DelosCameraController;->access$1400(Lcom/parrot/freeflight/piloting/ui/DelosCameraController;Lcom/parrot/freeflight/piloting/ui/DelosCameraController$CameraStatus;)V

    goto/16 :goto_0

    .line 429
    .end local v9    # "success":Z
    :pswitch_1
    const/4 v8, 0x0

    .line 430
    .local v8, "recordInitialized":Z
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosCameraController$6;->this$0:Lcom/parrot/freeflight/piloting/ui/DelosCameraController;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/DelosCameraController;->access$200(Lcom/parrot/freeflight/piloting/ui/DelosCameraController;)Landroid/view/TextureView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/TextureView;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 431
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosCameraController$6;->this$0:Lcom/parrot/freeflight/piloting/ui/DelosCameraController;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/DelosCameraController;->access$1500(Lcom/parrot/freeflight/piloting/ui/DelosCameraController;)Ljava/lang/String;

    move-result-object v3

    .line 432
    .local v3, "videoDate":Ljava/lang/String;
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosCameraController$6;->this$0:Lcom/parrot/freeflight/piloting/ui/DelosCameraController;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/DelosCameraController;->access$800(Lcom/parrot/freeflight/piloting/ui/DelosCameraController;)Lcom/parrot/freeflight/camera/CameraController;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/DelosCameraController$6;->this$0:Lcom/parrot/freeflight/piloting/ui/DelosCameraController;

    invoke-static {v1}, Lcom/parrot/freeflight/piloting/ui/DelosCameraController;->access$200(Lcom/parrot/freeflight/piloting/ui/DelosCameraController;)Landroid/view/TextureView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/piloting/ui/DelosCameraController$6;->this$0:Lcom/parrot/freeflight/piloting/ui/DelosCameraController;

    invoke-static {v2, v3}, Lcom/parrot/freeflight/piloting/ui/DelosCameraController;->access$1600(Lcom/parrot/freeflight/piloting/ui/DelosCameraController;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    iget-object v4, p0, Lcom/parrot/freeflight/piloting/ui/DelosCameraController$6;->this$0:Lcom/parrot/freeflight/piloting/ui/DelosCameraController;

    invoke-static {v4}, Lcom/parrot/freeflight/piloting/ui/DelosCameraController;->access$200(Lcom/parrot/freeflight/piloting/ui/DelosCameraController;)Landroid/view/TextureView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/TextureView;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/parrot/freeflight/piloting/ui/DelosCameraController$6;->this$0:Lcom/parrot/freeflight/piloting/ui/DelosCameraController;

    invoke-static {v5}, Lcom/parrot/freeflight/piloting/ui/DelosCameraController;->access$200(Lcom/parrot/freeflight/piloting/ui/DelosCameraController;)Landroid/view/TextureView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/TextureView;->getHeight()I

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lcom/parrot/freeflight/camera/CameraController;->initVideoRecord(Landroid/graphics/SurfaceTexture;Ljava/io/File;Ljava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 435
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosCameraController$6;->this$0:Lcom/parrot/freeflight/piloting/ui/DelosCameraController;

    invoke-static {v0, v10}, Lcom/parrot/freeflight/piloting/ui/DelosCameraController;->access$1200(Lcom/parrot/freeflight/piloting/ui/DelosCameraController;I)V

    .line 436
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosCameraController$6;->this$0:Lcom/parrot/freeflight/piloting/ui/DelosCameraController;

    invoke-static {v0, v6}, Lcom/parrot/freeflight/piloting/ui/DelosCameraController;->access$1302(Lcom/parrot/freeflight/piloting/ui/DelosCameraController;Z)Z

    .line 437
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosCameraController$6;->this$0:Lcom/parrot/freeflight/piloting/ui/DelosCameraController;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/DelosCameraController;->access$800(Lcom/parrot/freeflight/piloting/ui/DelosCameraController;)Lcom/parrot/freeflight/camera/CameraController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/camera/CameraController;->startVideoRecord()V

    .line 438
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosCameraController$6;->this$0:Lcom/parrot/freeflight/piloting/ui/DelosCameraController;

    invoke-static {v0, v7}, Lcom/parrot/freeflight/piloting/ui/DelosCameraController;->access$1400(Lcom/parrot/freeflight/piloting/ui/DelosCameraController;Lcom/parrot/freeflight/piloting/ui/DelosCameraController$CameraStatus;)V

    .line 440
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosCameraController$6;->this$0:Lcom/parrot/freeflight/piloting/ui/DelosCameraController;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/parrot/freeflight/piloting/ui/DelosCameraController;->access$1100(Lcom/parrot/freeflight/piloting/ui/DelosCameraController;Z)V

    .line 441
    const/4 v8, 0x1

    .line 445
    .end local v3    # "videoDate":Ljava/lang/String;
    :cond_5
    if-nez v8, :cond_0

    .line 446
    const-string v0, "DelosCameraController"

    const-string v1, "Failed to initialize video camera"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosCameraController$6;->this$0:Lcom/parrot/freeflight/piloting/ui/DelosCameraController;

    invoke-static {v0, v10}, Lcom/parrot/freeflight/piloting/ui/DelosCameraController;->access$1200(Lcom/parrot/freeflight/piloting/ui/DelosCameraController;I)V

    .line 450
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosCameraController$6;->this$0:Lcom/parrot/freeflight/piloting/ui/DelosCameraController;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/DelosCameraController;->access$800(Lcom/parrot/freeflight/piloting/ui/DelosCameraController;)Lcom/parrot/freeflight/camera/CameraController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/camera/CameraController;->releaseRecord()V

    .line 451
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosCameraController$6;->this$0:Lcom/parrot/freeflight/piloting/ui/DelosCameraController;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/DelosCameraController;->access$800(Lcom/parrot/freeflight/piloting/ui/DelosCameraController;)Lcom/parrot/freeflight/camera/CameraController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/camera/CameraController;->releaseCamera()V

    .line 452
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosCameraController$6;->this$0:Lcom/parrot/freeflight/piloting/ui/DelosCameraController;

    sget-object v1, Lcom/parrot/freeflight/piloting/ui/DelosCameraController$CameraStatus;->RELEASE:Lcom/parrot/freeflight/piloting/ui/DelosCameraController$CameraStatus;

    invoke-static {v0, v1}, Lcom/parrot/freeflight/piloting/ui/DelosCameraController;->access$1400(Lcom/parrot/freeflight/piloting/ui/DelosCameraController;Lcom/parrot/freeflight/piloting/ui/DelosCameraController$CameraStatus;)V

    goto/16 :goto_0

    .line 458
    .end local v8    # "recordInitialized":Z
    :pswitch_2
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosCameraController$6;->this$0:Lcom/parrot/freeflight/piloting/ui/DelosCameraController;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/DelosCameraController;->access$800(Lcom/parrot/freeflight/piloting/ui/DelosCameraController;)Lcom/parrot/freeflight/camera/CameraController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/camera/CameraController;->stopVideoRecord()V

    .line 459
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosCameraController$6;->this$0:Lcom/parrot/freeflight/piloting/ui/DelosCameraController;

    invoke-static {v0, v10}, Lcom/parrot/freeflight/piloting/ui/DelosCameraController;->access$1100(Lcom/parrot/freeflight/piloting/ui/DelosCameraController;Z)V

    .line 460
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosCameraController$6;->this$0:Lcom/parrot/freeflight/piloting/ui/DelosCameraController;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/DelosCameraController;->access$800(Lcom/parrot/freeflight/piloting/ui/DelosCameraController;)Lcom/parrot/freeflight/camera/CameraController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/camera/CameraController;->stopPreview()V

    .line 462
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosCameraController$6;->this$0:Lcom/parrot/freeflight/piloting/ui/DelosCameraController;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/parrot/freeflight/piloting/ui/DelosCameraController;->access$1200(Lcom/parrot/freeflight/piloting/ui/DelosCameraController;I)V

    .line 464
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosCameraController$6;->this$0:Lcom/parrot/freeflight/piloting/ui/DelosCameraController;

    invoke-static {v0, v7}, Lcom/parrot/freeflight/piloting/ui/DelosCameraController;->access$1400(Lcom/parrot/freeflight/piloting/ui/DelosCameraController;Lcom/parrot/freeflight/piloting/ui/DelosCameraController$CameraStatus;)V

    goto/16 :goto_0

    .line 473
    .end local v6    # "currentExpectedFlag":Z
    .end local v7    # "currentExpectedState":Lcom/parrot/freeflight/piloting/ui/DelosCameraController$CameraStatus;
    :cond_6
    const-string v0, "DelosCameraController"

    const-string v1, "Nothing to do, new state is just current state"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 398
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
