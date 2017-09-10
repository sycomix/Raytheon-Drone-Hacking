.class Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity$3;
.super Ljava/lang/Object;
.source "DroneMemoryActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;

    .prologue
    .line 220
    iput-object p1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity$3;->this$0:Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 223
    iget-object v3, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity$3;->this$0:Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;

    invoke-static {v3}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->access$000(Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;)Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 224
    iget-object v3, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity$3;->this$0:Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;

    invoke-static {v3}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->access$300(Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    iget-object v4, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity$3;->this$0:Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;

    invoke-static {v4}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->access$000(Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;)Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter;->getCount()I

    move-result v4

    if-ne v3, v4, :cond_1

    move v0, v1

    .line 225
    .local v0, "allItemsSelected":Z
    :goto_0
    iget-object v3, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity$3;->this$0:Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;

    invoke-static {v3}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->access$000(Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;)Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter;

    move-result-object v4

    if-nez v0, :cond_2

    move v3, v1

    :goto_1
    invoke-virtual {v4, v3}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter;->selectAll(Z)V

    .line 226
    iget-object v3, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity$3;->this$0:Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;

    invoke-static {v3}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->access$000(Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;)Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter;->notifyDataSetChanged()V

    .line 227
    iget-object v3, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity$3;->this$0:Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;

    iget-object v4, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity$3;->this$0:Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;

    invoke-static {v4}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->access$300(Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    invoke-static {v3, v4}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->access$400(Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;I)V

    .line 228
    iget-object v3, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity$3;->this$0:Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;

    if-nez v0, :cond_3

    :goto_2
    invoke-static {v3, v1}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->access$500(Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;Z)V

    .line 230
    .end local v0    # "allItemsSelected":Z
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 224
    goto :goto_0

    .restart local v0    # "allItemsSelected":Z
    :cond_2
    move v3, v2

    .line 225
    goto :goto_1

    :cond_3
    move v1, v2

    .line 228
    goto :goto_2
.end method
