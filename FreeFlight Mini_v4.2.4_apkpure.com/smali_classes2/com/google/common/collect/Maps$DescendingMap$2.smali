.class Lcom/google/common/collect/Maps$DescendingMap$2;
.super Lcom/google/common/collect/Maps$NavigableKeySet;
.source "Maps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/Maps$DescendingMap;->navigableKeySet()Ljava/util/NavigableSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Maps$NavigableKeySet",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/Maps$DescendingMap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/Maps$DescendingMap;)V
    .locals 0

    .prologue
    .line 3183
    .local p0, "this":Lcom/google/common/collect/Maps$DescendingMap$2;, "Lcom/google/common/collect/Maps$DescendingMap.2;"
    iput-object p1, p0, Lcom/google/common/collect/Maps$DescendingMap$2;->this$0:Lcom/google/common/collect/Maps$DescendingMap;

    invoke-direct {p0}, Lcom/google/common/collect/Maps$NavigableKeySet;-><init>()V

    return-void
.end method


# virtual methods
.method bridge synthetic map()Ljava/util/Map;
    .locals 1

    .prologue
    .line 3183
    .local p0, "this":Lcom/google/common/collect/Maps$DescendingMap$2;, "Lcom/google/common/collect/Maps$DescendingMap.2;"
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$DescendingMap$2;->map()Ljava/util/NavigableMap;

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
    .line 3186
    .local p0, "this":Lcom/google/common/collect/Maps$DescendingMap$2;, "Lcom/google/common/collect/Maps$DescendingMap.2;"
    iget-object v0, p0, Lcom/google/common/collect/Maps$DescendingMap$2;->this$0:Lcom/google/common/collect/Maps$DescendingMap;

    return-object v0
.end method
