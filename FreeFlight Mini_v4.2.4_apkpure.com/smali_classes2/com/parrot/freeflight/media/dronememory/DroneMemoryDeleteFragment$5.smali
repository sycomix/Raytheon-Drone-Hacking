.class Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment$5;
.super Ljava/lang/Object;
.source "DroneMemoryDeleteFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;->onDeleteSucceeded()V
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
    .line 319
    iput-object p1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment$5;->this$0:Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 322
    iget-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment$5;->this$0:Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;

    invoke-virtual {v0}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment$5;->this$0:Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;

    invoke-static {v0}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;->access$800(Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 323
    iget-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment$5;->this$0:Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;

    iget-object v0, v0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;->mDroneMemoryActivity:Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;

    iget-object v1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment$5;->this$0:Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;

    invoke-static {v1}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;->access$100(Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;)I

    move-result v1

    iget-object v2, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment$5;->this$0:Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;

    invoke-virtual {v0, v1, v2}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->checkAndPerformEndTransferAction(ILandroid/support/v4/app/Fragment;)V

    .line 325
    :cond_0
    return-void
.end method
