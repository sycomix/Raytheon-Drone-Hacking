.class Lcom/parrot/freeflight/piloting/ui/DelosCameraController$3;
.super Ljava/lang/Object;
.source "DelosCameraController.java"

# interfaces
.implements Lcom/parrot/freeflight/util/PermissionChecker$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/piloting/ui/DelosCameraController;->requestUpdateCamera(Lcom/parrot/freeflight/piloting/ui/DelosCameraController$CameraStatus;Z)V
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
    .line 270
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/DelosCameraController$3;->this$0:Lcom/parrot/freeflight/piloting/ui/DelosCameraController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPermissionsChanged(ZLjava/util/Map;)V
    .locals 2
    .param p1, "allPermissionsGranted"    # Z
    .param p2    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 273
    .local p2, "permissionsStatusDetails":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Boolean;>;"
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosCameraController$3;->this$0:Lcom/parrot/freeflight/piloting/ui/DelosCameraController;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/DelosCameraController;->access$500(Lcom/parrot/freeflight/piloting/ui/DelosCameraController;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 274
    :try_start_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosCameraController$3;->this$0:Lcom/parrot/freeflight/piloting/ui/DelosCameraController;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/DelosCameraController;->access$600(Lcom/parrot/freeflight/piloting/ui/DelosCameraController;)Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 275
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosCameraController$3;->this$0:Lcom/parrot/freeflight/piloting/ui/DelosCameraController;

    invoke-static {v0, p1}, Lcom/parrot/freeflight/piloting/ui/DelosCameraController;->access$602(Lcom/parrot/freeflight/piloting/ui/DelosCameraController;Z)Z

    .line 276
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosCameraController$3;->this$0:Lcom/parrot/freeflight/piloting/ui/DelosCameraController;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/DelosCameraController;->access$600(Lcom/parrot/freeflight/piloting/ui/DelosCameraController;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/DelosCameraController$3;->this$0:Lcom/parrot/freeflight/piloting/ui/DelosCameraController;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/DelosCameraController;->access$400(Lcom/parrot/freeflight/piloting/ui/DelosCameraController;)V

    .line 280
    :cond_0
    monitor-exit v1

    .line 281
    return-void

    .line 280
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
