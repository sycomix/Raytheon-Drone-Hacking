.class Lcom/google/gdata/model/AttributeIterator;
.super Ljava/lang/Object;
.source "AttributeIterator.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gdata/model/AttributeIterator$1;,
        Lcom/google/gdata/model/AttributeIterator$Mode;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Lcom/google/gdata/model/Attribute;",
        ">;"
    }
.end annotation


# instance fields
.field private attributeIterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Lcom/google/gdata/model/QName;",
            "Lcom/google/gdata/model/Attribute;",
            ">;>;"
        }
    .end annotation
.end field

.field private final element:Lcom/google/gdata/model/Element;

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
            "Lcom/google/gdata/model/AttributeKey",
            "<*>;>;"
        }
    .end annotation
.end field

.field private mode:Lcom/google/gdata/model/AttributeIterator$Mode;

.field private nextAttribute:Lcom/google/gdata/model/Attribute;


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
            "Lcom/google/gdata/model/Attribute;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "metadata":Lcom/google/gdata/model/ElementMetadata;, "Lcom/google/gdata/model/ElementMetadata<**>;"
    .local p3, "attributes":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/gdata/model/QName;Lcom/google/gdata/model/Attribute;>;"
    const/4 v1, 0x0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    sget-object v0, Lcom/google/gdata/model/AttributeIterator$Mode;->DECLARED:Lcom/google/gdata/model/AttributeIterator$Mode;

    iput-object v0, p0, Lcom/google/gdata/model/AttributeIterator;->mode:Lcom/google/gdata/model/AttributeIterator$Mode;

    .line 46
    iput-object p1, p0, Lcom/google/gdata/model/AttributeIterator;->element:Lcom/google/gdata/model/Element;

    .line 47
    iput-object p2, p0, Lcom/google/gdata/model/AttributeIterator;->metadata:Lcom/google/gdata/model/ElementMetadata;

    .line 48
    if-nez p2, :cond_0

    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lcom/google/gdata/model/AttributeIterator;->metadataIterator:Ljava/util/Iterator;

    .line 50
    if-nez p3, :cond_1

    :goto_1
    iput-object v1, p0, Lcom/google/gdata/model/AttributeIterator;->attributeIterator:Ljava/util/Iterator;

    .line 53
    invoke-direct {p0}, Lcom/google/gdata/model/AttributeIterator;->findNextAttribute()Lcom/google/gdata/model/Attribute;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/model/AttributeIterator;->nextAttribute:Lcom/google/gdata/model/Attribute;

    .line 54
    return-void

    .line 48
    :cond_0
    invoke-interface {p2}, Lcom/google/gdata/model/ElementMetadata;->getAttributes()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_0

    .line 50
    :cond_1
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    goto :goto_1
.end method

