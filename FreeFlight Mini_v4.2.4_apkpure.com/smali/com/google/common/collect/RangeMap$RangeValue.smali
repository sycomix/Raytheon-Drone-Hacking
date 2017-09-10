.class final Lcom/google/common/collect/RangeMap$RangeValue;
.super Ljava/util/AbstractMap$SimpleEntry;
.source "RangeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/RangeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RangeValue"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K::",
        "Ljava/lang/Comparable;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap$SimpleEntry",
        "<",
        "Lcom/google/common/collect/Range",
        "<TK;>;TV;>;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final serialVersionUID:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 164
    const-class v0, Lcom/google/common/collect/RangeMap;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/google/common/collect/RangeMap$RangeValue;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lcom/google/common/collect/Range;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Range",
            "<TK;>;TV;)V"
        }
    .end annotation

    .prologue
    .line 168
    .local p0, "this":Lcom/google/common/collect/RangeMap$RangeValue;, "Lcom/google/common/collect/RangeMap$RangeValue<TK;TV;>;"
    .local p1, "key":Lcom/google/common/collect/Range;, "Lcom/google/common/collect/Range<TK;>;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 169
    sget-boolean v0, Lcom/google/common/collect/RangeMap$RangeValue;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/google/common/collect/Range;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 170
    :cond_0
    return-void
.end method


# virtual methods
.method getLowerBound()Lcom/google/common/collect/Cut;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/Cut",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 173
    .local p0, "this":Lcom/google/common/collect/RangeMap$RangeValue;, "Lcom/google/common/collect/RangeMap$RangeValue<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/RangeMap$RangeValue;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Range;

    iget-object v0, v0, Lcom/google/common/collect/Range;->lowerBound:Lcom/google/common/collect/Cut;

    return-object v0
.end method

.method getUpperBound()Lcom/google/common/collect/Cut;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/Cut",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 177
    .local p0, "this":Lcom/google/common/collect/RangeMap$RangeValue;, "Lcom/google/common/collect/RangeMap$RangeValue<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/RangeMap$RangeValue;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Range;

    iget-object v0, v0, Lcom/google/common/collect/Range;->upperBound:Lcom/google/common/collect/Cut;

    return-object v0
.end method

.method withLowerBound(Lcom/google/common/collect/Cut;)Lcom/google/common/collect/RangeMap$RangeValue;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Cut",
            "<TK;>;)",
            "Lcom/google/common/collect/RangeMap$RangeValue",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 182
    .local p0, "this":Lcom/google/common/collect/RangeMap$RangeValue;, "Lcom/google/common/collect/RangeMap$RangeValue<TK;TV;>;"
    .local p1, "newLowerBound":Lcom/google/common/collect/Cut;, "Lcom/google/common/collect/Cut<TK;>;"
    new-instance v0, Lcom/google/common/collect/Range;

    invoke-virtual {p0}, Lcom/google/common/collect/RangeMap$RangeValue;->getUpperBound()Lcom/google/common/collect/Cut;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/google/common/collect/Range;-><init>(Lcom/google/common/collect/Cut;Lcom/google/common/collect/Cut;)V

    .line 183
    .local v0, "newRange":Lcom/google/common/collect/Range;, "Lcom/google/common/collect/Range<TK;>;"
    invoke-virtual {v0}, Lcom/google/common/collect/Range;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lcom/google/common/collect/RangeMap$RangeValue;

    invoke-virtual {p0}, Lcom/google/common/collect/RangeMap$RangeValue;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/common/collect/RangeMap$RangeValue;-><init>(Lcom/google/common/collect/Range;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method withUpperBound(Lcom/google/common/collect/Cut;)Lcom/google/common/collect/RangeMap$RangeValue;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Cut",
            "<TK;>;)",
            "Lcom/google/common/collect/RangeMap$RangeValue",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 188
    .local p0, "this":Lcom/google/common/collect/RangeMap$RangeValue;, "Lcom/google/common/collect/RangeMap$RangeValue<TK;TV;>;"
    .local p1, "newUpperBound":Lcom/google/common/collect/Cut;, "Lcom/google/common/collect/Cut<TK;>;"
    new-instance v0, Lcom/google/common/collect/Range;

    invoke-virtual {p0}, Lcom/google/common/collect/RangeMap$RangeValue;->getLowerBound()Lcom/google/common/collect/Cut;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/common/collect/Range;-><init>(Lcom/google/common/collect/Cut;Lcom/google/common/collect/Cut;)V

    .line 189
    .local v0, "newRange":Lcom/google/common/collect/Range;, "Lcom/google/common/collect/Range<TK;>;"
    invoke-virtual {v0}, Lcom/google/common/collect/Range;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lcom/google/common/collect/RangeMap$RangeValue;

    invoke-virtual {p0}, Lcom/google/common/collect/RangeMap$RangeValue;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/common/collect/RangeMap$RangeValue;-><init>(Lcom/google/common/collect/Range;Ljava/lang/Object;)V

    goto :goto_0
.end method
