.class Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity$2;
.super Ljava/lang/Object;
.source "DroneMemoryActivity.java"

# interfaces
.implements Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter$AdapterListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;
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
    .line 130
    iput-object p1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity$2;->this$0:Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFilterComplete()V
    .locals 3

    .prologue
    .line 145
    iget-object v1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity$2;->this$0:Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;

    invoke-static {v1}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->access$000(Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;)Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 146
    iget-object v1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity$2;->this$0:Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;

    invoke-static {v1}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->access$300(Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v0

    .line 147
    .local v0, "nbItemsSelected":I
    iget-object v1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity$2;->this$0:Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;

    invoke-static {v1, v0}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->access$400(Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;I)V

    .line 148
    iget-object v2, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity$2;->this$0:Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;

    iget-object v1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity$2;->this$0:Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;

    invoke-static {v1}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->access$000(Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;)Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter;->getCount()I

    move-result v1

    if-ne v0, v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-static {v2, v1}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->access$500(Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;Z)V

    .line 150
    .end local v0    # "nbItemsSelected":I
    :cond_0
    return-void

    .line 148
    .restart local v0    # "nbItemsSelected":I
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onReady()V
    .locals 3

    .prologue
    .line 133
    iget-object v1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity$2;->this$0:Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;

    invoke-static {v1}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->access$000(Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;)Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 134
    iget-object v1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity$2;->this$0:Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;

    invoke-static {v1}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->access$100(Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;)Landroid/widget/ListView;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity$2;->this$0:Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;

    invoke-static {v2}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->access$000(Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;)Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 135
    iget-object v1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity$2;->this$0:Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;

    invoke-static {v1}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->access$100(Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;)Landroid/widget/ListView;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity$2;->this$0:Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;

    invoke-static {v2}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->access$200(Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 136
    iget-object v1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity$2;->this$0:Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;

    invoke-static {v1}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->access$100(Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;)Landroid/widget/ListView;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity$2;->this$0:Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;

    invoke-static {v2}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->access$000(Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;)Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter;->getRecyclerListener()Landroid/widget/AbsListView$RecyclerListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setRecyclerListener(Landroid/widget/AbsListView$RecyclerListener;)V

    .line 137
    iget-object v1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity$2;->this$0:Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;

    invoke-static {v1}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->access$300(Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v0

    .line 138
    .local v0, "nbItemsSelected":I
    iget-object v1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity$2;->this$0:Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;

    invoke-static {v1, v0}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->access$400(Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;I)V

    .line 139
    iget-object v2, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity$2;->this$0:Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;

    iget-object v1, p0, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity$2;->this$0:Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;

    invoke-static {v1}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->access$000(Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;)Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryListAdapter;->getCount()I

    move-result v1

    if-ne v0, v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-static {v2, v1}, Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;->access$500(Lcom/parrot/freeflight/media/dronememory/DroneMemoryActivity;Z)V

    .line 141
    .end local v0    # "nbItemsSelected":I
    :cond_0
    return-void

    .line 139
    .restart local v0    # "nbItemsSelected":I
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
