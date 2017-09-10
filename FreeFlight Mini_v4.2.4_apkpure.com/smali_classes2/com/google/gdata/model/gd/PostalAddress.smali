.class public Lcom/google/gdata/model/gd/PostalAddress;
.super Lcom/google/gdata/model/Element;
.source "PostalAddress.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gdata/model/gd/PostalAddress$Rel;
    }
.end annotation


# static fields
.field public static final KEY:Lcom/google/gdata/model/ElementKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gdata/model/ElementKey",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/gdata/model/gd/PostalAddress;",
            ">;"
        }
    .end annotation
.end field

.field public static final LABEL:Lcom/google/gdata/model/AttributeKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gdata/model/AttributeKey",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final PRIMARY:Lcom/google/gdata/model/AttributeKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gdata/model/AttributeKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final REL:Lcom/google/gdata/model/AttributeKey;
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

    .line 64
    new-instance v0, Lcom/google/gdata/model/QName;

    sget-object v1, Lcom/google/gdata/util/Namespaces;->gNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v2, "postalAddress"

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/model/QName;-><init>(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;)V

    const-class v1, Ljava/lang/String;

    const-class v2, Lcom/google/gdata/model/gd/PostalAddress;

    invoke-static {v0, v1, v2}, Lcom/google/gdata/model/ElementKey;->of(Lcom/google/gdata/model/QName;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/gdata/model/ElementKey;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/model/gd/PostalAddress;->KEY:Lcom/google/gdata/model/ElementKey;

    .line 70
    new-instance v0, Lcom/google/gdata/model/QName;

    const-string v1, "label"

    invoke-direct {v0, v3, v1}, Lcom/google/gdata/model/QName;-><init>(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;)V

    const-class v1, Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/gdata/model/AttributeKey;->of(Lcom/google/gdata/model/QName;Ljava/lang/Class;)Lcom/google/gdata/model/AttributeKey;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/model/gd/PostalAddress;->LABEL:Lcom/google/gdata/model/AttributeKey;

    .line 76
    new-instance v0, Lcom/google/gdata/model/QName;

    const-string v1, "primary"

    invoke-direct {v0, v3, v1}, Lcom/google/gdata/model/QName;-><init>(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;)V

    const-class v1, Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lcom/google/gdata/model/AttributeKey;->of(Lcom/google/gdata/model/QName;Ljava/lang/Class;)Lcom/google/gdata/model/AttributeKey;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/model/gd/PostalAddress;->PRIMARY:Lcom/google/gdata/model/AttributeKey;

    .line 82
    new-instance v0, Lcom/google/gdata/model/QName;

    const-string v1, "rel"

    invoke-direct {v0, v3, v1}, Lcom/google/gdata/model/QName;-><init>(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;)V

    const-class v1, Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/gdata/model/AttributeKey;->of(Lcom/google/gdata/model/QName;Ljava/lang/Class;)Lcom/google/gdata/model/AttributeKey;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/model/gd/PostalAddress;->REL:Lcom/google/gdata/model/AttributeKey;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 106
    sget-object v0, Lcom/google/gdata/model/gd/PostalAddress;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-direct {p0, v0}, Lcom/google/gdata/model/Element;-><init>(Lcom/google/gdata/model/ElementKey;)V

    .line 107
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
            "Lcom/google/gdata/model/gd/PostalAddress;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 113
    .local p1, "key":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<Ljava/lang/String;+Lcom/google/gdata/model/gd/PostalAddress;>;"
    invoke-direct {p0, p1}, Lcom/google/gdata/model/Element;-><init>(Lcom/google/gdata/model/ElementKey;)V

    .line 114
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
            "Lcom/google/gdata/model/gd/PostalAddress;",
            ">;",
            "Lcom/google/gdata/model/Element;",
            ")V"
        }
    .end annotation

    .prologue
    .line 128
    .local p1, "key":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<Ljava/lang/String;+Lcom/google/gdata/model/gd/PostalAddress;>;"
    invoke-direct {p0, p1, p2}, Lcom/google/gdata/model/Element;-><init>(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/Element;)V

    .line 129
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 137
    invoke-direct {p0}, Lcom/google/gdata/model/gd/PostalAddress;-><init>()V

    .line 138
    invoke-virtual {p0, p1}, Lcom/google/gdata/model/gd/PostalAddress;->setValue(Ljava/lang/String;)Lcom/google/gdata/model/gd/PostalAddress;

    .line 139
    return-void
.end method

