.class abstract Lcom/google/common/collect/TransformedImmutableSet;
.super Lcom/google/common/collect/ImmutableSet;
.source "TransformedImmutableSet.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ImmutableSet",
        "<TE;>;"
    }
.end annotation


# instance fields
.field final hashCode:I

.field final source:Lcom/google/common/collect/ImmutableCollection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableCollection",
            "<TD;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableCollection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableCollection",
            "<TD;>;)V"
        }
    .end annotation

    .prologue
    .line 39
    .local p0, "this":Lcom/google/common/collect/TransformedImmutableSet;, "Lcom/google/common/collect/TransformedImmutableSet<TD;TE;>;"
    .local p1, "source":Lcom/google/common/collect/ImmutableCollection;, "Lcom/google/common/collect/ImmutableCollection<TD;>;"
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableSet;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/google/common/collect/TransformedImmutableSet;->source:Lcom/google/common/collect/ImmutableCollection;

    .line 41
    invoke-static {p0}, Lcom/google/common/collect/Sets;->hashCodeImpl(Ljava/util/Set;)I

    move-result v0

    iput v0, p0, Lcom/google/common/collect/TransformedImmutableSet;->hashCode:I

    .line 42
    return-void
.end method

.method constructor <init>(Lcom/google/common/collect/ImmutableCollection;I)V
    .locals 0
    .param p2, "hashCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableCollection",
            "<TD;>;I)V"
        }
    .end annotation

    .prologue
    .line 44
    .local p0, "this":Lcom/google/common/collect/TransformedImmutableSet;, "Lcom/google/common/collect/TransformedImmutableSet<TD;TE;>;"
    .local p1, "source":Lcom/google/common/collect/ImmutableCollection;, "Lcom/google/common/collect/ImmutableCollection<TD;>;"
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableSet;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/google/common/collect/TransformedImmutableSet;->source:Lcom/google/common/collect/ImmutableCollection;

    .line 46
    iput p2, p0, Lcom/google/common/collect/TransformedImmutableSet;->hashCode:I

    .line 47
    return-void
.end method


# virtual methods
.method public final hashCode()I
    .locals 1

    .prologue
    .line 84
    .local p0, "this":Lcom/google/common/collect/TransformedImmutableSet;, "Lcom/google/common/collect/TransformedImmutableSet<TD;TE;>;"
    iget v0, p0, Lcom/google/common/collect/TransformedImmutableSet;->hashCode:I

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 57
    .local p0, "this":Lcom/google/common/collect/TransformedImmutableSet;, "Lcom/google/common/collect/TransformedImmutableSet<TD;TE;>;"
    const/4 v0, 0x0

    return v0
.end method

.method isHashCodeFast()Z
    .locals 1
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "unused"
    .end annotation

    .prologue
    .line 89
    .local p0, "this":Lcom/google/common/collect/TransformedImmutableSet;, "Lcom/google/common/collect/TransformedImmutableSet<TD;TE;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public iterator()Lcom/google/common/collect/UnmodifiableIterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/UnmodifiableIterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 61
    .local p0, "this":Lcom/google/common/collect/TransformedImmutableSet;, "Lcom/google/common/collect/TransformedImmutableSet<TD;TE;>;"
    iget-object v1, p0, Lcom/google/common/collect/TransformedImmutableSet;->source:Lcom/google/common/collect/ImmutableCollection;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableCollection;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    .line 62
    .local v0, "backingIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<TD;>;"
    new-instance v1, Lcom/google/common/collect/TransformedImmutableSet$1;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/TransformedImmutableSet$1;-><init>(Lcom/google/common/collect/TransformedImmutableSet;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 30
    .local p0, "this":Lcom/google/common/collect/TransformedImmutableSet;, "Lcom/google/common/collect/TransformedImmutableSet<TD;TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/TransformedImmutableSet;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 53
    .local p0, "this":Lcom/google/common/collect/TransformedImmutableSet;, "Lcom/google/common/collect/TransformedImmutableSet<TD;TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/TransformedImmutableSet;->source:Lcom/google/common/collect/ImmutableCollection;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableCollection;->size()I

    move-result v0

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 76
    .local p0, "this":Lcom/google/common/collect/TransformedImmutableSet;, "Lcom/google/common/collect/TransformedImmutableSet<TD;TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/TransformedImmutableSet;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/google/common/collect/TransformedImmutableSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

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
    .line 80
    .local p0, "this":Lcom/google/common/collect/TransformedImmutableSet;, "Lcom/google/common/collect/TransformedImmutableSet<TD;TE;>;"
    .local p1, "array":[Ljava/lang/Object;, "[TT;"
    invoke-static {p0, p1}, Lcom/google/common/collect/ObjectArrays;->toArrayImpl(Ljava/util/Collection;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method abstract transform(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)TE;"
        }
    .end annotation
.end method
