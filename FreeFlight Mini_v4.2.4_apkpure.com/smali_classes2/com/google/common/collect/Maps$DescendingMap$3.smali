.class Lcom/google/common/collect/Maps$DescendingMap$3;
.super Lcom/google/common/collect/Maps$Values;
.source "Maps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/Maps$DescendingMap;->values()Ljava/util/Collection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Maps$Values",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/Maps$DescendingMap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/Maps$DescendingMap;)V
    .locals 0

    .prologue
    .line 3232
    .local p0, "this":Lcom/google/common/collect/Maps$DescendingMap$3;, "Lcom/google/common/collect/Maps$DescendingMap.3;"
    iput-object p1, p0, Lcom/google/common/collect/Maps$DescendingMap$3;->this$0:Lcom/google/common/collect/Maps$DescendingMap;

    invoke-direct {p0}, Lcom/google/common/collect/Maps$Values;-><init>()V

    return-void
.end method


# virtual methods
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
    .line 3235
    .local p0, "this":Lcom/google/common/collect/Maps$DescendingMap$3;, "Lcom/google/common/collect/Maps$DescendingMap.3;"
    iget-object v0, p0, Lcom/google/common/collect/Maps$DescendingMap$3;->this$0:Lcom/google/common/collect/Maps$DescendingMap;

    return-object v0
.end method
