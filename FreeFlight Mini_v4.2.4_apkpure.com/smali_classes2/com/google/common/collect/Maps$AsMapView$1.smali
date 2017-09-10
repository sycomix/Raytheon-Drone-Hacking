.class Lcom/google/common/collect/Maps$AsMapView$1;
.super Lcom/google/common/collect/ForwardingSet;
.source "Maps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/Maps$AsMapView;->keySet()Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/ForwardingSet",
        "<TK;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/Maps$AsMapView;


# direct methods
.method constructor <init>(Lcom/google/common/collect/Maps$AsMapView;)V
    .locals 0

    .prologue
    .line 677
    .local p0, "this":Lcom/google/common/collect/Maps$AsMapView$1;, "Lcom/google/common/collect/Maps$AsMapView.1;"
    iput-object p1, p0, Lcom/google/common/collect/Maps$AsMapView$1;->this$0:Lcom/google/common/collect/Maps$AsMapView;

    invoke-direct {p0}, Lcom/google/common/collect/ForwardingSet;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    .prologue
    .line 685
    .local p0, "this":Lcom/google/common/collect/Maps$AsMapView$1;, "Lcom/google/common/collect/Maps$AsMapView.1;"
    .local p1, "element":Ljava/lang/Object;, "TK;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TK;>;)Z"
        }
    .end annotation

    .prologue
    .line 690
    .local p0, "this":Lcom/google/common/collect/Maps$AsMapView$1;, "Lcom/google/common/collect/Maps$AsMapView.1;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+TK;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 677
    .local p0, "this":Lcom/google/common/collect/Maps$AsMapView$1;, "Lcom/google/common/collect/Maps$AsMapView.1;"
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$AsMapView$1;->delegate()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic delegate()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 677
    .local p0, "this":Lcom/google/common/collect/Maps$AsMapView$1;, "Lcom/google/common/collect/Maps$AsMapView.1;"
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$AsMapView$1;->delegate()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected delegate()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 680
    .local p0, "this":Lcom/google/common/collect/Maps$AsMapView$1;, "Lcom/google/common/collect/Maps$AsMapView.1;"
    iget-object v0, p0, Lcom/google/common/collect/Maps$AsMapView$1;->this$0:Lcom/google/common/collect/Maps$AsMapView;

    invoke-static {v0}, Lcom/google/common/collect/Maps$AsMapView;->access$000(Lcom/google/common/collect/Maps$AsMapView;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