.method private findNextAttribute()Lcom/google/gdata/model/Attribute;
    .locals 3

    .prologue
    .line 79
    const/4 v0, 0x0

    .line 80
    .local v0, "next":Lcom/google/gdata/model/Attribute;
    :goto_0
    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/google/gdata/model/AttributeIterator;->mode:Lcom/google/gdata/model/AttributeIterator$Mode;

    sget-object v2, Lcom/google/gdata/model/AttributeIterator$Mode;->DONE:Lcom/google/gdata/model/AttributeIterator$Mode;

    if-eq v1, v2, :cond_0

    .line 81
    sget-object v1, Lcom/google/gdata/model/AttributeIterator$1;->$SwitchMap$com$google$gdata$model$AttributeIterator$Mode:[I

    iget-object v2, p0, Lcom/google/gdata/model/AttributeIterator;->mode:Lcom/google/gdata/model/AttributeIterator$Mode;

    invoke-virtual {v2}, Lcom/google/gdata/model/AttributeIterator$Mode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 83
    :pswitch_0
    invoke-direct {p0}, Lcom/google/gdata/model/AttributeIterator;->findNextDeclaredAttribute()Lcom/google/gdata/model/Attribute;

    move-result-object v0

    .line 84
    goto :goto_0

    .line 86
    :pswitch_1
    invoke-direct {p0}, Lcom/google/gdata/model/AttributeIterator;->findNextUndeclaredAttribute()Lcom/google/gdata/model/Attribute;

    move-result-object v0

    .line 87
    goto :goto_0

    .line 92
    :cond_0
    return-object v0

    .line 81
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private findNextDeclaredAttribute()Lcom/google/gdata/model/Attribute;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 99
    iget-object v4, p0, Lcom/google/gdata/model/AttributeIterator;->metadataIterator:Ljava/util/Iterator;

    if-eqz v4, :cond_3

    .line 100
    :cond_0
    iget-object v4, p0, Lcom/google/gdata/model/AttributeIterator;->metadataIterator:Ljava/util/Iterator;

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 101
    iget-object v4, p0, Lcom/google/gdata/model/AttributeIterator;->metadataIterator:Ljava/util/Iterator;

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gdata/model/AttributeKey;

    .line 102
    .local v1, "nextKey":Lcom/google/gdata/model/AttributeKey;, "Lcom/google/gdata/model/AttributeKey<*>;"
    sget-object v4, Lcom/google/gdata/model/ElementCreatorImpl;->ATTRIBUTE_MARKER:Lcom/google/gdata/model/AttributeKey;

    if-ne v4, v1, :cond_1

    .line 103
    sget-object v4, Lcom/google/gdata/model/AttributeIterator$Mode;->UNDECLARED:Lcom/google/gdata/model/AttributeIterator$Mode;

    iput-object v4, p0, Lcom/google/gdata/model/AttributeIterator;->mode:Lcom/google/gdata/model/AttributeIterator$Mode;

    .line 124
    .end local v1    # "nextKey":Lcom/google/gdata/model/AttributeKey;, "Lcom/google/gdata/model/AttributeKey<*>;"
    :goto_0
    return-object v3

    .line 107
    .restart local v1    # "nextKey":Lcom/google/gdata/model/AttributeKey;, "Lcom/google/gdata/model/AttributeKey<*>;"
    :cond_1
    iget-object v4, p0, Lcom/google/gdata/model/AttributeIterator;->metadata:Lcom/google/gdata/model/ElementMetadata;

    invoke-interface {v4, v1}, Lcom/google/gdata/model/ElementMetadata;->bindAttribute(Lcom/google/gdata/model/AttributeKey;)Lcom/google/gdata/model/AttributeMetadata;

    move-result-object v0

    .line 108
    .local v0, "attMeta":Lcom/google/gdata/model/AttributeMetadata;, "Lcom/google/gdata/model/AttributeMetadata<*>;"
    invoke-interface {v0}, Lcom/google/gdata/model/AttributeMetadata;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 112
    iget-object v4, p0, Lcom/google/gdata/model/AttributeIterator;->element:Lcom/google/gdata/model/Element;

    iget-object v5, p0, Lcom/google/gdata/model/AttributeIterator;->metadata:Lcom/google/gdata/model/ElementMetadata;

    invoke-interface {v0, v4, v5}, Lcom/google/gdata/model/AttributeMetadata;->generateValue(Lcom/google/gdata/model/Element;Lcom/google/gdata/model/ElementMetadata;)Ljava/lang/Object;

    move-result-object v2

    .line 113
    .local v2, "value":Ljava/lang/Object;
    if-eqz v2, :cond_0

    .line 114
    new-instance v3, Lcom/google/gdata/model/Attribute;

    invoke-direct {v3, v1, v2}, Lcom/google/gdata/model/Attribute;-><init>(Lcom/google/gdata/model/AttributeKey;Ljava/lang/Object;)V

    goto :goto_0

    .line 119
    .end local v0    # "attMeta":Lcom/google/gdata/model/AttributeMetadata;, "Lcom/google/gdata/model/AttributeMetadata<*>;"
    .end local v1    # "nextKey":Lcom/google/gdata/model/AttributeKey;, "Lcom/google/gdata/model/AttributeKey<*>;"
    .end local v2    # "value":Ljava/lang/Object;
    :cond_2
    iput-object v3, p0, Lcom/google/gdata/model/AttributeIterator;->metadataIterator:Ljava/util/Iterator;

    .line 123
    :cond_3
    sget-object v4, Lcom/google/gdata/model/AttributeIterator$Mode;->UNDECLARED:Lcom/google/gdata/model/AttributeIterator$Mode;

    iput-object v4, p0, Lcom/google/gdata/model/AttributeIterator;->mode:Lcom/google/gdata/model/AttributeIterator$Mode;

    goto :goto_0
.end method

.method private findNextUndeclaredAttribute()Lcom/google/gdata/model/Attribute;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 131
    iget-object v2, p0, Lcom/google/gdata/model/AttributeIterator;->attributeIterator:Ljava/util/Iterator;

    if-eqz v2, :cond_2

    .line 132
    :cond_0
    iget-object v2, p0, Lcom/google/gdata/model/AttributeIterator;->attributeIterator:Ljava/util/Iterator;

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 133
    iget-object v2, p0, Lcom/google/gdata/model/AttributeIterator;->attributeIterator:Ljava/util/Iterator;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 134
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/gdata/model/QName;Lcom/google/gdata/model/Attribute;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/model/Attribute;

    .line 135
    .local v0, "attribute":Lcom/google/gdata/model/Attribute;
    invoke-virtual {v0}, Lcom/google/gdata/model/Attribute;->getAttributeKey()Lcom/google/gdata/model/AttributeKey;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/gdata/model/AttributeIterator;->isUndeclared(Lcom/google/gdata/model/AttributeKey;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 136
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/gdata/model/Attribute;

    .line 147
    .end local v0    # "attribute":Lcom/google/gdata/model/Attribute;
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/gdata/model/QName;Lcom/google/gdata/model/Attribute;>;"
    :goto_0
    return-object v2

    .line 141
    :cond_1
    iput-object v3, p0, Lcom/google/gdata/model/AttributeIterator;->attributeIterator:Ljava/util/Iterator;

    .line 145
    :cond_2
    iget-object v2, p0, Lcom/google/gdata/model/AttributeIterator;->metadataIterator:Ljava/util/Iterator;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/gdata/model/AttributeIterator;->metadataIterator:Ljava/util/Iterator;

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, Lcom/google/gdata/model/AttributeIterator$Mode;->DECLARED:Lcom/google/gdata/model/AttributeIterator$Mode;

    :goto_1
    iput-object v2, p0, Lcom/google/gdata/model/AttributeIterator;->mode:Lcom/google/gdata/model/AttributeIterator$Mode;

    move-object v2, v3

    .line 147
    goto :goto_0

    .line 145
    :cond_3
    sget-object v2, Lcom/google/gdata/model/AttributeIterator$Mode;->DONE:Lcom/google/gdata/model/AttributeIterator$Mode;

    goto :goto_1
.end method

.method private isUndeclared(Lcom/google/gdata/model/AttributeKey;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/AttributeKey",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 154
    .local p1, "key":Lcom/google/gdata/model/AttributeKey;, "Lcom/google/gdata/model/AttributeKey<*>;"
    iget-object v0, p0, Lcom/google/gdata/model/AttributeIterator;->metadata:Lcom/google/gdata/model/ElementMetadata;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/gdata/model/AttributeIterator;->metadata:Lcom/google/gdata/model/ElementMetadata;

    invoke-interface {v0, p1}, Lcom/google/gdata/model/ElementMetadata;->isDeclared(Lcom/google/gdata/model/AttributeKey;)Z

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
    .line 57
    iget-object v0, p0, Lcom/google/gdata/model/AttributeIterator;->nextAttribute:Lcom/google/gdata/model/Attribute;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Lcom/google/gdata/model/Attribute;
    .locals 3

    .prologue
    .line 61
    iget-object v1, p0, Lcom/google/gdata/model/AttributeIterator;->nextAttribute:Lcom/google/gdata/model/Attribute;

    if-nez v1, :cond_0

    .line 62
    new-instance v1, Ljava/util/NoSuchElementException;

    const-string v2, "No remaining attributes"

    invoke-direct {v1, v2}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/google/gdata/model/AttributeIterator;->nextAttribute:Lcom/google/gdata/model/Attribute;

    .line 65
    .local v0, "retVal":Lcom/google/gdata/model/Attribute;
    invoke-direct {p0}, Lcom/google/gdata/model/AttributeIterator;->findNextAttribute()Lcom/google/gdata/model/Attribute;

    move-result-object v1

    iput-object v1, p0, Lcom/google/gdata/model/AttributeIterator;->nextAttribute:Lcom/google/gdata/model/Attribute;

    .line 66
    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/google/gdata/model/AttributeIterator;->next()Lcom/google/gdata/model/Attribute;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 70
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Removal not supported on attribute iterator"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
