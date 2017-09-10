.class Lcom/google/common/collect/Maps$AbstractFilteredMap$Values;
.super Ljava/util/AbstractCollection;
.source "Maps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Maps$AbstractFilteredMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Values"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractCollection",
        "<TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/Maps$AbstractFilteredMap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/Maps$AbstractFilteredMap;)V
    .locals 0

    .prologue
    .line 2044
    .local p0, "this":Lcom/google/common/collect/Maps$AbstractFilteredMap$Values;, "Lcom/google/common/collect/Maps$AbstractFilteredMap<TK;TV;>.Values;"
    iput-object p1, p0, Lcom/google/common/collect/Maps$AbstractFilteredMap$Values;->this$0:Lcom/google/common/collect/Maps$AbstractFilteredMap;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 2065
    .local p0, "this":Lcom/google/common/collect/Maps$AbstractFilteredMap$Values;, "Lcom/google/common/collect/Maps$AbstractFilteredMap<TK;TV;>.Values;"
    iget-object v0, p0, Lcom/google/common/collect/Maps$AbstractFilteredMap$Values;->this$0:Lcom/google/common/collect/Maps$AbstractFilteredMap;

    invoke-virtual {v0}, Lcom/google/common/collect/Maps$AbstractFilteredMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 2066
    return-void
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 2069
    .local p0, "this":Lcom/google/common/collect/Maps$AbstractFilteredMap$Values;, "Lcom/google/common/collect/Maps$AbstractFilteredMap<TK;TV;>.Values;"
    iget-object v0, p0, Lcom/google/common/collect/Maps$AbstractFilteredMap$Values;->this$0:Lcom/google/common/collect/Maps$AbstractFilteredMap;

    invoke-virtual {v0}, Lcom/google/common/collect/Maps$AbstractFilteredMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 2046
    .local p0, "this":Lcom/google/common/collect/Maps$AbstractFilteredMap$Values;, "Lcom/google/common/collect/Maps$AbstractFilteredMap<TK;TV;>.Values;"
    iget-object v1, p0, Lcom/google/common/collect/Maps$AbstractFilteredMap$Values;->this$0:Lcom/google/common/collect/Maps$AbstractFilteredMap;

    invoke-virtual {v1}, Lcom/google/common/collect/Maps$AbstractFilteredMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2047
    .local v0, "entryIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TK;TV;>;>;"
    new-instance v1, Lcom/google/common/collect/Maps$AbstractFilteredMap$Values$1;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/Maps$AbstractFilteredMap$Values$1;-><init>(Lcom/google/common/collect/Maps$AbstractFilteredMap$Values;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 2073
    .local p0, "this":Lcom/google/common/collect/Maps$AbstractFilteredMap$Values;, "Lcom/google/common/collect/Maps$AbstractFilteredMap<TK;TV;>.Values;"
    iget-object v2, p0, Lcom/google/common/collect/Maps$AbstractFilteredMap$Values;->this$0:Lcom/google/common/collect/Maps$AbstractFilteredMap;

    iget-object v2, v2, Lcom/google/common/collect/Maps$AbstractFilteredMap;->unfiltered:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 2074
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TK;TV;>;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2075
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2076
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/common/collect/Maps$AbstractFilteredMap$Values;->this$0:Lcom/google/common/collect/Maps$AbstractFilteredMap;

    iget-object v2, v2, Lcom/google/common/collect/Maps$AbstractFilteredMap;->predicate:Lcom/google/common/base/Predicate;

    invoke-interface {v2, v0}, Lcom/google/common/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2077
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 2078
    const/4 v2, 0x1

    .line 2081
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 2085
    .local p0, "this":Lcom/google/common/collect/Maps$AbstractFilteredMap$Values;, "Lcom/google/common/collect/Maps$AbstractFilteredMap<TK;TV;>.Values;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2086
    const/4 v0, 0x0

    .line 2087
    .local v0, "changed":Z
    iget-object v3, p0, Lcom/google/common/collect/Maps$AbstractFilteredMap$Values;->this$0:Lcom/google/common/collect/Maps$AbstractFilteredMap;

    iget-object v3, v3, Lcom/google/common/collect/Maps$AbstractFilteredMap;->unfiltered:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 2088
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TK;TV;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2089
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 2090
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/google/common/collect/Maps$AbstractFilteredMap$Values;->this$0:Lcom/google/common/collect/Maps$AbstractFilteredMap;

    iget-object v3, v3, Lcom/google/common/collect/Maps$AbstractFilteredMap;->predicate:Lcom/google/common/base/Predicate;

    invoke-interface {v3, v1}, Lcom/google/common/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2091
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 2092
    const/4 v0, 0x1

    goto :goto_0

    .line 2095
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    :cond_1
    return v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 2099
    .local p0, "this":Lcom/google/common/collect/Maps$AbstractFilteredMap$Values;, "Lcom/google/common/collect/Maps$AbstractFilteredMap<TK;TV;>.Values;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2100
    const/4 v0, 0x0

    .line 2101
    .local v0, "changed":Z
    iget-object v3, p0, Lcom/google/common/collect/Maps$AbstractFilteredMap$Values;->this$0:Lcom/google/common/collect/Maps$AbstractFilteredMap;

    iget-object v3, v3, Lcom/google/common/collect/Maps$AbstractFilteredMap;->unfiltered:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 2102
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TK;TV;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2103
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 2104
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/google/common/collect/Maps$AbstractFilteredMap$Values;->this$0:Lcom/google/common/collect/Maps$AbstractFilteredMap;

    iget-object v3, v3, Lcom/google/common/collect/Maps$AbstractFilteredMap;->predicate:Lcom/google/common/base/Predicate;

    invoke-interface {v3, v1}, Lcom/google/common/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2106
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 2107
    const/4 v0, 0x1

    goto :goto_0

    .line 2110
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    :cond_1
    return v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 2061
    .local p0, "this":Lcom/google/common/collect/Maps$AbstractFilteredMap$Values;, "Lcom/google/common/collect/Maps$AbstractFilteredMap<TK;TV;>.Values;"
    iget-object v0, p0, Lcom/google/common/collect/Maps$AbstractFilteredMap$Values;->this$0:Lcom/google/common/collect/Maps$AbstractFilteredMap;

    invoke-virtual {v0}, Lcom/google/common/collect/Maps$AbstractFilteredMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2115
    .local p0, "this":Lcom/google/common/collect/Maps$AbstractFilteredMap$Values;, "Lcom/google/common/collect/Maps$AbstractFilteredMap<TK;TV;>.Values;"
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$AbstractFilteredMap$Values;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Lists;->newArrayList(Ljava/util/Iterator;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 2119
    .local p0, "this":Lcom/google/common/collect/Maps$AbstractFilteredMap$Values;, "Lcom/google/common/collect/Maps$AbstractFilteredMap<TK;TV;>.Values;"
    .local p1, "array":[Ljava/lang/Object;, "[TT;"
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$AbstractFilteredMap$Values;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Lists;->newArrayList(Ljava/util/Iterator;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
