.class Lcom/google/common/collect/ImmutableMap$2;
.super Lcom/google/common/collect/ImmutableMapValues;
.source "ImmutableMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/ImmutableMap;->createValues()Lcom/google/common/collect/ImmutableCollection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/ImmutableMapValues",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/ImmutableMap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableMap;)V
    .locals 0

    .prologue
    .line 405
    .local p0, "this":Lcom/google/common/collect/ImmutableMap$2;, "Lcom/google/common/collect/ImmutableMap.2;"
    iput-object p1, p0, Lcom/google/common/collect/ImmutableMap$2;->this$0:Lcom/google/common/collect/ImmutableMap;

    invoke-direct {p0}, Lcom/google/common/collect/ImmutableMapValues;-><init>()V

    return-void
.end method


# virtual methods
.method map()Lcom/google/common/collect/ImmutableMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 407
    .local p0, "this":Lcom/google/common/collect/ImmutableMap$2;, "Lcom/google/common/collect/ImmutableMap.2;"
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMap$2;->this$0:Lcom/google/common/collect/ImmutableMap;

    return-object v0
.end method
