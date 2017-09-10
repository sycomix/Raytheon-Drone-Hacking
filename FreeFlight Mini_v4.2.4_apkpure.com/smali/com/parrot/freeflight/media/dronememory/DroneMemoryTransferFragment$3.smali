.class Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment$3;
.super Ljava/lang/Object;
.source "DroneMemoryTransferFragment.java"

# interfaces
.implements Lcom/parrot/freeflight/util/FragmentPermissionChecker$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;

    .prologue
    .line 167
    iput-object p1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment$3;->this$0:Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPermissionsChanged(ZLjava/util/Map;)V
    .locals 3
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
    .line 170
    .local p2, "permissionsStatusDetails":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Boolean;>;"
    if-eqz p1, :cond_0

    .line 172
    iget-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment$3;->this$0:Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;

    invoke-static {v0}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->access$500(Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;)Lcom/parrot/freeflight/media/model/FileTransferManager;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment$3;->this$0:Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;

    invoke-static {v1}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->access$400(Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;)[Lcom/parrot/freeflight/media/model/FileItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/media/model/FileTransferManager;->transferMedias([Lcom/parrot/freeflight/media/model/FileItem;)V

    .line 181
    :goto_0
    return-void

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment$3;->this$0:Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;

    invoke-static {v0}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->access$600(Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 175
    iget-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment$3;->this$0:Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;

    invoke-static {v0}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->access$000(Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;)V

    .line 176
    iget-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment$3;->this$0:Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;

    iget-object v0, v0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->mDroneMemoryActivity:Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;

    iget-object v1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment$3;->this$0:Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;

    invoke-static {v1}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->access$100(Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;)I

    move-result v1

    iget-object v2, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment$3;->this$0:Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;

    invoke-virtual {v0, v1, v2}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->checkAndPerformEndTransferAction(ILandroid/support/v4/app/Fragment;)V

    goto :goto_0

    .line 178
    :cond_1
    iget-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment$3;->this$0:Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->access$702(Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;Z)Z

    goto :goto_0
.end method
