.class Lcom/google/common/collect/Maps$AsMapView;
.super Lcom/google/common/collect/Maps$ImprovedAbstractMap;
.source "Maps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Maps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AsMapView"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/Maps$ImprovedAbstractMap",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final function:Lcom/google/common/base/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Function",
            "<-TK;TV;>;"
        }
    .end annotation
.end field

.field private final set:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Set;Lcom/google/common/base/Function;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<TK;>;",
            "Lcom/google/common/base/Function",
            "<-TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 669
    .local p0, "this":Lcom/google/common/collect/Maps$AsMapView;, "Lcom/google/common/collect/Maps$AsMapView<TK;TV;>;"
    .local p1, "set":Ljava/util/Set;, "Ljava/util/Set<TK;>;"
    .local p2, "function":Lcom/google/common/base/Function;, "Lcom/google/common/base/Function<-TK;TV;>;"
    invoke-direct {p0}, Lcom/google/common/collect/Maps$ImprovedAbstractMap;-><init>()V

    .line 670
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    iput-object v0, p0, Lcom/google/common/collect/Maps$AsMapView;->set:Ljava/util/Set;

    .line 671
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/Function;

    iput-object v0, p0, Lcom/google/common/collect/Maps$AsMapView;->function:Lcom/google/common/base/Function;

    .line 672
    return-void
.end method

.method static synthetic access$000(Lcom/google/common/collect/Maps$AsMapView;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/google/common/collect/Maps$AsMapView;

    .prologue
    .line 660
    iget-object v0, p0, Lcom/google/common/collect/Maps$AsMapView;->set:Ljava/util/Set;

    return-object v0
.end method


# virtual methods
.method backingSet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 666
    .local p0, "this":Lcom/google/common/collect/Maps$AsMapView;, "Lcom/google/common/collect/Maps$AsMapView<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/Maps$AsMapView;->set:Ljava/util/Set;

    return-object v0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 735
    .local p0, "this":Lcom/google/common/collect/Maps$AsMapView;, "Lcom/google/common/collect/Maps$AsMapView<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/Maps$AsMapView;->set:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 736
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 708
    .local p0, "this":Lcom/google/common/collect/Maps$AsMapView;, "Lcom/google/common/collect/Maps$AsMapView<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/Maps$AsMapView;->set:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected createEntrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 740
    .local p0, "this":Lcom/google/common/collect/Maps$AsMapView;, "Lcom/google/common/collect/Maps$AsMapView<TK;TV;>;"
    new-instance v0, Lcom/google/common/collect/Maps$AsMapView$2;

    invoke-direct {v0, p0}, Lcom/google/common/collect/Maps$AsMapView$2;-><init>(Lcom/google/common/collect/Maps$AsMapView;)V

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 713
    .local p0, "this":Lcom/google/common/collect/Maps$AsMapView;, "Lcom/google/common/collect/Maps$AsMapView<TK;TV;>;"
    iget-object v1, p0, Lcom/google/common/collect/Maps$AsMapView;->set:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 715
    move-object v0, p1

    .line 716
    .local v0, "k":Ljava/lang/Object;, "TK;"
    iget-object v1, p0, Lcom/google/common/collect/Maps$AsMapView;->function:Lcom/google/common/base/Function;

    invoke-interface {v1, v0}, Lcom/google/common/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 718
    .end local v0    # "k":Ljava/lang/Object;, "TK;"
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 677
    .local p0, "this":Lcom/google/common/collect/Maps$AsMapView;, "Lcom/google/common/collect/Maps$AsMapView<TK;TV;>;"
    new-instance v0, Lcom/google/common/collect/Maps$AsMapView$1;

    invoke-direct {v0, p0}, Lcom/google/common/collect/Maps$AsMapView$1;-><init>(Lcom/google/common/collect/Maps$AsMapView;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 724
    .local p0, "this":Lcom/google/common/collect/Maps$AsMapView;, "Lcom/google/common/collect/Maps$AsMapView<TK;TV;>;"
    iget-object v1, p0, Lcom/google/common/collect/Maps$AsMapView;->set:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 726
    move-object v0, p1

    .line 727
    .local v0, "k":Ljava/lang/Object;, "TK;"
    iget-object v1, p0, Lcom/google/common/collect/Maps$AsMapView;->function:Lcom/google/common/base/Function;

    invoke-interface {v1, v0}, Lcom/google/common/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 729
    .end local v0    # "k":Ljava/lang/Object;, "TK;"
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 703
    .local p0, "this":Lcom/google/common/collect/Maps$AsMapView;, "Lcom/google/common/collect/Maps$AsMapView<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/Maps$AsMapView;->set:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method

.method public values()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 698
    .local p0, "this":Lcom/google/common/collect/Maps$AsMapView;, "Lcom/google/common/collect/Maps$AsMapView<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/Maps$AsMapView;->set:Ljava/util/Set;

    iget-object v1, p0, Lcom/google/common/collect/Maps$AsMapView;->function:Lcom/google/common/base/Function;

    invoke-static {v0, v1}, Lcom/google/common/collect/Collections2;->transform(Ljava/util/Collection;Lcom/google/common/base/Function;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
