.class Lcom/google/gdata/model/ElementIterator;
.super Ljava/lang/Object;
.source "ElementIterator.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gdata/model/ElementIterator$1;,
        Lcom/google/gdata/model/ElementIterator$Mode;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Lcom/google/gdata/model/Element;",
        ">;"
    }
.end annotation


# instance fields
.field private final element:Lcom/google/gdata/model/Element;

.field private elementIterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final elements:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/gdata/model/QName;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final metadata:Lcom/google/gdata/model/ElementMetadata;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gdata/model/ElementMetadata",
            "<**>;"
        }
    .end annotation
.end field

.field private metadataIterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Lcom/google/gdata/model/ElementKey",
            "<**>;>;"
        }
    .end annotation
.end field

.field private mode:Lcom/google/gdata/model/ElementIterator$Mode;

.field private nextElement:Lcom/google/gdata/model/Element;

.field private sublistIterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<+",
            "Lcom/google/gdata/model/Element;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/gdata/model/Element;Lcom/google/gdata/model/ElementMetadata;Ljava/util/Map;)V
    .locals 2
    .param p1, "element"    # Lcom/google/gdata/model/Element;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/Element;",
            "Lcom/google/gdata/model/ElementMetadata",
            "<**>;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/gdata/model/QName;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "metadata":Lcom/google/gdata/model/ElementMetadata;, "Lcom/google/gdata/model/ElementMetadata<**>;"
    .local p3, "elements":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/gdata/model/QName;Ljava/lang/Object;>;"
    const/4 v1, 0x0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    sget-object v0, Lcom/google/gdata/model/ElementIterator$Mode;->DECLARED:Lcom/google/gdata/model/ElementIterator$Mode;

    iput-object v0, p0, Lcom/google/gdata/model/ElementIterator;->mode:Lcom/google/gdata/model/ElementIterator$Mode;

    .line 51
    iput-object p1, p0, Lcom/google/gdata/model/ElementIterator;->element:Lcom/google/gdata/model/Element;

    .line 52
    iput-object p2, p0, Lcom/google/gdata/model/ElementIterator;->metadata:Lcom/google/gdata/model/ElementMetadata;

    .line 53
    iput-object p3, p0, Lcom/google/gdata/model/ElementIterator;->elements:Ljava/util/Map;

    .line 54
    if-nez p2, :cond_0

    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lcom/google/gdata/model/ElementIterator;->metadataIterator:Ljava/util/Iterator;

    .line 56
    if-nez p3, :cond_1

    :goto_1
    iput-object v1, p0, Lcom/google/gdata/model/ElementIterator;->elementIterator:Ljava/util/Iterator;

    .line 59
    invoke-direct {p0}, Lcom/google/gdata/model/ElementIterator;->findNextElement()Lcom/google/gdata/model/Element;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/model/ElementIterator;->nextElement:Lcom/google/gdata/model/Element;

    .line 60
    return-void

    .line 54
    :cond_0
    invoke-interface {p2}, Lcom/google/gdata/model/ElementMetadata;->getElements()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_0

    .line 56
    :cond_1
    invoke-interface {p3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    goto :goto_1
.end method

.method private castElementCollection(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 0
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/gdata/model/Element;",
            ">(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Collection",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 233
    check-cast p1, Ljava/util/Collection;

    .end local p1    # "obj":Ljava/lang/Object;
    return-object p1
.end method

.method private findNextDeclaredElement()Lcom/google/gdata/model/Element;
    .locals 11

    .prologue
    const/4 v8, 0x0

    .line 120
    iget-object v9, p0, Lcom/google/gdata/model/ElementIterator;->metadataIterator:Ljava/util/Iterator;

    if-eqz v9, :cond_6

    .line 121
    :cond_0
    iget-object v9, p0, Lcom/google/gdata/model/ElementIterator;->metadataIterator:Ljava/util/Iterator;

    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 122
    iget-object v9, p0, Lcom/google/gdata/model/ElementIterator;->metadataIterator:Ljava/util/Iterator;

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/gdata/model/ElementKey;

    .line 123
    .local v4, "nextKey":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<**>;"
    sget-object v9, Lcom/google/gdata/model/ElementCreatorImpl;->ELEMENT_MARKER:Lcom/google/gdata/model/ElementKey;

    if-ne v9, v4, :cond_2

    .line 124
    sget-object v9, Lcom/google/gdata/model/ElementIterator$Mode;->UNDECLARED:Lcom/google/gdata/model/ElementIterator$Mode;

    iput-object v9, p0, Lcom/google/gdata/model/ElementIterator;->mode:Lcom/google/gdata/model/ElementIterator$Mode;

    move-object v2, v8

    .line 167
    .end local v4    # "nextKey":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<**>;"
    :cond_1
    :goto_0
    return-object v2

    .line 128
    .restart local v4    # "nextKey":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<**>;"
    :cond_2
    iget-object v9, p0, Lcom/google/gdata/model/ElementIterator;->metadata:Lcom/google/gdata/model/ElementMetadata;

    invoke-interface {v9, v4}, Lcom/google/gdata/model/ElementMetadata;->bindElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/ElementMetadata;

    move-result-object v0

    .line 129
    .local v0, "childMeta":Lcom/google/gdata/model/ElementMetadata;, "Lcom/google/gdata/model/ElementMetadata<**>;"
    invoke-interface {v0}, Lcom/google/gdata/model/ElementMetadata;->isVisible()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 133
    invoke-interface {v0}, Lcom/google/gdata/model/ElementMetadata;->getSingleVirtualElement()Lcom/google/gdata/model/ElementMetadata$SingleVirtualElement;

    move-result-object v6

    .line 135
    .local v6, "singleVirtual":Lcom/google/gdata/model/ElementMetadata$SingleVirtualElement;
    if-eqz v6, :cond_3

    .line 136
    iget-object v9, p0, Lcom/google/gdata/model/ElementIterator;->element:Lcom/google/gdata/model/Element;

    iget-object v10, p0, Lcom/google/gdata/model/ElementIterator;->metadata:Lcom/google/gdata/model/ElementMetadata;

    invoke-interface {v6, v9, v10, v0}, Lcom/google/gdata/model/ElementMetadata$SingleVirtualElement;->generateSingle(Lcom/google/gdata/model/Element;Lcom/google/gdata/model/ElementMetadata;Lcom/google/gdata/model/ElementMetadata;)Lcom/google/gdata/model/Element;

    move-result-object v2

    .line 138
    .local v2, "generated":Lcom/google/gdata/model/Element;
    if-nez v2, :cond_1

    .line 143
    .end local v2    # "generated":Lcom/google/gdata/model/Element;
    :cond_3
    invoke-interface {v0}, Lcom/google/gdata/model/ElementMetadata;->getMultipleVirtualElement()Lcom/google/gdata/model/ElementMetadata$MultipleVirtualElement;

    move-result-object v3

    .line 145
    .local v3, "multipleVirtual":Lcom/google/gdata/model/ElementMetadata$MultipleVirtualElement;
    if-eqz v3, :cond_4

    .line 146
    iget-object v9, p0, Lcom/google/gdata/model/ElementIterator;->element:Lcom/google/gdata/model/Element;

    iget-object v10, p0, Lcom/google/gdata/model/ElementIterator;->metadata:Lcom/google/gdata/model/ElementMetadata;

    invoke-interface {v3, v9, v10, v0}, Lcom/google/gdata/model/ElementMetadata$MultipleVirtualElement;->generateMultiple(Lcom/google/gdata/model/Element;Lcom/google/gdata/model/ElementMetadata;Lcom/google/gdata/model/ElementMetadata;)Ljava/util/Collection;

    move-result-object v7

    .line 148
    .local v7, "virtualElements":Ljava/util/Collection;, "Ljava/util/Collection<+Lcom/google/gdata/model/Element;>;"
    if-eqz v7, :cond_4

    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_4

    .line 149
    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    iput-object v8, p0, Lcom/google/gdata/model/ElementIterator;->sublistIterator:Ljava/util/Iterator;

    .line 150
    iget-object v8, p0, Lcom/google/gdata/model/ElementIterator;->sublistIterator:Ljava/util/Iterator;

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/gdata/model/Element;

    move-object v2, v8

    goto :goto_0

    .line 154
    .end local v7    # "virtualElements":Ljava/util/Collection;, "Ljava/util/Collection<+Lcom/google/gdata/model/Element;>;"
    :cond_4
    invoke-virtual {v4}, Lcom/google/gdata/model/ElementKey;->getId()Lcom/google/gdata/model/QName;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/google/gdata/model/ElementIterator;->getElementObject(Lcom/google/gdata/model/QName;)Ljava/lang/Object;

    move-result-object v5

    .line 155
    .local v5, "obj":Ljava/lang/Object;
    invoke-direct {p0, v5}, Lcom/google/gdata/model/ElementIterator;->firstElement(Ljava/lang/Object;)Lcom/google/gdata/model/Element;

    move-result-object v1

    .line 156
    .local v1, "first":Lcom/google/gdata/model/Element;
    if-eqz v1, :cond_0

    move-object v2, v1

    .line 157
    goto :goto_0

    .line 162
    .end local v0    # "childMeta":Lcom/google/gdata/model/ElementMetadata;, "Lcom/google/gdata/model/ElementMetadata<**>;"
    .end local v1    # "first":Lcom/google/gdata/model/Element;
    .end local v3    # "multipleVirtual":Lcom/google/gdata/model/ElementMetadata$MultipleVirtualElement;
    .end local v4    # "nextKey":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<**>;"
    .end local v5    # "obj":Ljava/lang/Object;
    .end local v6    # "singleVirtual":Lcom/google/gdata/model/ElementMetadata$SingleVirtualElement;
    :cond_5
    iput-object v8, p0, Lcom/google/gdata/model/ElementIterator;->metadataIterator:Ljava/util/Iterator;

    .line 166
    :cond_6
    sget-object v9, Lcom/google/gdata/model/ElementIterator$Mode;->UNDECLARED:Lcom/google/gdata/model/ElementIterator$Mode;

    iput-object v9, p0, Lcom/google/gdata/model/ElementIterator;->mode:Lcom/google/gdata/model/ElementIterator$Mode;

    move-object v2, v8

    .line 167
    goto :goto_0
.end method

.method private findNextElement()Lcom/google/gdata/model/Element;
    .locals 3

    .prologue
    .line 90
    iget-object v1, p0, Lcom/google/gdata/model/ElementIterator;->sublistIterator:Ljava/util/Iterator;

    if-eqz v1, :cond_1

    .line 91
    iget-object v1, p0, Lcom/google/gdata/model/ElementIterator;->sublistIterator:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 92
    iget-object v1, p0, Lcom/google/gdata/model/ElementIterator;->sublistIterator:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gdata/model/Element;

    .line 112
    :goto_0
    return-object v1

    .line 95
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/gdata/model/ElementIterator;->sublistIterator:Ljava/util/Iterator;

    .line 98
    :cond_1
    const/4 v0, 0x0

    .line 99
    .local v0, "next":Lcom/google/gdata/model/Element;
    :goto_1
    if-nez v0, :cond_2

    iget-object v1, p0, Lcom/google/gdata/model/ElementIterator;->mode:Lcom/google/gdata/model/ElementIterator$Mode;

    sget-object v2, Lcom/google/gdata/model/ElementIterator$Mode;->DONE:Lcom/google/gdata/model/ElementIterator$Mode;

    if-eq v1, v2, :cond_2

    .line 100
    sget-object v1, Lcom/google/gdata/model/ElementIterator$1;->$SwitchMap$com$google$gdata$model$ElementIterator$Mode:[I

    iget-object v2, p0, Lcom/google/gdata/model/ElementIterator;->mode:Lcom/google/gdata/model/ElementIterator$Mode;

    invoke-virtual {v2}, Lcom/google/gdata/model/ElementIterator$Mode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    .line 102
    :pswitch_0
    invoke-direct {p0}, Lcom/google/gdata/model/ElementIterator;->findNextDeclaredElement()Lcom/google/gdata/model/Element;

    move-result-object v0

    .line 103
    goto :goto_1

    .line 105
    :pswitch_1
    invoke-direct {p0}, Lcom/google/gdata/model/ElementIterator;->findNextUndeclaredElement()Lcom/google/gdata/model/Element;

    move-result-object v0

    .line 106
    goto :goto_1

    :cond_2
    move-object v1, v0

    .line 112
    goto :goto_0

    .line 100
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private findNextUndeclaredElement()Lcom/google/gdata/model/Element;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 175
    iget-object v2, p0, Lcom/google/gdata/model/ElementIterator;->elementIterator:Ljava/util/Iterator;

    if-eqz v2, :cond_2

    .line 176
    :goto_0
    iget-object v2, p0, Lcom/google/gdata/model/ElementIterator;->elementIterator:Ljava/util/Iterator;

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 177
    iget-object v2, p0, Lcom/google/gdata/model/ElementIterator;->elementIterator:Ljava/util/Iterator;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 178
    .local v1, "next":Ljava/lang/Object;
    invoke-direct {p0, v1}, Lcom/google/gdata/model/ElementIterator;->firstElement(Ljava/lang/Object;)Lcom/google/gdata/model/Element;

    move-result-object v0

    .line 179
    .local v0, "first":Lcom/google/gdata/model/Element;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/gdata/model/Element;->getElementKey()Lcom/google/gdata/model/ElementKey;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/gdata/model/ElementIterator;->isUndeclared(Lcom/google/gdata/model/ElementKey;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 196
    .end local v0    # "first":Lcom/google/gdata/model/Element;
    .end local v1    # "next":Ljava/lang/Object;
    :goto_1
    return-object v0

    .line 184
    .restart local v0    # "first":Lcom/google/gdata/model/Element;
    .restart local v1    # "next":Ljava/lang/Object;
    :cond_0
    iput-object v3, p0, Lcom/google/gdata/model/ElementIterator;->sublistIterator:Ljava/util/Iterator;

    goto :goto_0

    .line 189
    .end local v0    # "first":Lcom/google/gdata/model/Element;
    .end local v1    # "next":Ljava/lang/Object;
    :cond_1
    iput-object v3, p0, Lcom/google/gdata/model/ElementIterator;->sublistIterator:Ljava/util/Iterator;

    .line 190
    iput-object v3, p0, Lcom/google/gdata/model/ElementIterator;->elementIterator:Ljava/util/Iterator;

    .line 194
    :cond_2
    iget-object v2, p0, Lcom/google/gdata/model/ElementIterator;->metadataIterator:Ljava/util/Iterator;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/gdata/model/ElementIterator;->metadataIterator:Ljava/util/Iterator;

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, Lcom/google/gdata/model/ElementIterator$Mode;->DECLARED:Lcom/google/gdata/model/ElementIterator$Mode;

    :goto_2
    iput-object v2, p0, Lcom/google/gdata/model/ElementIterator;->mode:Lcom/google/gdata/model/ElementIterator$Mode;

    move-object v0, v3

    .line 196
    goto :goto_1

    .line 194
    :cond_3
    sget-object v2, Lcom/google/gdata/model/ElementIterator$Mode;->DONE:Lcom/google/gdata/model/ElementIterator$Mode;

    goto :goto_2
.end method

.method private firstElement(Ljava/lang/Object;)Lcom/google/gdata/model/Element;
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 205
    if-nez p1, :cond_0

    move-object p1, v1

    .line 224
    .end local p1    # "obj":Ljava/lang/Object;
    :goto_0
    return-object p1

    .line 211
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_0
    instance-of v2, p1, Lcom/google/gdata/model/Element;

    if-eqz v2, :cond_1

    .line 212
    check-cast p1, Lcom/google/gdata/model/Element;

    goto :goto_0

    .line 218
    :cond_1
    invoke-direct {p0, p1}, Lcom/google/gdata/model/ElementIterator;->castElementCollection(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    .line 219
    .local v0, "elementCollection":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/gdata/model/Element;>;"
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 220
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    iput-object v1, p0, Lcom/google/gdata/model/ElementIterator;->sublistIterator:Ljava/util/Iterator;

    .line 221
    iget-object v1, p0, Lcom/google/gdata/model/ElementIterator;->sublistIterator:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gdata/model/Element;

    move-object p1, v1

    goto :goto_0

    :cond_2
    move-object p1, v1

    .line 224
    goto :goto_0
.end method

.method private getElementObject(Lcom/google/gdata/model/QName;)Ljava/lang/Object;
    .locals 1
    .param p1, "id"    # Lcom/google/gdata/model/QName;

    .prologue
    .line 241
    iget-object v0, p0, Lcom/google/gdata/model/ElementIterator;->elements:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/gdata/model/ElementIterator;->elements:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isUndeclared(Lcom/google/gdata/model/ElementKey;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/ElementKey",
            "<**>;)Z"
        }
    .end annotation

    .prologue
    .line 248
    .local p1, "key":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<**>;"
    iget-object v0, p0, Lcom/google/gdata/model/ElementIterator;->metadata:Lcom/google/gdata/model/ElementMetadata;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/gdata/model/ElementIterator;->metadata:Lcom/google/gdata/model/ElementMetadata;

    invoke-interface {v0, p1}, Lcom/google/gdata/model/ElementMetadata;->isDeclared(Lcom/google/gdata/model/ElementKey;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/gdata/model/ElementIterator;->nextElement:Lcom/google/gdata/model/Element;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Lcom/google/gdata/model/Element;
    .locals 3

    .prologue
    .line 67
    iget-object v1, p0, Lcom/google/gdata/model/ElementIterator;->nextElement:Lcom/google/gdata/model/Element;

    if-nez v1, :cond_0

    .line 68
    new-instance v1, Ljava/util/NoSuchElementException;

    const-string v2, "No remaining elements"

    invoke-direct {v1, v2}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/google/gdata/model/ElementIterator;->nextElement:Lcom/google/gdata/model/Element;

    .line 71
    .local v0, "retval":Lcom/google/gdata/model/Element;
    invoke-direct {p0}, Lcom/google/gdata/model/ElementIterator;->findNextElement()Lcom/google/gdata/model/Element;

    move-result-object v1

    iput-object v1, p0, Lcom/google/gdata/model/ElementIterator;->nextElement:Lcom/google/gdata/model/Element;

    .line 72
    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/google/gdata/model/ElementIterator;->next()Lcom/google/gdata/model/Element;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 76
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Removal not supported on element iterator"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
