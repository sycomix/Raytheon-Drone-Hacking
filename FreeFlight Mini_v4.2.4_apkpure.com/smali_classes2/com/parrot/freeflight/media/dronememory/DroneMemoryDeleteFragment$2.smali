.class Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment$2;
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

.field final synthetic val$targetFragment:Landroid/support/v4/app/Fragment;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;Landroid/support/v4/app/Fragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;

    .prologue
    .line 132
    iput-object p1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment$2;->this$0:Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;

    iput-object p2, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment$2;->val$targetFragment:Landroid/support/v4/app/Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 135
    iget-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment$2;->this$0:Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;->access$202(Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;Z)Z

    .line 136
    iget-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment$2;->this$0:Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;

    invoke-static {v0}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;->access$300(Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;)V

    .line 137
    iget-object v1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment$2;->this$0:Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;

    new-instance v2, Lcom/parrot/freeflight/media/model/FileDeleteManager;

    iget-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment$2;->val$targetFragment:Landroid/support/v4/app/Fragment;

    check-cast v0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryController;

    iget-object v3, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment$2;->this$0:Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;

    invoke-static {v3}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;->access$500(Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;)Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment$ManagerListener;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/parrot/freeflight/media/model/FileDeleteManager;-><init>(Lcom/parrot/freeflight/media/model/IMediaStore;Lcom/parrot/freeflight/media/model/FileDeleteManager$FileDeleteManagerListener;)V

    invoke-static {v1, v2}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;->access$402(Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;Lcom/parrot/freeflight/media/model/FileDeleteManager;)Lcom/parrot/freeflight/media/model/FileDeleteManager;

    .line 138
    iget-object v0, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment$2;->this$0:Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;

    invoke-static {v0}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;->access$400(Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;)Lcom/parrot/freeflight/media/model/FileDeleteManager;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment$2;->this$0:Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;

    invoke-static {v1}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;->access$600(Lcom/parrot/freeflight/media/dronememory/DroneMemoryDeleteFragment;)[Lcom/parrot/freeflight/media/model/FileItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/media/model/FileDeleteManager;->deleteMedias([Lcom/parrot/freeflight/media/model/FileItem;)V

    .line 139
    return-void
.end method