.method public static registerMetadata(Lcom/google/gdata/model/MetadataRegistry;)V
    .locals 2
    .param p0, "registry"    # Lcom/google/gdata/model/MetadataRegistry;

    .prologue
    .line 89
    sget-object v1, Lcom/google/gdata/model/gd/PostalAddress;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-virtual {p0, v1}, Lcom/google/gdata/model/MetadataRegistry;->isRegistered(Lcom/google/gdata/model/ElementKey;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 100
    :goto_0
    return-void

    .line 94
    :cond_0
    sget-object v1, Lcom/google/gdata/model/gd/PostalAddress;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-virtual {p0, v1}, Lcom/google/gdata/model/MetadataRegistry;->build(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/ElementCreator;

    move-result-object v0

    .line 97
    .local v0, "builder":Lcom/google/gdata/model/ElementCreator;
    sget-object v1, Lcom/google/gdata/model/gd/PostalAddress;->LABEL:Lcom/google/gdata/model/AttributeKey;

    invoke-interface {v0, v1}, Lcom/google/gdata/model/ElementCreator;->addAttribute(Lcom/google/gdata/model/AttributeKey;)Lcom/google/gdata/model/AttributeCreator;

    .line 98
    sget-object v1, Lcom/google/gdata/model/gd/PostalAddress;->PRIMARY:Lcom/google/gdata/model/AttributeKey;

    invoke-interface {v0, v1}, Lcom/google/gdata/model/ElementCreator;->addAttribute(Lcom/google/gdata/model/AttributeKey;)Lcom/google/gdata/model/AttributeCreator;

    .line 99
    sget-object v1, Lcom/google/gdata/model/gd/PostalAddress;->REL:Lcom/google/gdata/model/AttributeKey;

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

    .line 266
    if-ne p0, p1, :cond_1

    .line 273
    :cond_0
    :goto_0
    return v1

    .line 269
    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/gdata/model/gd/PostalAddress;->sameClassAs(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    move v1, v2

    .line 270
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 272
    check-cast v0, Lcom/google/gdata/model/gd/PostalAddress;

    .line 273
    .local v0, "other":Lcom/google/gdata/model/gd/PostalAddress;
    invoke-virtual {p0}, Lcom/google/gdata/model/gd/PostalAddress;->getLabel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/gdata/model/gd/PostalAddress;->getLabel()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/gdata/model/gd/PostalAddress;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/google/gdata/model/gd/PostalAddress;->getPrimary()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/gdata/model/gd/PostalAddress;->getPrimary()Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/gdata/model/gd/PostalAddress;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/google/gdata/model/gd/PostalAddress;->getRel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/gdata/model/gd/PostalAddress;->getRel()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/gdata/model/gd/PostalAddress;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/google/gdata/model/gd/PostalAddress;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/gdata/model/gd/PostalAddress;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/gdata/model/gd/PostalAddress;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    sget-object v0, Lcom/google/gdata/model/gd/PostalAddress;->LABEL:Lcom/google/gdata/model/AttributeKey;

    invoke-super {p0, v0}, Lcom/google/gdata/model/Element;->getAttributeValue(Lcom/google/gdata/model/AttributeKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getPrimary()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 182
    sget-object v0, Lcom/google/gdata/model/gd/PostalAddress;->PRIMARY:Lcom/google/gdata/model/AttributeKey;

    invoke-super {p0, v0}, Lcom/google/gdata/model/Element;->getAttributeValue(Lcom/google/gdata/model/AttributeKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0
.end method

.method public getRel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 212
    sget-object v0, Lcom/google/gdata/model/gd/PostalAddress;->REL:Lcom/google/gdata/model/AttributeKey;

    invoke-super {p0, v0}, Lcom/google/gdata/model/Element;->getAttributeValue(Lcom/google/gdata/model/AttributeKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 241
    sget-object v0, Lcom/google/gdata/model/gd/PostalAddress;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-super {p0, v0}, Lcom/google/gdata/model/Element;->getTextValue(Lcom/google/gdata/model/ElementKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public hasLabel()Z
    .locals 1

    .prologue
    .line 173
    sget-object v0, Lcom/google/gdata/model/gd/PostalAddress;->LABEL:Lcom/google/gdata/model/AttributeKey;

    invoke-super {p0, v0}, Lcom/google/gdata/model/Element;->hasAttribute(Lcom/google/gdata/model/AttributeKey;)Z

    move-result v0

    return v0
.end method

.method public hasPrimary()Z
    .locals 1

    .prologue
    .line 203
    sget-object v0, Lcom/google/gdata/model/gd/PostalAddress;->PRIMARY:Lcom/google/gdata/model/AttributeKey;

    invoke-super {p0, v0}, Lcom/google/gdata/model/Element;->hasAttribute(Lcom/google/gdata/model/AttributeKey;)Z

    move-result v0

    return v0
.end method

.method public hasRel()Z
    .locals 1

    .prologue
    .line 232
    sget-object v0, Lcom/google/gdata/model/gd/PostalAddress;->REL:Lcom/google/gdata/model/AttributeKey;

    invoke-super {p0, v0}, Lcom/google/gdata/model/Element;->hasAttribute(Lcom/google/gdata/model/AttributeKey;)Z

    move-result v0

    return v0
.end method

.method public hasValue()Z
    .locals 1

    .prologue
    .line 261
    invoke-super {p0}, Lcom/google/gdata/model/Element;->hasTextValue()Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 281
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 282
    .local v0, "result":I
    invoke-virtual {p0}, Lcom/google/gdata/model/gd/PostalAddress;->getLabel()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 283
    mul-int/lit8 v1, v0, 0x25

    invoke-virtual {p0}, Lcom/google/gdata/model/gd/PostalAddress;->getLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 285
    :cond_0
    invoke-virtual {p0}, Lcom/google/gdata/model/gd/PostalAddress;->getPrimary()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 286
    mul-int/lit8 v1, v0, 0x25

    invoke-virtual {p0}, Lcom/google/gdata/model/gd/PostalAddress;->getPrimary()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 288
    :cond_1
    invoke-virtual {p0}, Lcom/google/gdata/model/gd/PostalAddress;->getRel()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 289
    mul-int/lit8 v1, v0, 0x25

    invoke-virtual {p0}, Lcom/google/gdata/model/gd/PostalAddress;->getRel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 291
    :cond_2
    invoke-virtual {p0}, Lcom/google/gdata/model/gd/PostalAddress;->getValue()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 292
    mul-int/lit8 v1, v0, 0x25

    invoke-virtual {p0}, Lcom/google/gdata/model/gd/PostalAddress;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 294
    :cond_3
    return v0
.end method

.method public bridge synthetic lock()Lcom/google/gdata/model/Element;
    .locals 1

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/google/gdata/model/gd/PostalAddress;->lock()Lcom/google/gdata/model/gd/PostalAddress;

    move-result-object v0

    return-object v0
.end method

.method public lock()Lcom/google/gdata/model/gd/PostalAddress;
    .locals 1

    .prologue
    .line 143
    invoke-super {p0}, Lcom/google/gdata/model/Element;->lock()Lcom/google/gdata/model/Element;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/model/gd/PostalAddress;

    return-object v0
.end method

.method public setLabel(Ljava/lang/String;)Lcom/google/gdata/model/gd/PostalAddress;
    .locals 1
    .param p1, "label"    # Ljava/lang/String;

    .prologue
    .line 163
    sget-object v0, Lcom/google/gdata/model/gd/PostalAddress;->LABEL:Lcom/google/gdata/model/AttributeKey;

    invoke-super {p0, v0, p1}, Lcom/google/gdata/model/Element;->setAttributeValue(Lcom/google/gdata/model/AttributeKey;Ljava/lang/Object;)Lcom/google/gdata/model/Element;

    .line 164
    return-object p0
.end method

.method public setPrimary(Ljava/lang/Boolean;)Lcom/google/gdata/model/gd/PostalAddress;
    .locals 1
    .param p1, "primary"    # Ljava/lang/Boolean;

    .prologue
    .line 193
    sget-object v0, Lcom/google/gdata/model/gd/PostalAddress;->PRIMARY:Lcom/google/gdata/model/AttributeKey;

    invoke-super {p0, v0, p1}, Lcom/google/gdata/model/Element;->setAttributeValue(Lcom/google/gdata/model/AttributeKey;Ljava/lang/Object;)Lcom/google/gdata/model/Element;

    .line 194
    return-object p0
.end method

.method public setRel(Ljava/lang/String;)Lcom/google/gdata/model/gd/PostalAddress;
    .locals 1
    .param p1, "rel"    # Ljava/lang/String;

    .prologue
    .line 222
    sget-object v0, Lcom/google/gdata/model/gd/PostalAddress;->REL:Lcom/google/gdata/model/AttributeKey;

    invoke-super {p0, v0, p1}, Lcom/google/gdata/model/Element;->setAttributeValue(Lcom/google/gdata/model/AttributeKey;Ljava/lang/Object;)Lcom/google/gdata/model/Element;

    .line 223
    return-object p0
.end method

.method public setValue(Ljava/lang/String;)Lcom/google/gdata/model/gd/PostalAddress;
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 251
    invoke-super {p0, p1}, Lcom/google/gdata/model/Element;->setTextValue(Ljava/lang/Object;)Lcom/google/gdata/model/Element;

    .line 252
    return-object p0
.end method
