.class Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment$1;
.super Ljava/lang/Object;
.source "DroneMemoryTransferFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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
    .line 135
    iput-object p1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment$1;->this$0:Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 138
    iget-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment$1;->this$0:Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;

    invoke-static {v0}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->access$000(Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;)V

    .line 139
    iget-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment$1;->this$0:Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;

    iget-object v0, v0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->mDroneMemoryActivity:Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;

    iget-object v1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment$1;->this$0:Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;

    invoke-static {v1}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;->access$100(Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;)I

    move-result v1

    iget-object v2, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment$1;->this$0:Lcom/parrot/freeflight/media/dronememory/DroneMemoryTransferFragment;

    invoke-virtual {v0, v1, v2}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->checkAndPerformEndTransferAction(ILandroid/support/v4/app/Fragment;)V

    .line 140
    return-void
.end method
