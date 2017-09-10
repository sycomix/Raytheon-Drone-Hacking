.class Lcom/google/common/collect/Maps$AsMapView$2;
.super Lcom/google/common/collect/Maps$EntrySet;
.source "Maps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/Maps$AsMapView;->createEntrySet()Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Maps$EntrySet",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/Maps$AsMapView;


# direct methods
.method constructor <init>(Lcom/google/common/collect/Maps$AsMapView;)V
    .locals 0

    .prologue
    .line 740
    .local p0, "this":Lcom/google/common/collect/Maps$AsMapView$2;, "Lcom/google/common/collect/Maps$AsMapView.2;"
    iput-object p1, p0, Lcom/google/common/collect/Maps$AsMapView$2;->this$0:Lcom/google/common/collect/Maps$AsMapView;

    invoke-direct {p0}, Lcom/google/common/collect/Maps$EntrySet;-><init>()V

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
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 748
    .local p0, "this":Lcom/google/common/collect/Maps$AsMapView$2;, "Lcom/google/common/collect/Maps$AsMapView.2;"
    iget-object v1, p0, Lcom/google/common/collect/Maps$AsMapView$2;->this$0:Lcom/google/common/collect/Maps$AsMapView;

    invoke-static {v1}, Lcom/google/common/collect/Maps$AsMapView;->access$000(Lcom/google/common/collect/Maps$AsMapView;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 749
    .local v0, "backingIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<TK;>;"
    new-instance v1, Lcom/google/common/collect/Maps$AsMapView$2$1;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/Maps$AsMapView$2$1;-><init>(Lcom/google/common/collect/Maps$AsMapView$2;Ljava/util/Iterator;)V

    return-object v1
.end method

.method map()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 743
    .local p0, "this":Lcom/google/common/collect/Maps$AsMapView$2;, "Lcom/google/common/collect/Maps$AsMapView.2;"
    iget-object v0, p0, Lcom/google/common/collect/Maps$AsMapView$2;->this$0:Lcom/google/common/collect/Maps$AsMapView;

    return-object v0
.end method
