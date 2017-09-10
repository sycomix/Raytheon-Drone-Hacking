.class Lcom/google/common/collect/Maps$AsMapView$2$1;
.super Ljava/lang/Object;
.source "Maps.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/Maps$AsMapView$2;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/common/collect/Maps$AsMapView$2;

.field final synthetic val$backingIterator:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Lcom/google/common/collect/Maps$AsMapView$2;Ljava/util/Iterator;)V
    .locals 0

    .prologue
    .line 749
    .local p0, "this":Lcom/google/common/collect/Maps$AsMapView$2$1;, "Lcom/google/common/collect/Maps$AsMapView$2.1;"
    iput-object p1, p0, Lcom/google/common/collect/Maps$AsMapView$2$1;->this$1:Lcom/google/common/collect/Maps$AsMapView$2;

    iput-object p2, p0, Lcom/google/common/collect/Maps$AsMapView$2$1;->val$backingIterator:Ljava/util/Iterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 752
    .local p0, "this":Lcom/google/common/collect/Maps$AsMapView$2$1;, "Lcom/google/common/collect/Maps$AsMapView$2.1;"
    iget-object v0, p0, Lcom/google/common/collect/Maps$AsMapView$2$1;->val$backingIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 749
    .local p0, "this":Lcom/google/common/collect/Maps$AsMapView$2$1;, "Lcom/google/common/collect/Maps$AsMapView$2.1;"
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$AsMapView$2$1;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/util/Map$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 757
    .local p0, "this":Lcom/google/common/collect/Maps$AsMapView$2$1;, "Lcom/google/common/collect/Maps$AsMapView$2.1;"
    iget-object v1, p0, Lcom/google/common/collect/Maps$AsMapView$2$1;->val$backingIterator:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 758
    .local v0, "k":Ljava/lang/Object;, "TK;"
    iget-object v1, p0, Lcom/google/common/collect/Maps$AsMapView$2$1;->this$1:Lcom/google/common/collect/Maps$AsMapView$2;

    iget-object v1, v1, Lcom/google/common/collect/Maps$AsMapView$2;->this$0:Lcom/google/common/collect/Maps$AsMapView;

    iget-object v1, v1, Lcom/google/common/collect/Maps$AsMapView;->function:Lcom/google/common/base/Function;

    invoke-interface {v1, v0}, Lcom/google/common/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/Maps;->immutableEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    return-object v1
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 763
    .local p0, "this":Lcom/google/common/collect/Maps$AsMapView$2$1;, "Lcom/google/common/collect/Maps$AsMapView$2.1;"
    iget-object v0, p0, Lcom/google/common/collect/Maps$AsMapView$2$1;->val$backingIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 764
    return-void
.end method
