.class public Lcom/google/api/gbase/client/Group;
.super Ljava/lang/Object;
.source "Group.java"


# instance fields
.field private subAttributes:Lcom/google/common/collect/Multimap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/Multimap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/api/gbase/client/GoogleBaseAttribute;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Collection;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/api/gbase/client/GoogleBaseAttribute;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 35
    .local p1, "subAttributes":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/api/gbase/client/GoogleBaseAttribute;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-static {}, Lcom/google/common/collect/HashMultimap;->create()Lcom/google/common/collect/HashMultimap;

    move-result-object v2

    iput-object v2, p0, Lcom/google/api/gbase/client/Group;->subAttributes:Lcom/google/common/collect/Multimap;

    .line 37
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/gbase/client/GoogleBaseAttribute;

    .line 38
    .local v0, "attr":Lcom/google/api/gbase/client/GoogleBaseAttribute;
    iget-object v2, p0, Lcom/google/api/gbase/client/Group;->subAttributes:Lcom/google/common/collect/Multimap;

    invoke-virtual {v0}, Lcom/google/api/gbase/client/GoogleBaseAttribute;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Lcom/google/common/collect/Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    .line 40
    .end local v0    # "attr":Lcom/google/api/gbase/client/GoogleBaseAttribute;
    :cond_0
    return-void
.end method


# virtual methods
.method public getAllSubAttributes()Lcom/google/common/collect/Multimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/Multimap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/api/gbase/client/GoogleBaseAttribute;",
            ">;"
        }
    .end annotation

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/api/gbase/client/Group;->subAttributes:Lcom/google/common/collect/Multimap;

    invoke-static {v0}, Lcom/google/common/collect/HashMultimap;->create(Lcom/google/common/collect/Multimap;)Lcom/google/common/collect/HashMultimap;

    move-result-object v0

    return-object v0
.end method

.method public getSubAttribute(Ljava/lang/String;)Lcom/google/api/gbase/client/GoogleBaseAttribute;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 48
    iget-object v1, p0, Lcom/google/api/gbase/client/Group;->subAttributes:Lcom/google/common/collect/Multimap;

    invoke-interface {v1, p1}, Lcom/google/common/collect/Multimap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 49
    iget-object v1, p0, Lcom/google/api/gbase/client/Group;->subAttributes:Lcom/google/common/collect/Multimap;

    invoke-interface {v1, p1}, Lcom/google/common/collect/Multimap;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    .line 50
    .local v0, "attrs":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/api/gbase/client/GoogleBaseAttribute;>;"
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 51
    iget-object v1, p0, Lcom/google/api/gbase/client/Group;->subAttributes:Lcom/google/common/collect/Multimap;

    invoke-interface {v1, p1}, Lcom/google/common/collect/Multimap;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/api/gbase/client/GoogleBaseAttribute;

    .line 54
    .end local v0    # "attrs":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/api/gbase/client/GoogleBaseAttribute;>;"
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSubAttributes(Ljava/lang/String;)Ljava/util/Collection;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection",
            "<+",
            "Lcom/google/api/gbase/client/GoogleBaseAttribute;",
            ">;"
        }
    .end annotation

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/api/gbase/client/Group;->subAttributes:Lcom/google/common/collect/Multimap;

    invoke-interface {v0, p1}, Lcom/google/common/collect/Multimap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/google/api/gbase/client/Group;->subAttributes:Lcom/google/common/collect/Multimap;

    invoke-interface {v0, p1}, Lcom/google/common/collect/Multimap;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    .line 67
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    goto :goto_0
.end method

.method public subAttributesSize()I
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/google/api/gbase/client/Group;->subAttributes:Lcom/google/common/collect/Multimap;

    invoke-interface {v0}, Lcom/google/common/collect/Multimap;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .prologue
    .line 84
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "["

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 85
    .local v2, "builder":Ljava/lang/StringBuilder;
    iget-object v6, p0, Lcom/google/api/gbase/client/Group;->subAttributes:Lcom/google/common/collect/Multimap;

    invoke-interface {v6}, Lcom/google/common/collect/Multimap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 86
    .local v5, "key":Ljava/lang/String;
    iget-object v6, p0, Lcom/google/api/gbase/client/Group;->subAttributes:Lcom/google/common/collect/Multimap;

    invoke-interface {v6, v5}, Lcom/google/common/collect/Multimap;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v1

    .line 87
    .local v1, "attrs":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/api/gbase/client/GoogleBaseAttribute;>;"
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/api/gbase/client/GoogleBaseAttribute;

    .line 88
    .local v0, "attr":Lcom/google/api/gbase/client/GoogleBaseAttribute;
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/google/api/gbase/client/GoogleBaseAttribute;->getType()Lcom/google/api/gbase/client/GoogleBaseAttributeType;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/google/api/gbase/client/GoogleBaseAttribute;->getValueAsString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 92
    .end local v0    # "attr":Lcom/google/api/gbase/client/GoogleBaseAttribute;
    .end local v1    # "attrs":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/api/gbase/client/GoogleBaseAttribute;>;"
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "key":Ljava/lang/String;
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 93
    const-string v6, "]"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method
