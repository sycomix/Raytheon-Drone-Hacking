.class Lcom/google/common/collect/Sets$CartesianSet$1;
.super Lcom/google/common/collect/AbstractIndexedListIterator;
.source "Sets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/Sets$CartesianSet;->iterator()Lcom/google/common/collect/UnmodifiableIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/AbstractIndexedListIterator",
        "<",
        "Ljava/util/List",
        "<TB;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/Sets$CartesianSet;


# direct methods
.method constructor <init>(Lcom/google/common/collect/Sets$CartesianSet;I)V
    .locals 0
    .param p2, "x0"    # I

    .prologue
    .line 1069
    .local p0, "this":Lcom/google/common/collect/Sets$CartesianSet$1;, "Lcom/google/common/collect/Sets$CartesianSet.1;"
    iput-object p1, p0, Lcom/google/common/collect/Sets$CartesianSet$1;->this$0:Lcom/google/common/collect/Sets$CartesianSet;

    invoke-direct {p0, p2}, Lcom/google/common/collect/AbstractIndexedListIterator;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic get(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 1069
    .local p0, "this":Lcom/google/common/collect/Sets$CartesianSet$1;, "Lcom/google/common/collect/Sets$CartesianSet.1;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/Sets$CartesianSet$1;->get(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected get(I)Ljava/util/List;
    .locals 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<TB;>;"
        }
    .end annotation

    .prologue
    .line 1072
    .local p0, "this":Lcom/google/common/collect/Sets$CartesianSet$1;, "Lcom/google/common/collect/Sets$CartesianSet.1;"
    iget-object v3, p0, Lcom/google/common/collect/Sets$CartesianSet$1;->this$0:Lcom/google/common/collect/Sets$CartesianSet;

    iget-object v3, v3, Lcom/google/common/collect/Sets$CartesianSet;->axes:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v3}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v3

    new-array v2, v3, [Ljava/lang/Object;

    .line 1073
    .local v2, "tuple":[Ljava/lang/Object;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 1074
    iget-object v3, p0, Lcom/google/common/collect/Sets$CartesianSet$1;->this$0:Lcom/google/common/collect/Sets$CartesianSet;

    iget-object v3, v3, Lcom/google/common/collect/Sets$CartesianSet;->axes:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v3, v0}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/common/collect/Sets$CartesianSet$Axis;

    invoke-virtual {v3, p1}, Lcom/google/common/collect/Sets$CartesianSet$Axis;->getForIndex(I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v0

    .line 1073
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1078
    :cond_0
    invoke-static {v2}, Lcom/google/common/collect/ImmutableList;->copyOf([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    .line 1079
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<TB;>;"
    return-object v1
.end method
