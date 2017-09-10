.class public Lcom/google/gdata/model/gd/CustomProperty;
.super Lcom/google/gdata/model/Element;
.source "CustomProperty.java"


# static fields
.field public static final KEY:Lcom/google/gdata/model/ElementKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gdata/model/ElementKey",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/gdata/model/gd/CustomProperty;",
            ">;"
        }
    .end annotation
.end field

.field public static final NAME:Lcom/google/gdata/model/AttributeKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gdata/model/AttributeKey",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final TYPE:Lcom/google/gdata/model/AttributeKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gdata/model/AttributeKey",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final UNIT:Lcom/google/gdata/model/AttributeKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gdata/model/AttributeKey",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 38
    new-instance v0, Lcom/google/gdata/model/QName;

    sget-object v1, Lcom/google/gdata/util/Namespaces;->gNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v2, "customProperty"

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/model/QName;-><init>(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;)V

    const-class v1, Ljava/lang/String;

    const-class v2, Lcom/google/gdata/model/gd/CustomProperty;

    invoke-static {v0, v1, v2}, Lcom/google/gdata/model/ElementKey;->of(Lcom/google/gdata/model/QName;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/gdata/model/ElementKey;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/model/gd/CustomProperty;->KEY:Lcom/google/gdata/model/ElementKey;

    .line 44
    new-instance v0, Lcom/google/gdata/model/QName;

    const-string v1, "name"

    invoke-direct {v0, v3, v1}, Lcom/google/gdata/model/QName;-><init>(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;)V

    const-class v1, Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/gdata/model/AttributeKey;->of(Lcom/google/gdata/model/QName;Ljava/lang/Class;)Lcom/google/gdata/model/AttributeKey;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/model/gd/CustomProperty;->NAME:Lcom/google/gdata/model/AttributeKey;

    .line 50
    new-instance v0, Lcom/google/gdata/model/QName;

    const-string v1, "type"

    invoke-direct {v0, v3, v1}, Lcom/google/gdata/model/QName;-><init>(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;)V

    const-class v1, Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/gdata/model/AttributeKey;->of(Lcom/google/gdata/model/QName;Ljava/lang/Class;)Lcom/google/gdata/model/AttributeKey;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/model/gd/CustomProperty;->TYPE:Lcom/google/gdata/model/AttributeKey;

    .line 56
    new-instance v0, Lcom/google/gdata/model/QName;

    const-string v1, "unit"

    invoke-direct {v0, v3, v1}, Lcom/google/gdata/model/QName;-><init>(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;)V

    const-class v1, Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/gdata/model/AttributeKey;->of(Lcom/google/gdata/model/QName;Ljava/lang/Class;)Lcom/google/gdata/model/AttributeKey;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/model/gd/CustomProperty;->UNIT:Lcom/google/gdata/model/AttributeKey;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 80
    sget-object v0, Lcom/google/gdata/model/gd/CustomProperty;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-direct {p0, v0}, Lcom/google/gdata/model/Element;-><init>(Lcom/google/gdata/model/ElementKey;)V

    .line 81
    return-void
.end method

.method protected constructor <init>(Lcom/google/gdata/model/ElementKey;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/ElementKey",
            "<",
            "Ljava/lang/String;",
            "+",
            "Lcom/google/gdata/model/gd/CustomProperty;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 87
    .local p1, "key":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<Ljava/lang/String;+Lcom/google/gdata/model/gd/CustomProperty;>;"
    invoke-direct {p0, p1}, Lcom/google/gdata/model/Element;-><init>(Lcom/google/gdata/model/ElementKey;)V

    .line 88
    return-void
.end method

.method protected constructor <init>(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/Element;)V
    .locals 0
    .param p2, "source"    # Lcom/google/gdata/model/Element;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/ElementKey",
            "<",
            "Ljava/lang/String;",
            "+",
            "Lcom/google/gdata/model/gd/CustomProperty;",
            ">;",
            "Lcom/google/gdata/model/Element;",
            ")V"
        }
    .end annotation

    .prologue
    .line 102
    .local p1, "key":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<Ljava/lang/String;+Lcom/google/gdata/model/gd/CustomProperty;>;"
    invoke-direct {p0, p1, p2}, Lcom/google/gdata/model/Element;-><init>(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/Element;)V

    .line 103
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/google/gdata/model/gd/CustomProperty;-><init>()V

    .line 112
    invoke-virtual {p0, p1}, Lcom/google/gdata/model/gd/CustomProperty;->setValue(Ljava/lang/String;)Lcom/google/gdata/model/gd/CustomProperty;

    .line 113
    return-void
.end method

.method public static registerMetadata(Lcom/google/gdata/model/MetadataRegistry;)V
    .locals 3
    .param p0, "registry"    # Lcom/google/gdata/model/MetadataRegistry;

    .prologue
    .line 63
    sget-object v1, Lcom/google/gdata/model/gd/CustomProperty;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-virtual {p0, v1}, Lcom/google/gdata/model/MetadataRegistry;->isRegistered(Lcom/google/gdata/model/ElementKey;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 74
    :goto_0
    return-void

    .line 68
    :cond_0
    sget-object v1, Lcom/google/gdata/model/gd/CustomProperty;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-virtual {p0, v1}, Lcom/google/gdata/model/MetadataRegistry;->build(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/ElementCreator;

    move-result-object v0

    .line 71
    .local v0, "builder":Lcom/google/gdata/model/ElementCreator;
    sget-object v1, Lcom/google/gdata/model/gd/CustomProperty;->NAME:Lcom/google/gdata/model/AttributeKey;

    invoke-interface {v0, v1}, Lcom/google/gdata/model/ElementCreator;->addAttribute(Lcom/google/gdata/model/AttributeKey;)Lcom/google/gdata/model/AttributeCreator;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/google/gdata/model/AttributeCreator;->setRequired(Z)Lcom/google/gdata/model/AttributeCreator;

    .line 72
    sget-object v1, Lcom/google/gdata/model/gd/CustomProperty;->TYPE:Lcom/google/gdata/model/AttributeKey;

    invoke-interface {v0, v1}, Lcom/google/gdata/model/ElementCreator;->addAttribute(Lcom/google/gdata/model/AttributeKey;)Lcom/google/gdata/model/AttributeCreator;

    .line 73
    sget-object v1, Lcom/google/gdata/model/gd/CustomProperty;->UNIT:Lcom/google/gdata/model/AttributeKey;

    invoke-interface {v0, v1}, Lcom/google/gdata/model/ElementCreator;->addAttribute(Lcom/google/gdata/model/AttributeKey;)Lcom/google/gdata/model/AttributeCreator;

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 249
    if-ne p0, p1, :cond_1

    .line 256
    :cond_0
    :goto_0
    return v1

    .line 252
    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/gdata/model/gd/CustomProperty;->sameClassAs(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    move v1, v2

    .line 253
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 255
    check-cast v0, Lcom/google/gdata/model/gd/CustomProperty;

    .line 256
    .local v0, "other":Lcom/google/gdata/model/gd/CustomProperty;
    invoke-virtual {p0}, Lcom/google/gdata/model/gd/CustomProperty;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/gdata/model/gd/CustomProperty;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/gdata/model/gd/CustomProperty;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/google/gdata/model/gd/CustomProperty;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/gdata/model/gd/CustomProperty;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/gdata/model/gd/CustomProperty;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/google/gdata/model/gd/CustomProperty;->getUnit()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/gdata/model/gd/CustomProperty;->getUnit()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/gdata/model/gd/CustomProperty;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/google/gdata/model/gd/CustomProperty;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/gdata/model/gd/CustomProperty;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/gdata/model/gd/CustomProperty;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    sget-object v0, Lcom/google/gdata/model/gd/CustomProperty;->NAME:Lcom/google/gdata/model/AttributeKey;

    invoke-super {p0, v0}, Lcom/google/gdata/model/Element;->getAttributeValue(Lcom/google/gdata/model/AttributeKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 158
    sget-object v0, Lcom/google/gdata/model/gd/CustomProperty;->TYPE:Lcom/google/gdata/model/AttributeKey;

    invoke-super {p0, v0}, Lcom/google/gdata/model/Element;->getAttributeValue(Lcom/google/gdata/model/AttributeKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getUnit()Ljava/lang/String;
    .locals 1

    .prologue
    .line 192
    sget-object v0, Lcom/google/gdata/model/gd/CustomProperty;->UNIT:Lcom/google/gdata/model/AttributeKey;

    invoke-super {p0, v0}, Lcom/google/gdata/model/Element;->getAttributeValue(Lcom/google/gdata/model/AttributeKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 224
    sget-object v0, Lcom/google/gdata/model/gd/CustomProperty;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-super {p0, v0}, Lcom/google/gdata/model/Element;->getTextValue(Lcom/google/gdata/model/ElementKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public hasName()Z
    .locals 1

    .prologue
    .line 147
    sget-object v0, Lcom/google/gdata/model/gd/CustomProperty;->NAME:Lcom/google/gdata/model/AttributeKey;

    invoke-super {p0, v0}, Lcom/google/gdata/model/Element;->hasAttribute(Lcom/google/gdata/model/AttributeKey;)Z

    move-result v0

    return v0
.end method

.method public hasType()Z
    .locals 1

    .prologue
    .line 182
    sget-object v0, Lcom/google/gdata/model/gd/CustomProperty;->TYPE:Lcom/google/gdata/model/AttributeKey;

    invoke-super {p0, v0}, Lcom/google/gdata/model/Element;->hasAttribute(Lcom/google/gdata/model/AttributeKey;)Z

    move-result v0

    return v0
.end method

.method public hasUnit()Z
    .locals 1

    .prologue
    .line 215
    sget-object v0, Lcom/google/gdata/model/gd/CustomProperty;->UNIT:Lcom/google/gdata/model/AttributeKey;

    invoke-super {p0, v0}, Lcom/google/gdata/model/Element;->hasAttribute(Lcom/google/gdata/model/AttributeKey;)Z

    move-result v0

    return v0
.end method

.method public hasValue()Z
    .locals 1

    .prologue
    .line 244
    invoke-super {p0}, Lcom/google/gdata/model/Element;->hasTextValue()Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 264
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 265
    .local v0, "result":I
    invoke-virtual {p0}, Lcom/google/gdata/model/gd/CustomProperty;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 266
    mul-int/lit8 v1, v0, 0x25

    invoke-virtual {p0}, Lcom/google/gdata/model/gd/CustomProperty;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 268
    :cond_0
    invoke-virtual {p0}, Lcom/google/gdata/model/gd/CustomProperty;->getType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 269
    mul-int/lit8 v1, v0, 0x25

    invoke-virtual {p0}, Lcom/google/gdata/model/gd/CustomProperty;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 271
    :cond_1
    invoke-virtual {p0}, Lcom/google/gdata/model/gd/CustomProperty;->getUnit()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 272
    mul-int/lit8 v1, v0, 0x25

    invoke-virtual {p0}, Lcom/google/gdata/model/gd/CustomProperty;->getUnit()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 274
    :cond_2
    invoke-virtual {p0}, Lcom/google/gdata/model/gd/CustomProperty;->getValue()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 275
    mul-int/lit8 v1, v0, 0x25

    invoke-virtual {p0}, Lcom/google/gdata/model/gd/CustomProperty;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 277
    :cond_3
    return v0
.end method

.method public bridge synthetic lock()Lcom/google/gdata/model/Element;
    .locals 1

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/google/gdata/model/gd/CustomProperty;->lock()Lcom/google/gdata/model/gd/CustomProperty;

    move-result-object v0

    return-object v0
.end method

.method public lock()Lcom/google/gdata/model/gd/CustomProperty;
    .locals 1

    .prologue
    .line 117
    invoke-super {p0}, Lcom/google/gdata/model/Element;->lock()Lcom/google/gdata/model/Element;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/model/gd/CustomProperty;

    return-object v0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/gdata/model/gd/CustomProperty;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 137
    sget-object v0, Lcom/google/gdata/model/gd/CustomProperty;->NAME:Lcom/google/gdata/model/AttributeKey;

    invoke-super {p0, v0, p1}, Lcom/google/gdata/model/Element;->setAttributeValue(Lcom/google/gdata/model/AttributeKey;Ljava/lang/Object;)Lcom/google/gdata/model/Element;

    .line 138
    return-object p0
.end method

.method public setType(Ljava/lang/String;)Lcom/google/gdata/model/gd/CustomProperty;
    .locals 1
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 170
    sget-object v0, Lcom/google/gdata/model/gd/CustomProperty;->TYPE:Lcom/google/gdata/model/AttributeKey;

    invoke-super {p0, v0, p1}, Lcom/google/gdata/model/Element;->setAttributeValue(Lcom/google/gdata/model/AttributeKey;Ljava/lang/Object;)Lcom/google/gdata/model/Element;

    .line 171
    return-object p0
.end method

.method public setUnit(Ljava/lang/String;)Lcom/google/gdata/model/gd/CustomProperty;
    .locals 1
    .param p1, "unit"    # Ljava/lang/String;

    .prologue
    .line 203
    sget-object v0, Lcom/google/gdata/model/gd/CustomProperty;->UNIT:Lcom/google/gdata/model/AttributeKey;

    invoke-super {p0, v0, p1}, Lcom/google/gdata/model/Element;->setAttributeValue(Lcom/google/gdata/model/AttributeKey;Ljava/lang/Object;)Lcom/google/gdata/model/Element;

    .line 204
    return-object p0
.end method

.method public setValue(Ljava/lang/String;)Lcom/google/gdata/model/gd/CustomProperty;
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 234
    invoke-super {p0, p1}, Lcom/google/gdata/model/Element;->setTextValue(Ljava/lang/Object;)Lcom/google/gdata/model/Element;

    .line 235
    return-object p0
.end method
