.class Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsMediasFragment$MediaListener;
.super Lcom/parrot/freeflight/core/academy/MediaManager$MediaRequestListener;
.source "MyFlightsDetailsMediasFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsMediasFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MediaListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsMediasFragment;


# direct methods
.method public constructor <init>(Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsMediasFragment;Ljava/lang/Object;)V
    .locals 0
    .param p1    # Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsMediasFragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "ref"    # Ljava/lang/Object;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsMediasFragment$MediaListener;->this$0:Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsMediasFragment;

    .line 108
    invoke-direct {p0, p2}, Lcom/parrot/freeflight/core/academy/MediaManager$MediaRequestListener;-><init>(Ljava/lang/Object;)V

    .line 109
    return-void
.end method


# virtual methods
.method public onError(Lcom/parrot/arsdk/armedia/ARMEDIA_ERROR_ENUM;)V
    .locals 0
    .param p1, "error"    # Lcom/parrot/arsdk/armedia/ARMEDIA_ERROR_ENUM;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 124
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 113
    if-eqz p1, :cond_0

    .line 114
    iget-object v0, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsMediasFragment$MediaListener;->this$0:Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsMediasFragment;

    check-cast p1, Ljava/util/ArrayList;

    .end local p1    # "result":Ljava/lang/Object;
    invoke-static {v0, p1}, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsMediasFragment;->access$102(Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsMediasFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 115
    iget-object v0, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsMediasFragment$MediaListener;->this$0:Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsMediasFragment;

    invoke-static {v0}, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsMediasFragment;->access$300(Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsMediasFragment;)Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsMediasFragment$MediaAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsMediasFragment$MediaAdapter;->clear()V

    .line 116
    iget-object v0, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsMediasFragment$MediaListener;->this$0:Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsMediasFragment;

    invoke-static {v0}, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsMediasFragment;->access$300(Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsMediasFragment;)Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsMediasFragment$MediaAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsMediasFragment$MediaListener;->this$0:Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsMediasFragment;

    invoke-static {v1}, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsMediasFragment;->access$100(Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsMediasFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsMediasFragment$MediaAdapter;->addAll(Ljava/util/Collection;)V

    .line 117
    iget-object v0, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsMediasFragment$MediaListener;->this$0:Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsMediasFragment;

    invoke-static {v0}, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsMediasFragment;->access$300(Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsMediasFragment;)Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsMediasFragment$MediaAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsMediasFragment$MediaAdapter;->notifyDataSetChanged()V

    .line 119
    :cond_0
    return-void
.end method
