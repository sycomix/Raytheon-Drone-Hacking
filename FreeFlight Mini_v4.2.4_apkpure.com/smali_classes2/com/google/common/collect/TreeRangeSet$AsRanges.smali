.class final Lcom/google/common/collect/TreeRangeSet$AsRanges;
.super Lcom/google/common/collect/ForwardingCollection;
.source "TreeRangeSet.java"

# interfaces
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/TreeRangeSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "AsRanges"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/ForwardingCollection",
        "<",
        "Lcom/google/common/collect/Range",
        "<TC;>;>;",
        "Ljava/util/Set",
        "<",
        "Lcom/google/common/collect/Range",
        "<TC;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/TreeRangeSet;


# direct methods
.method constructor <init>(Lcom/google/common/collect/TreeRangeSet;)V
    .locals 0

    .prologue
    .line 59
    .local p0, "this":Lcom/google/common/collect/TreeRangeSet$AsRanges;, "Lcom/google/common/collect/TreeRangeSet<TC;>.AsRanges;"
    iput-object p1, p0, Lcom/google/common/collect/TreeRangeSet$AsRanges;->this$0:Lcom/google/common/collect/TreeRangeSet;

    invoke-direct {p0}, Lcom/google/common/collect/ForwardingCollection;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 59
    .local p0, "this":Lcom/google/common/collect/TreeRangeSet$AsRanges;, "Lcom/google/common/collect/TreeRangeSet<TC;>.AsRanges;"
    invoke-virtual {p0}, Lcom/google/common/collect/TreeRangeSet$AsRanges;->delegate()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method protected delegate()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/common/collect/Range",
            "<TC;>;>;"
        }
    .end annotation

    .prologue
    .line 62
    .local p0, "this":Lcom/google/common/collect/TreeRangeSet$AsRanges;, "Lcom/google/common/collect/TreeRangeSet<TC;>.AsRanges;"
    iget-object v0, p0, Lcom/google/common/collect/TreeRangeSet$AsRanges;->this$0:Lcom/google/common/collect/TreeRangeSet;

    invoke-static {v0}, Lcom/google/common/collect/TreeRangeSet;->access$000(Lcom/google/common/collect/TreeRangeSet;)Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 72
    .local p0, "this":Lcom/google/common/collect/TreeRangeSet$AsRanges;, "Lcom/google/common/collect/TreeRangeSet<TC;>.AsRanges;"
    invoke-static {p0, p1}, Lcom/google/common/collect/Sets;->equalsImpl(Ljava/util/Set;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 67
    .local p0, "this":Lcom/google/common/collect/TreeRangeSet$AsRanges;, "Lcom/google/common/collect/TreeRangeSet<TC;>.AsRanges;"
    invoke-static {p0}, Lcom/google/common/collect/Sets;->hashCodeImpl(Ljava/util/Set;)I

    move-result v0

    return v0
.end method