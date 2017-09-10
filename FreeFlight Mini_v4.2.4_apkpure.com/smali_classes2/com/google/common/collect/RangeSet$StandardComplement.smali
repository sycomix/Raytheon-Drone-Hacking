.class Lcom/google/common/collect/RangeSet$StandardComplement;
.super Lcom/google/common/collect/RangeSet;
.source "RangeSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/RangeSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "StandardComplement"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C::",
        "Ljava/lang/Comparable;",
        ">",
        "Lcom/google/common/collect/RangeSet",
        "<TC;>;"
    }
.end annotation


# instance fields
.field private transient asRanges:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/common/collect/Range",
            "<TC;>;>;"
        }
    .end annotation
.end field

.field final positive:Lcom/google/common/collect/RangeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/RangeSet",
            "<TC;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/common/collect/RangeSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/RangeSet",
            "<TC;>;)V"
        }
    .end annotation

    .prologue
    .line 91
    .local p0, "this":Lcom/google/common/collect/RangeSet$StandardComplement;, "Lcom/google/common/collect/RangeSet$StandardComplement<TC;>;"
    .local p1, "positive":Lcom/google/common/collect/RangeSet;, "Lcom/google/common/collect/RangeSet<TC;>;"
    invoke-direct {p0}, Lcom/google/common/collect/RangeSet;-><init>()V

    .line 92
    iput-object p1, p0, Lcom/google/common/collect/RangeSet$StandardComplement;->positive:Lcom/google/common/collect/RangeSet;

    .line 93
    return-void
.end method


# virtual methods
.method public add(Lcom/google/common/collect/Range;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Range",
            "<TC;>;)V"
        }
    .end annotation

    .prologue
    .line 102
    .local p0, "this":Lcom/google/common/collect/RangeSet$StandardComplement;, "Lcom/google/common/collect/RangeSet$StandardComplement<TC;>;"
    .local p1, "range":Lcom/google/common/collect/Range;, "Lcom/google/common/collect/Range<TC;>;"
    iget-object v0, p0, Lcom/google/common/collect/RangeSet$StandardComplement;->positive:Lcom/google/common/collect/RangeSet;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/RangeSet;->remove(Lcom/google/common/collect/Range;)V

    .line 103
    return-void
.end method

.method public final asRanges()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/google/common/collect/Range",
            "<TC;>;>;"
        }
    .end annotation

    .prologue
    .line 114
    .local p0, "this":Lcom/google/common/collect/RangeSet$StandardComplement;, "Lcom/google/common/collect/RangeSet$StandardComplement<TC;>;"
    iget-object v0, p0, Lcom/google/common/collect/RangeSet$StandardComplement;->asRanges:Ljava/util/Set;

    .line 115
    .local v0, "result":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/common/collect/Range<TC;>;>;"
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/common/collect/RangeSet$StandardComplement;->createAsRanges()Ljava/util/Set;

    move-result-object v0

    .end local v0    # "result":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/common/collect/Range<TC;>;>;"
    iput-object v0, p0, Lcom/google/common/collect/RangeSet$StandardComplement;->asRanges:Ljava/util/Set;

    :cond_0
    return-object v0
.end method

.method public complement()Lcom/google/common/collect/RangeSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/RangeSet",
            "<TC;>;"
        }
    .end annotation

    .prologue
    .line 157
    .local p0, "this":Lcom/google/common/collect/RangeSet$StandardComplement;, "Lcom/google/common/collect/RangeSet$StandardComplement<TC;>;"
    iget-object v0, p0, Lcom/google/common/collect/RangeSet$StandardComplement;->positive:Lcom/google/common/collect/RangeSet;

    return-object v0
.end method

.method public contains(Ljava/lang/Comparable;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)Z"
        }
    .end annotation

    .prologue
    .line 97
    .local p0, "this":Lcom/google/common/collect/RangeSet$StandardComplement;, "Lcom/google/common/collect/RangeSet$StandardComplement<TC;>;"
    .local p1, "value":Ljava/lang/Comparable;, "TC;"
    iget-object v0, p0, Lcom/google/common/collect/RangeSet$StandardComplement;->positive:Lcom/google/common/collect/RangeSet;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/RangeSet;->contains(Ljava/lang/Comparable;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method createAsRanges()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/google/common/collect/Range",
            "<TC;>;>;"
        }
    .end annotation

    .prologue
    .line 119
    .local p0, "this":Lcom/google/common/collect/RangeSet$StandardComplement;, "Lcom/google/common/collect/RangeSet$StandardComplement<TC;>;"
    new-instance v0, Lcom/google/common/collect/RangeSet$StandardComplement$1;

    invoke-direct {v0, p0}, Lcom/google/common/collect/RangeSet$StandardComplement$1;-><init>(Lcom/google/common/collect/RangeSet$StandardComplement;)V

    return-object v0
.end method

.method public remove(Lcom/google/common/collect/Range;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Range",
            "<TC;>;)V"
        }
    .end annotation

    .prologue
    .line 107
    .local p0, "this":Lcom/google/common/collect/RangeSet$StandardComplement;, "Lcom/google/common/collect/RangeSet$StandardComplement<TC;>;"
    .local p1, "range":Lcom/google/common/collect/Range;, "Lcom/google/common/collect/Range<TC;>;"
    iget-object v0, p0, Lcom/google/common/collect/RangeSet$StandardComplement;->positive:Lcom/google/common/collect/RangeSet;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/RangeSet;->add(Lcom/google/common/collect/Range;)V

    .line 108
    return-void
.end method
