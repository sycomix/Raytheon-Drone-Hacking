.class Lcom/google/common/collect/LinkedListMultimap$MultisetView;
.super Lcom/google/common/collect/AbstractMultiset;
.source "LinkedListMultimap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/LinkedListMultimap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MultisetView"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/AbstractMultiset",
        "<TK;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/LinkedListMultimap;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/LinkedListMultimap;)V
    .locals 0

    .prologue
    .line 709
    .local p0, "this":Lcom/google/common/collect/LinkedListMultimap$MultisetView;, "Lcom/google/common/collect/LinkedListMultimap<TK;TV;>.MultisetView;"
    iput-object p1, p0, Lcom/google/common/collect/LinkedListMultimap$MultisetView;->this$0:Lcom/google/common/collect/LinkedListMultimap;

    invoke-direct {p0}, Lcom/google/common/collect/AbstractMultiset;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/LinkedListMultimap;Lcom/google/common/collect/LinkedListMultimap$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/common/collect/LinkedListMultimap;
    .param p2, "x1"    # Lcom/google/common/collect/LinkedListMultimap$1;

    .prologue
    .line 709
    .local p0, "this":Lcom/google/common/collect/LinkedListMultimap$MultisetView;, "Lcom/google/common/collect/LinkedListMultimap<TK;TV;>.MultisetView;"
    invoke-direct {p0, p1}, Lcom/google/common/collect/LinkedListMultimap$MultisetView;-><init>(Lcom/google/common/collect/LinkedListMultimap;)V

    return-void
.end method


