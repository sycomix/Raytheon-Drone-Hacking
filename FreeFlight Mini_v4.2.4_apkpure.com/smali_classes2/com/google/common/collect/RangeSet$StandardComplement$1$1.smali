.class Lcom/google/common/collect/RangeSet$StandardComplement$1$1;
.super Lcom/google/common/collect/AbstractIterator;
.source "RangeSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/RangeSet$StandardComplement$1;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/AbstractIterator",
        "<",
        "Lcom/google/common/collect/Range",
        "<TC;>;>;"
    }
.end annotation


# instance fields
.field prevCut:Lcom/google/common/collect/Cut;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/Cut",
            "<TC;>;"
        }
    .end annotation
.end field

.field final synthetic this$1:Lcom/google/common/collect/RangeSet$StandardComplement$1;

.field final synthetic val$positiveIterator:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Lcom/google/common/collect/RangeSet$StandardComplement$1;Ljava/util/Iterator;)V
    .locals 1

    .prologue
    .line 124
    .local p0, "this":Lcom/google/common/collect/RangeSet$StandardComplement$1$1;, "Lcom/google/common/collect/RangeSet$StandardComplement$1.1;"
    iput-object p1, p0, Lcom/google/common/collect/RangeSet$StandardComplement$1$1;->this$1:Lcom/google/common/collect/RangeSet$StandardComplement$1;

    iput-object p2, p0, Lcom/google/common/collect/RangeSet$StandardComplement$1$1;->val$positiveIterator:Ljava/util/Iterator;

    invoke-direct {p0}, Lcom/google/common/collect/AbstractIterator;-><init>()V

    .line 125
    invoke-static {}, Lcom/google/common/collect/Cut;->belowAll()Lcom/google/common/collect/Cut;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/RangeSet$StandardComplement$1$1;->prevCut:Lcom/google/common/collect/Cut;

    return-void
.end method


# virtual methods
.method protected computeNext()Lcom/google/common/collect/Range;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/Range",
            "<TC;>;"
        }
    .end annotation

    .prologue
    .line 129
    .local p0, "this":Lcom/google/common/collect/RangeSet$StandardComplement$1$1;, "Lcom/google/common/collect/RangeSet$StandardComplement$1.1;"
    :cond_0
    iget-object v4, p0, Lcom/google/common/collect/RangeSet$StandardComplement$1$1;->val$positiveIterator:Ljava/util/Iterator;

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 130
    iget-object v0, p0, Lcom/google/common/collect/RangeSet$StandardComplement$1$1;->prevCut:Lcom/google/common/collect/Cut;

    .line 131
    .local v0, "oldCut":Lcom/google/common/collect/Cut;, "Lcom/google/common/collect/Cut<TC;>;"
    iget-object v4, p0, Lcom/google/common/collect/RangeSet$StandardComplement$1$1;->val$positiveIterator:Ljava/util/Iterator;

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/common/collect/Range;

    .line 132
    .local v2, "positiveRange":Lcom/google/common/collect/Range;, "Lcom/google/common/collect/Range<TC;>;"
    iget-object v4, v2, Lcom/google/common/collect/Range;->upperBound:Lcom/google/common/collect/Cut;

    iput-object v4, p0, Lcom/google/common/collect/RangeSet$StandardComplement$1$1;->prevCut:Lcom/google/common/collect/Cut;

    .line 133
    iget-object v4, v2, Lcom/google/common/collect/Range;->lowerBound:Lcom/google/common/collect/Cut;

    invoke-virtual {v0, v4}, Lcom/google/common/collect/Cut;->compareTo(Lcom/google/common/collect/Cut;)I

    move-result v4

    if-gez v4, :cond_0

    .line 134
    new-instance v3, Lcom/google/common/collect/Range;

    iget-object v4, v2, Lcom/google/common/collect/Range;->lowerBound:Lcom/google/common/collect/Cut;

    invoke-direct {v3, v0, v4}, Lcom/google/common/collect/Range;-><init>(Lcom/google/common/collect/Cut;Lcom/google/common/collect/Cut;)V

    .line 143
    .end local v0    # "oldCut":Lcom/google/common/collect/Cut;, "Lcom/google/common/collect/Cut<TC;>;"
    .end local v2    # "positiveRange":Lcom/google/common/collect/Range;, "Lcom/google/common/collect/Range<TC;>;"
    :goto_0
    return-object v3

    .line 137
    :cond_1
    invoke-static {}, Lcom/google/common/collect/Cut;->aboveAll()Lcom/google/common/collect/Cut;

    move-result-object v1

    .line 138
    .local v1, "posInfinity":Lcom/google/common/collect/Cut;, "Lcom/google/common/collect/Cut<TC;>;"
    iget-object v4, p0, Lcom/google/common/collect/RangeSet$StandardComplement$1$1;->prevCut:Lcom/google/common/collect/Cut;

    invoke-virtual {v4, v1}, Lcom/google/common/collect/Cut;->compareTo(Lcom/google/common/collect/Cut;)I

    move-result v4

    if-gez v4, :cond_2

    .line 139
    new-instance v3, Lcom/google/common/collect/Range;

    iget-object v4, p0, Lcom/google/common/collect/RangeSet$StandardComplement$1$1;->prevCut:Lcom/google/common/collect/Cut;

    invoke-direct {v3, v4, v1}, Lcom/google/common/collect/Range;-><init>(Lcom/google/common/collect/Cut;Lcom/google/common/collect/Cut;)V

    .line 140
    .local v3, "result":Lcom/google/common/collect/Range;, "Lcom/google/common/collect/Range<TC;>;"
    iput-object v1, p0, Lcom/google/common/collect/RangeSet$StandardComplement$1$1;->prevCut:Lcom/google/common/collect/Cut;

    goto :goto_0

    .line 143
    .end local v3    # "result":Lcom/google/common/collect/Range;, "Lcom/google/common/collect/Range<TC;>;"
    :cond_2
    invoke-virtual {p0}, Lcom/google/common/collect/RangeSet$StandardComplement$1$1;->endOfData()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/common/collect/Range;

    move-object v3, v4

    goto :goto_0
.end method

.method protected bridge synthetic computeNext()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 124
    .local p0, "this":Lcom/google/common/collect/RangeSet$StandardComplement$1$1;, "Lcom/google/common/collect/RangeSet$StandardComplement$1.1;"
    invoke-virtual {p0}, Lcom/google/common/collect/RangeSet$StandardComplement$1$1;->computeNext()Lcom/google/common/collect/Range;

    move-result-object v0

    return-object v0
.end method
