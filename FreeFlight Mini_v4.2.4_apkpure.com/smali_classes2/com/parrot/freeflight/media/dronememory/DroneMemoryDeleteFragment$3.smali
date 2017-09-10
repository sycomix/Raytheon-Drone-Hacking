.class Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment$3;
.super Ljava/lang/Object;
.source "DroneMemoryDeleteFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;

    .prologue
    .line 142
    iput-object p1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment$3;->this$0:Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 145
    iget-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment$3;->this$0:Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;

    iget-object v0, v0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;->mDroneMemoryActivity:Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;

    iget-object v1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment$3;->this$0:Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;

    invoke-static {v1}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;->access$100(Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;)I

    move-result v1

    iget-object v2, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment$3;->this$0:Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;

    invoke-virtual {v0, v1, v2}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->checkAndPerformEndTransferAction(ILandroid/support/v4/app/Fragment;)V

    .line 146
    return-void
.end method
