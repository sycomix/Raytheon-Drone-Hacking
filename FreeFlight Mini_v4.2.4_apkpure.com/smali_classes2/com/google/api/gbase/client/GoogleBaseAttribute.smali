.class public Lcom/google/api/gbase/client/GoogleBaseAttribute;
.super Ljava/lang/Object;
.source "GoogleBaseAttribute.java"


# instance fields
.field private adjustments:Lcom/google/api/gbase/client/Adjustments;

.field private final attributeId:Lcom/google/api/gbase/client/GoogleBaseAttributeId;

.field private privateAccess:Z

.field private subAttributes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/api/gbase/client/GoogleBaseAttribute;",
            ">;"
        }
    .end annotation
.end field

.field private subElements:Lcom/google/common/collect/Multimap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/Multimap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private textValue:Ljava/lang/String;

.field private thumbnails:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/api/gbase/client/Thumbnail;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/api/gbase/client/GoogleBaseAttributeId;Ljava/lang/String;)V
    .locals 0
    .param p1, "attributeId"    # Lcom/google/api/gbase/client/GoogleBaseAttributeId;
    .param p2, "textValue"    # Ljava/lang/String;

    .prologue
    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    iput-object p1, p0, Lcom/google/api/gbase/client/GoogleBaseAttribute;->attributeId:Lcom/google/api/gbase/client/GoogleBaseAttributeId;

    .line 130
    iput-object p2, p0, Lcom/google/api/gbase/client/GoogleBaseAttribute;->textValue:Ljava/lang/String;

    .line 131
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 60
    new-instance v0, Lcom/google/api/gbase/client/GoogleBaseAttributeId;

    invoke-direct {v0, p1, v1}, Lcom/google/api/gbase/client/GoogleBaseAttributeId;-><init>(Ljava/lang/String;Lcom/google/api/gbase/client/GoogleBaseAttributeType;)V

    invoke-direct {p0, v0, v1}, Lcom/google/api/gbase/client/GoogleBaseAttribute;-><init>(Lcom/google/api/gbase/client/GoogleBaseAttributeId;Ljava/lang/String;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/api/gbase/client/GoogleBaseAttributeType;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Lcom/google/api/gbase/client/GoogleBaseAttributeType;

    .prologue
    .line 71
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/api/gbase/client/GoogleBaseAttribute;-><init>(Ljava/lang/String;Lcom/google/api/gbase/client/GoogleBaseAttributeType;Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/api/gbase/client/GoogleBaseAttributeType;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Lcom/google/api/gbase/client/GoogleBaseAttributeType;
    .param p3, "textValue"    # Ljava/lang/String;

    .prologue
    .line 86
    new-instance v0, Lcom/google/api/gbase/client/GoogleBaseAttributeId;

    invoke-direct {v0, p1, p2}, Lcom/google/api/gbase/client/GoogleBaseAttributeId;-><init>(Ljava/lang/String;Lcom/google/api/gbase/client/GoogleBaseAttributeType;)V

    invoke-direct {p0, v0, p3}, Lcom/google/api/gbase/client/GoogleBaseAttribute;-><init>(Lcom/google/api/gbase/client/GoogleBaseAttributeId;Ljava/lang/String;)V

    .line 87
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/api/gbase/client/GoogleBaseAttributeType;Z)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Lcom/google/api/gbase/client/GoogleBaseAttributeType;
    .param p3, "privateAccess"    # Z

    .prologue
    .line 99
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/api/gbase/client/GoogleBaseAttribute;-><init>(Ljava/lang/String;Lcom/google/api/gbase/client/GoogleBaseAttributeType;ZLjava/lang/String;)V

    .line 100
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/api/gbase/client/GoogleBaseAttributeType;ZLjava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Lcom/google/api/gbase/client/GoogleBaseAttributeType;
    .param p3, "privateAccess"    # Z
    .param p4, "textValue"    # Ljava/lang/String;

    .prologue
    .line 116
    new-instance v0, Lcom/google/api/gbase/client/GoogleBaseAttributeId;

    invoke-direct {v0, p1, p2}, Lcom/google/api/gbase/client/GoogleBaseAttributeId;-><init>(Ljava/lang/String;Lcom/google/api/gbase/client/GoogleBaseAttributeType;)V

    invoke-direct {p0, v0, p4}, Lcom/google/api/gbase/client/GoogleBaseAttribute;-><init>(Lcom/google/api/gbase/client/GoogleBaseAttributeId;Ljava/lang/String;)V

    .line 117
    invoke-virtual {p0, p3}, Lcom/google/api/gbase/client/GoogleBaseAttribute;->setPrivate(Z)V

    .line 118
    return-void
.end method

.method private static equalsMaybeNull(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "a"    # Ljava/lang/Object;
    .param p1, "b"    # Ljava/lang/Object;

    .prologue
    .line 400
    if-nez p0, :cond_1

    .line 401
    if-nez p1, :cond_0

    const/4 v0, 0x1

    .line 403
    :goto_0
    return v0

    .line 401
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 403
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public addSubAttribute(Lcom/google/api/gbase/client/GoogleBaseAttribute;)V
    .locals 1
    .param p1, "value"    # Lcom/google/api/gbase/client/GoogleBaseAttribute;

    .prologue
    .line 336
    invoke-virtual {p0}, Lcom/google/api/gbase/client/GoogleBaseAttribute;->getSubAttributes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 337
    return-void
.end method

.method public appendSubElement(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 241
    if-eqz p2, :cond_1

    .line 242
    iget-object v0, p0, Lcom/google/api/gbase/client/GoogleBaseAttribute;->subElements:Lcom/google/common/collect/Multimap;

    if-nez v0, :cond_0

    .line 243
    invoke-static {}, Lcom/google/common/collect/HashMultimap;->create()Lcom/google/common/collect/HashMultimap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/gbase/client/GoogleBaseAttribute;->subElements:Lcom/google/common/collect/Multimap;

    .line 245
    :cond_0
    iget-object v0, p0, Lcom/google/api/gbase/client/GoogleBaseAttribute;->subElements:Lcom/google/common/collect/Multimap;

    invoke-interface {v0, p1, p2}, Lcom/google/common/collect/Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 247
    :cond_1
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 389
    if-eqz p1, :cond_0

    instance-of v2, p1, Lcom/google/api/gbase/client/GoogleBaseAttribute;

    if-nez v2, :cond_1

    .line 394
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 393
    check-cast v0, Lcom/google/api/gbase/client/GoogleBaseAttribute;

    .line 394
    .local v0, "other":Lcom/google/api/gbase/client/GoogleBaseAttribute;
    iget-object v2, p0, Lcom/google/api/gbase/client/GoogleBaseAttribute;->attributeId:Lcom/google/api/gbase/client/GoogleBaseAttributeId;

    iget-object v3, v0, Lcom/google/api/gbase/client/GoogleBaseAttribute;->attributeId:Lcom/google/api/gbase/client/GoogleBaseAttributeId;

    invoke-virtual {v2, v3}, Lcom/google/api/gbase/client/GoogleBaseAttributeId;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/google/api/gbase/client/GoogleBaseAttribute;->privateAccess:Z

    iget-boolean v3, v0, Lcom/google/api/gbase/client/GoogleBaseAttribute;->privateAccess:Z

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/google/api/gbase/client/GoogleBaseAttribute;->textValue:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/api/gbase/client/GoogleBaseAttribute;->textValue:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/api/gbase/client/GoogleBaseAttribute;->equalsMaybeNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/api/gbase/client/GoogleBaseAttribute;->subElements:Lcom/google/common/collect/Multimap;

    iget-object v3, v0, Lcom/google/api/gbase/client/GoogleBaseAttribute;->subElements:Lcom/google/common/collect/Multimap;

    invoke-static {v2, v3}, Lcom/google/api/gbase/client/GoogleBaseAttribute;->equalsMaybeNull(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getAdjustments()Lcom/google/api/gbase/client/Adjustments;
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Lcom/google/api/gbase/client/GoogleBaseAttribute;->adjustments:Lcom/google/api/gbase/client/Adjustments;

    if-nez v0, :cond_0

    .line 352
    new-instance v0, Lcom/google/api/gbase/client/Adjustments;

    invoke-direct {v0}, Lcom/google/api/gbase/client/Adjustments;-><init>()V

    iput-object v0, p0, Lcom/google/api/gbase/client/GoogleBaseAttribute;->adjustments:Lcom/google/api/gbase/client/Adjustments;

    .line 354
    :cond_0
    iget-object v0, p0, Lcom/google/api/gbase/client/GoogleBaseAttribute;->adjustments:Lcom/google/api/gbase/client/Adjustments;

    return-object v0
.end method

.method public getAttributeId()Lcom/google/api/gbase/client/GoogleBaseAttributeId;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/google/api/gbase/client/GoogleBaseAttribute;->attributeId:Lcom/google/api/gbase/client/GoogleBaseAttributeId;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/google/api/gbase/client/GoogleBaseAttribute;->attributeId:Lcom/google/api/gbase/client/GoogleBaseAttributeId;

    invoke-virtual {v0}, Lcom/google/api/gbase/client/GoogleBaseAttributeId;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSubAttributes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/api/gbase/client/GoogleBaseAttribute;",
            ">;"
        }
    .end annotation

    .prologue
    .line 326
    iget-object v0, p0, Lcom/google/api/gbase/client/GoogleBaseAttribute;->subAttributes:Ljava/util/List;

    if-nez v0, :cond_0

    .line 327
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/api/gbase/client/GoogleBaseAttribute;->subAttributes:Ljava/util/List;

    .line 329
    :cond_0
    iget-object v0, p0, Lcom/google/api/gbase/client/GoogleBaseAttribute;->subAttributes:Ljava/util/List;

    return-object v0
.end method

.method public getSubElementNames()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<+",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 309
    iget-object v0, p0, Lcom/google/api/gbase/client/GoogleBaseAttribute;->subElements:Lcom/google/common/collect/Multimap;

    if-nez v0, :cond_0

    .line 310
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 312
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/api/gbase/client/GoogleBaseAttribute;->subElements:Lcom/google/common/collect/Multimap;

    invoke-interface {v0}, Lcom/google/common/collect/Multimap;->keySet()Ljava/util/Set;

    move-result-object v0

    goto :goto_0
.end method

.method public getSubElementValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 256
    iget-object v1, p0, Lcom/google/api/gbase/client/GoogleBaseAttribute;->subElements:Lcom/google/common/collect/Multimap;

    if-eqz v1, :cond_0

    .line 257
    iget-object v1, p0, Lcom/google/api/gbase/client/GoogleBaseAttribute;->subElements:Lcom/google/common/collect/Multimap;

    invoke-interface {v1, p1}, Lcom/google/common/collect/Multimap;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    .line 258
    .local v0, "elements":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 259
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 262
    .end local v0    # "elements":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSubElementValues(Ljava/lang/String;)Ljava/util/Collection;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 272
    iget-object v0, p0, Lcom/google/api/gbase/client/GoogleBaseAttribute;->subElements:Lcom/google/common/collect/Multimap;

    if-nez v0, :cond_0

    .line 273
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    .line 275
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/api/gbase/client/GoogleBaseAttribute;->subElements:Lcom/google/common/collect/Multimap;

    invoke-interface {v0, p1}, Lcom/google/common/collect/Multimap;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    goto :goto_0
.end method

.method public getThumbnails()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/api/gbase/client/Thumbnail;",
            ">;"
        }
    .end annotation

    .prologue
    .line 369
    iget-object v0, p0, Lcom/google/api/gbase/client/GoogleBaseAttribute;->thumbnails:Ljava/util/List;

    if-nez v0, :cond_0

    .line 370
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/api/gbase/client/GoogleBaseAttribute;->thumbnails:Ljava/util/List;

    .line 372
    :cond_0
    iget-object v0, p0, Lcom/google/api/gbase/client/GoogleBaseAttribute;->thumbnails:Ljava/util/List;

    return-object v0
.end method

.method public getType()Lcom/google/api/gbase/client/GoogleBaseAttributeType;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/google/api/gbase/client/GoogleBaseAttribute;->attributeId:Lcom/google/api/gbase/client/GoogleBaseAttributeId;

    invoke-virtual {v0}, Lcom/google/api/gbase/client/GoogleBaseAttributeId;->getType()Lcom/google/api/gbase/client/GoogleBaseAttributeType;

    move-result-object v0

    return-object v0
.end method

.method public getValueAsString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/google/api/gbase/client/GoogleBaseAttribute;->textValue:Ljava/lang/String;

    return-object v0
.end method

.method public hasAdjustments()Z
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lcom/google/api/gbase/client/GoogleBaseAttribute;->adjustments:Lcom/google/api/gbase/client/Adjustments;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/api/gbase/client/GoogleBaseAttribute;->adjustments:Lcom/google/api/gbase/client/Adjustments;

    invoke-virtual {v0}, Lcom/google/api/gbase/client/Adjustments;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSubAttributes()Z
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lcom/google/api/gbase/client/GoogleBaseAttribute;->subAttributes:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/api/gbase/client/GoogleBaseAttribute;->subAttributes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSubElement(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 285
    iget-object v0, p0, Lcom/google/api/gbase/client/GoogleBaseAttribute;->subElements:Lcom/google/common/collect/Multimap;

    if-nez v0, :cond_0

    .line 286
    const/4 v0, 0x0

    .line 288
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/api/gbase/client/GoogleBaseAttribute;->subElements:Lcom/google/common/collect/Multimap;

    invoke-interface {v0, p1}, Lcom/google/common/collect/Multimap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hasSubElements()Z
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/google/api/gbase/client/GoogleBaseAttribute;->subElements:Lcom/google/common/collect/Multimap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/api/gbase/client/GoogleBaseAttribute;->subElements:Lcom/google/common/collect/Multimap;

    invoke-interface {v0}, Lcom/google/common/collect/Multimap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasThumbnails()Z
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Lcom/google/api/gbase/client/GoogleBaseAttribute;->thumbnails:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/api/gbase/client/GoogleBaseAttribute;->thumbnails:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasValue()Z
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/google/api/gbase/client/GoogleBaseAttribute;->textValue:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 377
    iget-object v1, p0, Lcom/google/api/gbase/client/GoogleBaseAttribute;->attributeId:Lcom/google/api/gbase/client/GoogleBaseAttributeId;

    invoke-virtual {v1}, Lcom/google/api/gbase/client/GoogleBaseAttributeId;->hashCode()I

    move-result v1

    add-int/lit8 v0, v1, 0x1b

    .line 378
    .local v0, "retval":I
    iget-object v1, p0, Lcom/google/api/gbase/client/GoogleBaseAttribute;->textValue:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 379
    iget-object v1, p0, Lcom/google/api/gbase/client/GoogleBaseAttribute;->textValue:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x31

    add-int/2addr v0, v1

    .line 381
    :cond_0
    iget-object v1, p0, Lcom/google/api/gbase/client/GoogleBaseAttribute;->subElements:Lcom/google/common/collect/Multimap;

    if-eqz v1, :cond_1

    .line 382
    iget-object v1, p0, Lcom/google/api/gbase/client/GoogleBaseAttribute;->subElements:Lcom/google/common/collect/Multimap;

    invoke-interface {v1}, Lcom/google/common/collect/Multimap;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 384
    :cond_1
    return v0
.end method

.method public isPrivate()Z
    .locals 1

    .prologue
    .line 187
    iget-boolean v0, p0, Lcom/google/api/gbase/client/GoogleBaseAttribute;->privateAccess:Z

    return v0
.end method

.method public removeSubElement(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 297
    iget-object v0, p0, Lcom/google/api/gbase/client/GoogleBaseAttribute;->subElements:Lcom/google/common/collect/Multimap;

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Lcom/google/api/gbase/client/GoogleBaseAttribute;->subElements:Lcom/google/common/collect/Multimap;

    invoke-interface {v0, p1}, Lcom/google/common/collect/Multimap;->removeAll(Ljava/lang/Object;)Ljava/util/Collection;

    .line 300
    :cond_0
    return-void
.end method

.method public setPrivate(Z)V
    .locals 0
    .param p1, "privateAccess"    # Z

    .prologue
    .line 196
    iput-boolean p1, p0, Lcom/google/api/gbase/client/GoogleBaseAttribute;->privateAccess:Z

    .line 197
    return-void
.end method

.method public setSubElement(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 226
    invoke-virtual {p0, p1}, Lcom/google/api/gbase/client/GoogleBaseAttribute;->removeSubElement(Ljava/lang/String;)V

    .line 227
    iget-object v0, p0, Lcom/google/api/gbase/client/GoogleBaseAttribute;->subElements:Lcom/google/common/collect/Multimap;

    if-nez v0, :cond_0

    .line 228
    invoke-static {}, Lcom/google/common/collect/HashMultimap;->create()Lcom/google/common/collect/HashMultimap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/gbase/client/GoogleBaseAttribute;->subElements:Lcom/google/common/collect/Multimap;

    .line 230
    :cond_0
    iget-object v0, p0, Lcom/google/api/gbase/client/GoogleBaseAttribute;->subElements:Lcom/google/common/collect/Multimap;

    invoke-interface {v0, p1, p2}, Lcom/google/common/collect/Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 231
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 205
    iput-object p1, p0, Lcom/google/api/gbase/client/GoogleBaseAttribute;->textValue:Ljava/lang/String;

    .line 206
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 141
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 142
    .local v0, "buf":Ljava/lang/StringBuffer;
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 143
    iget-object v1, p0, Lcom/google/api/gbase/client/GoogleBaseAttribute;->attributeId:Lcom/google/api/gbase/client/GoogleBaseAttributeId;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 144
    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 145
    invoke-virtual {p0}, Lcom/google/api/gbase/client/GoogleBaseAttribute;->hasValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 146
    iget-object v1, p0, Lcom/google/api/gbase/client/GoogleBaseAttribute;->textValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 148
    :cond_0
    invoke-virtual {p0}, Lcom/google/api/gbase/client/GoogleBaseAttribute;->hasSubElements()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 149
    iget-object v1, p0, Lcom/google/api/gbase/client/GoogleBaseAttribute;->subElements:Lcom/google/common/collect/Multimap;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 151
    :cond_1
    invoke-virtual {p0}, Lcom/google/api/gbase/client/GoogleBaseAttribute;->hasSubAttributes()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 152
    iget-object v1, p0, Lcom/google/api/gbase/client/GoogleBaseAttribute;->subAttributes:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 154
    :cond_2
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 155
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
