.class Lcom/parrot/freeflight/media/dronememory/DroneMemoryAskKeepFragment$1;
.super Ljava/lang/Object;
.source "DroneMemoryAskKeepFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/media/dronememory/DroneMemoryAskKeepFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/media/dronememory/DroneMemoryAskKeepFragment;

.field final synthetic val$endAction:I


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/media/dronememory/DroneMemoryAskKeepFragment;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/media/dronememory/DroneMemoryAskKeepFragment;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryAskKeepFragment$1;->this$0:Lcom/parrot/freeflight/media/dronememory/DroneMemoryAskKeepFragment;

    iput p2, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryAskKeepFragment$1;->val$endAction:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryAskKeepFragment$1;->this$0:Lcom/parrot/freeflight/media/dronememory/DroneMemoryAskKeepFragment;

    iget-object v0, v0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryAskKeepFragment;->mDroneMemoryActivity:Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;

    iget v1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryAskKeepFragment$1;->val$endAction:I

    iget-object v2, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryAskKeepFragment$1;->this$0:Lcom/parrot/freeflight/media/dronememory/DroneMemoryAskKeepFragment;

    invoke-virtual {v0, v1, v2}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->checkAndPerformEndTransferAction(ILandroid/support/v4/app/Fragment;)V

    .line 73
    return-void
.end method
