.class Lcom/parrot/freeflight/piloting/ui/DelosCameraController$2;
.super Ljava/lang/Object;
.source "DelosCameraController.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/piloting/ui/DelosCameraController;-><init>(Landroid/content/Context;Lcom/parrot/freeflight/util/PermissionChecker;Landroid/view/TextureView;Landroid/widget/ImageButton;Lcom/parrot/freeflight/core/model/DelosModel;Lcom/parrot/freeflight/piloting/preference/JoystickState;)V
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
    .line 143
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/DelosCameraController$2;->this$0:Lcom/parrot/freeflight/piloting/ui/DelosCameraController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 2
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 147
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosCameraController$2;->this$0:Lcom/parrot/freeflight/piloting/ui/DelosCameraController;

    sget-object v1, Lcom/parrot/freeflight/piloting/ui/DelosCameraController$CameraStatus;->RELEASE:Lcom/parrot/freeflight/piloting/ui/DelosCameraController$CameraStatus;

    invoke-static {v0, v1}, Lcom/parrot/freeflight/piloting/ui/DelosCameraController;->access$102(Lcom/parrot/freeflight/piloting/ui/DelosCameraController;Lcom/parrot/freeflight/piloting/ui/DelosCameraController$CameraStatus;)Lcom/parrot/freeflight/piloting/ui/DelosCameraController$CameraStatus;

    .line 148
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosCameraController$2;->this$0:Lcom/parrot/freeflight/piloting/ui/DelosCameraController;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/DelosCameraController;->access$200(Lcom/parrot/freeflight/piloting/ui/DelosCameraController;)Landroid/view/TextureView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setVisibility(I)V

    .line 150
    invoke-static {}, Lcom/parrot/freeflight/piloting/ui/DelosCameraController;->access$300()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    if-nez v0, :cond_0

    .line 151
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/DelosCameraController;->access$302(Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/ExecutorService;

    .line 152
    const-string v0, "DelosCameraController"

    const-string v1, "create Executor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosCameraController$2;->this$0:Lcom/parrot/freeflight/piloting/ui/DelosCameraController;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/DelosCameraController;->access$400(Lcom/parrot/freeflight/piloting/ui/DelosCameraController;)V

    .line 155
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 163
    const/4 v0, 0x0

    return v0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 159
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 168
    return-void
.end method
