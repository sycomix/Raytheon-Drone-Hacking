.class Lcom/google/common/collect/Multimaps$FilteredMultimap$Keys$EntrySet;
.super Lcom/google/common/collect/Multimaps$Keys$KeysEntrySet;
.source "Multimaps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Multimaps$FilteredMultimap$Keys;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EntrySet"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/common/collect/Multimaps$FilteredMultimap$Keys;


# direct methods
.method constructor <init>(Lcom/google/common/collect/Multimaps$FilteredMultimap$Keys;)V
    .locals 0

    .prologue
    .line 2673
    .local p0, "this":Lcom/google/common/collect/Multimaps$FilteredMultimap$Keys$EntrySet;, "Lcom/google/common/collect/Multimaps$FilteredMultimap<TK;TV;>.Keys.EntrySet;"
    iput-object p1, p0, Lcom/google/common/collect/Multimaps$FilteredMultimap$Keys$EntrySet;->this$1:Lcom/google/common/collect/Multimaps$FilteredMultimap$Keys;

    invoke-direct {p0, p1}, Lcom/google/common/collect/Multimaps$Keys$KeysEntrySet;-><init>(Lcom/google/common/collect/Multimaps$Keys;)V

    return-void
.end method


# virtual methods
.method public removeAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 2676
    .local p0, "this":Lcom/google/common/collect/Multimaps$FilteredMultimap$Keys$EntrySet;, "Lcom/google/common/collect/Multimaps$FilteredMultimap<TK;TV;>.Keys.EntrySet;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/common/collect/Sets;->removeAllImpl(Ljava/util/Set;Ljava/util/Iterator;)Z

    move-result v0

    return v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 2680
    .local p0, "this":Lcom/google/common/collect/Multimaps$FilteredMultimap$Keys$EntrySet;, "Lcom/google/common/collect/Multimaps$FilteredMultimap<TK;TV;>.Keys.EntrySet;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    new-instance v0, Lcom/google/common/collect/Multimaps$FilteredMultimap$Keys$EntrySet$1;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/Multimaps$FilteredMultimap$Keys$EntrySet$1;-><init>(Lcom/google/common/collect/Multimaps$FilteredMultimap$Keys$EntrySet;Ljava/util/Collection;)V

    .line 2688
    .local v0, "removalPredicate":Lcom/google/common/base/Predicate;, "Lcom/google/common/base/Predicate<Ljava/util/Map$Entry<TK;Ljava/util/Collection<TV;>;>;>;"
    iget-object v1, p0, Lcom/google/common/collect/Multimaps$FilteredMultimap$Keys$EntrySet;->this$1:Lcom/google/common/collect/Multimaps$FilteredMultimap$Keys;

    iget-object v1, v1, Lcom/google/common/collect/Multimaps$FilteredMultimap$Keys;->this$0:Lcom/google/common/collect/Multimaps$FilteredMultimap;

    invoke-virtual {v1, v0}, Lcom/google/common/collect/Multimaps$FilteredMultimap;->removeEntriesIf(Lcom/google/common/base/Predicate;)Z

    move-result v1

    return v1
.end method
