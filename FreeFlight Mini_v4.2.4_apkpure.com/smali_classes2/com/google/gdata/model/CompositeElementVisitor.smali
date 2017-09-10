.class public Lcom/google/gdata/model/CompositeElementVisitor;
.super Ljava/lang/Object;
.source "CompositeElementVisitor.java"

# interfaces
.implements Lcom/google/gdata/model/ElementVisitor;


# instance fields
.field private final ignoringVisitors:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/gdata/model/ElementVisitor;",
            "Lcom/google/gdata/model/Element;",
            ">;"
        }
    .end annotation
.end field

.field private final stoppedVisitors:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/gdata/model/ElementVisitor;",
            "Lcom/google/gdata/model/ElementVisitor$StoppedException;",
            ">;"
        }
    .end annotation
.end field

.field private final visitors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/gdata/model/ElementVisitor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public varargs constructor <init>([Lcom/google/gdata/model/ElementVisitor;)V
    .locals 6
    .param p1, "visitors"    # [Lcom/google/gdata/model/ElementVisitor;

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/google/gdata/model/CompositeElementVisitor;->stoppedVisitors:Ljava/util/Map;

    .line 52
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/google/gdata/model/CompositeElementVisitor;->ignoringVisitors:Ljava/util/Map;

    .line 64
    new-instance v4, Ljava/util/ArrayList;

    array-length v5, p1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v4, p0, Lcom/google/gdata/model/CompositeElementVisitor;->visitors:Ljava/util/List;

    .line 65
    move-object v0, p1

    .local v0, "arr$":[Lcom/google/gdata/model/ElementVisitor;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 66
    .local v3, "visitor":Lcom/google/gdata/model/ElementVisitor;
    iget-object v4, p0, Lcom/google/gdata/model/CompositeElementVisitor;->visitors:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 68
    .end local v3    # "visitor":Lcom/google/gdata/model/ElementVisitor;
    :cond_0
    return-void
.end method


# virtual methods
.method public addVisitor(Lcom/google/gdata/model/ElementVisitor;)V
    .locals 1
    .param p1, "visitor"    # Lcom/google/gdata/model/ElementVisitor;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/google/gdata/model/CompositeElementVisitor;->visitors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    return-void
.end method

.method public getStoppedException(Lcom/google/gdata/model/ElementVisitor;)Lcom/google/gdata/model/ElementVisitor$StoppedException;
    .locals 1
    .param p1, "visitor"    # Lcom/google/gdata/model/ElementVisitor;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/google/gdata/model/CompositeElementVisitor;->stoppedVisitors:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/model/ElementVisitor$StoppedException;

    return-object v0
.end method

.method public getVisitors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/gdata/model/ElementVisitor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/gdata/model/CompositeElementVisitor;->visitors:Ljava/util/List;

    return-object v0
.end method

.method public visit(Lcom/google/gdata/model/Element;Lcom/google/gdata/model/Element;Lcom/google/gdata/model/ElementMetadata;)Z
    .locals 7
    .param p1, "parent"    # Lcom/google/gdata/model/Element;
    .param p2, "target"    # Lcom/google/gdata/model/Element;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/Element;",
            "Lcom/google/gdata/model/Element;",
            "Lcom/google/gdata/model/ElementMetadata",
            "<**>;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/model/ElementVisitor$StoppedException;
        }
    .end annotation

    .prologue
    .line 104
    .local p3, "metadata":Lcom/google/gdata/model/ElementMetadata;, "Lcom/google/gdata/model/ElementMetadata<**>;"
    const/4 v1, 0x0

    .line 107
    .local v1, "newStopped":Z
    iget-object v5, p0, Lcom/google/gdata/model/CompositeElementVisitor;->visitors:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/gdata/model/ElementVisitor;

    .line 111
    .local v4, "visitor":Lcom/google/gdata/model/ElementVisitor;
    iget-object v5, p0, Lcom/google/gdata/model/CompositeElementVisitor;->ignoringVisitors:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 115
    :try_start_0
    invoke-interface {v4, p1, p2, p3}, Lcom/google/gdata/model/ElementVisitor;->visit(Lcom/google/gdata/model/Element;Lcom/google/gdata/model/Element;Lcom/google/gdata/model/ElementMetadata;)Z

    move-result v3

    .line 116
    .local v3, "visitChildren":Z
    if-nez v3, :cond_0

    .line 117
    iget-object v5, p0, Lcom/google/gdata/model/CompositeElementVisitor;->ignoringVisitors:Ljava/util/Map;

    invoke-interface {v5, v4, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/google/gdata/model/ElementVisitor$StoppedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 119
    .end local v3    # "visitChildren":Z
    :catch_0
    move-exception v2

    .line 120
    .local v2, "se":Lcom/google/gdata/model/ElementVisitor$StoppedException;
    iget-object v5, p0, Lcom/google/gdata/model/CompositeElementVisitor;->stoppedVisitors:Ljava/util/Map;

    invoke-interface {v5, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    const/4 v1, 0x1

    goto :goto_0

    .line 126
    .end local v2    # "se":Lcom/google/gdata/model/ElementVisitor$StoppedException;
    .end local v4    # "visitor":Lcom/google/gdata/model/ElementVisitor;
    :cond_1
    if-eqz v1, :cond_2

    .line 127
    iget-object v5, p0, Lcom/google/gdata/model/CompositeElementVisitor;->visitors:Ljava/util/List;

    iget-object v6, p0, Lcom/google/gdata/model/CompositeElementVisitor;->stoppedVisitors:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 128
    iget-object v5, p0, Lcom/google/gdata/model/CompositeElementVisitor;->visitors:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 129
    new-instance v5, Lcom/google/gdata/model/ElementVisitor$StoppedException;

    const-string v6, "All visitors stopped"

    invoke-direct {v5, v6}, Lcom/google/gdata/model/ElementVisitor$StoppedException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 134
    :cond_2
    iget-object v5, p0, Lcom/google/gdata/model/CompositeElementVisitor;->visitors:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    iget-object v6, p0, Lcom/google/gdata/model/CompositeElementVisitor;->ignoringVisitors:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v6

    if-eq v5, v6, :cond_3

    const/4 v5, 0x1

    :goto_1
    return v5

    :cond_3
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public visitComplete(Lcom/google/gdata/model/Element;Lcom/google/gdata/model/Element;Lcom/google/gdata/model/ElementMetadata;)V
    .locals 7
    .param p1, "parent"    # Lcom/google/gdata/model/Element;
    .param p2, "target"    # Lcom/google/gdata/model/Element;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/Element;",
            "Lcom/google/gdata/model/Element;",
            "Lcom/google/gdata/model/ElementMetadata",
            "<**>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/model/ElementVisitor$StoppedException;
        }
    .end annotation

    .prologue
    .line 142
    .local p3, "metadata":Lcom/google/gdata/model/ElementMetadata;, "Lcom/google/gdata/model/ElementMetadata<**>;"
    const/4 v3, 0x0

    .line 143
    .local v3, "resetList":Ljava/util/List;, "Ljava/util/List<Lcom/google/gdata/model/ElementVisitor;>;"
    iget-object v6, p0, Lcom/google/gdata/model/CompositeElementVisitor;->ignoringVisitors:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 145
    .local v4, "stateEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/gdata/model/ElementVisitor;Lcom/google/gdata/model/Element;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/gdata/model/Element;

    .line 146
    .local v2, "ignoring":Lcom/google/gdata/model/Element;
    if-ne v2, p2, :cond_0

    .line 147
    if-nez v3, :cond_1

    .line 148
    new-instance v3, Ljava/util/ArrayList;

    .end local v3    # "resetList":Ljava/util/List;, "Ljava/util/List<Lcom/google/gdata/model/ElementVisitor;>;"
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 150
    .restart local v3    # "resetList":Ljava/util/List;, "Ljava/util/List<Lcom/google/gdata/model/ElementVisitor;>;"
    :cond_1
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 155
    .end local v2    # "ignoring":Lcom/google/gdata/model/Element;
    .end local v4    # "stateEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/gdata/model/ElementVisitor;Lcom/google/gdata/model/Element;>;"
    :cond_2
    if-eqz v3, :cond_3

    .line 156
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/model/ElementVisitor;

    .line 157
    .local v0, "enabledVisitor":Lcom/google/gdata/model/ElementVisitor;
    iget-object v6, p0, Lcom/google/gdata/model/CompositeElementVisitor;->ignoringVisitors:Ljava/util/Map;

    invoke-interface {v6, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 162
    .end local v0    # "enabledVisitor":Lcom/google/gdata/model/ElementVisitor;
    :cond_3
    iget-object v6, p0, Lcom/google/gdata/model/CompositeElementVisitor;->visitors:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/gdata/model/ElementVisitor;

    .line 163
    .local v5, "visitor":Lcom/google/gdata/model/ElementVisitor;
    iget-object v6, p0, Lcom/google/gdata/model/CompositeElementVisitor;->ignoringVisitors:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 164
    invoke-interface {v5, p1, p2, p3}, Lcom/google/gdata/model/ElementVisitor;->visitComplete(Lcom/google/gdata/model/Element;Lcom/google/gdata/model/Element;Lcom/google/gdata/model/ElementMetadata;)V

    goto :goto_2

    .line 167
    .end local v5    # "visitor":Lcom/google/gdata/model/ElementVisitor;
    :cond_5
    return-void
.end method