# virtual methods
.method public count(Ljava/lang/Object;)I
    .locals 1
    .param p1, "element"    # Ljava/lang/Object;

    .prologue
    .line 717
    .local p0, "this":Lcom/google/common/collect/LinkedListMultimap$MultisetView;, "Lcom/google/common/collect/LinkedListMultimap<TK;TV;>.MultisetView;"
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$MultisetView;->this$0:Lcom/google/common/collect/LinkedListMultimap;

    invoke-static {v0}, Lcom/google/common/collect/LinkedListMultimap;->access$600(Lcom/google/common/collect/LinkedListMultimap;)Lcom/google/common/collect/Multiset;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/collect/Multiset;->count(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method distinctElements()I
    .locals 1

    .prologue
    .line 742
    .local p0, "this":Lcom/google/common/collect/LinkedListMultimap$MultisetView;, "Lcom/google/common/collect/LinkedListMultimap<TK;TV;>.MultisetView;"
    invoke-virtual {p0}, Lcom/google/common/collect/LinkedListMultimap$MultisetView;->elementSet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method

.method public elementSet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 768
    .local p0, "this":Lcom/google/common/collect/LinkedListMultimap$MultisetView;, "Lcom/google/common/collect/LinkedListMultimap<TK;TV;>.MultisetView;"
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$MultisetView;->this$0:Lcom/google/common/collect/LinkedListMultimap;

    invoke-virtual {v0}, Lcom/google/common/collect/LinkedListMultimap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method entryIterator()Ljava/util/Iterator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/google/common/collect/Multiset$Entry",
            "<TK;>;>;"
        }
    .end annotation

    .prologue
    .line 722
    .local p0, "this":Lcom/google/common/collect/LinkedListMultimap$MultisetView;, "Lcom/google/common/collect/LinkedListMultimap<TK;TV;>.MultisetView;"
    new-instance v0, Lcom/google/common/collect/LinkedListMultimap$MultisetView$1;

    new-instance v1, Lcom/google/common/collect/LinkedListMultimap$DistinctKeyIterator;

    iget-object v2, p0, Lcom/google/common/collect/LinkedListMultimap$MultisetView;->this$0:Lcom/google/common/collect/LinkedListMultimap;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/google/common/collect/LinkedListMultimap$DistinctKeyIterator;-><init>(Lcom/google/common/collect/LinkedListMultimap;Lcom/google/common/collect/LinkedListMultimap$1;)V

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/LinkedListMultimap$MultisetView$1;-><init>(Lcom/google/common/collect/LinkedListMultimap$MultisetView;Ljava/util/Iterator;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 772
    .local p0, "this":Lcom/google/common/collect/LinkedListMultimap$MultisetView;, "Lcom/google/common/collect/LinkedListMultimap<TK;TV;>.MultisetView;"
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$MultisetView;->this$0:Lcom/google/common/collect/LinkedListMultimap;

    invoke-static {v0}, Lcom/google/common/collect/LinkedListMultimap;->access$600(Lcom/google/common/collect/LinkedListMultimap;)Lcom/google/common/collect/Multiset;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 776
    .local p0, "this":Lcom/google/common/collect/LinkedListMultimap$MultisetView;, "Lcom/google/common/collect/LinkedListMultimap<TK;TV;>.MultisetView;"
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$MultisetView;->this$0:Lcom/google/common/collect/LinkedListMultimap;

    invoke-static {v0}, Lcom/google/common/collect/LinkedListMultimap;->access$600(Lcom/google/common/collect/LinkedListMultimap;)Lcom/google/common/collect/Multiset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 746
    .local p0, "this":Lcom/google/common/collect/LinkedListMultimap$MultisetView;, "Lcom/google/common/collect/LinkedListMultimap<TK;TV;>.MultisetView;"
    new-instance v0, Lcom/google/common/collect/LinkedListMultimap$MultisetView$2;

    new-instance v1, Lcom/google/common/collect/LinkedListMultimap$NodeIterator;

    iget-object v2, p0, Lcom/google/common/collect/LinkedListMultimap$MultisetView;->this$0:Lcom/google/common/collect/LinkedListMultimap;

    invoke-direct {v1, v2}, Lcom/google/common/collect/LinkedListMultimap$NodeIterator;-><init>(Lcom/google/common/collect/LinkedListMultimap;)V

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/LinkedListMultimap$MultisetView$2;-><init>(Lcom/google/common/collect/LinkedListMultimap$MultisetView;Ljava/util/Iterator;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;I)I
    .locals 4
    .param p1, "key"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "occurrences"    # I

    .prologue
    .line 756
    .local p0, "this":Lcom/google/common/collect/LinkedListMultimap$MultisetView;, "Lcom/google/common/collect/LinkedListMultimap<TK;TV;>.MultisetView;"
    if-ltz p2, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-static {v3}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 757
    invoke-virtual {p0, p1}, Lcom/google/common/collect/LinkedListMultimap$MultisetView;->count(Ljava/lang/Object;)I

    move-result v1

    .line 758
    .local v1, "oldCount":I
    new-instance v2, Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;

    iget-object v3, p0, Lcom/google/common/collect/LinkedListMultimap$MultisetView;->this$0:Lcom/google/common/collect/LinkedListMultimap;

    invoke-direct {v2, v3, p1}, Lcom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;-><init>(Lcom/google/common/collect/LinkedListMultimap;Ljava/lang/Object;)V

    .local v2, "values":Ljava/util/Iterator;, "Ljava/util/Iterator<TV;>;"
    move v0, p2

    .line 759
    .end local p2    # "occurrences":I
    .local v0, "occurrences":I
    :goto_1
    add-int/lit8 p2, v0, -0x1

    .end local v0    # "occurrences":I
    .restart local p2    # "occurrences":I
    if-lez v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 760
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 761
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    move v0, p2

    .end local p2    # "occurrences":I
    .restart local v0    # "occurrences":I
    goto :goto_1

    .line 756
    .end local v0    # "occurrences":I
    .end local v1    # "oldCount":I
    .end local v2    # "values":Ljava/util/Iterator;, "Ljava/util/Iterator<TV;>;"
    .restart local p2    # "occurrences":I
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 763
    .restart local v1    # "oldCount":I
    .restart local v2    # "values":Ljava/util/Iterator;, "Ljava/util/Iterator<TV;>;"
    :cond_1
    return v1
.end method

.method public size()I
    .locals 1

    .prologue
    .line 712
    .local p0, "this":Lcom/google/common/collect/LinkedListMultimap$MultisetView;, "Lcom/google/common/collect/LinkedListMultimap<TK;TV;>.MultisetView;"
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$MultisetView;->this$0:Lcom/google/common/collect/LinkedListMultimap;

    invoke-static {v0}, Lcom/google/common/collect/LinkedListMultimap;->access$600(Lcom/google/common/collect/LinkedListMultimap;)Lcom/google/common/collect/Multiset;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/Multiset;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 780
    .local p0, "this":Lcom/google/common/collect/LinkedListMultimap$MultisetView;, "Lcom/google/common/collect/LinkedListMultimap<TK;TV;>.MultisetView;"
    iget-object v0, p0, Lcom/google/common/collect/LinkedListMultimap$MultisetView;->this$0:Lcom/google/common/collect/LinkedListMultimap;

    invoke-static {v0}, Lcom/google/common/collect/LinkedListMultimap;->access$600(Lcom/google/common/collect/LinkedListMultimap;)Lcom/google/common/collect/Multiset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
