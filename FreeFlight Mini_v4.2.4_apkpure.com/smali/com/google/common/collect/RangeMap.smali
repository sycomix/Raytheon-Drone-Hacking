.class final Lcom/google/common/collect/RangeMap;
.super Ljava/lang/Object;
.source "RangeMap.java"

# interfaces
.implements Lcom/google/common/base/Function;
.implements Ljava/io/Serializable;


# annotations
.annotation build Lcom/google/common/annotations/GwtIncompatible;
    value = "NavigableMap"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/RangeMap$RangeValue;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K::",
        "Ljava/lang/Comparable;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Function",
        "<TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final serialVersionUID:J


# instance fields
.field private final map:Ljava/util/NavigableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/NavigableMap",
            "<",
            "Lcom/google/common/collect/Cut",
            "<TK;>;",
            "Lcom/google/common/collect/RangeMap$RangeValue",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lcom/google/common/collect/RangeMap;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/google/common/collect/RangeMap;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Ljava/util/NavigableMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/NavigableMap",
            "<",
            "Lcom/google/common/collect/Cut",
            "<TK;>;",
            "Lcom/google/common/collect/RangeMap$RangeValue",
            "<TK;TV;>;>;)V"
        }
    .end annotation

    .prologue
    .line 47
    .local p0, "this":Lcom/google/common/collect/RangeMap;, "Lcom/google/common/collect/RangeMap<TK;TV;>;"
    .local p1, "map":Ljava/util/NavigableMap;, "Ljava/util/NavigableMap<Lcom/google/common/collect/Cut<TK;>;Lcom/google/common/collect/RangeMap$RangeValue<TK;TV;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/google/common/collect/RangeMap;->map:Ljava/util/NavigableMap;

    .line 49
    return-void
.end method

.method public static create()Lcom/google/common/collect/RangeMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K::",
            "Ljava/lang/Comparable;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/RangeMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 44
    new-instance v0, Lcom/google/common/collect/RangeMap;

    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/common/collect/RangeMap;-><init>(Ljava/util/NavigableMap;)V

    return-object v0
.end method

.method private putRange(Lcom/google/common/collect/RangeMap$RangeValue;)V
    .locals 2
    .param p1    # Lcom/google/common/collect/RangeMap$RangeValue;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/RangeMap$RangeValue",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 159
    .local p0, "this":Lcom/google/common/collect/RangeMap;, "Lcom/google/common/collect/RangeMap<TK;TV;>;"
    .local p1, "rangeValue":Lcom/google/common/collect/RangeMap$RangeValue;, "Lcom/google/common/collect/RangeMap$RangeValue<TK;TV;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/google/common/collect/RangeMap$RangeValue;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Range;

    invoke-virtual {v0}, Lcom/google/common/collect/Range;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/google/common/collect/RangeMap;->map:Ljava/util/NavigableMap;

    invoke-virtual {p1}, Lcom/google/common/collect/RangeMap$RangeValue;->getLowerBound()Lcom/google/common/collect/Cut;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/NavigableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    :cond_0
    return-void
.end method

