.class Lcom/parrot/freeflight/gamepad/list/GamePadListAdapter$1;
.super Ljava/lang/Object;
.source "GamePadListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/gamepad/list/GamePadListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/parrot/freeflight/gamepad/list/GamePadListAdapter$GamePadViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/gamepad/list/GamePadListAdapter;

.field final synthetic val$viewHolder:Lcom/parrot/freeflight/gamepad/list/GamePadListAdapter$GamePadViewHolder;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/gamepad/list/GamePadListAdapter;Lcom/parrot/freeflight/gamepad/list/GamePadListAdapter$GamePadViewHolder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/gamepad/list/GamePadListAdapter;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/parrot/freeflight/gamepad/list/GamePadListAdapter$1;->this$0:Lcom/parrot/freeflight/gamepad/list/GamePadListAdapter;

    iput-object p2, p0, Lcom/parrot/freeflight/gamepad/list/GamePadListAdapter$1;->val$viewHolder:Lcom/parrot/freeflight/gamepad/list/GamePadListAdapter$GamePadViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 54
    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/list/GamePadListAdapter$1;->val$viewHolder:Lcom/parrot/freeflight/gamepad/list/GamePadListAdapter$GamePadViewHolder;

    invoke-virtual {v2}, Lcom/parrot/freeflight/gamepad/list/GamePadListAdapter$GamePadViewHolder;->getAdapterPosition()I

    move-result v1

    .line 55
    .local v1, "position":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/list/GamePadListAdapter$1;->this$0:Lcom/parrot/freeflight/gamepad/list/GamePadListAdapter;

    invoke-static {v2}, Lcom/parrot/freeflight/gamepad/list/GamePadListAdapter;->access$000(Lcom/parrot/freeflight/gamepad/list/GamePadListAdapter;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 62
    :cond_0
    :goto_0
    return-void

    .line 58
    :cond_1
    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/list/GamePadListAdapter$1;->this$0:Lcom/parrot/freeflight/gamepad/list/GamePadListAdapter;

    invoke-static {v2}, Lcom/parrot/freeflight/gamepad/list/GamePadListAdapter;->access$000(Lcom/parrot/freeflight/gamepad/list/GamePadListAdapter;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/gamepad/GamePad;

    .line 59
    .local v0, "gamePad":Lcom/parrot/freeflight/gamepad/GamePad;
    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/list/GamePadListAdapter$1;->this$0:Lcom/parrot/freeflight/gamepad/list/GamePadListAdapter;

    invoke-static {v2}, Lcom/parrot/freeflight/gamepad/list/GamePadListAdapter;->access$100(Lcom/parrot/freeflight/gamepad/list/GamePadListAdapter;)Lcom/parrot/freeflight/gamepad/list/GamePadListAdapter$IListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 60
    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/list/GamePadListAdapter$1;->this$0:Lcom/parrot/freeflight/gamepad/list/GamePadListAdapter;

    invoke-static {v2}, Lcom/parrot/freeflight/gamepad/list/GamePadListAdapter;->access$100(Lcom/parrot/freeflight/gamepad/list/GamePadListAdapter;)Lcom/parrot/freeflight/gamepad/list/GamePadListAdapter$IListener;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/parrot/freeflight/gamepad/list/GamePadListAdapter$IListener;->onGamePadSelected(Lcom/parrot/freeflight/gamepad/GamePad;)V

    goto :goto_0
.end method
