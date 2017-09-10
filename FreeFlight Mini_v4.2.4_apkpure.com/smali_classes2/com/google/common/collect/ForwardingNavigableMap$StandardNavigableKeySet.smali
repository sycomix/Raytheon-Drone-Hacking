.class public Lcom/google/common/collect/ForwardingNavigableMap$StandardNavigableKeySet;
.super Lcom/google/common/collect/Maps$NavigableKeySet;
.source "ForwardingNavigableMap.java"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ForwardingNavigableMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "StandardNavigableKeySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Maps$NavigableKeySet",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/ForwardingNavigableMap;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/ForwardingNavigableMap;)V
    .locals 0

    .prologue
    .line 335
    .local p0, "this":Lcom/google/common/collect/ForwardingNavigableMap$StandardNavigableKeySet;, "Lcom/google/common/collect/ForwardingNavigableMap<TK;TV;>.StandardNavigableKeySet;"
    iput-object p1, p0, Lcom/google/common/collect/ForwardingNavigableMap$StandardNavigableKeySet;->this$0:Lcom/google/common/collect/ForwardingNavigableMap;

    invoke-direct {p0}, Lcom/google/common/collect/Maps$NavigableKeySet;-><init>()V

    return-void
.end method


# virtual methods
.method bridge synthetic map()Ljava/util/Map;
    .locals 1

    .prologue
    .line 332
    .local p0, "this":Lcom/google/common/collect/ForwardingNavigableMap$StandardNavigableKeySet;, "Lcom/google/common/collect/ForwardingNavigableMap<TK;TV;>.StandardNavigableKeySet;"
    invoke-virtual {p0}, Lcom/google/common/collect/ForwardingNavigableMap$StandardNavigableKeySet;->map()Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method

.method map()Ljava/util/NavigableMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 339
    .local p0, "this":Lcom/google/common/collect/ForwardingNavigableMap$StandardNavigableKeySet;, "Lcom/google/common/collect/ForwardingNavigableMap<TK;TV;>.StandardNavigableKeySet;"
    iget-object v0, p0, Lcom/google/common/collect/ForwardingNavigableMap$StandardNavigableKeySet;->this$0:Lcom/google/common/collect/ForwardingNavigableMap;

    return-object v0
.end method
