.class Lcom/parrot/freeflight/media/dronememory/DroneMemoryAskKeepFragment$2;
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

.field final synthetic val$fileItems:[Lcom/parrot/freeflight/media/model/FileItem;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/media/dronememory/DroneMemoryAskKeepFragment;[Lcom/parrot/freeflight/media/model/FileItem;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/media/dronememory/DroneMemoryAskKeepFragment;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryAskKeepFragment$2;->this$0:Lcom/parrot/freeflight/media/dronememory/DroneMemoryAskKeepFragment;

    iput-object p2, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryAskKeepFragment$2;->val$fileItems:[Lcom/parrot/freeflight/media/model/FileItem;

    iput p3, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryAskKeepFragment$2;->val$endAction:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 79
    iget-object v1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryAskKeepFragment$2;->this$0:Lcom/parrot/freeflight/media/dronememory/DroneMemoryAskKeepFragment;

    invoke-virtual {v1}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryAskKeepFragment;->getTargetFragment()Landroid/support/v4/app/Fragment;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryAskKeepFragment$2;->val$fileItems:[Lcom/parrot/freeflight/media/model/FileItem;

    iget v3, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryAskKeepFragment$2;->val$endAction:I

    invoke-static {v1, v2, v3}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;->newInstance(Landroid/support/v4/app/Fragment;[Lcom/parrot/freeflight/media/model/FileItem;I)Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;

    move-result-object v0

    .line 80
    .local v0, "fragment":Landroid/support/v4/app/Fragment;
    iget-object v1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryAskKeepFragment$2;->this$0:Lcom/parrot/freeflight/media/dronememory/DroneMemoryAskKeepFragment;

    iget-object v1, v1, Lcom/parrot/freeflight/media/dronememory/DroneMemoryAskKeepFragment;->mDroneMemoryActivity:Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;

    invoke-virtual {v1, v0}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->replaceFragment(Landroid/support/v4/app/Fragment;)V

    .line 81
    return-void
.end method
