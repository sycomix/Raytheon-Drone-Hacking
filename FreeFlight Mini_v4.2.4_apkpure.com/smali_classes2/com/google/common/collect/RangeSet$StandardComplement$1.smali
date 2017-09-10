.class Lcom/google/common/collect/RangeSet$StandardComplement$1;
.super Ljava/util/AbstractSet;
.source "RangeSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/RangeSet$StandardComplement;->createAsRanges()Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet",
        "<",
        "Lcom/google/common/collect/Range",
        "<TC;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/RangeSet$StandardComplement;


# direct methods
.method constructor <init>(Lcom/google/common/collect/RangeSet$StandardComplement;)V
    .locals 0

    .prologue
    .line 119
    .local p0, "this":Lcom/google/common/collect/RangeSet$StandardComplement$1;, "Lcom/google/common/collect/RangeSet$StandardComplement.1;"
    iput-object p1, p0, Lcom/google/common/collect/RangeSet$StandardComplement$1;->this$0:Lcom/google/common/collect/RangeSet$StandardComplement;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/google/common/collect/Range",
            "<TC;>;>;"
        }
    .end annotation

    .prologue
    .line 123
    .local p0, "this":Lcom/google/common/collect/RangeSet$StandardComplement$1;, "Lcom/google/common/collect/RangeSet$StandardComplement.1;"
    iget-object v1, p0, Lcom/google/common/collect/RangeSet$StandardComplement$1;->this$0:Lcom/google/common/collect/RangeSet$StandardComplement;

    iget-object v1, v1, Lcom/google/common/collect/RangeSet$StandardComplement;->positive:Lcom/google/common/collect/RangeSet;

    invoke-virtual {v1}, Lcom/google/common/collect/RangeSet;->asRanges()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 124
    .local v0, "positiveIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/google/common/collect/Range<TC;>;>;"
    new-instance v1, Lcom/google/common/collect/RangeSet$StandardComplement$1$1;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/RangeSet$StandardComplement$1$1;-><init>(Lcom/google/common/collect/RangeSet$StandardComplement$1;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public size()I
    .locals 1

    .prologue
    .line 150
    .local p0, "this":Lcom/google/common/collect/RangeSet$StandardComplement$1;, "Lcom/google/common/collect/RangeSet$StandardComplement.1;"
    invoke-virtual {p0}, Lcom/google/common/collect/RangeSet$StandardComplement$1;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Iterators;->size(Ljava/util/Iterator;)I

    move-result v0

    return v0
.end method