.method private removeRange(Lcom/google/common/collect/RangeMap$RangeValue;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/RangeMap$RangeValue",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 154
    .local p0, "this":Lcom/google/common/collect/RangeMap;, "Lcom/google/common/collect/RangeMap<TK;TV;>;"
    .local p1, "rangeValue":Lcom/google/common/collect/RangeMap$RangeValue;, "Lcom/google/common/collect/RangeMap$RangeValue<TK;TV;>;"
    iget-object v1, p0, Lcom/google/common/collect/RangeMap;->map:Ljava/util/NavigableMap;

    invoke-virtual {p1}, Lcom/google/common/collect/RangeMap$RangeValue;->getLowerBound()Lcom/google/common/collect/Cut;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/NavigableMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/RangeMap$RangeValue;

    .line 155
    .local v0, "removed":Lcom/google/common/collect/RangeMap$RangeValue;, "Lcom/google/common/collect/RangeMap$RangeValue<TK;TV;>;"
    sget-boolean v1, Lcom/google/common/collect/RangeMap;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-eq v0, p1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 156
    :cond_0
    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Comparable;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .prologue
    .line 58
    .local p0, "this":Lcom/google/common/collect/RangeMap;, "Lcom/google/common/collect/RangeMap<TK;TV;>;"
    .local p1, "input":Ljava/lang/Comparable;, "TK;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/RangeMap;->get(Ljava/lang/Comparable;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 36
    .local p0, "this":Lcom/google/common/collect/RangeMap;, "Lcom/google/common/collect/RangeMap<TK;TV;>;"
    check-cast p1, Ljava/lang/Comparable;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/google/common/collect/RangeMap;->apply(Ljava/lang/Comparable;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 103
    .local p0, "this":Lcom/google/common/collect/RangeMap;, "Lcom/google/common/collect/RangeMap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/RangeMap;->map:Ljava/util/NavigableMap;

    invoke-interface {v0}, Ljava/util/NavigableMap;->clear()V

    .line 104
    return-void
.end method

.method public clear(Lcom/google/common/collect/Range;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Range",
            "<TK;>;)V"
        }
    .end annotation

    .prologue
    .line 111
    .local p0, "this":Lcom/google/common/collect/RangeMap;, "Lcom/google/common/collect/RangeMap<TK;TV;>;"
    .local p1, "rangeToClear":Lcom/google/common/collect/Range;, "Lcom/google/common/collect/Range<TK;>;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    invoke-virtual {p1}, Lcom/google/common/collect/Range;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 151
    :goto_0
    return-void

    .line 116
    :cond_0
    iget-object v5, p0, Lcom/google/common/collect/RangeMap;->map:Ljava/util/NavigableMap;

    iget-object v6, p1, Lcom/google/common/collect/Range;->lowerBound:Lcom/google/common/collect/Cut;

    invoke-interface {v5, v6}, Ljava/util/NavigableMap;->lowerEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    .line 121
    .local v1, "lowerThanLB":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/common/collect/Cut<TK;>;Lcom/google/common/collect/RangeMap$RangeValue<TK;TV;>;>;"
    if-eqz v1, :cond_2

    .line 122
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/RangeMap$RangeValue;

    .line 123
    .local v0, "lowerRangeValue":Lcom/google/common/collect/RangeMap$RangeValue;, "Lcom/google/common/collect/RangeMap$RangeValue<TK;TV;>;"
    invoke-virtual {v0}, Lcom/google/common/collect/RangeMap$RangeValue;->getUpperBound()Lcom/google/common/collect/Cut;

    move-result-object v4

    .line 124
    .local v4, "upperCut":Lcom/google/common/collect/Cut;, "Lcom/google/common/collect/Cut<TK;>;"
    iget-object v5, p1, Lcom/google/common/collect/Range;->lowerBound:Lcom/google/common/collect/Cut;

    invoke-virtual {v4, v5}, Lcom/google/common/collect/Cut;->compareTo(Lcom/google/common/collect/Cut;)I

    move-result v5

    if-ltz v5, :cond_2

    .line 125
    iget-object v5, p1, Lcom/google/common/collect/Range;->lowerBound:Lcom/google/common/collect/Cut;

    invoke-virtual {v0, v5}, Lcom/google/common/collect/RangeMap$RangeValue;->withUpperBound(Lcom/google/common/collect/Cut;)Lcom/google/common/collect/RangeMap$RangeValue;

    move-result-object v3

    .line 126
    .local v3, "replacement":Lcom/google/common/collect/RangeMap$RangeValue;, "Lcom/google/common/collect/RangeMap$RangeValue<TK;TV;>;"
    if-nez v3, :cond_1

    .line 127
    invoke-direct {p0, v0}, Lcom/google/common/collect/RangeMap;->removeRange(Lcom/google/common/collect/RangeMap$RangeValue;)V

    .line 131
    :goto_1
    iget-object v5, p1, Lcom/google/common/collect/Range;->upperBound:Lcom/google/common/collect/Cut;

    invoke-virtual {v4, v5}, Lcom/google/common/collect/Cut;->compareTo(Lcom/google/common/collect/Cut;)I

    move-result v5

    if-ltz v5, :cond_2

    .line 132
    iget-object v5, p1, Lcom/google/common/collect/Range;->upperBound:Lcom/google/common/collect/Cut;

    invoke-virtual {v0, v5}, Lcom/google/common/collect/RangeMap$RangeValue;->withLowerBound(Lcom/google/common/collect/Cut;)Lcom/google/common/collect/RangeMap$RangeValue;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/google/common/collect/RangeMap;->putRange(Lcom/google/common/collect/RangeMap$RangeValue;)V

    goto :goto_0

    .line 129
    :cond_1
    invoke-direct {p0, v3}, Lcom/google/common/collect/RangeMap;->putRange(Lcom/google/common/collect/RangeMap$RangeValue;)V

    goto :goto_1

    .line 138
    .end local v0    # "lowerRangeValue":Lcom/google/common/collect/RangeMap$RangeValue;, "Lcom/google/common/collect/RangeMap$RangeValue<TK;TV;>;"
    .end local v3    # "replacement":Lcom/google/common/collect/RangeMap$RangeValue;, "Lcom/google/common/collect/RangeMap$RangeValue<TK;TV;>;"
    .end local v4    # "upperCut":Lcom/google/common/collect/Cut;, "Lcom/google/common/collect/Cut<TK;>;"
    :cond_2
    iget-object v5, p0, Lcom/google/common/collect/RangeMap;->map:Ljava/util/NavigableMap;

    iget-object v6, p1, Lcom/google/common/collect/Range;->upperBound:Lcom/google/common/collect/Cut;

    invoke-interface {v5, v6}, Ljava/util/NavigableMap;->lowerEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v2

    .line 139
    .local v2, "lowerThanUB":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/common/collect/Cut<TK;>;Lcom/google/common/collect/RangeMap$RangeValue<TK;TV;>;>;"
    if-eqz v2, :cond_3

    .line 140
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/RangeMap$RangeValue;

    .line 141
    .restart local v0    # "lowerRangeValue":Lcom/google/common/collect/RangeMap$RangeValue;, "Lcom/google/common/collect/RangeMap$RangeValue<TK;TV;>;"
    invoke-virtual {v0}, Lcom/google/common/collect/RangeMap$RangeValue;->getUpperBound()Lcom/google/common/collect/Cut;

    move-result-object v4

    .line 142
    .restart local v4    # "upperCut":Lcom/google/common/collect/Cut;, "Lcom/google/common/collect/Cut<TK;>;"
    iget-object v5, p1, Lcom/google/common/collect/Range;->upperBound:Lcom/google/common/collect/Cut;

    invoke-virtual {v4, v5}, Lcom/google/common/collect/Cut;->compareTo(Lcom/google/common/collect/Cut;)I

    move-result v5

    if-ltz v5, :cond_3

    .line 144
    invoke-direct {p0, v0}, Lcom/google/common/collect/RangeMap;->removeRange(Lcom/google/common/collect/RangeMap$RangeValue;)V

    .line 145
    iget-object v5, p1, Lcom/google/common/collect/Range;->upperBound:Lcom/google/common/collect/Cut;

    invoke-virtual {v0, v5}, Lcom/google/common/collect/RangeMap$RangeValue;->withLowerBound(Lcom/google/common/collect/Cut;)Lcom/google/common/collect/RangeMap$RangeValue;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/google/common/collect/RangeMap;->putRange(Lcom/google/common/collect/RangeMap$RangeValue;)V

    .line 150
    .end local v0    # "lowerRangeValue":Lcom/google/common/collect/RangeMap$RangeValue;, "Lcom/google/common/collect/RangeMap$RangeValue<TK;TV;>;"
    .end local v4    # "upperCut":Lcom/google/common/collect/Cut;, "Lcom/google/common/collect/Cut<TK;>;"
    :cond_3
    iget-object v5, p0, Lcom/google/common/collect/RangeMap;->map:Ljava/util/NavigableMap;

    iget-object v6, p1, Lcom/google/common/collect/Range;->lowerBound:Lcom/google/common/collect/Cut;

    iget-object v7, p1, Lcom/google/common/collect/Range;->upperBound:Lcom/google/common/collect/Cut;

    invoke-interface {v5, v6, v7}, Ljava/util/NavigableMap;->subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/SortedMap;->clear()V

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 209
    .local p0, "this":Lcom/google/common/collect/RangeMap;, "Lcom/google/common/collect/RangeMap<TK;TV;>;"
    instance-of v0, p1, Lcom/google/common/collect/RangeMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/RangeMap;->map:Ljava/util/NavigableMap;

    check-cast p1, Lcom/google/common/collect/RangeMap;

    .end local p1    # "o":Ljava/lang/Object;
    iget-object v1, p1, Lcom/google/common/collect/RangeMap;->map:Ljava/util/NavigableMap;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public get(Ljava/lang/Comparable;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 66
    .local p0, "this":Lcom/google/common/collect/RangeMap;, "Lcom/google/common/collect/RangeMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Comparable;, "TK;"
    iget-object v1, p0, Lcom/google/common/collect/RangeMap;->map:Ljava/util/NavigableMap;

    invoke-static {p1}, Lcom/google/common/collect/Cut;->aboveValue(Ljava/lang/Comparable;)Lcom/google/common/collect/Cut;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/NavigableMap;->lowerEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    .line 67
    .local v0, "lowerEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/common/collect/Cut<TK;>;Lcom/google/common/collect/RangeMap$RangeValue<TK;TV;>;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/RangeMap$RangeValue;

    invoke-virtual {v1}, Lcom/google/common/collect/RangeMap$RangeValue;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/Range;

    invoke-virtual {v1, p1}, Lcom/google/common/collect/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 68
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/RangeMap$RangeValue;

    invoke-virtual {v1}, Lcom/google/common/collect/RangeMap$RangeValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 70
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 214
    .local p0, "this":Lcom/google/common/collect/RangeMap;, "Lcom/google/common/collect/RangeMap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/RangeMap;->map:Ljava/util/NavigableMap;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public put(Lcom/google/common/collect/Range;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Range",
            "<TK;>;TV;)V"
        }
    .end annotation

    .prologue
    .line 80
    .local p0, "this":Lcom/google/common/collect/RangeMap;, "Lcom/google/common/collect/RangeMap<TK;TV;>;"
    .local p1, "keyRange":Lcom/google/common/collect/Range;, "Lcom/google/common/collect/Range<TK;>;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    invoke-virtual {p1}, Lcom/google/common/collect/Range;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    :goto_0
    return-void

    .line 85
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/common/collect/RangeMap;->clear(Lcom/google/common/collect/Range;)V

    .line 86
    new-instance v0, Lcom/google/common/collect/RangeMap$RangeValue;

    invoke-direct {v0, p1, p2}, Lcom/google/common/collect/RangeMap$RangeValue;-><init>(Lcom/google/common/collect/Range;Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/google/common/collect/RangeMap;->putRange(Lcom/google/common/collect/RangeMap$RangeValue;)V

    goto :goto_0
.end method

.method public putAll(Lcom/google/common/collect/RangeMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/RangeMap",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 93
    .local p0, "this":Lcom/google/common/collect/RangeMap;, "Lcom/google/common/collect/RangeMap<TK;TV;>;"
    .local p1, "rangeMap":Lcom/google/common/collect/RangeMap;, "Lcom/google/common/collect/RangeMap<TK;TV;>;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    iget-object v2, p1, Lcom/google/common/collect/RangeMap;->map:Ljava/util/NavigableMap;

    invoke-interface {v2}, Ljava/util/NavigableMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/RangeMap$RangeValue;

    .line 95
    .local v1, "rangeValue":Lcom/google/common/collect/RangeMap$RangeValue;, "Lcom/google/common/collect/RangeMap$RangeValue<TK;TV;>;"
    invoke-virtual {v1}, Lcom/google/common/collect/RangeMap$RangeValue;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/common/collect/Range;

    invoke-virtual {v1}, Lcom/google/common/collect/RangeMap$RangeValue;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/google/common/collect/RangeMap;->put(Lcom/google/common/collect/Range;Ljava/lang/Object;)V

    goto :goto_0

    .line 97
    .end local v1    # "rangeValue":Lcom/google/common/collect/RangeMap$RangeValue;, "Lcom/google/common/collect/RangeMap$RangeValue<TK;TV;>;"
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 219
    .local p0, "this":Lcom/google/common/collect/RangeMap;, "Lcom/google/common/collect/RangeMap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/RangeMap;->map:Ljava/util/NavigableMap;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
