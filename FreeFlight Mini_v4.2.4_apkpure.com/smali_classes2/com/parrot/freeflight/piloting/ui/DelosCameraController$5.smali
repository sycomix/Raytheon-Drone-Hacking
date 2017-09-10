.class Lcom/parrot/freeflight/piloting/ui/DelosCameraController$5;
.super Ljava/lang/Object;
.source "DelosCameraController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/piloting/ui/DelosCameraController;->setPreviewVisibility(I)V
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
    .line 338
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/DelosCameraController$5;->this$0:Lcom/parrot/freeflight/piloting/ui/DelosCameraController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 341
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/DelosCameraController$5;->this$0:Lcom/parrot/freeflight/piloting/ui/DelosCameraController;

    invoke-static {v1}, Lcom/parrot/freeflight/piloting/ui/DelosCameraController;->access$800(Lcom/parrot/freeflight/piloting/ui/DelosCameraController;)Lcom/parrot/freeflight/camera/CameraController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/freeflight/camera/CameraController;->isCameraReady()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    .line 342
    .local v0, "expectVisibility":I
    :goto_0
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/DelosCameraController$5;->this$0:Lcom/parrot/freeflight/piloting/ui/DelosCameraController;

    invoke-static {v1}, Lcom/parrot/freeflight/piloting/ui/DelosCameraController;->access$200(Lcom/parrot/freeflight/piloting/ui/DelosCameraController;)Landroid/view/TextureView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/TextureView;->getVisibility()I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 343
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/DelosCameraController$5;->this$0:Lcom/parrot/freeflight/piloting/ui/DelosCameraController;

    invoke-static {v1}, Lcom/parrot/freeflight/piloting/ui/DelosCameraController;->access$200(Lcom/parrot/freeflight/piloting/ui/DelosCameraController;)Landroid/view/TextureView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/TextureView;->setVisibility(I)V

    .line 345
    :cond_0
    return-void

    .line 341
    .end local v0    # "expectVisibility":I
    :cond_1
    const/4 v0, 0x4

    goto :goto_0
.end method
