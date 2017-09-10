.class Lcom/google/common/collect/AbstractMultimap$WrappedSet;
.super Lcom/google/common/collect/AbstractMultimap$WrappedCollection;
.source "AbstractMultimap.java"

# interfaces
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/AbstractMultimap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WrappedSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/AbstractMultimap",
        "<TK;TV;>.WrappedCollection;",
        "Ljava/util/Set",
        "<TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/AbstractMultimap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/AbstractMultimap;Ljava/lang/Object;Ljava/util/Set;)V
    .locals 1
    .param p1    # Lcom/google/common/collect/AbstractMultimap;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/Set",
            "<TV;>;)V"
        }
    .end annotation

    .prologue
    .line 656
    .local p0, "this":Lcom/google/common/collect/AbstractMultimap$WrappedSet;, "Lcom/google/common/collect/AbstractMultimap<TK;TV;>.WrappedSet;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    .local p3, "delegate":Ljava/util/Set;, "Ljava/util/Set<TV;>;"
    iput-object p1, p0, Lcom/google/common/collect/AbstractMultimap$WrappedSet;->this$0:Lcom/google/common/collect/AbstractMultimap;

    .line 657
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/common/collect/AbstractMultimap$WrappedCollection;-><init>(Lcom/google/common/collect/AbstractMultimap;Ljava/lang/Object;Ljava/util/Collection;Lcom/google/common/collect/AbstractMultimap$WrappedCollection;)V

    .line 658
    return-void
.end method


# virtual methods
.method public removeAll(Ljava/util/Collection;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 662
    .local p0, "this":Lcom/google/common/collect/AbstractMultimap$WrappedSet;, "Lcom/google/common/collect/AbstractMultimap<TK;TV;>.WrappedSet;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 663
    const/4 v0, 0x0

    .line 676
    :cond_0
    :goto_0
    return v0

    .line 665
    :cond_1
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedSet;->size()I

    move-result v2

    .line 670
    .local v2, "oldSize":I
    iget-object v3, p0, Lcom/google/common/collect/AbstractMultimap$WrappedSet;->delegate:Ljava/util/Collection;

    check-cast v3, Ljava/util/Set;

    invoke-static {v3, p1}, Lcom/google/common/collect/Sets;->removeAllImpl(Ljava/util/Set;Ljava/util/Collection;)Z

    move-result v0

    .line 671
    .local v0, "changed":Z
    if-eqz v0, :cond_0

    .line 672
    iget-object v3, p0, Lcom/google/common/collect/AbstractMultimap$WrappedSet;->delegate:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v1

    .line 673
    .local v1, "newSize":I
    iget-object v3, p0, Lcom/google/common/collect/AbstractMultimap$WrappedSet;->this$0:Lcom/google/common/collect/AbstractMultimap;

    sub-int v4, v1, v2

    invoke-static {v3, v4}, Lcom/google/common/collect/AbstractMultimap;->access$212(Lcom/google/common/collect/AbstractMultimap;I)I

    .line 674
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMultimap$WrappedSet;->removeIfEmpty()V

    goto :goto_0
.end method
