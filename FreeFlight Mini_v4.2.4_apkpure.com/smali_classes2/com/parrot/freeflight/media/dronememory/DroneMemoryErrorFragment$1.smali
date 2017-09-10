.class Lcom/parrot/freeflight/media/dronememory/DroneMemoryErrorFragment$1;
.super Ljava/lang/Object;
.source "DroneMemoryErrorFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/media/dronememory/DroneMemoryErrorFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/media/dronememory/DroneMemoryErrorFragment;

.field final synthetic val$endAction:I


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/media/dronememory/DroneMemoryErrorFragment;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/media/dronememory/DroneMemoryErrorFragment;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryErrorFragment$1;->this$0:Lcom/parrot/freeflight/media/dronememory/DroneMemoryErrorFragment;

    iput p2, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryErrorFragment$1;->val$endAction:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryErrorFragment$1;->this$0:Lcom/parrot/freeflight/media/dronememory/DroneMemoryErrorFragment;

    iget-object v0, v0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryErrorFragment;->mDroneMemoryActivity:Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;

    iget v1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryErrorFragment$1;->val$endAction:I

    iget-object v2, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryErrorFragment$1;->this$0:Lcom/parrot/freeflight/media/dronememory/DroneMemoryErrorFragment;

    invoke-virtual {v0, v1, v2}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->checkAndPerformEndTransferAction(ILandroid/support/v4/app/Fragment;)V

    .line 97
    return-void
.end method
