.class public Lcom/google/gdata/data/Kind$AdaptableHelper;
.super Ljava/lang/Object;
.source "Kind.java"

# interfaces
.implements Lcom/google/gdata/data/Kind$Adaptable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gdata/data/Kind;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AdaptableHelper"
.end annotation


# instance fields
.field private adaptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/gdata/data/Kind$Adaptor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/gdata/data/Kind$AdaptableHelper;->adaptors:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addAdaptor(Lcom/google/gdata/data/Kind$Adaptor;)V
    .locals 1
    .param p1, "adaptor"    # Lcom/google/gdata/data/Kind$Adaptor;

    .prologue
    .line 133
    iget-object v0, p0, Lcom/google/gdata/data/Kind$AdaptableHelper;->adaptors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    return-void
.end method

.method public getAdaptor(Ljava/lang/Class;)Lcom/google/gdata/data/Kind$Adaptor;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lcom/google/gdata/data/Kind$Adaptor;",
            ">(",
            "Ljava/lang/Class",
            "<TE;>;)TE;"
        }
    .end annotation

    .prologue
    .line 141
    .local p1, "adaptorClass":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    iget-object v2, p0, Lcom/google/gdata/data/Kind$AdaptableHelper;->adaptors:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/Kind$Adaptor;

    .line 142
    .local v0, "adaptor":Lcom/google/gdata/data/Kind$Adaptor;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 143
    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/gdata/data/Kind$Adaptor;

    .line 146
    .end local v0    # "adaptor":Lcom/google/gdata/data/Kind$Adaptor;
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getAdaptors()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/gdata/data/Kind$Adaptor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 137
    iget-object v0, p0, Lcom/google/gdata/data/Kind$AdaptableHelper;->adaptors:Ljava/util/List;

    return-object v0
.end method
