.class public Lcom/parrot/freeflight/gamepad/list/GamePadListAdapter$GamePadViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "GamePadListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/gamepad/list/GamePadListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "GamePadViewHolder"
.end annotation


# instance fields
.field private final mDroneNameTextView:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mNoDronesTextView:Landroid/widget/TextView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mStatusView:Landroid/view/View;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2
    .param p1, "itemView"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 112
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 113
    const v1, 0x7f0f020a

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/parrot/freeflight/gamepad/list/GamePadListAdapter$GamePadViewHolder;->mDroneNameTextView:Landroid/widget/TextView;

    .line 114
    const v1, 0x7f0f0209

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/parrot/freeflight/gamepad/list/GamePadListAdapter$GamePadViewHolder;->mStatusView:Landroid/view/View;

    .line 115
    const v1, 0x7f0f020b

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/parrot/freeflight/gamepad/list/GamePadListAdapter$GamePadViewHolder;->mNoDronesTextView:Landroid/widget/TextView;

    .line 116
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 117
    .local v0, "context":Landroid/content/Context;
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/list/GamePadListAdapter$GamePadViewHolder;->mDroneNameTextView:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 118
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/list/GamePadListAdapter$GamePadViewHolder;->mNoDronesTextView:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    .line 119
    return-void
.end method


# virtual methods
.method public update(Lcom/parrot/freeflight/gamepad/GamePad;)V
    .locals 6
    .param p1, "gamepad"    # Lcom/parrot/freeflight/gamepad/GamePad;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x1

    const/16 v4, 0x8

    const/4 v2, 0x0

    .line 122
    if-nez p1, :cond_2

    move v0, v1

    .line 123
    .local v0, "hasNoGamePads":Z
    :goto_0
    iget-object v5, p0, Lcom/parrot/freeflight/gamepad/list/GamePadListAdapter$GamePadViewHolder;->mDroneNameTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    move v3, v4

    :goto_1
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 124
    iget-object v5, p0, Lcom/parrot/freeflight/gamepad/list/GamePadListAdapter$GamePadViewHolder;->mStatusView:Landroid/view/View;

    if-eqz v0, :cond_4

    move v3, v4

    :goto_2
    invoke-virtual {v5, v3}, Landroid/view/View;->setVisibility(I)V

    .line 125
    iget-object v3, p0, Lcom/parrot/freeflight/gamepad/list/GamePadListAdapter$GamePadViewHolder;->mNoDronesTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    move v4, v2

    :cond_0
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 126
    iget-object v3, p0, Lcom/parrot/freeflight/gamepad/list/GamePadListAdapter$GamePadViewHolder;->itemView:Landroid/view/View;

    if-nez v0, :cond_5

    :goto_3
    invoke-virtual {v3, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 127
    if-nez v0, :cond_1

    .line 128
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/list/GamePadListAdapter$GamePadViewHolder;->mDroneNameTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/parrot/freeflight/gamepad/GamePad;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    :cond_1
    return-void

    .end local v0    # "hasNoGamePads":Z
    :cond_2
    move v0, v2

    .line 122
    goto :goto_0

    .restart local v0    # "hasNoGamePads":Z
    :cond_3
    move v3, v2

    .line 123
    goto :goto_1

    :cond_4
    move v3, v2

    .line 124
    goto :goto_2

    :cond_5
    move v1, v2

    .line 126
    goto :goto_3
.end method
